import MDAnalysis as mda
from MDAnalysis.analysis import contacts
import numpy as np
import pandas as pd

# ------------------------
# Input files
# ------------------------
pdb_file  = "min_H3withcenpalatch_renumresidues.pdb"
traj_file = "combined_aligned.dcd"

# Output
output_file = "H3withcenpalatch_tail_contacts_inside_outside_freq_SEM.dat"

# ------------------------
# Parameters
# ------------------------
entrytail_residues = '786:829'
exittail_residues  = '295:338'
dna_residues	   = '1:294'
contact_cutoff	   = 8.0  # Angstroms
n_replicas	   = 4

# ------------------------
# Load system
# ------------------------
u = mda.Universe(pdb_file, traj_file)

entrytail = u.select_atoms(f'resid {entrytail_residues}')
exittail  = u.select_atoms(f'resid {exittail_residues}')
dna	  = u.select_atoms(f'resid {dna_residues}')
histone_core = u.select_atoms("(resid 380-407 or resid 871-898) and protein")

num_bases = 294
n_frames  = len(u.trajectory)
frames_per_rep = n_frames // n_replicas

# ------------------------
# Storage arrays: replicas x bases
# ------------------------
inside_counts  = np.zeros((n_replicas, num_bases), dtype=int)
outside_counts = np.zeros((n_replicas, num_bases), dtype=int)

# ------------------------
# Precompute DNA base atom indices
# ------------------------
base_indices = np.array([atom.resid - 1 for atom in dna])

# ------------------------
# Loop over trajectory
# ------------------------
for ts in u.trajectory:

	# Determine replica
	rep = ts.frame // frames_per_rep
	if rep >= n_replicas:
		rep = n_replicas - 1

	# ------------------------
	# Compute orientation for bases 1-147 only
	# ------------------------
	frame_orientation = {}
	for res in dna.residues[:147]:
		try:
			DB = res.atoms.select_atoms("name DB")[0].position
			DS = res.atoms.select_atoms("name DS")[0].position
		except IndexError:
			continue
		vec = DS - DB
		radial = histone_core.center_of_mass() - DB
		cos_theta = np.dot(vec, radial) / (np.linalg.norm(vec) * np.linalg.norm(radial))
		frame_orientation[res.resid] = "inside" if cos_theta > 0 else "outside"

	# ------------------------
	# Force bases 148-294 to be opposite of 1-147
	# ------------------------
	for i in range(147):
		base1 = i + 1
		base2 = 295 - base1
		if base1 in frame_orientation:
			frame_orientation[base2] = "outside" if frame_orientation[base1] == "inside" else "inside"

	# ------------------------
	# Determine contacts
	# ------------------------
	dist_entry = contacts.distance_array(entrytail.positions, dna.positions)
	dist_exit  = contacts.distance_array(exittail.positions, dna.positions)

	contact_entry = contacts.contact_matrix(dist_entry, radius=contact_cutoff).any(axis=0)
	contact_exit  = contacts.contact_matrix(dist_exit,  radius=contact_cutoff).any(axis=0)

	contact_base = np.zeros(num_bases, dtype=bool)
	np.logical_or.at(contact_base, base_indices, contact_entry)
	np.logical_or.at(contact_base, base_indices, contact_exit)

	# ------------------------
	# Aggregate counts for each base over full replica
	# ------------------------
	for i, res in enumerate(dna.residues):
		resid = res.resid
		orientation = frame_orientation.get(resid, None)
		if orientation is None:
			continue
		if contact_base[i]:
			if orientation == "inside":
				inside_counts[rep, i] += 1
			else:
				outside_counts[rep, i] += 1

# ------------------------
# Convert counts to frequency over **entire replica**
# ------------------------
inside_freq  = inside_counts / frames_per_rep
outside_freq = outside_counts / frames_per_rep

# ------------------------
# Compute mean and SEM across replicas
# ------------------------
inside_mean = inside_freq.mean(axis=0)
inside_sem  = inside_freq.std(axis=0, ddof=1) / np.sqrt(n_replicas)

outside_mean = outside_freq.mean(axis=0)
outside_sem  = outside_freq.std(axis=0, ddof=1) / np.sqrt(n_replicas)

# ------------------------
# Save to file
# ------------------------
output_data = np.column_stack((
	np.arange(1, num_bases+1),
	inside_mean, inside_sem,
	outside_mean, outside_sem
))

np.savetxt(
	output_file,
	output_data,
	fmt=['%d','%.6f','%.6f','%.6f','%.6f'],
	header="DNA_Base Inside_Mean Inside_SEM Outside_Mean Outside_SEM",
	comments=''
)

print(f"Inside/outside tail contact statistics saved to: {output_file}")
