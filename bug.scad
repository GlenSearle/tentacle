echo ($t);

include <./servo-s2309s.scad>;
wall=1.6;
hip_angle=[30,-30,30,-30,0,0,0,0];
foot_angle=[-70,-50,-70,-50,-30,-10,0,0];
foot_length=[80,80,80,80,80,80,80,80];
paddle=[0,1,0,0,0,0,0,0,0,0];
blow=[1,0,1,1,0,0,0,0,0,0];
leg_count=5;



//fan=number of blades, length of side, height.
fan_default=[6,20,5,6];
translate([-23,-23,-15])
    fan([7,46,12]);

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
        if ( paddle[leg_number] == 1 )
            flipper(foot_length[leg_number]);
        if ( blow[leg_number] == 1 )
            mirror([0,1,0])
            translate([wall,7,wall])
            fan([5,20,5]);
            
}}}//End foot

}
}
} //End for loop

module flipper(distance){
    difference(){
      hull(){
        translate([0,-20,0])
          cube([1,30,wall]);
        translate([distance,-35,0])
          cube([1,70,wall]);
      }
      translate([0,-5,-5])
         cube([distance,10,10]);  
    }}

module magnet (){
    
    }

module fan (fan) {
//fan=number of blades, length of side, height.
//fan=[5,40,10];
color([0,0,0])
difference(){
cube ([fan[1],fan[1],fan[2]]);
    translate([fan[1]/2,fan[1]/2,0]){
cylinder(h=30, center=true, r=(fan[1]/2)-2); 
    }}
color("white") translate([fan[1]/2,fan[1]/2,0])   
for ( angle=[45:90:360] ){
    rotate([0,0,angle]) 
    translate([sqrt(pow(fan[1]/2,2) + pow(fan[1]/2,2))-4,0,-1])
    cylinder(h=fan[2]+3, r=fan[1]/15);
    
}

translate([fan[1]/2,fan[1]/2,0])
color("yellow") cylinder(h=fan[2], r=fan[1]/5);
translate([(fan[1]/2),(fan[1]/2),1])
for ( angle=[0: fan[0]] ){
    rotate([0,30,angle*(360/fan[0])])
    cube ([fan[1]/15,(fan[1]/2)-2,fan[2]]);
    }
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









