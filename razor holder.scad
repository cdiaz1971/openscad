$fn=100;

difference()
{
difference()
{
  cylinder(76,13,13);
  translate ([0,0,2]) cylinder(76,12,12);

}
cylinder(6,2,2, center = true);
}

translate([0,12.5,38]) cube([19,2,76], center = true);