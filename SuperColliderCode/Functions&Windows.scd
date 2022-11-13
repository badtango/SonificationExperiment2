// Functions and Windows

(
"/Users/williamrailton/Desktop/SonificationExperiment2/SuperColliderCode/SynthDefs.rtf".loadPaths;

u = ({ var w, go = true, phase = 0, time, modrand, r, time2, postmod, i, time4, timeegg, k, time3, anmod;

// bottom right 

x = time;
v = modrand;
w = Window.new(bounds: Rect(638, 0, 638, 400), border:false).front;
w.view.background = Color.white;
w.onClose = { go = false; };
w.front;
w.drawHook = {
    Pen.translate(0, 30);
    Pen.use {
    Pen.width = v;
    80.rand.do { Pen.color = Color.grey(rrand(0.0, 1), rrand(0.0, 0.5));};      
    [60.rand, 30.rand, 20.rand, 5.rand].choose.do { Pen.fill; 
    Pen.push;
    Pen.skew;
    Pen.addAnnularWedge(Point(0,0), a = rrand(x.choose, 390), a + 50.rand2, 4pi.rand 
    + (phase * 4.0.rand2), 4pi.rand); 
};
};
};
SystemClock.sched(32.0,{ 
			
Routine({	

		     inf.do({ { while { go } { w.refresh; v.wait } }.fork(AppClock);               
v = 2.0.rand;
x = [60.rand, 30.rand, 20.rand, 10.rand, 5.rand];
Synth(\sickman, [		         \panpos, [-1, 0, 0, 1].choose, 
		                       \mody1, x,
		                       \mody2, x,
		                       \lfy2, v,
		                       \lfy3, x, 	                      
		                       \attack, 0.1, 
		                       \release, 4]);                  
                              v.wait;	 
}); 
}).play(AppClock); 
}); 

// top right 

q = time2;
p = postmod;
r = Window(bounds: Rect(638, 370, 638, 800), border:false);
r.view.background = Color.white;
r.onClose = { go = false; };
r.front;
r.drawHook = {
    Pen.translate(0, 802);
    Pen.use {
    Pen.width = p;
    80.rand.do {
    Pen.color = Color.cyan(rrand(0.0, 1), rrand(0.0, 0.5));
    Pen.fill;
    Pen.push;
    Pen.skew;
    Pen.addAnnularWedge(Point(0,0), b = rrand(60,350), b + 
    q.choose, 4pi.rand 
    + (phase * 4.0.rand2), 4pi.rand);
};
};
};
SystemClock.sched(16.0,{ 

Routine({ 	
		    
		     inf.do({ { while { go } { r.refresh; p.wait.yield } }.fork(AppClock);               
p = 2.0.rand;
q = [10.rand2, 3.rand2, 2.rand2, 1.0.rand2, 20.rand2, 50.rand2, 200.rand2];  
Synth(\imp, [\rate, p, \pany, [-1, 0, 0, 1].choose, \dur, p, \ringfreq, q]);
                    p.wait;
}); 
}).play(AppClock); 
}); 

// Bottom Left

d = time4;
y = timeegg;
i = Window.new(bounds: Rect(0, 0, 638, 400), border:false).front;
i.view.background = Color.white;
i.onClose = { go = false; };
i.front;
i.drawHook = {
    Pen.translate(640, 27);
    Pen.use {
    Pen.width = d;
    2000.rand.do { Pen.color = Color.blue(rrand(0.0, 1), rrand(0.0, 0.5));};      
    [60.rand, 30.rand, 20.rand, 5.rand].choose.do { Pen.fill; 
    Pen.push;
    Pen.skew;
    Pen.addAnnularWedge(Point(0,0), c = rrand([60.rand, 30.rand, 20.rand, 10.rand, 5.rand].choose, 390), c + 50.rand2, 4pi.rand 
    + (phase * 4.0.rand2), y); 
};
};
};
SystemClock.sched(48.0,{ 

Routine({	

		     inf.do({ { while { go } { i.refresh; d.wait } }.fork(AppClock);               

y = 4pi.rand;
d = 2.0.rand;
Synth(\blob, [\freq, y * 6, 
		                               \pan, [-1, 0, 0, 1].choose, 
		                               \dur1, [0.05].choose, 
		                               \dur2, d, 
                                      \mod, y]);
                                      d.wait;  
}); 
}).play(AppClock); 
}); 

// top left

t = time3;
j = anmod;
k = Window.new(bounds: Rect(0, 370, 638, 800), border:false).front;
k.view.background = Color.white;
k.onClose = { go = false; };
k.front;
k.drawHook = {
    Pen.translate(640, 803);
    Pen.use {
    Pen.width = j;
    [8000.rand, 4000.rand, 2000.rand, 100.rand, 10.rand].choose.do { Pen.color = Color.green(rrand(0.0, 0.8), rrand(0.0, 0.5));};      
    [60.rand, 30.rand, 20.rand, 5.rand].choose.do { Pen.fill; 
    Pen.push;
    Pen.skew;
    Pen.addAnnularWedge(Point(0,0), l = rrand([60.rand, 30.rand, 20.rand, 10.rand, 5.rand].choose, 390), l + 50.rand2, 4pi.rand 
    + (phase * 4.0.rand2), t); 
};
};
};
SystemClock.sched(0.0,{ 

Routine({	

		     inf.do({ { while { go } { k.refresh; j.wait } }.fork(AppClock);               
j = 4.0.rand;
t = 4pi.rand;
Synth("willsynth", [\freq, 80, \haha, t]);                                      
                                      j.wait;  
});
}).play(AppClock);
}); 
}); 
u.play;
)
