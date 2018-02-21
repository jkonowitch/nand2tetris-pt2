// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// n = 0
// result = 0
// loop while n < r1
//   result = result + a
//   n = n + 1

@n
M=0

@result
M=0

(LOOP)
  // add another
  @0
  D=M // load multiplicand

  @result
  M=D+M

  // increment counter
  @n
  D=M
  M=D+1

  // check loop condition
  @1 // load multiplier
  D=M
  @n
  D=D-M // multiplier minus number of runs

  @END // if zero, then end
  D;JEQ

  @LOOP // else restart loop
  0;JMP

(END)
  @END
  0;JMP