$fn=100;
difference()
{
cube([9,40,19]);
translate([-1,-1,10.5]) cube([10.5,39,6.5]);
}

rotate([0,90,0]) translate([-5,35,0]) cylinder(150,3,3);

difference()
{
translate([150,0,0])cube([9,40,19]);
translate([149,-1,10.5])cube([10.5,39,6.5]);
}
