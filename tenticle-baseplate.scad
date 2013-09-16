//radius of cone bottom in mm.
base=[13,2,0];

//Size of bolt holes in mm.
holes=3;

//Number of feet on the base.
feet=3; 

//Distance in mm to from the center to the bolt holes.
range=50; 

//Resolution of 3D printer in mm.
$fs=0.2;

hole=[14,12.3,72];



 


difference(){
union(){
cylinder (r2=10,r1=base[0],h=25);
for (turn=[0:360/feet:359]){
  rotate([ 0,0,turn]){
   difference(){
	hull(){   
     cylinder (r=base[0],h=base[1]);
     translate ([range,0,0]) cylinder (r=5,h=base[1]);
    }
	translate ([range,0,-1]) #cylinder (r=holes/2,h=base[1]*2);
   }
  }
 }
}
translate([-hole[0]/2,-hole[1]/2,-0.1])
cube (hole);
translate([-hole[0]/2,-hole[1]/2,base[1]])
translate([0,1,0]) rotate([90,0,0]) cube (hole);
}


//translate([-hole[0]/2,-hole[1]/2,base[1]]) rotate([135,0,0]) #cube ([hole[0],hole[1],10]);