int wave=0;//number of waves

float bozmielX=1000.0;
float bozmielY=475;

FloatList bozBX=new FloatList();
FloatList bozBY=new FloatList();

FloatList bozBigBX=new FloatList();
FloatList bozBigBY=new FloatList();

int bozzTimer=0;///////////////////////////////////////////////////////////////////////////////////////
int bozzBigTimer=0;

boolean BShooting=false;
  
int bozmielSpeed=1;

//Bozmie Shield
int bozmieShield=1;

int piller1health=80;
int piller2health=80;
int piller3health=80;

int lightning1=1;
int lightning2=1;
int lightning3=1;

int bozmieShield1=1;
int bozmieShield2=1;
int bozmieShield3=1;

//bozmies health bar
int bozmielHealth=100;  

int bozmielHealthBar1=1; 

//ammo and reload
int ammoNumber=0;
int Mission5PistolAmmo; 
int Mission5PistolAmmoDecreasing;
int Mission5PistolReload=0;
int Mission5Reload=1;

boolean gameOver5=false;

int textBoxM5=1;
 

void mission5(){
  noCursor();
  if(textBoxM5==1){//if text box equals 1 than bozmie is talking
  //you cannot move and cannot fire bullets
  playerX=50;
  playerY=450;
  fireChecker=false;
  image(dungeon,600,475);
 
  //Player 
  float rotateX=playerX-mouseX;
  float rotateY=playerY-mouseY;
  float rotateA=atan2(rotateY,rotateX);
  translate(playerX,playerY);
  rotate(rotateA+3.14);
  if(playerPicker==1){
  image(player,0,0,60,50);
  }
  if(playerPicker==2){
  image(player2,0,0,60,50);
  }
  if(playerPicker==3){
  image(player3,0,0,60,50);
  }
  if(playerPicker==4){
  image(player4,0,0,60,50);
  }
  if(playerPicker==5){
  image(player5,0,0,60,50);
  }
  if(playerPicker==6){
  image(player6,0,0,60,50);
  }
  rotate(-(rotateA+3.14));
  translate(-playerX,-playerY);
  
  //HUD
  fill(100);
  ellipse(1200,950,350,350);
  fill(255);
  text("Ammo",1100,870);
  text(Mission5PistolAmmoDecreasing,1100,910);
  text("/",1140,910);
  text(Mission5PistolAmmo,1160,910);
  
  //AMMO
  if(Mission5PistolAmmoDecreasing<=0){
    Mission5PistolReload++;
    textSize(15);
    text("*Reload",playerX+25,playerY); 
    rect(playerX+25,playerY+10,Mission5PistolReload/5,7);
    Mission5PistolAmmoDecreasing=0;
    Mission5Reload=2;
  }
  
  //reload
        if(ammoNumber==0){
     Mission5PistolAmmo=20; 
     }
     if(ammoNumber==1){
     Mission5PistolAmmo=30; 
     }
     if(ammoNumber==2){
     Mission5PistolAmmo=40; 
     }
     if(ammoNumber>=3){
     Mission5PistolAmmo=50; 
     }
  if(Mission5PistolReload>=1000){
    if(ammoNumber==0){
   Mission5PistolAmmoDecreasing=20;
    }
     if(ammoNumber==1){
   Mission5PistolAmmoDecreasing=30;
    }
     if(ammoNumber==2){
   Mission5PistolAmmoDecreasing=40;
    }
     if(ammoNumber>=3){
   Mission5PistolAmmoDecreasing=50;
    }
    Mission5PistolReload=0;
   Mission5Reload=1;
  }
  textSize(25);
  
  //Boss (BOZMIE) 
 image(bozmiepic,bozmielX,bozmielY,155,125); 
 
  //BOZMIES HEALTH BAR  
  if(bozmieShield1==2 && bozmieShield2==2 && bozmieShield3==2){
    bozmielHealthBar1=2;
    text("BOZMIE'S HEALTH BAR",20,870);
    rect(20-2,900-2,70*10+4,30+4);
    stroke(255,0,0);
    fill(#ED265B);
    rect(20,900,bozmielHealth*7,30);          
  }
  
  //returns everything back to normal
  fill(255); 
  stroke(0); 
  strokeWeight(1);

  //HealthBar player   
  textSize(30);
  fill(255);
  text("Player Health",40,40);
  noFill();
  stroke(255);
  strokeWeight(5);
  rect(40-4,60-4,20*20+8,20+8);
  fill(#33DB47);
  stroke(#33DB47); 
  rect(40,60,healthbar*20,20);
    if(healthbarchecker==true){
  rect(40,60,healthbar*20,20);
  }
  fill(255); 
  stroke(0);
  
  //Cross hair
  if(crossHair==1){
  image(aiming1,mouseX,mouseY,100,100);
  }
  if(crossHair==2){
  image(aiming2,mouseX,mouseY,100,100);
  }
  if(crossHair==3){
  image(aiming3,mouseX,mouseY,100,100);
  }
  if(crossHair==4){
  image(aiming4,mouseX,mouseY,100,100);
  }
  if(crossHair==5){
  image(aiming5,mouseX,mouseY,100,100);
  }
  if(crossHair==6){
  image(aiming6,mouseX,mouseY,100,100);
  }
    //MONEY
  fill(#2EFF80);
  text("$",35,115);
  text(money,50,115);
  fill(255);
  
  if(bozmielHealth<=0){
    missColor1=true;
    missColor2=true;
    missColor3=true;
    missColor4=true;
    missColor5=true;
    missionCheck=4;
   }
   //bozmie talking
   textSize(15);
   text("Press ENTER to continue",100,800);
   text("Bozmie: So you have finally come to fight me, i guess you already figured out if you rearrange",100,820);
   text("my name it spells Z-O-M-B-I-E. Well no matter your about to die anyways HAHAHAHA!!!",100,840); 
  }
  
   if(textBoxM5==2){//if text box equals 1 than bozmie is talking
  //you cannot move and cannot fire bullets
  playerX=50;
  playerY=450;
  fireChecker=false;
  image(dungeon,600,475);
 
  //Player 
  float rotateX=playerX-mouseX;
  float rotateY=playerY-mouseY;
  float rotateA=atan2(rotateY,rotateX);
  translate(playerX,playerY);
  rotate(rotateA+3.14);
  if(playerPicker==1){
  image(player,0,0,60,50);
  }
  if(playerPicker==2){
  image(player2,0,0,60,50);
  }
  if(playerPicker==3){
  image(player3,0,0,60,50);
  }
  if(playerPicker==4){
  image(player4,0,0,60,50);
  }
  if(playerPicker==5){
  image(player5,0,0,60,50);
  }
  if(playerPicker==6){
  image(player6,0,0,60,50);
  }
  rotate(-(rotateA+3.14));
  translate(-playerX,-playerY);
  
  //HUD
  fill(100);
  ellipse(1200,950,350,350);
  fill(255);
  text("Ammo",1100,870);
  text(Mission5PistolAmmoDecreasing,1100,910);
  text("/",1140,910);
  text(Mission5PistolAmmo,1160,910);
  
  //AMMO
  if(Mission5PistolAmmoDecreasing<=0){
    Mission5PistolReload++;
    textSize(15);
    text("*Reload",playerX+25,playerY); 
    rect(playerX+25,playerY+10,Mission5PistolReload/5,7);
    Mission5PistolAmmoDecreasing=0;
    Mission5Reload=2;
  }
  
  //reload
  if(Mission5PistolReload>=1000){
    if(ammoNumber==0){
   Mission5PistolAmmoDecreasing=20;
    }
     if(ammoNumber==1){
   Mission5PistolAmmoDecreasing=30;
    }
     if(ammoNumber==2){
   Mission5PistolAmmoDecreasing=40;
    }
     if(ammoNumber>=3){
   Mission5PistolAmmoDecreasing=50;
    }
    Mission5PistolReload=0;
   Mission5Reload=1;
  }
  textSize(25);
  
  //Boss (BOZMIE) 
 image(bozmiepic,bozmielX,bozmielY,155,125); 
 
  //BOZMIES HEALTH BAR  
  if(bozmieShield1==2 && bozmieShield2==2 && bozmieShield3==2){
    bozmielHealthBar1=2;
    text("BOZMIE'S HEALTH BAR",20,870);
    rect(20-2,900-2,70*10+4,30+4);
    stroke(255,0,0);
    fill(#ED265B);
    rect(20,900,bozmielHealth*7,30);          
  }
  
  //returns everything back to normal
  fill(255); 
  stroke(0); 
  strokeWeight(1);

  //HealthBar player   
  textSize(30);
  fill(255);
  text("Player Health",40,40);
  noFill();
  stroke(255);
  strokeWeight(5);
  rect(40-4,60-4,20*20+8,20+8);
  fill(#33DB47);
  stroke(#33DB47); 
  rect(40,60,healthbar*20,20);
    if(healthbarchecker==true){
  rect(40,60,healthbar*20,20);
  }
  fill(255); 
  stroke(0);
  
  //Cross hair
  if(crossHair==1){
  image(aiming1,mouseX,mouseY,100,100);
  }
  if(crossHair==2){
  image(aiming2,mouseX,mouseY,100,100);
  }
  if(crossHair==3){
  image(aiming3,mouseX,mouseY,100,100);
  }
  if(crossHair==4){
  image(aiming4,mouseX,mouseY,100,100);
  }
  if(crossHair==5){
  image(aiming5,mouseX,mouseY,100,100);
  }
  if(crossHair==6){
  image(aiming6,mouseX,mouseY,100,100);
  }
    //MONEY
  fill(#2EFF80);
  text("$",35,115);
  text(money,50,115);
  fill(255);
  
  if(bozmielHealth<=0){
    missColor1=true;
    missColor2=true;
    missColor3=true;
    missColor4=true;
    missColor5=true;
    missionCheck=4;
   }
   //bozmie talking
   textSize(15);
   text("Press ENTER to continue",100,800);
   text(name+" "+"Bring it on Fam im ready",100,820); 
  }
  
  
  //mission 5 begains here after bozmie talks
  if(textBoxM5>=3){///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    rectMode(CORNER);
       if(ammoNumber==0){
     Mission5PistolAmmo=20; 
     }
     if(ammoNumber==1){
     Mission5PistolAmmo=30; 
     }
     if(ammoNumber==2){
     Mission5PistolAmmo=40; 
     }
     if(ammoNumber>=3){
     Mission5PistolAmmo=50; 
     }
     
    if (speed==1) { //if speed == 1
      PLAYERSPEED=2; //playerspeed to 2
    } //if statement ended
    if (speed==2) { //if speed == 2
      PLAYERSPEED=2.5; //playerspeed to 2.5
    } //if statement ended
    if (speed==3) { //if speed == 3
      PLAYERSPEED=3; //playerspeed to 3
    } //if statement ended
    if (speed==4) { //if speed == 4
      PLAYERSPEED=3.5; //playerspeed to 3.5
    } //if statement ended
    if (speed==5) { //if speed == 5
      PLAYERSPEED=4; //playerspeed to 4
    } //if statement ended
    if (speed>=6) { //if speed is equal or more than 6
      PLAYERSPEED=4.5; //playerspeed to 4.5
    } //if statement ended
    image(dungeon,600,475);
    fireChecker=true;
  //ammo upgrades
       if(ammoNumber==0){
     Mission5PistolAmmo=20; 
     }
     if(ammoNumber==1){
     Mission5PistolAmmo=30; 
     }
     if(ammoNumber==2){
     Mission5PistolAmmo=40; 
     }
     if(ammoNumber>=3){
     Mission5PistolAmmo=50; 
     }
  
  //when bozmie helath bar equals 1 he cannot take damage and cannot die you have to take away his shield to be able to attack him
  if(bozmielHealthBar1==1){
    text("BOZMIE'S HEALTH   ",20,870);
    text("(MEGA SHIELD ACTIVATED)",280,870);
    rect(20-2,900-2,70*10+4,30+4);//bozmie health bar
    stroke(255);
    fill(#CE2AAB);
    rect(20,900,bozmielHealth*7,30);  
    stroke(0);
    fill(255);
  }
  
  //Player
  float rotateX=playerX-mouseX;
  float rotateY=playerY-mouseY;
  float rotateA=atan2(rotateY,rotateX);
  translate(playerX,playerY);
  rotate(rotateA+3.14);
  if(playerPicker==1){
  image(player,0,0,60,50);
  }
  if(playerPicker==2){
  image(player2,0,0,60,50);
  }
  if(playerPicker==3){
  image(player3,0,0,60,50);
  }
  if(playerPicker==4){
  image(player4,0,0,60,50);
  }
  if(playerPicker==5){
  image(player5,0,0,60,50);
  }
  if(playerPicker==6){
  image(player6,0,0,60,50);
  }
  rotate(-(rotateA+3.14));
  translate(-playerX,-playerY);
  
  //HUD
  fill(100);
  ellipse(1200,950,350,350);
  fill(255);
  text("Ammo",1100,870);
  text(Mission5PistolAmmoDecreasing,1100,910);
  text("/",1140,910);
  text(Mission5PistolAmmo,1160,910);
  
  //AMMO
  if(Mission5PistolAmmoDecreasing<=0){
    Mission5PistolReload++;
    textSize(15);
    text("*Reload",playerX+25,playerY); 
    rect(playerX+25,playerY+10,Mission5PistolReload/5,7);
    Mission5PistolAmmoDecreasing=0;
    Mission5Reload=2;
  }
  
  //ammo upgrades/ reload upgrades
  if(Mission5PistolReload>=1000){
    if(ammoNumber==0){
   Mission5PistolAmmoDecreasing=20;
    }
     if(ammoNumber==1){
   Mission5PistolAmmoDecreasing=30;
    }
     if(ammoNumber==2){
   Mission5PistolAmmoDecreasing=40;
    }
     if(ammoNumber>=3){
   Mission5PistolAmmoDecreasing=50;
    }
    Mission5PistolReload=0;
   Mission5Reload=1;
  }
  textSize(25);
  
  //Boss (BOZMIE)  
 image(bozmiepic,bozmielX,bozmielY,155,125); 
 
  //Bozmie Shield
  //Bozmies shield creates a puksing effect, there are 3 shield each diffrent sizes and only one appears at a time, once the large one appears the others dont and than the medium one appears and the others dont than the
  //small one appears and the others dont than its back to the large one
  noFill(); 
  stroke(255); 
  strokeWeight(3); 
  
   boolean bozmieShieldTF1=false;  
   boolean bozmieShieldTF2=false; 
   boolean bozmieShieldTF3=false;
  
  
  if(bozmieShield==1){
   bozmieShieldTF1=true;// if bozmieShieldTF1 is true than shield 1 will appear 
   bozmieShield=2; //after shield one appears the next shield will appear after 
  }
  else if(bozmieShield==2){
   bozmieShieldTF2=true;
    bozmieShield=3; 
  }
  else if(bozmieShield==3){
   bozmieShieldTF3=true;
   bozmieShield=1; 
  }
  
 if(bozmieShield1==1){
  if(bozmieShieldTF1){//if bozmieShieldTF1 is true than the program draws the ellipse
   ellipse(bozmielX,bozmielY,150,150);
  }
 }
 if(bozmieShield2==1){
  if(bozmieShieldTF2){
   ellipse(bozmielX,bozmielY,150+25,150+25); 
  }
 }
 if(bozmieShield3==1){
  if(bozmieShieldTF3){
   ellipse(bozmielX,bozmielY,150+50,150+50);
  } 
 }
  else{
   bozmieShieldTF1=false;  
   bozmieShieldTF2=false; 
   bozmieShieldTF3=false; 
  }
  
  //Bozmie Shiled Pillers
  //Top
  if(lightning1==1){//lightning is the line from bozmie to the piller that show bozmie gets his shield power from
 // ellipse(577,138,100,100);
    line(577,138,bozmielX,bozmielY); 
     fill(255,0,0);
      rect(533,200,piller1health,10);
     for(int i=0;i<bx.size();i++){
      if(dist(577,138,bx.get(i),by.get(i))<100){//if the bullet hits the piller the piller will lose health
         piller1health--;
         bx.remove(i);
         by.remove(i);
         vx.remove(i);
         vy.remove(i);
      }
     }  
  }
  if(piller1health<=0){//if the pillers health is 0 than the piller and lightning will sieze to exist 
      lightning1=2;
      bozmieShield1=2;
     }
     
  //bottom piller    
 if(lightning2==1){  
 noFill();  
 // ellipse(800,850,100,100);
    line(573,640,bozmielX,bozmielY); 
     fill(255,0,0);
      rect(536,697,piller2health,10);
     for(int i=0;i<bx.size();i++){
      if(dist(573,640,bx.get(i),by.get(i))<100){
         piller2health--;
         bx.remove(i);
         by.remove(i);
         vx.remove(i);
         vy.remove(i);
      }
     } 
 }
  if(piller2health<=0){
      lightning2=2;
      bozmieShield2=2;
     }
     
  //middle piller        
 if(lightning3==1){    
  noFill();
 //  ellipse(590,473,100,100);
    line(590,473,bozmielX,bozmielY); 
     fill(255,0,0);
      rect(552,508,piller3health,10);
     for(int i=0;i<bx.size();i++){
      if(dist(590,473,bx.get(i),by.get(i))<100){
         piller3health--;
         bx.remove(i);
         by.remove(i);
         vx.remove(i);
         vy.remove(i);
      }
     }     
 }
  if(piller3health<=0){
      lightning3=2;
      bozmieShield3=2;
     }
     
  //BOZMIES HEALTH BAR  
  if(bozmieShield1==2 && bozmieShield2==2 && bozmieShield3==2){//once all pillers have gone down than you are able to kill bozmie but be carful he will now shoot bullets back at you
    bozmielHealthBar1=2;//than bozmies mega shield will go down
    text("BOZMIE'S HEALTH BAR",20,870);
    rect(20-2,900-2,70*10+4,30+4);//bozmies helath bar
    stroke(255,0,0);
    fill(#ED265B);
    rect(20,900,bozmielHealth*7,30);          
  }
  
  //returns everything back to normal
  fill(255); 
  stroke(0); 
  strokeWeight(1);
  
  //bozmie will move up and down but when he hits a boundry he will go the other way
  bozmielY+=bozmielSpeed;
  
  if(bozmielY+70>height){
    bozmielSpeed=bozmielSpeed*-1;
  }
  
  if(bozmielY-70<0){
    bozmielSpeed=1;
  }
  
  //spawning zombies
for(int i=0;i<ex.size();i++){
  float changeX=ex.get(i)-playerX;
  float changeY=ey.get(i)-playerY;
  float angle=atan2(changeY,changeX);
  translate(ex.get(i),ey.get(i));
  rotate(angle);
  if(zombiePicker==1){
  image(zombie,0,0,zSize.get(i),zSize.get(i)); //zombie
  }
  if(zombiePicker==2){
  image(zombie2,0,0,zSize.get(i),zSize.get(i)); //zombie
  }
  if(zombiePicker==3){
  image(zombie3,0,0,zSize.get(i),zSize.get(i)); //zombie
  }
  rotate(-angle);
  translate(-ex.get(i),-ey.get(i));
}
  
  for(int i=0;i<ex.size();i++){
   float x=playerX-ex.get(i);
   float y=playerY-ey.get(i);
   float a=atan2(y,x);
   x=cos(a);
   y=sin(a);
   ex.add(i,zombieSpeed.get(i)*x);
   ey.add(i,zombieSpeed.get(i)*y); 
  }
  
  //wave
  boolean waveTF=true; 
  
 if(waveTF==true){
  if(zombies==0){
   wave+=1;
   zombies=10*wave; 
   if(wave>=2){
    zombies=20; 
   }
   
  for(int i=0;i<zombies;i++){
   ex.set(i,bozmieX); 
   ey.set(i,bozmieY); 
   zombieSpeed.set(i,random(0.5,1)); 
   zSize.set(i,random(30,50)); 
    }   
   }
  }//end of wave  
  
  if(wave<=3){
   waveTF=false; 
  }
  
  //HealthBar
   
  textSize(30);
  fill(255);
  text("Player Health",40,40);
  noFill();
  stroke(255);
  strokeWeight(5);
  rect(40-4,60-4,20*20+8,20+8);
  fill(#33DB47);
  stroke(#33DB47); 
  rect(40,60,healthbar*20,20);
    if(healthbarchecker==true){
  rect(40,60,healthbar*20,20);
  }
  fill(255); 
  stroke(0);
  
  for(int i=0;i<ex.size();i++){
   if(dist(playerX,playerY,ex.get(i),ey.get(i))<zSize.get(i)){
     healthbar--;
     ex.remove(i);
     ey.remove(i);
     zSize.remove(i);
     zombieSpeed.remove(i);
     zombies--;
   }
  }
  
  //collision between bozmie when his shield is up
  if(dist(playerX,playerY,bozmielX,bozmielY)<175){
    healthbar=0;
  }
  
for(int i=0;i<bx.size();i++){//collision between bozmie and your bullets
if(dist(bozmielX,bozmielY,bx.get(i),by.get(i))<100){
    bx.remove(i); 
    by.remove(i); 
    vx.remove(i); 
    vy.remove(i); 
    break;
   }
   
 if(dist(bozmielX,bozmielY,bx.get(i),by.get(i))<125 && bozmieShield1==2 && bozmieShield2==2 && bozmieShield3==2){//if the pillers are all down and your bullets hit bozmie he will lose health
    bozmielHealth--;
    bx.remove(i); 
    by.remove(i); 
    vx.remove(i); 
    vy.remove(i);  
    break;
   }
}
  
  //RELOAD
  if(Mission5PistolReload>=250){
   Mission5PistolAmmoDecreasing=20;
   Mission5PistolReload=0;
   Mission5Reload=1;
  }
  
  //if your health bar is 0 than game over
  if(healthbar<0){
    gameOver5=true;
    healthbarchecker=false;
  }
  
  //Cross hair
  if(crossHair==1){
  image(aiming1,mouseX,mouseY,100,100);
  }
  if(crossHair==2){
  image(aiming2,mouseX,mouseY,100,100);
  }
  if(crossHair==3){
  image(aiming3,mouseX,mouseY,100,100);
  }
  if(crossHair==4){
  image(aiming4,mouseX,mouseY,100,100);
  }
  if(crossHair==5){
  image(aiming5,mouseX,mouseY,100,100);
  }
  if(crossHair==6){
  image(aiming6,mouseX,mouseY,100,100);
  }
    //MONEY
  fill(#2EFF80);
  text("$",35,115);
  text(money,50,115);
  fill(255);
  
  if(bozmielHealth<=0){
    missColor1=true;
    missColor2=true;
    missColor3=true;
    missColor4=true;
    missColor5=true;
    missionCheck=4;
  }
 
 //the timer for bozmie to shoot his bullets
 bozzTimer++;
 bozzBigTimer++;
 
 if(piller1health<=0 && piller2health<=10 && piller3health<=0){//if all pillers are down
   
 if(bozzTimer>=200){//every 200 frames bozmie will shoot a small bullet
  for(int i=0;i<100;i++){
   bozBX.append(bozmielX); 
   bozBY.append(bozmielY);
   }
   bozzTimer=0;//timer will go back to 0
  }  
 } 
 for(int i=1;i<bozBX.size();i++){
   ellipse(bozBX.get(i),bozBY.get(i),20,20);
   bozBX.add(i,-3);
 }
 
//BIGG BULLETS 
if(piller1health<=0 && piller2health<=0 && piller3health<=0){   
 if(bozzBigTimer>=700){//every 700 frames bozmie will shoot a large bullet
  for(int i=0;i<100;i++){
   bozBigBX.set(i,bozmielX); 
   bozBigBY.set(i,bozmielY);
   }
   bozzBigTimer=0;//timer back to 0
  }  
 }
 for(int i=1;i<bozBigBX.size();i++){
   ellipse(bozBigBX.get(i),bozBigBY.get(i),50,50);
   bozBigBX.add(i,-1);
 }
 
for(int i=0; i<bozBigBX.size();i++){
 if(dist(bozBigBX.get(i),bozBigBY.get(i),playerX,playerY)<50){//if bozmies large bullets hit you, you lose health
   bozBigBX.remove(i);
   bozBigBY.remove(i);
   healthbar--;
 }
}
for(int i=0; i<bozBX.size();i++){
 if(dist(bozBX.get(i),bozBY.get(i),playerX,playerY)<50){//if bozmies small bullets hit you you lose health
   bozBX.remove(i);
   bozBY.remove(i);
   healthbar--;
 }
}
  
  //player can not touch the pillers 
  if(playerX>=472 && playerX<=675 && playerY>=42 && playerY<=371){
    if(playerX>=472 && playerX<=482){
      playerX=472;
    }
    if(playerX>=665 && playerX<=675){
      playerX=675;
    }
    if(playerY>=42 && playerY<=52){
      playerY=42;
    }
    if(playerY>=361 && playerY<=371){
      playerY=371;
    }
  }
  if(playerX>=470 && playerX<=675 && playerY>=537 && playerY<=904){
    if(playerX>=474 && playerX<=484){
      playerX=474;
    }
    if(playerX>=665 && playerX<=675){
      playerX=675;
    }
    if(playerY>=537 && playerY<=547){
      playerY=537;
    }
    if(playerY>=894 && playerY<=904){
      playerY=904;
    }
  } 
 }  
}//end of mission 5
