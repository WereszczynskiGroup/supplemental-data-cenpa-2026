#Student: Joshua Lee
#Purpose: End-to-End plotting script for use with four runs of a system; could be modified for X runs

import matplotlib.pyplot as plt
import matplotlib
import numpy as np

# Define file names for each subplot along with their headers, colors, and legend labels
subplots_data = [
	{"files": ["exnotailH3-dist-etd_entry1.dat"], "header": "Run 1 Entry", "color": 'C7', "alpha_values": [1.0]},
	{"files": ["exnotailH3-dist-etd_exit1.dat"], "header": "Run 1 Exit", "color": 'C7', "alpha_values": [0.5]},
	{"files": ["exnotailH3-dist-etd_entry2.dat"], "header": "Run 2 Entry", "color": 'C7', "alpha_values": [1.0]},
	{"files": ["exnotailH3-dist-etd_exit2.dat"], "header": "Run 2 Exit", "color": 'C7', "alpha_values": [0.5]},
	{"files": ["exnotailH3-dist-etd_entry3.dat"], "header": "Run 3 Entry", "color": 'C7', "alpha_values": [1.0]},
	{"files": ["exnotailH3-dist-etd_exit3.dat"], "header": "Run 3 Exit", "color": 'C7', "alpha_values": [0.5]},
	{"files": ["exnotailH3-dist-etd_entry4.dat"], "header": "Run 4 Entry", "color": 'C7', "alpha_values": [1.0]},
	{"files": ["exnotailH3-dist-etd_exit4.dat"], "header": "Run 4 Exit", "color": 'C7', "alpha_values": [0.5]}
]

fig, axs = plt.subplots(4, 2, figsize=(6.25, 8), sharex=True, sharey=True)

for i, subplot_data in enumerate(subplots_data):
	for j, (file, alpha) in enumerate(zip(subplot_data["files"], subplot_data["alpha_values"])):
		time, rmsd = np.loadtxt(file, usecols=(0,1), unpack=True, comments=('#','@','&'))
		axs.flat[i].plot(time, rmsd, alpha=alpha, color=subplot_data["color"])

	# Adjusting the limits of x and y axes
	axs.flat[i].set_xlim(0, 100000, 10000)
	axs.flat[i].set_ylim(25, 105)
	axs.flat[i].set_yticks(np.arange(25, 106, 20))
	axs.flat[i].tick_params(axis='both', labelsize=8)
	axs.flat[i].set_xlabel('Time (steps)', fontsize=8, fontweight='bold')
	axs.flat[i].set_ylabel('End-to-Dyad Distance($\AA$)', fontsize=8, fontweight='bold')
	axs.flat[i].set_title(subplot_data["header"], fontsize=10, fontweight='bold')

	axs.flat[i].axvline(x=20000, color='black', linestyle='dashed', linewidth=0.75)

plt.tight_layout()
#plt.savefig('time_etd_plots/TAILLESS_H3_EtD_TIME.pdf')
plt.show()

quit()
