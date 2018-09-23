$fn=50;

// module myBox(width=110, depth=65, height=30, thickness = 2){
//     // external dimensions
//     // width=110; // x axis
//     // depth=65;  // y axis
//     // height=30; // z axis
//     aWalls=[
//         [0,0], [width,0], [width,depth], [0,depth],
//         [0+thickness,0+thickness], [width-thickness, 0+thickness], [width-thickness, depth-thickness], [0+thickness, depth-thickness]
//     ];
//     bWalls=[
//         [0, 1, 2, 3], // external borders
//         [4, 5, 6, 7]  // internal borders
//     ];
    
//     aBotom=[[0,0], [width,0], [width, depth], [0,depth]];
//     bBottom=[[0, 1, 2, 3]];

//     union(){
//         color([0.8,0.5, 1])
//             linear_extrude(height = height){
//                 polygon(aWalls, bWalls);
//             };
        
        
//         color([1, 0.5, 0.8])
//             linear_extrude(height = thickness){
//                 polygon(aBotom, bBottom);
//             };
//     }
// }

// myBox(width=110, depth=65, height=30, thickness = 3);


module myStand(){
    aWalls=[
          [0,0],  [200,0], [200,180],  [0,180],
        [10,30], [190,30], [190,175], [10,175],
         [10,0],  [190,0],  [190,20],  [10,20],
    ];

    bWalls=[
        [0, 1, 2, 3],
        [4, 5, 6, 7],
        [8, 9, 10, 11] 
    ];
    
    linear_extrude(3){
        polygon(aWalls, bWalls);
    };

    union(){
        cube([10,3,8]);

        translate([190, 0, 0]){
            cube([10,3,8]);
        }

        translate([0, 170, 0]){
            cube([20, 10, 23]);
        }

        translate([180, 170, 0]){
            cube([20, 10, 23]);
        }
    }
}

module mySlice(){
    CubePoints = [
      [   -1,   3.5,  3.5 ],  //0
      [ 201,   3.5,  3.5 ],  //1
      [ 201, 180, 23 ],  //2
      [   -1, 180, 23 ],  //3

      [   -1,    3.5,  7.5 ],  //4
      [ 201,    3.5,  7.5 ],  //5
      [ 201,  180, 30 ],  //6
      [   -1,  180, 30 ],  //7
    ];
      
    CubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3],  // left
    ];
      
    polyhedron( CubePoints, CubeFaces );
}

difference(){
    myStand();
    mySlice();
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


