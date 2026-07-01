import matplotlib.pyplot as plt
import numpy as np

# Define file names for each subplot along with their headers, colors, and legend labels
subplots_data = [
    {"files": ["CSH3_1DNA.dat", "CSH3_2DNA.dat", "CSH3_3DNA.dat", "CSH3_4DNA.dat"],
     "header": "H3(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["CSltH3core_1DNA.dat", "CSltH3core_2DNA.dat", "CSltH3core_3DNA.dat", "CSltH3core_4DNA.dat"],
     "header": "CENP-A$_{\\mathrm{Tail+Latch}}$H3$_{\\mathrm{Core}}$(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["CSexnotailH3_1DNA.dat", "CSexnotailH3_2DNA.dat", "CSexnotailH3_3DNA.dat", "CSexnotailH3_4DNA.dat"],
     "header": "Tailless H3(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["CScenpa_1DNA.dat", "CScenpa_2DNA.dat", "CScenpa_3DNA.dat", "CScenpa_4DNA.dat"],
     "header": "CENP-A(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["CSltcenpacore_1DNA.dat", "CSltcenpacore_2DNA.dat", "CSltcenpacore_3DNA.dat", "CSltcenpacore_4DNA.dat"],
     "header": "H3$_{\\mathrm{Tail+Latch}}$CENP-A$_{\\mathrm{Core}}$(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["CSexnotailcenpa_1DNA.dat", "CSexnotailcenpa_2DNA.dat", "CSexnotailcenpa_3DNA.dat", "CSexnotailcenpa_4DNA.dat"],
     "header": "Tailless CENP-A(\u03B1) DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]}
]

# Create a 2x3 grid of subplots with shared axes and size 4x3
fig, axs = plt.subplots(2, 3, figsize=(12, 7.5), sharex=True, sharey=True)

# Iterate through the subplot data and plot each subplot
for i, subplot_data in enumerate(subplots_data):
    for j, (file, alpha) in enumerate(zip(subplot_data["files"], subplot_data["alpha_values"])):
        time, rmsd = np.loadtxt(file, usecols=(0,1), unpack=True, comments=('#','@','&'))
        axs.flat[i].plot(time, rmsd, alpha=alpha, label=subplot_data["legend_labels"][j], color=subplot_data["color"])
    # Adjusting the limits of x and y axes
    axs.flat[i].set_xlim(0, max(time))
    axs.flat[i].set_ylim(0, 25)
    axs.flat[i].set_xlabel('Time (ns)', fontweight='bold')
    axs.flat[i].set_ylabel('RMSD ($\AA$)', fontweight='bold')
    axs.flat[i].set_title(subplot_data["header"], fontsize=12, fontweight='bold')
    axs.flat[i].legend(loc='upper left')

# Adjust layout to prevent overlap
plt.tight_layout()
plt.savefig('AA_asat_RMSD.pdf')
# Show the plot
plt.show()

