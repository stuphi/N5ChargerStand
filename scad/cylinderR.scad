module cylinderR(h=10,r1=5,r2=7,radius=2,center=false){
	trans_dist = center==true ? [0,0,-h/2] : [0,0,0];
	r=radius;
	translate(trans_dist)
		hull(){
			union(){
				translate([0,0,r])
				rotate_extrude(convexity = 10)
					translate([r1-r, 0, 0])
						circle(r = r);
				translate([0,0,h-r])
				rotate_extrude(convexity = 10)
					translate([r2-r, 0, 0])
						circle(r = r);
			}
		}
}

cylinderR(h=20,r1=10,r2=10,center=true);