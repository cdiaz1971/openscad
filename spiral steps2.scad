stairwid=100;

//base
linear_extrude(height=stairwid*2,twist=360,slices=36)
qtrcircle(stairwid/2);
    
//steps and balusters
for(i=[0:1:11]){
    rotate(-i*30)translate([0,0,i*stairwid/6])cube([stairwid/4,stairwid/2-stairwid/10,stairwid/6]); 
      rotate(-i*30)translate([0,stairwid/2 - stairwid/10,i*stairwid/6])cube([4,2,stairwid*2/3]);
    }
//railing
    translate([0,0,stairwid/2+stairwid/10+2])
    
    linear_extrude(height=stairwid*2,twist=360,slices=36)
    
    translate([0,stairwid/3+stairwid/20+2])rotate(90)circle(stairwid/15);
    
module qtrcircle(sz){
intersection()
    {
        circle(sz);
        square(sz);
    }    
 }