(
SynthDef(\snare, {
	var env, sig, filter;
	env = XLine.kr(1, 0.001, 0.3, doneAction:2);
	sig = BrownNoise.ar() * env;
	Out.ar(0, sig);
	Out.ar(1, sig);
}).add;
)

x = Synth.new(\snare);