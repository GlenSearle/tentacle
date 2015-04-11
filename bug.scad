echo ($t);

include <./servo-s2309s.scad>;
wall=1.6;
hip_angle=[30,-30,30,-30,0,0,0,0];
foot_angle=[-70,-50,-70,-50,-30,-10,0,0];
foot_length=[80,80,80,80,80,80,80,80];
leg_count=6;


//The amount of extra space around the servo sides.
//X & Y of the main body only.
ServoPadding=0.2;

//Base translation

translate([0,0,-11]) color("orange"){
difference(){
 cylinder (h=5, r=66, $fn=leg_count*2);
 translate([0,0,-0.5])
 cylinder (h=6, r=30, $fn=120);
}}


for ( leg_number = [0 : leg_count-1] )
{
//Hip translation

    rotate( leg_number * 360 / leg_count, [0, 0, 1])
    //echo (leg_number);
    translate([50, 0, 0])
    rotate ([0,0,180]){
    hip();



//Leg and first servo

     rotate([0,0,hip_angle[leg_number]])//3rd value is X.
     
     translate([-60,11.2,0]) rotate([90,0,180]){
     color("red")
     import("./Tenticle_arm_joint.stl");
      color("white") 
      translate([-60,1,-11])
      rotate([-90,0,0])
      import("./ServoSmallArm.stl");

//Foot
draw_servo([0,0,0]);
rotate([0,0,foot_angle[leg_number]]){
color("white")import("./ServoSmallArm.stl");

rotate([-90,0,180])translate([-18,0,-5.8]){
clamp();
rotate([0,0,180]) translate([6.1,0,0]){
        beam(foot_length[leg_number]);
        cube([80,40,wall]);
}}}//End foot

}
}
} //End for loop

module flipper(){
    
    }

module magnet (){
    
    }





module hip(){

difference(){
translate([-AxleOffset+0.01,-wall-ServoBody[1]/2,-0.1-FlangeToBottom-wall]) 
union(){
cube([ServoBody[0]+wall,ServoBody[1]+wall*2,FlangeToBottom+wall+Flange[2]]);
//pivot hole
translate([AxleOffset+0.01,wall+ServoBody[1]/2,0.1]) 
rotate([0,180,0]){
 cylinder(r=2.5+wall, h=3);
 translate([-7,-(wall/2),0])
  cube([5,wall,3]);
}
translate([0,wall+ServoBody[1]/2,0])
cylinder(r=wall+ServoBody[1]/2,h=FlangeToBottom+wall+Flange[2]);
}
draw_servo([0,0,0]);

//cable out.
translate([-14.9,-10,-FlangeToBottom-wall-0.2])
cube([10,20,11]);
//Arch for servo cable.
translate([-4.5,0,-8]) scale([0.7,1,1]) cylinder(r=12.5/2,h=9);

//pivot hole
translate([0,0,-FlangeToBottom+0.1])
rotate([0,180,0]) cylinder(r=2.5, h=5);
}

draw_servo([0,0,0]);
}//end module



/*



FootAngle=(90*sin(360*$t*10));
WristAngle=(90*sin(360*$t*5));
HipAngle=(90*sin(360*$t));


//Base translation 
translate([14,0,120]){

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


color("red")
import("./tenticle-suction-base.stl");
*/









