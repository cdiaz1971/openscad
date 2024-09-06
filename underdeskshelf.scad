
include <honeycomb.scad>

$fn=100;

//small horizontal pieces for outside of shelf
translate([0,0,79]) cube([90,8,5]);
translate([0,-457.2,79]) cube([90,8,5]);

//vertical supports
cube([8,8,79]);
translate([0,-457.2,0]) cube([8,8,79]);

//horizontal pieces under shelf
translate([0,0,79-16]) cube([300,8,5]);
translate([0,-457,79-16]) cube([300,8,5]);

//base
//translate([0,-457,0]) cube([300,465,8]);
linear_extrude(10) {
translate([0,-457,0])	honeycomb(300, 465, 30, 4, whole_only=true);
    
}

//vertical pieces in back
translate([292,0,0]) cube([8,8,79-16]);
translate([292,-457.2,0]) cube([8,8,79-16]);

translate([292,-457,79-19]) cube([8,457+8,8]);




