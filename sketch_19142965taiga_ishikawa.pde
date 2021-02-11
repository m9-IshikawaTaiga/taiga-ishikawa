float baseH = 70; 
float wide1=50; 
float depth=20;
float NeckW=15; 
float NeckH =15; 
float FaceW=23;
float FaceH=24; 
float armL1= 40;
float armL2= 33;
float armW=14;
float armdepth= 18;
float fist=8;
float angle1 = 0; 
float angle2= 0; 
float angle3= 0; 
float dif = 1.0;

void setup(){
size(1200, 800, P3D); 
//background(255);
camera(0,-300,0,0, 0, 0, 0, 0, -1);
noStroke(); 
}

void draw(){ stroke(100);
background(255);
if(keyPressed){ if(key == 'b'){
angle1 = angle1- dif; }

if(key == 's'){
angle2= angle2- dif;
}
if(key == 'e'){
angle3= angle3+ dif; }
} 

//base
translate(0,0,0);
fill(#FAC767);
box(wide1,depth,baseH);
//Neck
translate(0,0,baseH/2+NeckH/2);
box(NeckW,depth,NeckH);
//Face
translate(0,0,NeckH/2+FaceH/2);
box(FaceW,depth,FaceH);
//Arm
translate(wide1/2+armdepth/2,0,-NeckH-FaceH/2-armdepth/2);
rotateY(radians(4*angle1/5));
translate(0,0,0);
rotateX(radians(angle2));
translate(0,armdepth/2,0);
rotateY(radians(2*angle3));
translate(0,-armdepth/2,-armdepth/2);
box(armW,depth,armL1);

translate(0,0,-armL1/2);
rotateY(radians(angle1));
rotateY(radians(3*angle3));
translate(0,0,-armL2/2);
box(armW,depth,armL2);
//Fist
fill(#FAC767);
translate(0,0,-armL2/2-fist/2);
sphere(fist);






}
