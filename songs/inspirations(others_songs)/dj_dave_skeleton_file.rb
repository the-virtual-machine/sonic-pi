
# The attribution for this code is to the authors of this paper:
# https://zenodo.org/records/11350025
# DJ_Dave, Lil Data and Kero Kero Bonito

use_bpm 140

live_loop :met1 do
  sleep 1
end

cmaster1 = 130
cmaster2 = 130

samp = "/Desktop/dj_dave/samples/**"
splice = "/Splice/**"

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

live_loop :kick, sync: :met1 do
  ##| stop
  sample :bd_tek, amp: 2, cutoff: cmaster1
  sleep 1
end

live_loop :clap, sync: :met1 do
  ##| stop
  sleep 1
  sample :splice, "BB", amp: 0.5, cutoff: cmaster1
  sleep 1
end


live_loop :hhc, sync: :met1 do
  ##| stop
  sample :splice, "PMLB", amp: 2, cutoff: cmaster2
  sleep 0.25
end


with_fx :reverb, damp: 0.5, mix: 0.2 do
  live_loop :hho, sync: :met1 do
    ##| stop
    sleep 0.5
    sample samp, "hho_analog", amp: 0.5, cutoff: cmaster2
    sleep 0.5
  end
end

live_loop :arp, seed: 1, sync: :met1 do
  ##| stop
  use_synth :beep
  tick
  notes = (scale :a6, :major_pentatonic).shuffle
  play notes.look, amp: 1 release: 0.25, cutoff: 80, pan: [-0.5, 0.5].choose
  sleep 0.5
end

live_loop :sampleslicer, sync: :met1 do
  ##| stop
  slice = rand_i(8*2*2*2)
  slice_size = 0.125/2/2/2
  s = slice * slice_size
  f = s + slice_size
  sample samp, "vox", start: s, finish: f, amp: 1, cutoff: 130, pan: [-0.5, 0.5].choose
  sleep 0.5
end
