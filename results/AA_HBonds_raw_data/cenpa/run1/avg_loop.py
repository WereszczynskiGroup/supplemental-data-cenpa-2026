import numpy as np
import os

def calculate_average(file_path):
	total = 0
	count = 0

	with open(file_path, 'r') as file:
		for line in file:
			columns = line.split()
			if len(columns) >= 2:
				try:
					value = float(columns[1])
					total += value
					count += 1
				except ValueError:
					pass

	if count > 0:
		return total / count
	else:
		return 0

def process_files(directory_path, output_file, start, end):
	averages = {}

	for i in range(start, end+1):
		filename = f'hbonds_{i}.dat'
		file_path = os.path.join(directory_path, filename)
		if os.path.isfile(file_path):
			average = calculate_average(file_path)
			averages[i] = average

	with open(output_file, 'w') as outfile:
		for i in range(start, end+1):
			if i in averages:
				average = averages[i]
				outfile.write(f'{i}: {average}\n')

# Provide the directory path containing the hbonds_{}.dat files
directory_path = '/Users/jlee295/python/cenpa/HBonds/data/run1/'

# Output file for the range 295 to 348
output_file_exit = '/Users/jlee295/python/cenpa/HBonds/data/run1/exit_avgs.dat'

# Output file for the range 790 to 843
output_file_entry = '/Users/jlee295/python/cenpa/HBonds/data/run1/entry_avgs.dat'

# Call the function to process the files and generate the output files
process_files(directory_path, output_file_exit, 295, 348)
process_files(directory_path, output_file_entry, 790, 843)

