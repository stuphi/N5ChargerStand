module round_square(size,rad){
	union()
	{
		square([size,size-2*rad], center=true);
		square([size-2*rad,size], center=true);
		translate([size/2-rad,size/2-rad])
			circle(r=rad);
		translate([-size/2+rad,size/2-rad])
			circle(r=rad);
		translate([-size/2+rad,-size/2+rad])
			circle(r=rad);
		translate([size/2-rad,-size/2+rad])
			circle(r=rad);
	}
}

round_square(10,2);