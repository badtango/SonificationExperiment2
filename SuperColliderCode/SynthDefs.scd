// SynthDefs

(
b = SynthDef(\blob, { arg i_out = 0, freq, pan, dur1, dur2, mod;
                  var out, note, fadein, sum; 
                                
                      note = freq.midicps;
                    fadein = EnvGen.kr(Env.perc(dur1, dur2), levelScale: 0.4, doneAction: 2);  
                       sum = Blip.ar(note, LFNoise2.kr(mod, 20, 1).midicps, fadein);                
                       out = Pan2.ar(sum, pan, 0.4);   
                             Out.ar(i_out, out);
                             }).send(s);

c = SynthDef(\imp, { arg rate = 1, pany, dur, ringfreq; 
                             var out = 0, env4, play;

                            env4 = EnvGen.kr(Env.perc(0, dur), 1.0, doneAction: 2);
                            play = Ringz.ar(Impulse.ar(rate, 0, env4), 500 *ringfreq, 2);	
                             out = Pan2.ar(play, pany, 0.05);           
                                        Out.ar(0, out);
}).send(s);

e = SynthDef( "willsynth", { arg i_out=0, freq, haha;
                             var out, note;
        note = freq.midicps;
         out = RHPF.ar(SinOsc.ar(note, 0, EnvGen.kr(Env.perc(0.1, 4, 0.06), 
               levelScale: 0.01, doneAction: 2 )),
		        LFNoise1.kr(haha, 36, 90).midicps, 0.01);
	           haha.do({ out = AllpassN.ar(out, 0.05, [0.05, 0.05], haha) });
	           Out.ar( i_out, out );}).send(s);

s = SynthDef(\sickman, { arg i_out = 0, panpos, mody1, mody2, attack, release, lfy2, lfy3;
                  var note, bpf, in, mid, pan2, goenv, lfy;
                      
                       lfy = LFSaw.kr(mody2, 0, 200, 400);
                     goenv = EnvGen.kr(Env.perc(attack, release, 0.6), levelScale: 0.4, doneAction: 2);
                        in = PMOsc.ar(lfy, lfy2, lfy3, 0, goenv);
                       mid = LFSaw.kr(mody1, 0, 200, 1000);
                       bpf = BPF.ar(in, mid, 0.6);
                      pan2 = Pan2.ar(bpf, panpos, 0.6);
                             Out.ar(i_out, pan2);
                             }).send(s);
)
