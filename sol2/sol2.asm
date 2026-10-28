# Course: Computer Architecture
# Assignment: Assessment 01 - Assembly Language Programming
# Student: Isabella de Freitas Nunes

.data
	msg1: .string "Enter the first number (positive): "
	msg2: .string "Enter the second number (positive): "
.text
main:
	# Prints message msg1
	la a0, msg1
	li a7, 4
	ecall

	# Reads the first number (x) and stores it in a0
	li a7, 5
	ecall
	mv a0, a0 # Moves the input value to a0

	# Prints message msg2
	la a0, msg2
	li a7, 4
	ecall

	# Reads the second number (y) and stores it in a1
	li a7, 5
	ecall
	mv a1, a0 # Moves the input value to a1

loop:
	bne a0, a1, different # If x != y, jumps to the "different" label
	j end                # If x == y, jumps to the "end" label

different:
	blt a0, a1, less    # If x < y, jumps to the "less" label
	sub a0, a0, a1       # If x >= y, computes x = x - y
	j loop               # Returns to the beginning of the loop

less:
	sub a1, a1, a0       # If x < y, computes y = y - x
	j loop               # Returns to the beginning of the loop

end:
	mv a0, a0          # Moves the value of a0 (result) to a0 (for printing)
	li a7, 1           # Sets a7 = 1 to request output
	ecall              # Calls the operating system to print a0
	li a7, 10          # Sets a7 = 10 to indicate the end of the program
	ecall
