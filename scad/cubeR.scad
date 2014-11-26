module cubeR(size=[10,10,10],radius=2,center=false){
	trans_dist = center==true ? -size/2 : [0,0,0];
	x=size[0];
	y=size[1];
	z=size[2];
	r=radius;
	translate(trans_dist)
		hull(){
			union(){
				translate([r,r,r])
					sphere(r);
				translate([x-r,r,r])
					sphere(r);
				translate([x-r,y-r,r])
					sphere(r);
				translate([x-r,y-r,z-r])
					sphere(r);
				translate([r,y-r,z-r])
					sphere(r);
				translate([r,y-r,r])
					sphere(r);
				translate([x-r,r,z-r])
					sphere(r);
				translate([r,r,z-r])
					sphere(r);
			}
		}
}

cubeR(size=[20,30,40],radius=4, center=false);