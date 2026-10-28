# Course: Computer Architecture
# Assignment: Assessment 01 - Assembly Language Programming
# Student: Isabella de Freitas Nunes

.data
.text
main:
	# The li instruction means load immediate and loads values into registers
	li a0, 12      # Loads the number 12 into register a0
	li a1, 18      # Loads the number 18 into register a1

loop:
	# bne means branch not equal and compares the values of two registers
	# and branches to another location if they are different
	# j jumps to another location
	bne a0, a1, different		# If a0 != a1, jumps to different
	j end                   # If the previous branch is not taken, jumps to end

# blt means branch less than and compares the values of two registers
# and branches to another location if the first value, a0, is less than a1
different:
	blt a0, a1, less       # If a0 < a1, jumps to less
	sub a0, a0, a1          # If the previous branch is not taken, computes a0 - a1 and stores it in a0
	j loop                  # Returns to the beginning of the loop

less:
	sub a1, a1, a0          # Computes a1 - a0 and stores it in a1
	j loop                  # Returns to the beginning of the loop

# In RARS, register a7 specifies the desired system call number
# The value 10 corresponds to the exit system call, which terminates the program
end:
	li a7, 10              # Sets a7 = 10 to terminate the program
	ecall
