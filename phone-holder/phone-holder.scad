$fn=75  ;

module myPhoneHolder(){
    difference(){
        translate([0, 0, 0])
            linear_extrude(100){
                points = [
                    [0,0],
                    [30,0], [30, 30], 
                    [-100,30], [-100,70],
                    [-95,70], [-95,75], [-105,75],
                    [-105,70], [-105,25],
                    [25,25], [25,5], [0,5],
                ];
                polygon(points);
            };

        translate([-95, -30, 10]){
            cube([115, 120, 80]);
        }
    }
}

myPhoneHolder();

