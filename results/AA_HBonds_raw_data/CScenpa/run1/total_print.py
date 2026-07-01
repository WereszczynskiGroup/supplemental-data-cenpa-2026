def sum_column(file_path):
	total_sum = 0
	with open(file_path, 'r') as file:
		for line in file:
			columns = line.strip().split()
			if len(columns) >= 2:
				try:
					value = float(columns[1])
					total_sum += value
				except ValueError:
					pass
	return total_sum

# Specify the file path
file_path = 'entry_avgs.dat'
file_path2 = 'exit_avgs.dat'

# Call the function to calculate the sum
sum_value = sum_column(file_path)
sum_value2 = sum_column(file_path2)

# Print the result
print("The sum of the entry tail's H-Bonds is:", sum_value)
print("The sum of the exit tail's  H-Bonds is:", sum_value2)
