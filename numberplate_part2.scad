plate_height = 4;

difference(){
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
}
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