# --------------------------------------------------------------------------- #
# Title: basic_random.rb
#
# Date: 2024-06-16
# Unix: 1718527915
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0

#
# Description: This script will play random sounds between 30 and 80 and
# randomly between each ear. It uses the Kalimba sounds and the amp is boosted
# because Kalimba tends to be rather soft.
# --------------------------------------------------------------------------- #
print("Playing basic_random.rb")
print("From github.com/the-virtual-machine/sonic-pi")
use_random_seed 65535
use_bpm 60
use_synth :kalimba

live_loop :random do
  play rrand(30, 80), pan: rrand(-1, 1), amp:4
  sleep 0.5
end


