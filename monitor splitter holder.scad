$fn=100;

minkowski()
{
difference()
{
cube([79, 25,16], center =true); 
translate([0,0,-2]) cube([47,26,15], center = true);
}
sphere(.5);
}