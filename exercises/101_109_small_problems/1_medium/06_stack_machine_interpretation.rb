# Stack Machine Interpretation

def push(stack, register)
  stack << register
end

def add(stack, register)
  register + stack.pop
end

def sub(stack, register)
  register - stack.pop
end

def mult(stack, register)
  register * stack.pop
end

def div(stack, register)
  register / stack.pop
end

def mod(stack, register)
  register % stack.pop
end

def pop(stack, register)
  stack.pop
end

def print(register)
  puts register
end

def minilang(code)
  stack = []
  register = 0
  code.split.each do |command|
    case command
    when 'PUSH' then push(stack, register)
    when 'ADD' then register = add(stack, register)
    when 'SUB' then register = sub(stack, register)
    when 'MULT' then register = mult(stack, register)
    when 'DIV' then register = div(stack, register)
    when 'MOD' then register = mod(stack, register)
    when 'POP' then register = pop(stack, register)
    when 'PRINT' then print(register)
    else register = command.to_i
    end
  end
end

minilang('5 PUSH POP PRINT')
# 5
puts

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
puts

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
puts

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
puts

minilang('-3 PUSH 5 SUB PRINT')
# 8
puts

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
