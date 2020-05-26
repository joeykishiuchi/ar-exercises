require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

random = ""
8.times{ random << (('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a)[rand(62)] }
puts random