PImage street; //image
PImage bomb2; //image for the bomb
int mission2TB=0; //text box variable
boolean bomb=true; //variable for the bomb
boolean difuse=false; //difusing variable
boolean gameOver2=false; //gameover checker

boolean bolt1=false; //bolt remover checker
boolean bolt2=false; //bolt remover checker
boolean bolt3=false; //bolt remover checker
boolean bolt4=false; //bolt remover checer
boolean bombdefuse=false; //bombdifuseri checker
boolean bolts=true; //bolt checker
boolean gameOver2Win=false; //win checker

int bolt1x=0; //bolt
int bolt2x=0; //bolt
int bolt3x=0; //bolt 
int bolt4x=0; //bolt


int startTime; //start Timer
int seconds; //seonds
int m; //millis
int wirex1=0; //wires 1
int wirex2=0; //wires 2

boolean wire1=false; //wire 1
boolean wire2=false; //wire 2

boolean timer=false; //timer checker
boolean healthbarchecker=true; //healthbar checker

int Mission2PistolAmmo; 
int Mission2PistolAmmoDecreasing;
int Mission2PistolReload=0;
int Mission2Reload=1;
String tester;



void mission2(){
 // background(0);
     image(street,600,475);
     fireChecker=true;
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
     noCursor();


  float rotateX=playerX-mouseX; //rotation to check for mouseX
  float rotateY=playerY-mouseY; //rotation to check for mouseY
  float rotateA=atan2(rotateY, rotateX); //atan2 for the rotations
  translate(playerX, playerY); //translating playerX and playerX
  rotate(rotateA+3.14); //roationA+PI
  if (playerPicker==1){ //checking which player you picked
    image(player, 0, 0, 64, 50); //image set for the player
  } //if statment ended
  if (playerPicker==2){ //checking which player you picked
    image(player2, 0, 0, 63, 50); //image set for the player
  } //if statment ended
  if (playerPicker==3){ //checking which player you picked 
    image(player3, 0, 0, 63, 50); //image set for the player
  } //if statment ended
  if (playerPicker==4){ //checking which player you picked 
    image(player4, 0, 0, 63, 50); //image set for the player
  } //if statment ended
  if (playerPicker==5){ //checking which player you picked
    image(player5, 0, 0, 63, 50); //image set for the player
  } //if statment ended
  if (playerPicker==6){ //checking which player you picked 
    image(player6, 0, 0, 63, 50); //image set for the player
  } //if statment ended
  rotate(-(rotateA+3.14)); //rotation set
  translate(-playerX, -playerY); //translating set

  image(bomb2,width/2,370,140,140); //image for the bomb

  if(bomb){ //if bomb is true
    if(timer==true){ //if the timer is on
      m = millis(); //millis
      seconds= -m/1000 + 210; //millis to seconds
      startTime=seconds; //seconds
      fill(255,0,0); //red color
      textSize(30); //text size 30
      text(seconds,545,470); //text for seconds
      fill(255); //white color
    if(seconds<0){ //if seconds is lower than 0
     seconds=0; //seconds set to 0
     gameOver2=true; //gameover
     timer=false; //timer turns off
   }
   if(playerX>=567 && playerX<=727 && playerY>=326 && playerY<=487 && ex.size()==0){ //if the players goes to the bomb
      difuse=true; //difuse turns on
      fireBullet=false; //shooting turns on
   }
  }
 }
if(gameOver2==true){ //if gameover is true
  difuse=false; //cant difuse anymore
      background(0); //black background 
      fireBullet=true; //shooting turns off
      textSize(120); //textize set to 120
      fill(255,0,0); //red color
      text("Game Over",320,386); //text
      textSize(50); //text size to 50
      fill(0); //black color
      text("YOU DIED!",495,490); //text
      for(int i=0;i<ex.size();i++){ //for each zombie
       zombieSpeed.set(i,0); //zombiespeed set to 0
      }
      PLAYERSPEED=0; //playerspeed set to zero
      playerX=591.0; //player goes to the middle
      playerY=557; //player goes to the middle
    fill(255,167,3); //orange
    text("Back to Menu",29,933); //text
    if(mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940 && mousePressed){ //if they click on that text
    gameMode=0; //back to main menu
    fireBullet=false; //firing turns to true
    PLAYERSPEED=2; //speed turns back on
    textSize(25); //textsize back to 35
    }
    textSize(25);
  timer=false; //timer turns off
}
if(gameOver2Win==true){ //if they wn
  gameMode=2; //back to mission selector
  missColor3=true; //colors 
  missColor2=true; //colors
  missColor1=true; //colors
  missionCheck=3; //missionchecker turns to 3
}
if(wire1 && wire2){ //if they cut the two wires
  difuse=false; //difuse turns off
   fireBullet=true; //bullet firing turns off
   PLAYERSPEED=0; //playerspeed turns off
  gameOver2Win=true; //they win
  zombieKills=100; //zombie kills goes to 100
} 
  if(difuse){ //if difusing turns true
    fireBullet=true; //fireing turns off
    //wire cutting screen
    fill(139,69,19); 
    rect(340,180,500,700);
    fill(255);
    rect(400,235,380,95);
    fill(255,0,0);
    textSize(50);
    text(seconds,550,300);
    fill(255);
    rect(400,410,380,400);
    if(bolts){
    fireBullet=true;
      fill(0);
      rect(420+bolt1x,430,10,10); 
      rect(752+bolt2x,430,10,10);
      rect(420+bolt3x,784,10,10);
      rect(752+bolt4x,784,10,10);
      //if they click it goes away
      if(mouseX>=420 && mouseX<=430 && mouseY>=430 && mouseY<=440 && mousePressed){
      bolt1=true;
      bolt1x=-2000;
      }
      if(mouseX>=752 && mouseX<=762 && mouseY>=430 && mouseY<=440 && mousePressed){
      bolt2=true;
      bolt2x=-2000;
      }
      if(mouseX>=420 && mouseX<=430 && mouseY>=784 && mouseY<=794 && mousePressed){
      bolt3=true;
      bolt3x=-2000;
      }
      if(mouseX>=752 && mouseX<=762 && mouseY>=784 && mouseY<=794 && mousePressed){
      bolt4=true;
      bolt4x=-2000;
    }
    }
    if(bolt1 && bolt2 && bolt3 && bolt4){ //if the bolts are all removed
      bombdefuse=true; //defusing turns on
    fireBullet=true; //bullet shooting turns off

    } //

  if(bombdefuse){ //if the defusing turns on
    fireBullet=true; //bullet shooting turns on

    //wires
    fill(255,0,0);
    rect(435,450,305,10);
    rect(675,591,10,200);
    rect(509,621,10,78);
    rect(440,754,200,10);
    
    fill(0,255,0);
    rect(435,600,200,10);
    rect(720,475,10,200);
    rect(550,478,10,95);
    
    fill(0,0,255);
    rect(480+wirex1,465,10,130);
    rect(476+wirex2,712,170,10);
    //if they cut the right ones and not the right ones
    
    if(mouseX>=480 && mouseX<=490 && mouseY>=460 && mouseY<=595 && mousePressed){
      wirex1=-2400;
      wire1=true;
    }
    if(mouseX>=476 && mouseX<=646 && mouseY>=712 && mouseY<=722 && mousePressed){
    wirex2=-2400;
    wire2=true;
    }
    if(mouseX>=435 && mouseX<=635 && mouseY>=600 && mouseY<=10 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=720 && mouseX<=730 && mouseY>=475 && mouseY<=675 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=550 && mouseX<=560 && mouseY>=478 && mouseY<=573 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=435 && mouseX<=740 && mouseY>=450 && mouseY<=460 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=675 && mouseX<=685 && mouseY>=591 && mouseY<=791 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=509 && mouseX<=519 && mouseY>=621 && mouseY<=699 && mousePressed){
      gameOver2=true;
    }
    if(mouseX>=440 && mouseX<=640 && mouseY>=754 && mouseY<=764 && mousePressed){
      gameOver2=true;
    }
  }
    
    fill(255);
    
    Mission5Reload=2;
    
  }



  for (int i=0; i<ex.size(); i++) { //zombie spawner
    float changeX=ex.get(i)-playerX; //getting the angle for the zombie to the playerX
    float changeY=ey.get(i)-playerY; //getting the anglefor the zombie to the playerY
    float angle=atan2(changeY, changeX); //creating the angle for the changeY and changeX
    translate(ex.get(i), ey.get(i)); //translating the zombies
    rotate(angle); //rotation to the angle
    if (zombiePicker==1) { //checking which zombie the player picked
      image(zombie, 0, 0, zSize.get(i), zSize.get(i)); //image set for the zombie
    } //if statment ended
    if (zombiePicker==2) { //checking which zombie the player picked
      image(zombie2, 0, 0, zSize.get(i), zSize.get(i));  //image set for the zombie
    } //if statment ended
    if (zombiePicker==3) { //checking which zombie the player picked
      image(zombie3, 0, 0, zSize.get(i), zSize.get(i)); //image set for the zombie
    } //if statment ended
    rotate(-angle); //rotation to the negative
    translate(-ex.get(i), -ey.get(i)); //translating for the positive
  }

  for (int i=0; i<ex.size(); i++) { //setting the angle for each zombie
    float x=playerX-ex.get(i); //getting the x value for the zombie
    float y=playerY-ey.get(i); //getting the y value for the zombie
    float a=atan2(y, x); //atan2 for the y,x
    x=cos(a); // receiving cos for x
    y=sin(a); //receiving sin for y
    ex.add(i, zombieSpeed.get(i)*x); //adding the angle
    ey.add(i, zombieSpeed.get(i)*y); //adding the angle
  } //for statment ended
  
  
  if(mission2TB==0){  
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text("Boss: Yeah don't worry about him.. He not gonna survive those zomb—WAIT WHAT!",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  if(mission2TB==1){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text(name+": Give my friend back! Come on what has he done ever to you?",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  if(mission2TB==2){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text("Boss: What do you mean? And how did you survive those zombies!?",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  if(mission2TB==3){ //
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text(name+": We have a emergency gun in main labratory up front.. How could you do this?",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  if(mission2TB==4){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text("Boss: You don't know this world.. It corrupted. We need to take those in power out!",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  if(mission2TB==5){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text(name+": I understand that! But isn't there any other ways? Like something without zombies!",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  
  if(mission2TB==6){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text("Boss: Maybe there is... But I can't have you mess it up. I'm blowing this place up now",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
  }
  
  if(mission2TB==7){
 for(int i=0;i<ex.size();i++){ //for statment for each zombie
    zombieSpeed.set(i,0); //sets speed for zombies to zero
   }
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //speed turns off
   playerX=50; //player stays at 50
   playerY=height/2; //player stays at 675
   bossX=650.0; //boss stays at 650
   bossY=460.0; //boss stays at 460
   textSize(20);
   text(name+": Wait WHAT!?",170,926);
   textSize(15);
   text("Press Enter to continue.",170,900);
   timer=true;
  }
  
  if(mission2TB>=8 && mission2TB<=100){
     for(int i=0;i<ex.size();i++){ //for stayment for each zombie
      zombieSpeed.set(i,random(0.5,1)); //sets random speeds
      bossX+=0.03; //boss goes away
     } 
   fireBullet=false; //shooting turns on
   PLAYERSPEED=2; //playerspeed goes to 2
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
  if(healthbarchecker==true){
  rect(40,60,healthbar*20,20);
  }
  fill(255); 
  noStroke();
  fill(255);
  
  for (int i=0; i<ex.size(); i++) { //for statment for each zombie
    if (dist(playerX, playerY, ex.get(i), ey.get(i))<zSize.get(i)) { //distance for the player to the zombies when touched
      healthbar--; //helathbar decreased
      ex.remove(i); //zombie removed
      ey.remove(i); //zombie removed
      zSize.remove(i); //size removed
      zombieSpeed.remove(i); //speed removed
    }
  }
  if (healthbar<0) { //checking when the healthbar goes to zero 
    gameOver2=true; //goes to the gameover screen
    healthbarchecker=false; //healthbar disappears
  }
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
    textSize(25);
  fill(#2EFF80);
  text("$",35,115);
  text(money,50,115);
  fill(255);
  if(playerX>=24 && playerX<=609 && playerY>=712 && playerY<=925){
    if(playerX>=600 && playerX<=609){
      playerX=609;
    }
    if(playerY>=712 && playerY<=720){
      playerY=712;
    }  
  }
  if(playerX>=669 && playerX<=1173 && playerY>=706 && playerY<=925){
    if(playerX>=669 && playerX<=710){
      playerX=669;
    }
    if(playerY>=706 && playerY<=716){
      playerY=706;
    }
  }
}
