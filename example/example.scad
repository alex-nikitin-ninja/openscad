$fn=25;
translate([0, 0, -2.5]) {

    difference(){
        translate([-5, -5, 0]) {
            cube([10, 10, 1]);
        };

        translate([-2.5, -2.5, -0.5]) {
            color([0.8, 0.8, 0.5]) cube([5, 5, 2]);
        };
    }

    difference(){
        difference(){
            translate([0, 0, 5]) {
                sphere(d = 2);
            };

            translate([0, 0, 2.01]) {
                cylinder(d1 = 4, d2 = 0, h = 5);
            };
        }

        translate([0, 0, 5]) {
            rotate([15,15,0]){
                rotate_extrude(convexity = 10)
                translate([2, 0, 0])
                circle(r = 1.1);
            }
        }
    }
};



// minkowski(){
//     cube([10, 10, 1]);
//     cylinder(r=1, h=1);
// }

// difference() {
//     circle(10);
//     square(15);
// }


