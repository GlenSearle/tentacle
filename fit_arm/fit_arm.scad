echo ($t);
//spacing=28;//Space between parts.
//over=10;//Stepper arm.
//out=30;//stepper motor.

out=0;
spacing=0;
over=30-$t*30;
/*
FootAngle=(90*sin(360*$t*10));
WristAngle=(90*sin(360*$t*5));
HipAngle=(90*sin(360*$t));
*/

FootAngle=0;
WristAngle=0;
HipAngle=0;

//Base translation 
translate([14,0,120]){

//Hip translation
rotate([0,0,HipAngle])
translate([spacing+59.8,-11,0])
{

//Wrist translation
rotate([180,WristAngle,0])
translate([27+spacing,0,11]){
//foot translation
translate([24+spacing,0,-11])
rotate([90,FootAngle,180]){
color("gray")
translate([0,0,out])
import("../servo.stl");
color("red")
import("../tenticle_foot.stl");
}

translate([24,0+over,-11])
rotate([90,0,180])
color("white")
import("../ServoSmallArm.stl");
color("yellow")
import("../tenticle-ankle.stl");
color("white")
translate([-27,0+over,-11])
rotate([-90,0,0])
import("../ServoSmallArm.stl");
}

rotate([90,0,0]){
color("gray")
translate([0,0,out])
import("../servo.stl");
color("red")
import("../Tenticle_arm_joint.stl");
color("white")
translate([-60,1+over,-11])
rotate([-90,0,0])
import("../ServoSmallArm.stl");
}
}

rotate([0,0,180]){
color("grey")
translate([0,0,out])
import("../servo.stl");
color("yellow")
import("../tentacle-hip.stl");
}
}


color("red")
translate([0,0,-spacing])
import("../tenticle-suction-base.stl");









