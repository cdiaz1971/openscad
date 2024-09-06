

$fa = 1;
$fs = 0.5;

$fn = 100;

//plate
minkowski()
{
translate([-51,0,6]) cube([3,25,45], center = true);
sphere(2);
}


//rod that goes down from plate
rotate([0,-90,0]) translate ([6,0,0]) cylinder(51,3,3);

//90 elbow
rotate([90,0,0])rotate_extrude(angle = 90)

//other rod
translate([6, 0])
circle(r = 3);


//cap at the end

translate([6,0,-82]) cylinder(82,3,3);
minkowski(){
translate([6,0,-86]) cylinder(3,3,3);
    sphere(1);
}

