Server.program = "pw-jack scsynth";

// Not complete

(
SynthDef(\dubTechnoStab, {
	arg freq = 440;
	var sig, env, wave, verb;
	env = XLine.kr(1, 0.01, 3, doneAction: 2);
	wave = Pulse.ar(freq) * env;
	verb = FreeVerb.ar(wave, mix:0.99, room:0.99);
	sig = RLPF.ar(verb, 200, 1.5);
	Out.ar(0, sig);
	Out.ar(1, sig);
}).add;
)

var synth1 = Synth.new(\dubTechnoStab);
