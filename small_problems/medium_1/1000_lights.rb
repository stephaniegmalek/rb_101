# ----- Problem -----
# input: total number of switches
# output: an array that identified which lights are on after n repetitions
# rules: 
#       Explicity Requirements:
#       - each switch is connected to 1 light that starts off off 
#       - first rep you turn on all lights
#       - the total number of switches is the number of repetitions

# ----- Examples -----
# lights_left_on(5) == [1, 4]
# lights_left_on(10) == [1, 4, 9]

# ----- Data Structure -----
# hash

# ----- Algorithm -----
# SET lights hash variable equal to keys 1 to n, all with values of 'off'
# SET repetition = 1
# LOOP
#   - break if repetition equals n
#   - 1 up to n for each num
#     - if num modulo by repetition equals zero
#       - if lights[num] == 'off'
#         - lights[num] = 'on'
#       - elsif lights[num] == 'on'
#         -lights[num] = 'off'
#   - repetition += 1
# END
# Iterate through lights hash and select keys with values of 'on'

# ----- Code -----
def initialize_lights(n)
  lights = {}
  1.upto(n) { |n| lights[n] = 'off' }
  lights
end

def lights_on(lights)
  lights.select { |_, v| v == 'on' }.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] == 'off' ? lights[position] = 'on' : lights[position] = 'off'
    end
  end
end

def lights_left_on(n)
  lights = initialize_lights(n)
  1.upto(n) do |num|
    toggle_every_nth_light(lights, num)
  end
  lights_on(lights)
end


p lights_left_on(5)
p lights_left_on(10)