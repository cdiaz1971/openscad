//VARS
Stair_ht=120;
Step_ht=5;
Step_wd=25;
Support_col=8;
Support_col_no=12;    
//EXEC
    for (i=[0:Step_ht:Stair_ht-Step_ht]){        
        //STEPS
        translate([0,0,i]) 
        rotate([00,0,i*Support_col_no/2])
        step();        
        //SIDE COLUMNS
            rotate([00,0,i*Support_col_no/2+Support_col_no+2]) 
            translate([Step_wd+Support_col,0,0])
            cylinder(d=Support_col,h=Stair_ht,$fn=96);    }
       //CENTER COLUMN
        cylinder(r=Support_col,h=Stair_ht); 
//MODS
module step(){
    translate([0,-Step_ht,0])
    rotate([90,0,00])
        linear_extrude(height=Step_wd,scale=[2,1]){ //STEP SPREAD
            translate([-Step_ht,0])    
                hull(){                                                     //STEP PROFILE
                    translate([Support_col,Step_ht-2])
                    square(2);
                    translate([Support_col,0])
                    square(2);
                    translate([0,Step_ht-1])
                    circle(1,$fn=96);
                    square(2);    }}}