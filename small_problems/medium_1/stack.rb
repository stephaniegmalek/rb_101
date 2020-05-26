# ----- Problem -----
# input: string made up of 1 to many words
# output: number /s 
# rules: 
#       Explicit Requirements:
#       - all operations are integer operations
#       - register is the most current value
#       - operations that require two values pop the topmost item from stack (most
#         recently pushed value)
#       - register initalizes to 0
#       - stack representated as array

# ----- Examples -----
# minilang('PRINT')
# 0

# minilang('5 PUSH 3 MULT PRINT')
# 15

# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

# minilang('5 PUSH POP PRINT')
# 5

# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

# minilang('-3 PUSH 5 SUB PRINT')
# 8

# minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# ----- Data Structure -----
# integers, arrays, strings

# ----- Algorithm -----
# SET commands variable to array made of input string split into substrings
# SET register variable to zero
# SET stack variable to empty array
# Iterate through commands array variable for each command
#   - IF command is 'PUSH'
#     - THEN stack.push register value 
#   - IF command is 'ADD'
#     - THEN stack.pop + register value
#     - SET register value to result of operation
#   - IF command is 'SUB'
#     - THEN register value - stack. pop
#     - SET register value to result 
#   - IF command is 'MulT'
#     - THEN stack pop value * register value 
#     - SET register value to result
#   - IF command is 'DIV'
#     - THEN register value / stack pop value 
#     - SET register value to result
#   - IF command is 'MOD'
#     - THEN register value % stack pop value 
#     - SET register value to result
#   - IF command is 'POP'
#     - THEN stack pop
#     - set register value to result 
#   - IF command is 'PRINT'
#     - OUTPUT register value 
#   - ELSE
#     - SET register value to command converted to integer 

# ----- Code -----
def minilang(commands)
  register = 0
  stack = []
  
  commands.split.each do |command|
    case command
      when 'PUSH'   then stack.push(register)
      when 'ADD'    then register += stack.pop
      when 'SUB'    then register -= stack.pop
      when 'MULT'   then register *= stack.pop
      when 'DIV'    then register /= stack.pop
      when 'MOD'    then register %= stack.pop
      when 'POP'    then register = stack.pop
      when 'PRINT'  then puts register
      else               register = command.to_i
    end
    puts "The register is #{register}. The stack is #{stack}."
  end
end

#minilang('PRINT')
#puts ""
#minilang('5 PUSH 3 MULT PRINT')
#puts ""
#minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
#puts ""
#minilang('5 PUSH POP PRINT')
#puts ""
#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
#puts ""
#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
#puts ""
#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
#puts ""
#minilang('-3 PUSH 5 SUB PRINT')
#puts ""
#minilang('6 PUSH')
#puts ""
minilang("3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT")
