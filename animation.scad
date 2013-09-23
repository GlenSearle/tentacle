echo($t);

FootAngle=-90;
WristAngle=90;
ForearmAngle=0;
HipAngle=0;


//Base translation 
translate([14,0,120]){

//Hip translation
rotate([0,0,HipAngle])
translate([59.8,-11,0])
{
//Forearm translatio
translate([0,0,0])
rotate([0,ForearmAngle,0]){
//Wrist translation
rotate([180,WristAngle,0])
translate([27,0,11]){
//foot translation
translate([24,0,-11])
rotate([90,FootAngle,180]){
color("gray")
import("/Users/glen/tentacle/servo.stl");

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
color("red")
import("./tentacle-hip.stl");
}
}


color("yellow")
import("./tenticle-suction-base.stl");









