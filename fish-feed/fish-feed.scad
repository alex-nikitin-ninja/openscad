$fn=100;



difference(){
    difference(){
        rotate_extrude(convexity = 10){
            translate([24.5, 0, 0]){
                circle(d = 9);
            }
        }

        rotate_extrude(convexity = 10){
            translate([24.5, 0, 0]){
                circle(d = 7.4);
            }
        }
    }


    // translate([0, 0, -20]){
    //     cube([60,60,40]);
    // }
}