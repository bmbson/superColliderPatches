s.plotTree;

(
SynthDef.new(\808, {
	arg frequency=45;
	var sig, env;
	env = XLine.kr(1, 0.001, 2, doneAction:2);
	sig = SinOsc.ar(frequency) * env;
	Out.ar(0, sig);
	Out.ar(1, sig);
}).add;
)


x = Synth.new(\808, [\frequency, 50]);

x.set(\frequency, 1500);