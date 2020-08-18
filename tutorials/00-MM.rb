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

# global
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

# Samples, for percussions
# prefixes: ambi/bass/elec/perc/guit/drum/misc/bd
sample :ambi_drone, amp: amp_master, 
  rate: 0.5, start: 0.5, finish: 0.9,
  attack: 0.01, sustain: 0, release: 0.1

# External samples
