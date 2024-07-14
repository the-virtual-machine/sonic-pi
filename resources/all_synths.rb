# --------------------------------------------------------------------------- #
# Title: all_synths.rb
#
# Date: 2024-02-27
# Unix: 1709057320
# Author: the_virtual_machine
# Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
#
# Description: This sonic pi script will cycle through each synth and play each
# one it also prints the name of the synth to the log so you can play around
# and remember which ones you like
#
# --------------------------------------------------------------------------- #
print("Playing all_synths.rb")
print("From github.com/the-virtual-machine/sonic-pi")
use_random_seed 65535
use_bpm 60

# Get the list of all available synths
synths = synth_names

# Iterate through each synth
synths.each do |synth_name|
  # Use a comment to indicate the current synth
  puts ("Playing Synthe:")
  puts ("#{synth_name}")

  # Play a simple pattern with the current synth
  use_synth synth_name
  play_pattern_timed [:C4, :E4, :G4, :B4], [0.5, 0.25, 0.75, 0.5], release: 0.4

  # Sleep for clarity between synths
  sleep 2
end
puts ("All synths completed!")

# I like these ones
##| gabberkick
##| hoover
##| piano
##| prophet
##| sc808s
##| cowbell
##| sine
##| square
##| tb303
##| winwood lead
