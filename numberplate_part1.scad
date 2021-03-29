plate_height = 4;

#translate([12.5,88.5,16]) rotate([20,0,0]) 
    difference(){
    cylinder(plate_height,8,8);
    #translate([0,0,0]) rotate([0,0,0]) cylinder(plate_height+1,3.25,3.25);
}

translate([7.5,70,0]) rotate([45,0,0]) cube([10,20,plate_height]);

difference(){
    union (){
    translate([-32.5,40,0]) rotate(0)roundedcube (90, 30, plate_height, 3);
    translate([0,0,0]) rotate(0) roundedcube (25, 70, plate_height, 3);
    }
    //bottom hole
    translate([8.5,8,0]) cube([8,20,plate_height+1]);
    translate([12.5,28,0]) cylinder(plate_height+1,4,4);
    translate([12.5,8,0]) cylinder(plate_height+1,4,4);
}

/*difference(){
    roundedcube (180, 22, plate_height+1, 3);
    // mid hole
    translate([9.5,11,0]) cylinder(plate_height+1,4.5,4.5);
    //left hole
    translate([9.5,6.5,0]) cube([5,9,plate_height+1]);
    translate([15.5,11,0]) cylinder(plate_height+1,4.5,4.5);
    translate([90,11,0]) cylinder(plate_height+1,4.5,4.5);
    //right hole
    translate([165.5,6.5,0]) cube([5,9,plate_height+1]);
    translate([165.5,11,0]) cylinder(plate_height+1,4.5,4.5);
    translate([170.5,11,0]) cylinder(plate_height+1,4.5,4.5);
}*/

module roundedcube(xx, yy, height, radius) {

difference(){

    cube([xx,yy,height]);

    difference(){
        translate([-.5,-.5,-.2])
        cube([radius+.5,radius+.5,height+.5]);

        translate([radius,radius,height/2])
        cylinder(height,radius,radius,true);
    }
    translate([xx,0,0])
    rotate(90)
    difference(){
        translate([-.5,-.5,-.2])
        cube([radius+.5,radius+.5,height+.5]);

        translate([radius,radius,height/2])
        cylinder(height,radius,radius,true);
    }

    translate([xx,yy,0])
    rotate(180)
    difference(){
        translate([-.5,-.5,-.2])
        cube([radius+.5,radius+.5,height+.5]);

        translate([radius,radius,height/2])
        cylinder(height,radius,radius,true);
    }

    translate([0,yy,0])
    rotate(270)
    difference(){
        translate([-.5,-.5,-.2])
        cube([radius+.5,radius+.5,height+.5]);

        translate([radius,radius,height/2])
        cylinder(height,radius,radius,true);
    }
}
}