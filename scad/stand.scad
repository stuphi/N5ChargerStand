use <cubeR.scad>;
use <cylinderR.scad>;
use <charger.scad>;
$fn=96;

union(){
	translate([-25,0,-9.3])
		difference(){
			cubeR([20,68,90],radius=10,center=true);
			translate([10,0,0])
				cube([20,70,100],center=true);
			translate([0,0,-50.7])
				cube([30,70,50],center=true);
			translate([0,0,-25])
				cubeR([30,5,10],radius=2, center=true);
			rotate([0,30,0])
				translate([0,0,42.55])
					cube([60,70,20],center=true);
		
		}
	rotate([0,30,0])
		difference(){
			translate([0,0,-90/2+22])
				cubeR([166,68,90],radius=10, center=true);
			translate([-333+138/2,0,22])
					cylinderR(h=20,r1=333,r2=330.9,center=true);
			scale([1.02,1.02,1.02])
				charger();
			translate([75,0,-27])
				cubeR([150,12,70],radius=1,center=true);
			translate([0,0,-38])
				cubeR([200,48,70],radius=20,center=true);
			rotate([0,-30,0])
				translate([0,0,-135])
					cube(200,center=true);
			rotate([0,-30,0])
				translate([-125,0,0])
					cube(200,center=true);
		}
}