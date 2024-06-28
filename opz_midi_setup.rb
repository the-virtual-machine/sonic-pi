# --------------------------------------------------------------------------- #
# Title: opz_midi_setup.rb
#
# Date: 2024-05-27
# Unix: 1716836049
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
#
# Description: Creates a live loop to initialize the op-z as a midi input
#

# --------------------------------------------------------------------------- #
print("Playing opz-midi-setup.rb")
print("From github.com/444B/sonic-pi")
use_random_seed 65535
use_bpm 60

live_loop :midi_piano do
    use_real_time
    note, velocity = sync "/midi:op-z_0:2/note_on"
    synth :piano, note: note, amp: velocity / 127.0
  end
