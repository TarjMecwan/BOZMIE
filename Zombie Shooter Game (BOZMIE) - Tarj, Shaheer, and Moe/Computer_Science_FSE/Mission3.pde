int mission3TB=0; //text box set at 0 

float p1=903; //prisoners
float p2=968; //prisoners
float p3=1030; //prisoners
float p4=895; //prisoners

boolean machinedesk=false; //machine desk
boolean checker=false; //checker
boolean gameOver3=false; //gameover

PImage prisoners; //prisoners
void mission3(){
  noCursor();
       image(mission3,600,475);
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
    stroke(2);
    fill(255);
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
fill(255);
   
   //Prisoners
  image(prisoners,p1,507,45,45);
  image(prisoners,p2,578,45,45);
  image(prisoners,p3,640,45,45);
  image(prisoners,p4,678,45,45);
  
  fill(0);

// Text Boxes for Mission 3 \\
  if(mission3TB==0){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20); //
   text("Prisoner 1: Oh my god, I'm soo hungry!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==1){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Prisoner 2: Same! We haven't ate for 4 days! Come on give us food!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==2){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Boss : Hahaha, you won't need food when you become zombies. You'll be under my control",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==3){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Prisoner 3: Yo you better not do this dawg! I'll beat your a**!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==4){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Prisoner 4: Exactly, I know people! You know what they call me in the streets? El TEEBO.",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==5){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Prisoner 3; Facts, I don't know what that means, but it seems scary. So you better open this cage!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==6){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Boss: Yeah, we'll see about that. Nobody's gonna let you out! Hahaha",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==7){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text(name+": What the?! Hey, let them out!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==8){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Boss: You disabled the bomb? You're not gonna stop this. Turn around kid. This isn't your fight!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==9){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text(name+": Yeah okay, but that ain't gonna stop me! Let them out or I'll come over there and kill you!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==10){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Boss: You're all talk. Instead you should watch your back.",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==11){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text(name+": What do you mean? And where's Bozmie?",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==12){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerseed is at 0
   playerX=-30; //player is cooridnated
   playerY=height/2; //player os coordinated
 bossX=1044.0; //boss is still
 bossY=100.0; //boss is still
   textSize(20);
   text("Boss: You'll see...?",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB>=13 && mission3TB<=100){
     for(int i=0;i<ex.size();i++){ //for statment for all the zombies
   zombieSpeed.set(i,random(0.5,1));  //zombie speed randomzier
  }
   fireBullet=false; //shooting turns on
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
    } //if statement ended   textSize(20);
   bossX++;
   if(bossX>=1300){
     bossX=1300.0;
   }
  }
  if(zombies==20){
    for(int i=0;i<ex.size();i++){
   zombieSpeed.set(i,0); 
  }
   fireBullet=true;
   PLAYERSPEED=0;
   mission3TB=150;
   zombies=19;
  }
 if(mission3TB==150){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerspeed sert to 0
   textSize(20);
   text("Prisoner 4: NOOO ITS TURNING ON!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
 if(mission3TB==151){
  for(int i=0;i<ex.size();i++){ //for statment for all the zombies 
   zombieSpeed.set(i,0);  //speed set to 0
  } //ending for for statement
   fireBullet=true; //shooting turns off
   PLAYERSPEED=0; //playerspeed sert to 0
   textSize(20);
   text("Prisoner 3: Quickly Kill them and save us!!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
 if(mission3TB>=152 && mission3TB<=200){
     for(int i=0;i<ex.size();i++){
   zombieSpeed.set(i,random(0.2,1)); 
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
  }
  
  
  if(ex.size()==0 && checker==false){
    for(int i=0;i<ex.size();i++){
   zombieSpeed.set(i,0); 
  }
   fireBullet=true;
   PLAYERSPEED=0;
  mission3TB=201;
  zombieKills=75;
  machinedesk=true;
  }
  if(mission3TB==201){
   textSize(20);
   text("Prisoner 1: Oh my god! You killed them! Now go to the computer and cancel it!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
    PLAYERSPEED=1;
    if(playerX>=387 && playerX<=661 && playerY>=454 && playerY<714 && machinedesk==true){
      mission3TB=210;
      machinedesk=false;
      checker=true;
    }
  }
  if(mission3TB==210){
   textSize(20);
   text("Prisoner 2: It's canceled!! Thank You! Now go to the prison bars and  open the cage",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
    PLAYERSPEED=1;
    if(playerX>=651 && playerX<=767 && playerY>=796 && playerY<941){
      mission3TB=211;
    }
  }
  if(mission3TB==211){
   textSize(20);
   text("Prisoner 3: Oh s***, it's open! Thank you dawg!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
    PLAYERSPEED=1;
  }
  if(mission3TB==212){
   textSize(20);
   text(name+": You guys know the way out?",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==213){
   textSize(20);
   text("Prisoner 2: Yea we do. You coming?",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==214){
   textSize(20);
   text(name+": I would, but I cant! My friend is being trapped with that zombie! I need to save him!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==215){
   textSize(20);
   text("Prisoner 4: I wouldn't go if I were you! But you seem like a good friend",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==216){
   textSize(20);
   text(name+": Thanks man, you guys get out safely",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==217){
   textSize(20);
   text("Prisoner 4: Hey before we go, take some money. It'll help you on the way.",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
 //  money=money+100;
  }
  if(mission3TB==218){
   textSize(20);
   text("Prisoner 4: Hopefully this world can get back to normal!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==219){
   textSize(20);
   text(name+": True.. Well I should get going. Good luck to you all!",140,926);
   textSize(15);
   text("Press Enter to continue.",140,900);
  }
  if(mission3TB==220){
   text("Press Enter to continue.",140,900);
    PLAYERSPEED=1;
    p1--;
    p2--;
    p3--;
    p4--;
  }
  if(mission3TB==221){
  PLAYERSPEED=1;
  gameMode=2;
  missionCheck=4;
  missColor4=true;
  missColor3=true;
  missColor2=true;
  missColor1=true;
  
  }
  //HealthBar
   
  textSize(30);
  fill(255);
  text("Player Health",40,40);
  noStroke();
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
  
  for(int i=0;i<ex.size();i++){
   if(dist(playerX,playerY,ex.get(i),ey.get(i))<zSize.get(i)){
     healthbar--;
     ex.remove(i);
     ey.remove(i);
     zSize.remove(i);
     zombieSpeed.remove(i);
   }
  }
  if(healthbar<0){
    gameOver3=true;
    healthbarchecker=false;
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
  
 if(gameOver2==true){
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
  
  if(playerX>=74 && playerX<=734 && playerY>=118 && playerY<=379){
    if(playerX>=74 && playerX<=84){
      playerX=74;
    }
    if(playerX>=724 && playerX<=734){
      playerX=734;
    }
    if(playerY>=118 && playerY<=128){
      playerY=118;
    }  
    if(playerY>=369 && playerY<=379){
      playerY=379;
    }  
  }
  if(playerX>=401 && playerX<=650 && playerY>=442 && playerY<=688){
    if(playerX>=401 && playerX<=411){
      playerX=401;
    }
    if(playerX>=640 && playerX<=650){
      playerX=650;
    }
    if(playerY>=442 && playerY<=452){
      playerY=442;
    }  
    if(playerY>=678 && playerY<=688){
      playerY=688;
    }  
  }
  if(playerX>=773 && playerX<=1148 && playerY>=142 && playerY<=925){
    if(playerX>=773 && playerX<=783){
      playerX=773;
    }
    if(playerX>=1138 && playerX<=1148){
      playerX=1148;
    }
    if(playerY>=142 && playerY<=152){
      playerY=142;
    }  
    if(playerY>=915 && playerY<=925){
      playerY=925;
    }  
  }
}
