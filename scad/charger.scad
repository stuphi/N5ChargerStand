$fn=32;
use <utils.scad>;

module charger()
{
	top=60;
	height=12;
	topheight=2;
	toprad=5;
   botheight=height-topheight;
	translate([0,0,botheight])
	union(){
		linear_extrude(height = topheight, center = false, convexity = 10, twist = 0, slices = 2, scale = 1)
				round_square(top,toprad);
		translate([0,0,0.01])
		rotate([180,0,0])
			linear_extrude(height = botheight, center = false, convexity = 10, twist = 0, slices = 2, scale = 0.8)
				round_square(top,toprad);
		translate([0,-5,-8.5])
		cube([48,10,6],center=false);
		translate([0,0,-5.5])
		rotate([0,90,0])
		cylinder(h=70, r1=1.5, r2=1.5);
	}
}

charger();
//round_square(60,5);