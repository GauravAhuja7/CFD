// Gmsh project created on Sun Dec 08 15:43:44 2024
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {15, 0, 0, 1.0};
//+
Point(3) = {15, 10, 0, 1.0};
//+
Point(4) = {0, 10, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Point(5) = {7, 5, 0, 0.1};
//+
Point(6) = {9, 5, 0, 0.1};
//+
Point(7) = {5, 5, 0, 0.1};
//+
Point(8) = {7, 8, 0, 0.1};
//+
Point(9) = {7, 2, 0, 0.1};
//+
Line(5) = {8, 7};
//+
Line(6) = {7, 9};
//+
Line(7) = {9, 6};
//+
Line(8) = {6, 8};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {5, 6, 7, 8};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1};
  Layers{1};
  Recombine;
}


//+
Physical Surface("inlet", 51) = {25};
//+
Physical Surface("outlet", 52) = {33};
//+
Physical Surface("bottom", 53) = {29};
//+
Physical Surface("top", 54) = {21};
//+
Physical Surface("diamond", 55) = {49, 37, 41, 45};
//+
Physical Surface("FrontBack", 56) = {50, 1};
//+
Physical Volume("Volume", 57) = {1};
