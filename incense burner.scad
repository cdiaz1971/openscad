$fn=100;

difference(){
translate([0,0,10]) cylinder(20, r1=20,r2=1, center = true);
translate([0,0,21]) cylinder(10,r=1, center = true);
}


difference (){
translate([0,0,20]) cylinder(20,4,40, center = true);

translate([0,0,25]) cylinder(21,4,48, center = true);
}