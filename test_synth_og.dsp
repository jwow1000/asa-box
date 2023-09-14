declare filename "test_synth.dsp";
declare name "test_synth";
import("stdfaust.lib");

declare author "Jeremy WY";
declare copyright "GRAME";
declare license "LGPL with exception";

freq = hslider("freq", 440, 20, 2000, 0.01);
gate = button("gate");
gain = hslider("gain", 0, 0, 1, 0.001);

synth = os.osc(freq) * 0.5;
env = _, en.adsre(0.01,0.1,0.5,1,gate) : *;

process = synth : env *(gain);