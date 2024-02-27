$fn = 128;
base_height = 3.75;
head_height = 10;
radius = 5;
tangent = 1.5;
translate([0,0,base_height+tangent])cylinder(head_height-tangent, 1.07893*radius-0.805, 0);
translate([0,0,base_height])resize([2*radius,2*radius,1.5*radius])sphere(radius);
cylinder(base_height, radius, radius);
