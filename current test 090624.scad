y=100;
x=50;
z=(y-x);
difference()
{

minkowski()
{
cube([180,y,100]);
sphere(10);
}

echo (z);
!translate([90, y/2, z]) cylinder(x+10,r=25);

}