$fn=75  ;

module myHolder(){
    translate([-25,0,0]){
        translate([0, 7.5+3, 0])
            linear_extrude(15){
                points = [[0,0], [25+3,0], [25+3, 3], [0,3]];
                polygon(points);
            };

        translate([0, 0, 0])
            linear_extrude(15){
                points = [[0,0], [25+3,0], [25+3, 3], [0,3]];
                polygon(points);
            };
    }

    difference(){
        union(){
            translate([0, 0, 0])
                linear_extrude(15){
                    points = [[0,0], [0, 7.5+2*3], [155, 7.5+2*3], [155, 0]];
                    polygon(points);
                };

            translate([150, (7.5+2*3)/2, 0]){
                linear_extrude(15){
                    circle(d = 20);
                }
            }
        }

        union(){
            translate([150, (7.5+2*3)/2, -0.5]){
                linear_extrude(17){
                    circle(d = 9.5);
                }
            }
            
            translate([150, (7.5+2*3)/2 - 9.5/2, -0.5]){
                linear_extrude(17){
                    points = [[0,0], [0, 9.5], [15, 9.5], [15, 0]];
                    polygon(points);
                }
            }
        }
    }

}

color([0.5, 0.8, 0.5]) {
    translate([25, 0, 0])
        myHolder();

    translate([25, 25, 0])
        myHolder();
}

