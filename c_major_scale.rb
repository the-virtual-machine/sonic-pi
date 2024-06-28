# --------------------------------------------------------------------------- #
# Title: c_major_scale.rb
#
# Date: 2024-06-16
# Unix: 1718507972
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
#
# Description: This live loop cycles through the C Major Scale, alternating
# between the left and right audio outputs
# Reccomended to use with Lissajous, Spectrum and Stero scopes.
# --------------------------------------------------------------------------- #
print("Playing c_major_scale.rb")
print("From github.com/444B/sonic-pi")
use_random_seed 65535
use_bpm 30

use_synth :kalimba

live_loop :boom do
  play :C, pan: 1, amp: 5
  puts("C")
  sleep 0.5

  play :D, pan: -1, amp: 5
  puts("D")
  sleep 0.5

  play :E, pan: 1, amp: 5
  puts("E")
  sleep 0.5

  play :F, pan: -1, amp: 5
  puts("F")
  sleep 0.5

  play :G, pan: 1, amp: 5
  puts("G")
  sleep 0.5

  play :A, pan: -1, amp: 5
  puts("A")
  sleep 0.5

  play :B, pan: 1, amp: 5
  puts("B")
  sleep 0.5

  play :C5, amp: 6
  puts("C5")
  sleep 1
end
