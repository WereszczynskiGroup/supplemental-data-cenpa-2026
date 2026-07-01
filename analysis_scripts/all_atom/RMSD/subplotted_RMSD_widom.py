import matplotlib.pyplot as plt
import numpy as np

# Define file names for each subplot along with their headers, colors, and legend labels
subplots_data = [
    {"files": ["H3_1DNA.dat", "H3_2DNA.dat", "H3_3DNA.dat", "H3_4DNA.dat"],
     "header": "H3 DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["ltH3core_1DNA.dat", "ltH3core_2DNA.dat", "ltH3core_3DNA.dat", "ltH3core_4DNA.dat"],
     "header": "CENP-A$_{\\mathrm{Tail+Latch}}$H3$_{\\mathrm{Core}}$ DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["exnotailH3_1DNA.dat", "exnotailH3_2DNA.dat", "exnotailH3_3DNA.dat", "exnotailH3_4DNA.dat"],
     "header": "Tailless H3 DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["cenpa_1DNA.dat", "cenpa_2DNA.dat", "cenpa_3DNA.dat", "cenpa_4DNA.dat"],
     "header": "CENP-A DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["ltcenpacore_1DNA.dat", "ltcenpacore_2DNA.dat", "ltcenpacore_3DNA.dat", "ltcenpacore_4DNA.dat"],
     "header": "H3$_{\\mathrm{Tail+Latch}}$CENP-A$_{\\mathrm{Core}}$ DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]},
    {"files": ["exnotailcenpa_1DNA.dat", "exnotailcenpa_2DNA.dat", "exnotailcenpa_3DNA.dat", "exnotailcenpa_4DNA.dat"],
     "header": "Tailless CENP-A DNA", "color": 'C7', "alpha_values": [0.9, 0.7, 0.5, 0.3], "legend_labels": ["Run 1", "Run 2", "Run 3", "Run 4"]}
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
plt.savefig('AA_widom_RMSD.pdf')
# Show the plot
plt.show()
