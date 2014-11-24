include <utils.scad>;
use <charger.scad>;
$fn=48;
//#charger();

rotate([0,30,0])
difference(){
	translate([0,0,-75/2+22])
		cubeX([166,68,75],radius=5, center=true);
	translate([0,0,22])
			cubeX([136,100,20],radius=5,center=true);
	scale([1.02,1.02,1.02])
		charger();
	translate([75,0,-27])
		cubeX([150,12,70],radius=1,center=true);
	rotate([0,-30,0])
		translate([0,0,-135])
			cube(200,center=true);
	rotate([0,-30,0])
		translate([-135,0,0])
			cube(200,center=true);
	translate([90,0,-22])
		rotate([0,-30,0])
		cubeX([150,12,70],radius=1,center=true);

}