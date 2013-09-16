include <./servo-s2309s.scad>;
wall=1.3;
BeamLength=64;

rotate([0,0,180])
translate([3.71+wall,7-wall-ServoBody[1]/2,-FlangeToBottom-wall])
beam(BeamLength);

rotate([0,0,180])
translate([BeamLength+14+wall,2-wall-ServoBody[1]/2,-FlangeToBottom-wall]) clamp();

mirror([])

translate([-6,12.8-wall-ServoBody[1]/2,-FlangeToBottom-wall])
rotate([0,0,180])
clamp();




