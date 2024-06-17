~808DURATION = 0;
~808Frequency= 80;

(
{
	SinOsc.ar(
		mul: Env.linen(attackTime:0.1, sustainTime:0, releaseTime:1, level:1, curve:'lin').kr(1),
		freq: 80,
	)
}.play;
)

