echo ($t);

A=90*sin(360*$t*10);
B=90*sin(360*$t*5);
C=90*sin(360*$t*5);
FootAngle=(90*sin(360*$t*10));
WristAngle=(90*sin(360*$t*5));
HipAngle=(90*sin(360*$t));


include <./bug.scad>;
leg_count=5;

hip_angle=[30+(C/2),(C/2)-30,30+(C/2),(C/2)-30,0,0,0,0];
foot_angle=[(B/2)-70,(B/2)-50,(B/2)-70,(B/2)-50,-30,-10,0,0];

//Base translation 
translate([-110,0,75])rotate([0,35,180]){

//Hip translation
rotate([0,0,HipAngle])
translate([59.8,-11,0])
{

//Wrist translation
rotate([180,WristAngle,0])
translate([27,0,11]){
//foot translation
translate([24,0,-11])
rotate([90,FootAngle,180]){
color("gray")
import("./servo.stl");

color("red")
import("./tenticle_foot.stl");
}

translate([24,0,-11])
rotate([90,0,180])
color("white")
import("./ServoSmallArm.stl");
color("yellow")
import("./tenticle-ankle.stl");
color("white")
translate([-27,0,-11])
rotate([-90,0,0])
import("./ServoSmallArm.stl");
}

rotate([90,0,0]){
color("gray")
import("./servo.stl");
color("red")
import("./Tenticle_arm_joint.stl");
color("white")
translate([-60,1,-11])
rotate([-90,0,0])
import("./ServoSmallArm.stl");
}
}

rotate([0,0,180]){
color("grey")
import("./servo.stl");
color("yellow")
import("./tentacle-hip.stl");
}
}












