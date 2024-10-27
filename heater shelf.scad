$fn=100;

difference()
{
   minkowski()
   { 
    cube([152, 82, 11], center = true);
    sphere(1.);
   }   
   translate([0,0,3]) cube([149,79,8], center = true);
 
}

minkowski()
   { 
       translate([0,-42.5,14.7]) cube([152,2,40], center = true);
       
       sphere(1.);
   }

/*
minkowski()
   { 
       translate([0,-35.5,-22]) cube([152,11,40], center = true);
       
       sphere(1.);
   }

minkowski()
   { 
       translate([0,-20.5,-11]) cube([152, 41, 11], center = true);
       sphere(1.);
   }
   */
   
   