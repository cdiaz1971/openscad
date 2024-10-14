// include <gridfinity_modules.scad>
use <gridfinity_cup_modules.scad>

// X dimension in grid units
width = 3; // [ 0.5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
// Y dimension in grid units
depth = 1; // [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
// Z dimension (multiples of 7mm)
height = 4.5;
// (Zack's design uses magnet diameter of 6.5)
magnet_diameter = 0;  // .1
// (Zack's design uses depth of 6)
screw_depth = 0;
// Hole overhang remedy is active only when both screws and magnets are nonzero (and this option is selected)
hole_overhang_remedy = true;
//Only add attachments (magnets and screw) to box corners (prints faster).
box_corner_attachments_only = false;
// Fill in solid block (overrides all following options)
filled_in = true;
// X dimension subdivisions
chambers = 0;
// Include overhang for labeling (and specify left/right/center justification)
withLabel = "disabled"; // ["disabled", "left", "right", "center", "leftchamber", "rightchamber", "centerchamber"]
// Include larger corner fillet
fingerslide = false;
// Width of the label in number of units, or zero means full width
labelWidth = 0;  // .01
// Minimum thickness above cutouts in base (Zack's design is effectively 1.2)
floor_thickness = 0.7;
// Wall thickness (Zack's design is 0.95)
wall_thickness = 0.95;  // .01
// Efficient floor option saves material and time, but the floor is not smooth (only applies if no magnets, screws, or finger-slide used)
efficient_floor = false;
// When enabled, irregular subdivisions have to be defined in code
irregular_subdivisions = false;
// Enable to subdivide bottom pads to allow half-cell offsets
half_pitch = false;
// Remove some or all of lip
lip_style = "none";  // [ "normal", "reduced", "none" ]

module end_of_customizer_opts() {}

// Separator positions are defined in terms of grid units from the left end
separator_positions = [ 0.25, 0.5, 1.4 ];
//drill bit diameters
bd516 = 7.9;
bd316=4.8;
bd38 = 9.5;
bd14 = 6.4;
bd12 = 9.6;
bd716 = 9.6;
bd732 = 5.6;
bd532=4;
bdr1=3.1;
bdr2=2.8;
bdr3=2.1;

//masonry bits sizes
mbr38 = 8;
mbr14 = 5.3;
mbr516 = 7.5;

//hole depth
hd=27;
//space between holes 
space=12;
fh=-11;
//faces
$fn=100;
//back row holes
difference(){
    grid_block(width, depth, height, magnet_diameter=magnet_diameter, 
    screw_depth=screw_depth, hole_overhang_remedy=hole_overhang_remedy,
    half_pitch=half_pitch, box_corner_attachments_only=box_corner_attachments_only);

    //back row
    translate ([fh+(space*0),11,20]) cylinder(hd, d1=bd12, d2=bd12, center=true);
    translate ([fh+(space*1),11,20]) cylinder(hd, d1=bd716, d2=bd716, center=true);
    translate ([fh+(space*2),11,20]) cylinder(hd, d1=bd38, d2=bd38, center=true);
    translate ([fh+(space*3),11,20]) cylinder(hd, d1=bd516, d2=bd516, center=true);
    translate ([fh+(space*4),11,20]) cylinder(hd, d1=bd516, d2=bd516, center=true);
    translate ([fh+(space*5),11,20]) cylinder(hd, d1=bd516, d2=bd516, center=true);
    translate ([fh+(space*6),11,20]) cylinder(hd, d1=bd14, d2=bd14, center=true);
    translate ([fh+(space*7),11,20]) cylinder(hd, d1=bd14, d2=bd14, center=true);
    translate ([fh+(space*8),11,20]) cylinder(hd, d1=bd38, d2=bd38, center=true);
    translate ([fh+107,14,24]) cylinder(hd-11, d1=bdr1, d2=bdr1, center=true);
    translate ([fh+107,9,24]) cylinder(hd-11, d1=bdr2, d2=bdr2, center=true);
    translate ([fh+107,4,24]) cylinder(hd-11, d1=bdr3, d2=bdr3, center=true);
    //front row
    translate ([fh+(space*0),-5,20]) cylinder(hd, d1=bd316, d2=bd316, center=true);
    translate ([fh+(space*1),-5,20]) cylinder(hd, d1=bd732, d2=bd732, center=true);
    translate ([fh+(space*2),-5,20]) cylinder(hd, d1=bd14, d2=bd14, center=true);
    translate ([fh+(space*3),-5,20]) cylinder(hd, d1=bd14, d2=bd14, center=true);
    translate ([fh+(space*4),-5,20]) cylinder(hd, d1=bd14, d2=bd14, center=true);
    translate ([fh+(space*5),-5,20]) cylinder(hd, d1=mbr38, d2=mbr38, center=true);
    translate ([fh+(space*6),-5,20]) cylinder(hd, d1=mbr516, d2=mbr516, center=true);
    translate ([fh+(space*7),-5,20]) cylinder(hd, d1=mbr516, d2=mbr516, center=true);
    translate ([fh+(space*8),-5,20]) cylinder(hd, d1=mbr516, d2=mbr516, center=true);
    translate ([fh+(space*9),-5,20]) cylinder(hd, d1=mbr14, d2=mbr14, center=true);
   translate ([50,0,10]) cube([200,70,38.4], center = true); 
}


//back row labels
translate ([fh,2,29]) linear_extrude(3) text( "1/2", size= 3, halign = "center");
translate ([fh+space,2,29]) linear_extrude(3) text( "7/16", size= 3, halign = "center");
translate ([fh+space*2,2,29]) linear_extrude(3) text( "3/8", size= 3, halign = "center");
translate ([fh+(space*3),2,29]) linear_extrude(3) text( "5/16", size= 3, halign = "center");
translate ([fh+(space*4),2,29]) linear_extrude(3) text( "5/16", size= 3, halign = "center");
translate ([fh+(space*5),2,29]) linear_extrude(3) text( "5/16", size= 3, halign = "center");
translate ([fh+(space*6),2,29]) linear_extrude(4) text( "1/4", size= 3, halign = "center");
translate ([fh+(space*7),2,29]) linear_extrude(4) text( "1/4", size= 3, halign = "center");
translate ([fh+(space*8),2,29]) linear_extrude(4) text( "3/8", size= 3, halign = "center");

//front row labels
translate ([fh,-13,29]) linear_extrude(3) text( "3/16", size= 3, halign = "center");
translate ([fh+space,-13,29]) linear_extrude(3) text( "7/32", size= 3, halign = "center");
translate ([fh+(space*2),-13,29]) linear_extrude(3) text( "1/4", size= 3, halign = "center");
translate ([fh+(space*3),-13,29]) linear_extrude(3) text( "1/4", size= 3, halign = "center");
translate ([fh+(space*4),-13,29]) linear_extrude(3) text( "1/4", size= 3, halign = "center");
translate ([fh+(space*5),-13,29]) linear_extrude(3) text( "3/8*", size= 3, halign = "center");
translate ([fh+(space*6),-13,29]) linear_extrude(3) text( "5/16*", size= 3, halign = "center");
translate ([fh+(space*7),-13,29]) linear_extrude(3) text( "5/16*", size= 3, halign = "center");
translate ([fh+(space*8),-13,29]) linear_extrude(3) text( "5/16*", size= 3, halign = "center");
translate ([fh+(space*9),-13,29]) linear_extrude(3) text( "1/4*", size= 3, halign = "center");

/*if (filled_in) {
  grid_block(width, depth, height, magnet_diameter=magnet_diameter, 
    screw_depth=screw_depth, hole_overhang_remedy=hole_overhang_remedy,
    half_pitch=half_pitch, box_corner_attachments_only=box_corner_attachments_only);
}
else if (irregular_subdivisions) {
  irregular_cup(
    num_x=width,
    num_y=depth,
    num_z=height,
    withLabel=withLabel,
    labelWidth=labelWidth,
    fingerslide=fingerslide,
    magnet_diameter=magnet_diameter,
    screw_depth=screw_depth,
    floor_thickness=floor_thickness,
    wall_thickness=wall_thickness,
    hole_overhang_remedy=hole_overhang_remedy,
    separator_positions=separator_positions,
    half_pitch=half_pitch,
    lip_style=lip_style,
    box_corner_attachments_only=box_corner_attachments_only
  );
}
else {
  basic_cup(
    num_x=width,
    num_y=depth,
    num_z=height,
    chambers=chambers,
    withLabel=withLabel,
    labelWidth=labelWidth,
    fingerslide=fingerslide,
    magnet_diameter=magnet_diameter,
    screw_depth=screw_depth,
    floor_thickness=floor_thickness,
    wall_thickness=wall_thickness,
    hole_overhang_remedy=hole_overhang_remedy,
    efficient_floor=efficient_floor,
    half_pitch=half_pitch,
    lip_style=lip_style,
    box_corner_attachments_only=box_corner_attachments_only
  );
}
*/