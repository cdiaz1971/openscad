$fn=100;
bd=60;
bh=40;
ch=30;
cs=19.06;



//candle base
difference(){
    cylinder(bh,d1=bd,d2=bd, center=true);
    translate([0,0,3]) cylinder(bh-2,d1=bd-5,d2=bd-5, center=true);
}

difference()
{
    cylinder(ch,d1=ch,d2=ch, center=true);
    translate([0,0,3]) cylinder(ch-2,d1=cs,d2=cs, center=true);
}