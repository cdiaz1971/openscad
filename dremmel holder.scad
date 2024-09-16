$fn=100;
rad=5.6;

//%import("/home/paul/Downloads/10mmHook.stl");
module peghookbase(thickness) {
    difference(){
        union(){

//cylinder behind hook
translate([-6 - thickness/2,0,0])rotate([90,0,0])cube([thickness,6,35], center=true);
translate([-4,-12.7,0])rotate([0,90,0])cylinder(r=3,h=8, center=true);
translate([-4,12.7,0])rotate([0,90,0])cylinder(r=3,h=8, center=true);
translate([1.5,13.15,0])rotate([0,90,15])cylinder(r1=2.9,r2=2.5,h=5, center=true);
translate([3.1,14.1,0])rotate([0,90,60])cylinder(r1=2.6,r2=2.5,h=3,center=true);
//hooks
   translate([3.8,16.1,0])rotate([0,90,80])cylinder(r1=2.5,r2=2.4,h=4,center=true);}
   rotate([0,0,20])translate([6,4,0])cube(12, center=true);}
}



translate([65,45,0])rotate([90, 0,90])peghookbase(7.5);
translate([-10,45,0])rotate([90, 0,90])peghookbase(7.5);
//translate([0,-38.1,0])rotate([90, 180,0])peghookbase(7.5);
//translate([0,38.1,0])rotate([90, 180,0])peghookbase(7.5);
//base
translate([25,30,0])difference(){
    cube([120,10,35], center=true);

}



difference()
{
translate([0,2,0])    cylinder(35,d=55, center = true);
translate([0,2,0])     cylinder(37,d=47.1, center= true);
}
difference()
{
    translate([48,3,0]) cylinder(35,24,24, center = true);
    translate([48,3,0]) cylinder(37,22,22, center = true);
}