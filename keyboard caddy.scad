tl=200;
mxh=150;
thk=12;
cutw=15;
cuth=210;
cuttk=thk+5;
numcuts=3;
dbs=217;



difference()
{
   cube([tl,thk,mxh]);




//first cutout
   minkowski(){   
   translate([30,-2,80]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }
//second cut
 minkowski(){   
   translate([90,-2,60]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }  
 minkowski(){   
   translate([150,-2,40]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }  
  rotate([0,20,0]) translate([-55,-4,120]) cube([230,17,170]);
}

//second plate
difference()
{
translate([0,dbs,0])   cube([tl,thk,mxh]);




//first cutout
   minkowski(){   
   translate([30,-2+dbs,80]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }
//second cut
 minkowski(){   
   translate([90,-2+dbs,60]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }  
 minkowski(){   
   translate([150,-2+dbs,40]) cube([cutw,cuttk,cuth]);
       sphere(10);
   }  
 rotate([0,20,0]) translate([-55,-4+dbs,120]) cube([230,17,170]);
}


cube([20,dbs,20]);

translate([tl-20,0,0])cube([20,dbs,20]);