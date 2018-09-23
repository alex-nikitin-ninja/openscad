$fn=25;

module myBox(width=110, depth=65, height=30, thickness = 2){
    // external dimensions
    // width=110; // x axis
    // depth=65;  // y axis
    // height=30; // z axis
    aWalls=[
        [0,0], [width,0], [width,depth], [0,depth],
        [0+thickness,0+thickness], [width-thickness, 0+thickness], [width-thickness, depth-thickness], [0+thickness, depth-thickness]
    ];
    bWalls=[
        [0, 1, 2, 3], // external borders
        [4, 5, 6, 7]  // internal borders
    ];
    
    aBotom=[[0,0], [width,0], [width, depth], [0,depth]];
    bBottom=[[0, 1, 2, 3]];

    union(){
        color([0.8,0.5, 1])
	        translate([0, 0, thickness*0.1]) {
	            linear_extrude(height = height){
	                polygon(aWalls,bWalls);
	            };
	        }
        
        
        color([1, 0.5, 0.8])
            linear_extrude(height = thickness){
                polygon(aBotom, bBottom);
            };
    }
}

module myCover(width=110, depth=65, height=30, thickness = 2){
    // external dimensions
    // width=110; // x axis
    // depth=65;  // y axis
    // height=30; // z axis
    aTop=[
        [0,0], [width,0], [width, depth], [0,depth],
    ];
    bTop=[
        [0, 1, 2, 3],
    ];
    

    aWalls=[
    	[0+thickness+thickness*0.05,0+thickness+thickness*0.05], [width-thickness+thickness*0.05,0+thickness+thickness*0.05], [width-thickness+thickness*0.05, depth-thickness+thickness*0.05], [0+thickness+thickness*0.05,depth-thickness+thickness*0.05],
    	[0+2*thickness,0+2*thickness], [width-2*thickness,0+2*thickness], [width-2*thickness, depth-2*thickness], [0+2*thickness,depth-2*thickness]
    ];
    bWalls=[
    	[0, 1, 2, 3],
    	[4, 5, 6, 7]
	];

    union(){
        color([0.5,0.5, 1])
            linear_extrude(height = thickness){
                polygon(aTop, bTop);
            };
        
        color([1, 0.5, 0.8])
	        translate([0, 0, thickness*0.1]) {
	            linear_extrude(height = height){
	                polygon(aWalls, bWalls);
	            };
	        };
    }
}

myBox(width=110, depth=65, height=40, thickness = 3);

translate([0, 70, 0]) {
	myCover(width=110, depth=65, height=15, thickness = 3);
}

// translate([0, 0, -2.5]) {

//     difference(){
//         translate([-5, -5, 0]) {
//             cube([10, 10, 1]);
//         };

//         translate([-2.5, -2.5, -0.5]) {
//             color([0.8, 0.8, 0.5]) cube([5, 5, 2]);
//         };
//     }

//     difference(){
//         difference(){
//             translate([0, 0, 5]) {
//                 sphere(d = 2);
//             };

//             translate([0, 0, 2.01]) {
//                 cylinder(d1 = 4, d2 = 0, h = 5);
//             };
//         }

//         translate([0, 0, 5]) {
//             rotate([15,15,0]){
//                 rotate_extrude(convexity = 10)
//                 translate([2, 0, 0])
//                 circle(r = 1.1);
//             }
//         }
//     }
// };



// minkowski(){
//     cube([10, 10, 1]);
//     cylinder(r=1, h=1);
// }

// difference() {
//     circle(10);
//     square(15);
// }


