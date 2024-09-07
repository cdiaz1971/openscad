
rodl=154;
rod=6;
$fa = 1;
$fs = 0.5;

$fn = 100;

//plate
minkowski()
{
translate([-51,0,6]) cube([3,45,65], center = true);
sphere(2);
}


//rod that goes down from plate
rotate([0,-90,0]) translate ([6,0,0]) cylinder(51,rod,rod);

//90 elbow
rotate([90,0,0])rotate_extrude(angle = 90)

//other rod
translate([6, 0]) circle(r = rod);


//cap at the end
translate([6,0,-rodl]) cylinder(rodl,rod,rod);
minkowski(){
translate([6,0,-rodl]) cylinder(rod,rod,rod);
    sphere(1);
}

