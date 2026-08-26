import matplotlib.pyplot as plt
import numpy as np

# Estimated CaféMol timescale:
# 100,000 frames = 3000 us
# Therefore, 1 frame = 0.03 us
CG_US_PER_FRAME = 3000 / 100000

subplots_data = [
    {
        "cg_entry": "H3-dist-etd_entry1.dat",
        "cg_exit":  "H3-dist-etd_exit1.dat",
        "aa_entry": "CSH3-dist-ete_entry1.dat",
        "aa_exit":  "CSH3-dist-ete_exit1.dat",
        "header": "Run 1"
    },
    {
        "cg_entry": "H3-dist-etd_entry2.dat",
        "cg_exit":  "H3-dist-etd_exit2.dat",
        "aa_entry": "CSH3-dist-ete_entry2.dat",
        "aa_exit":  "CSH3-dist-ete_exit2.dat",
        "header": "Run 2"
    },
    {
        "cg_entry": "H3-dist-etd_entry3.dat",
        "cg_exit":  "H3-dist-etd_exit3.dat",
        "aa_entry": "CSH3-dist-ete_entry3.dat",
        "aa_exit":  "CSH3-dist-ete_exit3.dat",
        "header": "Run 3"
    },
    {
        "cg_entry": "H3-dist-etd_entry4.dat",
        "cg_exit":  "H3-dist-etd_exit4.dat",
        "aa_entry": "CSH3-dist-ete_entry4.dat",
        "aa_exit":  "CSH3-dist-ete_exit4.dat",
        "header": "Run 4"
    }
]

fig, axs = plt.subplots(2, 2, figsize=(6.25, 6), sharex=True, sharey=True)


for i, subplot_data in enumerate(subplots_data):

    ax = axs.flat[i]

    # CG ENTRY
    cg_frame, cg_entry = np.loadtxt(subplot_data["cg_entry"], usecols=(0, 1), unpack=True, comments=('#', '@', '&'))
    cg_time_us = cg_frame * CG_US_PER_FRAME
    ax.plot(cg_time_us, cg_entry, color='C0', alpha=1.0, label='CG Entry')

    # CG EXIT
    cg_frame, cg_exit = np.loadtxt(subplot_data["cg_exit"], usecols=(0, 1), unpack=True, comments=('#', '@', '&'))
    cg_time_us = cg_frame * CG_US_PER_FRAME
    ax.plot(cg_time_us, cg_exit, color='C0', alpha=0.5, label='CG Exit')

    # ALL-ATOM ENTRY
    aa_time_ns, aa_entry = np.loadtxt(subplot_data["aa_entry"], usecols=(0, 1), unpack=True,  comments=('#', '@', '&'))
    aa_time_us = aa_time_ns / 1000
    ax.plot(aa_time_us, aa_entry, color='C7', alpha=1.0, label='AA Entry (Alpha-sat)')

    # ALL-ATOM EXIT
    aa_time_ns, aa_exit = np.loadtxt(subplot_data["aa_exit"], usecols=(0, 1), unpack=True, comments=('#', '@', '&'))
    aa_time_us = aa_time_ns / 1000
    ax.plot(aa_time_us, aa_exit, color='C7', alpha=0.5, label='AA Exit (Alpha-sat)')

    # AXES
    ax.set_xlim(0, 2)
    ax.set_xticks(np.arange(0, 2.01, 0.5))
    ax.set_ylim(25, 105)
    ax.set_yticks(np.arange(25, 106, 20))
    ax.tick_params(axis='both', labelsize=8)
    ax.set_xlabel(r'Time ($\mu$s)', fontsize=8, fontweight='bold')
    ax.set_ylabel(r'End-to-Dyad Distance ($\AA$)', fontsize=8, fontweight='bold')
    ax.set_title(subplot_data["header"], fontsize=10, fontweight='bold')
    ax.legend(fontsize=7)

plt.tight_layout()
plt.savefig('time_etd_plots_ZOOMED_IN/H3_AA_CG_2us_EtD_TIME.pdf')
plt.savefig('time_etd_plots_ZOOMED_IN/H3_AA_CG_2us_EtD_TIME.png')
plt.show()

quit()
