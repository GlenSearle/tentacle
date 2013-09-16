ServoBody=[23,12.3,22];
FlangeToBottom=15.5;
Flange=[31.8,12.3,2.3];
FlangeBevel=2.2;
AxleOffset=5;
AxelRadius=4.9/2; //Without adaptor

BoltRadius=1;
$fs=0.2;

//draw_servo();
//color("White") Small_arm_adaptor();
wall=1.3;
//clamp();



module draw_servo(spin) rotate(spin){
//Main body
color("gray") translate([ -AxleOffset, -ServoBody[1]/2, -FlangeToBottom ])
cube(ServoBody);

//Drive shaft
color("white") cylinder(r=AxelRadius, h=14);

//screw hole
//color("white") cylinder(r=AxelRadius/4,h=20,$fs=0.2);

 color("gray") {difference(){
cylinder(r=ServoBody[1]/2, h=10);
translate([-AxleOffset-ServoBody[1], -ServoBody[1]/2, 0.00 ])
 cube(ServoBody[1]);
}
translate([ ServoBody[1]/2, 0.00, 0.00 ])
 cylinder(r=4.5/2, h=10);
translate([ ServoBody[1]/2+3.5, 0.00, 0.00 ])
cylinder(r=2.2/2, h=7);}

translate([-FlangeBevel-AxleOffset,FlangeBevel-Flange[1]/2,0]){
color("gray") minkowski(){
cube([Flange[0]-(FlangeBevel*2),Flange[1]-(FlangeBevel*2),0.001]);
scale([1,1,1])cylinder(r=FlangeBevel, h=Flange[2]);
}}}




module Small_arm_adaptor(){
translate([0,0,12.1]) hull(){
  cylinder(r=7.5/2,h=2);
  translate([13,0,0]) cylinder(r=3/2,h=2);
}
translate([ 0.00, 0.00, 9.9 ]) cylinder(r=7.5/2,h=4);}

module long_armed_adaptor(){
translate([0,0,12.1]) hull(){
  cylinder(r=7.2/2,h=2);
  translate([16.5,0,0]) cylinder(r=5/2,h=2);
  translate([-16.5,0,0]) cylinder(r=5/2,h=2);
}
translate([ 0.00, 0.00, 9.9 ]) cylinder(r=7.2/2,h=4);
}

module cross_adaptor(){
translate([0,0,12.1]){
cylinder(r=8/2,h=2);
hull(){
  cylinder(r=4/2,h=2);
  translate([12.5,0,0]) cylinder(r=3/2,h=2);
  translate([-12.5,0,0]) cylinder(r=3/2,h=2); }
hull(){
  cylinder(r=4/2,h=2);
  translate([0,10.5,0]) cylinder(r=3/2,h=2);
  translate([0,-10.5,0]) cylinder(r=3/2,h=2); }
translate([ 0.00, 0.00, -2.1 ]) cylinder(r=7.2/2,h=4);
}}


module beam(beam_length){
translate([0,-7,0])
difference(){
cube ([beam_length,14,12.3]);
translate([-wall,wall,wall])
cube ([beam_length+(wall*2),14-(wall*2),12]);//z=6.4 for hollow beam.

for (x=[0:10:beam_length-5]){
translate ([x+(beam_length/12),7,-3]){
cylinder(r=2,h=20);
translate([0,20,3+(12.3/2)])
rotate([90,0,0])
cylinder(r=2,h=40);}
}}}


module clamp(){
difference(){
union(){
translate([-10-wall,-10-wall,0])
cube([33+wall,30+(wall*2),12.3]);
translate([18,-10.9,6]) rotate([90,180,0])hull(){
  cylinder(r2=9/2,r1=12.2/2,h=2);
  translate([13,0,0]) cylinder(r2=5/2,r1=5,h=3);
}
}

translate([-10,-10,-0.1])
cube([33.2,30,12.5]);

//end rounding
translate([17,25,12.2/2])rotate([90,0,0])difference(){
translate([0,-12.3/2,0])cube(12.5);
cylinder(r=12.3/2,h=10);
}
translate([17,-5,12.2/2])rotate([90,0,0])difference(){
translate([0,-12.3/2,0])cube(12.5);
cylinder(r=12.3/2,h=10);
}


translate([18,0,12.3/2]){
draw_servo([90,180,0]);
rotate([90,180,0]) Small_arm_adaptor();
}
}
//Pin under servo
rotate([90,0,0]) translate([18,12.3/2,-20.5]) cylinder(r1=2.5,r2=2.2,h=5);

//Cable duct
translate([-20,20,0]) difference(){
cube([10,wall,12.3]);
translate([wall,-0.1,wall])
cube([10-(wall*2),10,12.3-(wall*2)]);
}
translate([-20,-10-wall,0]) difference(){
cube([10,wall,12.3]);
translate([wall,-0.1,wall])
cube([10-(wall*2),10,12.3-(wall*2)]);
}
}

