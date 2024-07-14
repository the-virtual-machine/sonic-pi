# --------------------------------------------------------------------------- #
# Title: random_c_major_scale.rb
#
# Date: 2024-06-16
# Unix: 1718528528
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
#
# Description: Given enough time, this script will eventually play Happy
# Birthday, followed by Ba Ba Black Sheep and then You are my Sunshine. 
# It is Sonic Pis equivalent of the Shakespeare typing monkeys.

# It randomly plays chords from the C major scale and at slightly different
# times
# --------------------------------------------------------------------------- #
print("Playing random_c_major_scale.rb")
print("From github.com/the-virtual-machine/sonic-pi")
use_random_seed 65535
use_bpm 60
use_synth :beep

notes = [:C, :D, :E, :F, :G, :A, :B, :C5]

loop do
  play choose(notes)
  sleep (rrand(0.50, 1))
end
