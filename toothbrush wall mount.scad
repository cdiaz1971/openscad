$fn=100;

cube([30,1,36], center=true);
translate([0,1,0]) cube([30,2,36], center=true);

difference()
{
translate([-10,-4,0]) cylinder(36,r=6,center = true);
translate([-10,-4,4]) cylinder(38,r=4,center = true);
translate([-10,-4,-15]) cylinder(8,r=1,center=true);
}

difference()
{
translate([0,-4,0]) cylinder(36,r=6,center = true);
translate([0,-4,4]) cylinder(38,r=4,center = true);
translate([0,-4,-15]) cylinder(8,r=1,center=true);
}

difference()
{
translate([10,-4,0]) cylinder(36,r=6,center = true);
translate([10,-4,4]) cylinder(38,r=4,center = true);
translate([10,-4,-15]) cylinder(8,r=1,center=true);
}