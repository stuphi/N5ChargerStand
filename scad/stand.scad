include <utils.scad>;
use <charger.scad>;
$fn=48;
//#charger();

rotate([0,-60,0])
difference(){
	translate([0,0,-90/2+22])
		cubeX([166,68,90],radius=10, center=true);
	translate([0,0,22])
			cubeX([138,100,20],radius=5,center=true);
	scale([1.02,1.02,1.02])
		charger();
	translate([75,0,-27])
		cubeX([150,12,70],radius=1,center=true);
	translate([0,0,-28])
		cubeX([200,48,50],radius=10,center=true);
	rotate([0,-30,0])
		translate([0,0,-135])
			cube(200,center=true);
	rotate([0,-30,0])
		translate([-162,0,0])
			cube(200,center=true);
}