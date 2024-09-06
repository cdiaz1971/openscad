

$fa = 1;
$fs = 0.5;



//rotate([90,0,0]) rotate_extrude(angle=95) translate([90,0]) circle(d=10 );

minkowski()
{
translate([0,0,40]) cube([3,25,45], center = false);
sphere(2);
}
/*rotate([0,90,0])  translate([-110,5,-2])  cylinder(10,3,3);
rotate([0,90,0])  translate([-110,17,-2])  cylinder(10,3,3);
rotate([0,90,0])  translate([-20,5,-2])  cylinder(10,3,3);
rotate([0,90,0])  translate([-20,17,-2])  cylinder(10,3,3);
*/


rotate([90,0,0])rotate_extrude(angle = 90)
translate([61, -12.5])
circle(r = 3, $fn = 100);


//hull()
{
translate([61,12.5,-82]) cylinder(82,3,3);
minkowski(){
translate([61,12,-86]) cylinder(3,3,3);
    sphere(1);
}
}