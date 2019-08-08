int step=1;//the mission steps or stages

boolean lockPick=false;//acquiring the lock pick

//step 2 unlocking the lock
float movingLockX=600;
float movingLockY=350;

float movingLockSpeed=2;

float lockPickX=600;
float lockPickY=800;

//step 3 fighting the mini bosses before the final showdown
float sentinal1X=700-50;
float sentinal1Y=300;
float sentinal1health=100;

float sentinal2X=700-50;
float sentinal2Y=650;
float sentinal2health=100;

//the desk were you can find the key
float deskX=1100;
float deskY=200;

float mission4HintTimer=0;//hint if you get lost finding the key

boolean step3=false;//transition into step 3

int lockpick1=0;

boolean gameOver4=false;
boolean guard1=false;
boolean guard2=false;

PImage mission42;
boolean escaped=false;


  
void mission4(){
  noCursor();
  if(step==1){// step 1 finding the key
   image(mission4pic,600,475);
   
   //cannot shoot bullets
   fireBullet=true;
   fireChecker=false;
   mission4HintTimer++;//hint timer begains
  
  //BOUNDARY   
  if(playerX<825){
    playerX=825;
  }
  if(playerX>1173){
    playerX=1173;
  }
  if(playerY<230){
    playerY=230;
  }
  if(playerY>673){
    playerY=673;
  }
    
    //Player
  float rotateX=playerX-mouseX;
  float rotateY=playerY-mouseY;
  float rotateA=atan2(rotateY,rotateX);
  translate(playerX,playerY);
  rotate(rotateA+3.14);
  if(playerPicker==1){
  image(player,0,0,64,50);
  }
  if(playerPicker==2){
  image(player2,0,0,63,50);
  }
  if(playerPicker==3){
  image(player3,0,0,63,50);
  }
  if(playerPicker==4){
  image(player4,0,0,63,50);
  }
  if(playerPicker==5){
  image(player5,0,0,63,50);
  }
  if(playerPicker==6){
  image(player6,0,0,63,50);
  }
  rotate(-(rotateA+3.14));
  translate(-playerX,-playerY);
    noFill();
    stroke(255);
  
    //sentinal gaurds
    image(sentinal1,670,450,90,90);
    image(sentinal2,670,650,90,90);
    //picking up the lock pic]
    
    if(dist(playerX,playerY,deskX,deskY)<140){//if you find go near the desk you acquire the key
      lockPick=true;
    }
    if(lockPick==true){
     text("LockPick Acquired",100,50);//tells you that you have the key
    }
    
    //Hint timer
    if(mission4HintTimer>=1000){
     textSize(15);
     text("HINT: Look around in hidden spots",900,50);
    }
  }
  
  //Picking the lock
  if(dist(playerX,playerY,1012,698)<50 && lockPick==true){//if you have the lock pick and are nest to the door you can pick the lock
   step=2; 
  }
  
  if(step==2){// step 2 picking the lock
   background(0);
   //cannot shoot
   fireBullet=true;
   fireChecker=false;
   //lock
   rectMode(CENTER);
   fill(255,0,0);
   rect(width/2,height/2,700,700);
   //lock pick
    noFill();
    stroke(255);
   rect(lockPickX,lockPickY,20,400);
   ellipse(lockPickX,lockPickY-150,100,100);
   //moveing lock
   rect(movingLockX,movingLockY,50,450);
   ellipse(movingLockX,150,100,100);
   ellipse(600,150,100,100);
   movingLockX=movingLockX+movingLockSpeed;
   //boundarys for the lock
   if(movingLockX>=930){
    movingLockSpeed=movingLockSpeed*-1;
   }
   if(movingLockX<=270){
    movingLockSpeed=movingLockSpeed*-1;
   }
   //Opening the lock
  if(dist(movingLockX,150,600,150)<10 && mousePressed==true){//if the lock and the lock pick line up than you can unlock it
    movingLockSpeed=0;
    lockPickY--;
  }
  if(dist(lockPickX,lockPickY,movingLockX,movingLockY)<10){//if the lock pick goes all the way in than you can move on to step 3 fighting the sentinals
    step3=true;//going to step 3 
    step=3;
    playerX=1057;
    playerY=451;
  }

   textSize(15);
   text("To unlock the lock wait for the lock to line up with the lock pick and CLICK the MOUSE",270,30);
  }
  
  if(step3==true){//fighting the sentinals
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
  //you can shoot again
  fireBullet=false;
  fireChecker=true;
   image(mission42pic,600,475);
   
  //player can only leave the prison through the door and boundrys
 if(playerX>=720 && playerX<=1173 && playerY>=220 && playerY<=675 && escaped==false){
  if(playerX<=825){
    playerX=825;
  }
  if(playerX>1173){
    playerX=1173;
  }
  if(playerY<255){
    playerY=255;
  }
  if(playerY>673){
    playerY=673;
  }
  if(playerX>=940 && playerX<=1100 && playerY>=655 && playerY<=673){
    playerX=966;
    playerY=916;
    escaped=true;
  }
   }
   if(playerX>=695 && playerX<=1250 && playerY>=105 && playerY<=900 && escaped==true){
    if(playerX>=695 && playerX<=705){
      playerX=695;
    }
    if(playerY>=105 && playerY<=115){
      playerY=105;
    }
    if(playerY>=890 && playerY<=900){
      playerY=900;;
    }
  }
  //MONEY
  textSize(25);  
  fill(#2EFF80);
  text("$",35,115);
  text(money,50,115);
  fill(255);
  
  //charecter
  float rotateX=playerX-mouseX;
  float rotateY=playerY-mouseY;
  float rotateA=atan2(rotateY,rotateX);
  translate(playerX,playerY);
  rotate(rotateA+3.14);
  if(playerPicker==1){
  image(player,0,0,64,50);
  }
  if(playerPicker==2){
  image(player2,0,0,63,50);
  }
  if(playerPicker==3){
  image(player3,0,0,63,50);
  }
  if(playerPicker==4){
  image(player4,0,0,63,50);
  }
  if(playerPicker==5){
  image(player5,0,0,63,50);
  }
  if(playerPicker==6){
  image(player6,0,0,63,50);
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
  if(ammoNumber==0){
  text(20,1160,910);
  }
  if(ammoNumber==1){
  text(30,1160,910);
  }
  if(ammoNumber==2){
  text(40,1160,910);
  }  
  if(ammoNumber>=3){
  text(50,1160,910);
  }
  
  //AMMO and reloading
  rectMode(CORNER);
  if(Mission5PistolAmmoDecreasing<=0){
    Mission5PistolReload++;
    textSize(15);
    text("*Reload",playerX+25,playerY); 
    rect(playerX+25,playerY+10,Mission5PistolReload/5,7);
    Mission5PistolAmmoDecreasing=0;
    Mission5Reload=2;
  }
  if(Mission5PistolReload>=250){
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
  fill(255); 
  strokeWeight(1);
  stroke(0);
 rectMode(CENTER);
 
   //sentinals
   image(sentinal1,sentinal1X,sentinal1Y,90,90);
   image(sentinal2,sentinal2X,sentinal2Y,90,90);
   
   if(escaped==true){//if player is out of the prison
   //sentinal 1 Movement same as the enemy movement
    float changeX=sentinal1X-playerX;
    float changeY=sentinal1Y-playerY;
    float angle=atan2(changeY,changeX);
    translate(sentinal1X,sentinal1Y);
    rotate(angle);
    image(sentinal1,0,0,90,90); //sentinal 1
    rotate(-angle);
    translate(-sentinal1X,-sentinal1Y);
    
    float x=playerX-sentinal1X;
    float y=playerY-sentinal1Y;
    float a=atan2(y,x);
    x=cos(a);
    y=sin(a);
    sentinal1X+=0.7*x;
    sentinal1Y+=0.7*y;
    
    fill(255);
    rect(sentinal1X,sentinal1Y+70,110,20);
    fill(#2FF5AE);
    rect(sentinal1X,sentinal1Y+70,sentinal1health,10);
    noFill();
   
   //distance between bullets and sentinal 1
   for(int i=0;i<bx.size();i++){
    if(dist(bx.get(i),by.get(i),sentinal1X,sentinal1Y)<90){
     sentinal1health--;
     bx.remove(i);
     by.remove(i);
     vx.remove(i);
     vy.remove(i);
     break;
    }
   }
   //if sentinals 1 dies than he disappears off the map
   if(sentinal1health<=0){
    sentinal1X=-1000; 
    guard1=true;
   }
    
    //sentinal 2 movement same as the enemy movement
    float change2X=sentinal2X-playerX;
    float change2Y=sentinal2Y-playerY;
    float angle2=atan2(change2Y,change2X);
    translate(sentinal2X,sentinal2Y);
    rotate(angle2);
    image(sentinal2,0,0,90,90); //sentinal
    rotate(-angle2);
    translate(-sentinal2X,-sentinal2Y);    
    
    float x2=playerX-sentinal2X;
    float y2=playerY-sentinal2Y;
    float a2=atan2(y2,x2);
    x2=cos(a2);
    y2=sin(a2);
    sentinal2X+=0.4*x2;
    sentinal2Y+=0.4*y2;
    fill(255);
    rect(sentinal2X,sentinal2Y+70,110,20);
    fill(#2FF5AE);
    rect(sentinal2X,sentinal2Y+70,sentinal2health,10);
    noFill();
   
   //distance between bullets and sentinal 2
   for(int i=0;i<bx.size();i++){
    if(dist(bx.get(i),by.get(i),sentinal2X,sentinal2Y)<90){
     sentinal2health--;
     bx.remove(i);
     by.remove(i);
     vx.remove(i);
     vy.remove(i);
     break;
    }
   }
   //if sentinal 2 dies than he disappears off the map
   if(sentinal2health<=0){
    sentinal2X=-1000; 
    guard2=true;
   }
  
  //distance between player and sentinals if distance is less than 90 player will lose health
  if(dist(playerX,playerY,sentinal2X,sentinal2Y)<90){  
  healthbar-=0.1;
  }
  if(dist(playerX,playerY,sentinal1X,sentinal1Y)<90){  
  healthbar-=0.1;
  }
  
    //you cant go back into the prison
    if(playerX>=800){
      playerX=800;
    }
   }
  }
  
  //if your health bar is 0 than game over
  if(healthbar<=0){
   healthbar=0;
   gameOver4=true;
  }
  
  //game over
   if(gameOver4==true){
   background(0);
      fireBullet=true;
      textSize(120);
      fill(255,0,0);
      text("Game Over",320,386);
      textSize(50);
      fill(0);
      text("YOU DIED!",495,490);
      for(int i=0;i<ex.size();i++){
       zombieSpeed.set(i,0);
      }
      PLAYERSPEED=0;
      playerX=591.0;
      playerY=557;
    fill(255,167,3);
    text("Back to Menu",29,933);
    if(mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940 && mousePressed){
    gameMode=0;
    fireBullet=false;
    PLAYERSPEED=2;
    textSize(25);
    }
    textSize(25);
 } 
  
  //cross hair
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
  
  if(guard1==true && guard2==true){
    missColor1=true;
    missColor2=true;
    missColor3=true;
    missColor4=true;
    missColor5=true;
    missionCheck=5;
    gameMode=2;
  }
}
