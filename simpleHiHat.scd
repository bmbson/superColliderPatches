(
SynthDef(\hiHat, {
	var env, sig;
	env = XLine.kr(1, 0.01, 0.1, doneAction:2);
	sig = WhiteNoise.ar() * env;
	Out.ar(0, sig);
	Out.ar(1, sig);
}).add;
)


var hiHat = Synth.new(\hiHat);