# --------------------------------------------------------------------------- #
# Title: heartbeats.rb
#
# Date: 2024-02-27
# Unix: 1709052115
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
#
# Description: This script uses two live_loops to create a simple heartbeat
# sound.
#

# --------------------------------------------------------------------------- #
print("Playing heartbeats.rb")
print("From github.com/the-virtual-machine/sonic-pi")
use_random_seed 65535
use_bpm 60

live_loop :lub do
  sample :bd_haus, rate:0.01
  puts "Lub"
  sleep 1
end

sleep 0.18

live_loop :dub do
  sample :bd_haus, rate:0.01
  puts "Dub"
  sleep 1
end
