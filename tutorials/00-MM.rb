# Homework 001
# Reproducing Drums 
# Original: Mary Magdalene Interlude by FKA twigs
# Elements: 
#   Drums:
#   Synths:


# TODO: get a script to roll through all synth
# Synth Candidates:
#   beep blade dark_ambience dsaw dtri
#   dull_bell fm hollow


# Globals
use_random_seed 42
amp_master = 0.5


=begin
# Synth, for melodies
use_synth :dark_ambience
# TODO: chords, time intervals
# TODO: change bmp, time measure?
play :A4, amp: amp_master, 
  attack: 0.1, attack_level: 2, 
  decay: 0.1, decay_level: 1,
  sustain: 2, sustain_level: 0.1,
  release: 2
sleep 1
=end


=begin
# Samples, for percussions
# prefixes: ambi/bass/elec/perc/guit/drum/misc/bd
sample :ambi_drone, amp: amp_master, 
  rate: 0.5, start: 0.5, finish: 0.9,
  attack: 0.01, sustain: 0, release: 0.1
# TODO: parameters for samples
=end


=begin
# External samples, only get 
PATH_FANTACY = "~/cinos/samples/Fantacy/"
fantacy_loops = PATH_FANTACY + "/Loops/"
fantacy_shots = PATH_FANTACY + "/Shots/"
sample fantacy_loops, "Good Life", lpf: 60, amp: amp_master
# sample fantacy_loops, :High, lpf: 70, amp: amp_master
# sample [fantacy_loops, "Fantasy", "BPM"], lpf: 70, amp: amp_master
# TODO: sample fantacy_loops, lambda{|a| ... }, lpf: 70, amp: amp_master
# TODO: get length of samples:
# print sample_duration("../samples/Fantacy/Loops/Cymatics - Fantasy - Good Life 90 BPM D Min (ARP+JU60+P5).wav")
# sample "../samples/Fantacy/Shots/Cymatics - Fantasy - ARP2600 BASS Reaper High - C.wav"
=end


# Control Structure
# loop do end
# live_loop do end
# 5.times do end
# define :xxx do |args| ... end # TODO: why use symbol when define

# TODO: use get and set to manipulate things across threads/live_loops
# TODO: advanced sec 5.7


#=begin
live_loop :test do
  play chord(:B3, :m7), amp: amp_master * rand
  sleep 1
end
#=end


=begin
live_loop :amb do
  use_synth :dark_ambience
  play chord(:C5, :M7), amp: amp_master * rand
  sleep 0.5
end
=end


# TODO: use cue, sync, tick, set, get, and pattern matching for multiloop control
# TODO: multi sample arrangement
# get lengths, scale and trim them to fit in 
# make sure they are in the same key
# sync, thread security






