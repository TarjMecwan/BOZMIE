int gameOver1=0; //gameover screen currently turned off, set to 0
int mission1TB=0; //text box is set to 0
int speed=1; //speed set to 1

void mission1() {
  image(labratory, 600, 475); //background image for mission 1
  fireChecker=true;

  if (ammoNumber==0) { //ammo checker
    Mission5PistolAmmo=20; //ammo set to 20
  } //end of if statment
  if (ammoNumber==1) { //amo checker
    Mission5PistolAmmo=30; //ammo set to 30
  } //end of if statment
  if (ammoNumber==2) { //ammo checker
    Mission5PistolAmmo=40; //ammo set to 40
  } //end of if statment
  if (ammoNumber>=3) { //ammo checker
    Mission5PistolAmmo=50; //ammo set to 50
  } //end of if statment

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

  fill(255, 0, 0); //red color
  textSize(20); //text size to 20
  text("Emergency", 1, 308); //text for "Emergency"
  text("Gun", 25, 340); //text for "Gun"
  fill(255); //white color

  if (zombieKills==40) { //if the the zombie kills go to 40
    mission1TB=402; //text box to 402
    zombieKills=zombieKills+1; //adding 1 kill to the variable
  }
  fill(0); //black color

  //////////////////////////////
  // Text Boxes for Mission 1 \\
  //////////////////////////////
  
  if (mission1TB==0) { //if mission text is 0
    for (int i=0; i<ex.size(); i++) { //for statment for different speeds of zombies
      zombieSpeed.set(i, 0); //different speeds of zombies
    }
    fireBullet=true; //shooting turned off
    PLAYERSPEED=0; //playespeed off
    playerX=50; //playerX at 50
    playerY=height/2; //playerY at 475
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text("Boss: - Here I'll go into the labratroy, kill the security guard, and take the potion!", 132, 870);
    textSize(15);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==1) { //if mission text is 0
    for (int i=0; i<ex.size(); i++) { //for statment for different speeds of zombies
      zombieSpeed.set(i, 0); //different speeds of zombies
    }
    fireBullet=true; //shooting turned off
    PLAYERSPEED=0; //playespeed off
    playerX=50; //playerX at 50
    playerY=height/2; //playerY at 475
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text("Bozmie: Ok good, I'll back you up with my —— Tyrone!? Wh wh what are you doing here?", 132, 870);
    textSize(15);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==2) { //if mission text is 0
    for (int i=0; i<ex.size(); i++) { //for statment for different speeds of zombies
      zombieSpeed.set(i, 0); //different speeds of zombies
    }
    fireBullet=true; //shooting turned off
    PLAYERSPEED=0; //playespeed off
    playerX=50; //playerX at 50
    playerY=height/2; //playerY at 475
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text(name+": Don't worry I'm here! I can save you", 132, 870);
    textSize(15);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==3) { //if mission text is 0
    for (int i=0; i<ex.size(); i++) { //for statment for different speeds of zombies
      zombieSpeed.set(i, 0); //different speeds of zombies
    }
    fireBullet=true; //shooting turned off
    PLAYERSPEED=0; //playespeed off
    playerX=50; //playerX at 50
    playerY=height/2; //playerY at 475
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text("Bozmie: NO STOP, HELP ME!!!", 132, 870);
    textSize(15);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB>=4 && mission1TB<=300) { //if te textbox is at 4 to 300
    for (int i=0; i<ex.size(); i++) { //for statment for different speeds of zombies
      zombieSpeed.set(i, random(0.5, 1)); //different speeds of zombies
    }
    fireBullet=true; //shooting turned off
    if (playerX>=1 && playerX<=122 && playerY>=111 && playerY<=344) { //if the players goes into these coordinatez
      mission1TB=350; //go to mission text box 350
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
  } //if statement ended
  else if (mission1TB==350) { //if text box goes to 350
    fireBullet=false; //turn shooting on
    fill(0);
    rect(45,864,140,50);
    fill(255);
    textSize(20);
    text("Gun Acquired",50,890);
    
  } //if statement ended
  else if (mission1TB==402) { //if textbox is at 402
    for (int i=0; i<ex.size(); i++) { //for statment for all the zombies
      zombieSpeed.set(i, 0); //zombie speed set to 0
    } //if statement ended
    fireBullet=true; //shooting stopped
    PLAYERSPEED=0; //playerspeed set to 0
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text("Boss: UGGHHH!! You're gonna pay for this! Now, I'm gonna take him!", 132, 870);
    textSize(15);
    fill(255);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==403) { //if textbox is at 403
    for (int i=0; i<ex.size(); i++) { //for statment for all the zombies
      zombieSpeed.set(i, 0); //zombie speed set to 0
    } //if statement ended
    fireBullet=true; //shooting stopped
    PLAYERSPEED=0; //playerspeed set to 0
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text(name+": NO! Don't take Bozmie!!!!", 132, 870);
    textSize(15);
    fill(255);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==404) { //if textbox is at 404
    for (int i=0; i<ex.size(); i++) { //for statment for all the zombies
      zombieSpeed.set(i, 0); //zombie speed set to 0
    } //if statement ended
    fireBullet=true; //shooting stopped
    PLAYERSPEED=0; //playerspeed set to 0
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text("Boss: You had your chance.", 132, 870);
    textSize(15);
    fill(255);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==405) { //if textbox is set to 405
    bozmieX++; //moves right
    bossX++; //moves right
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    fill(255); //white color
    textSize(15); //textsize to 15
    fill(255); //white color
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB==406) { //if textbox is set to 405
    for (int i=0; i<ex.size(); i++) { //for statment for all the zombies
      zombieSpeed.set(i, 0); //zombie speed set to 0
    } //if statement ended
    fireBullet=true; //shooting stopped
    PLAYERSPEED=0; //playerspeed set to 0
    fill(0); //black color
    rect(100, 801, 875, 100); //rectangle
    textSize(20); //text size to 20
    fill(255); //white color
    text(name+": Nooo, he took Bozmie. It's my job to get him back!", 132, 870);
    textSize(15);
    text("Press Enter to continue.", 132, 830);
  } 
  else if (mission1TB>=407) { //if textbox is set to 407 orm ore
    gameMode=2; //goes to mission selector
    missColor1=true; //boolean for the color
    missColor2=true; //boolean for the color
    missionCheck=2; //missionchecker sets to 2
  } 
  //HealthBar

  textSize(30); //text size set to 30
  fill(255); //white color
  text("Player Health", 40, 40); //text
  noFill(); //no fill
  stroke(255); //stroke to the highest
  strokeWeight(5); //strokeweight setto 5
  rect(40-4, 60-4, 20*20+8, 20+8); //rectangle
  fill(#33DB47);
  stroke(#33DB47);
  if (healthbarchecker==true) { //if statment for the healthbarchecker
    rect(40, 60, healthbar*20, 20); //rectangle for the healthbar
  } //end of if statment
  fill(255);  //white color
  noStroke(); //nostroke
  fill(255); //white color

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
    gameOver1=1; //goes to the gameover screen
    healthbarchecker=false; //healthbar disappears
  }
  if (ex.size()==0) { //if the size of the zombies goes to 0
    if (mission1TB<402) { //if the text box is at 402
      zombieKills=40; //zombie kills set to 40
    }
  }
  
  ///////////////////////
  // HUB for Mission 1 \\
  ///////////////////////
  
  fill(100); 
  ellipse(1200, 950, 350, 350);
  fill(255);
  text("Ammo", 1100, 870);
  text(Mission5PistolAmmoDecreasing, 1100, 910);
  text("/", 1140, 910);
  text(Mission5PistolAmmo, 1160, 910);

  ////////////////////////
  // AMMO for Mission 1 \\
  ////////////////////////
  
  if (Mission5PistolAmmoDecreasing<=0) { //if there is no bullets
    Mission5PistolReload++; //reloading enables
    textSize(15); //text size set to 15
    text("*Reload", playerX+25, playerY); //reloading text comes into play 
    rect(playerX+25, playerY+10, Mission5PistolReload/5, 7); //reloading box comes into play
    Mission5PistolAmmoDecreasing=0; 
    Mission5Reload=2; //reloading set to 0
  }

  if (Mission5PistolReload>=250) {
    if (ammoNumber==0) {
      Mission5PistolAmmoDecreasing=20;
    }
    if (ammoNumber==1) {
      Mission5PistolAmmoDecreasing=30;
    }
    if (ammoNumber==2) {
      Mission5PistolAmmoDecreasing=40;
    }
    if (ammoNumber>=3) {
      Mission5PistolAmmoDecreasing=50;
    }
    Mission5PistolReload=0;
    Mission5Reload=1;
  }
  textSize(25);
  if (mission==1) {
    noCursor();
  }
  fill(255);

  if (gameOver1==1) {
    background(0);
    fireBullet=true;
    textSize(120);
    fill(255, 0, 0);
    text("Game Over", 320, 386);
    textSize(50);
    fill(0);
    text("YOU DIED!", 495, 490);
    for (int i=0; i<ex.size(); i++) {
      zombieSpeed.set(i, 0);
    }
    PLAYERSPEED=0;
    playerX=591.0;
    playerY=557;
    fill(255, 167, 3);
    text("Back to Menu", 29, 933);
    if (mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940 && mousePressed) {
      gameMode=0;
      fireBullet=false;
      PLAYERSPEED=2;
      gameOver1=0;
      textSize(25);
    }
    textSize(25);
  } 
  if (gameOver1==2) {
    background(0);
    fireBullet=true;
    textSize(120);
    fill(255, 0, 0);
    text("Game Over", 320, 386);
    textSize(50);
    fill(0);
    text("YOU KILLED BOZMIE!", 390, 490);
    for (int i=0; i<ex.size(); i++) {
      zombieSpeed.set(i, 0);
    }
    PLAYERSPEED=0;
    playerX=591.0;
    playerY=557;
    fill(255, 167, 3);
    text("Back to Menu", 29, 933);
    if (mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940 && mousePressed) {
      gameMode=0;
      textSize(25);
    }
    textSize(25);
  } 
  if (crossHair==1) {
    image(aiming1, mouseX, mouseY, 100, 100);
  }
  if (crossHair==2) {
    image(aiming2, mouseX, mouseY, 100, 100);
  }
  if (crossHair==3) {
    image(aiming3, mouseX, mouseY, 100, 100);
  }
  if (crossHair==4) {
    image(aiming4, mouseX, mouseY, 100, 100);
  }
  if (crossHair==5) {
    image(aiming5, mouseX, mouseY, 100, 100);
  }
  if (crossHair==6) {
    image(aiming6, mouseX, mouseY, 100, 100);
  }
 
  fill(#2EFF80);
  text("$", 35, 115);
  text(money, 50, 115);
  fill(255);

  //////////////////////////////
  // Barriers  for Mission 1  \\
  //////////////////////////////
  
  if (playerX>80 && playerX<200 && playerY>25 && playerY<500) {
    if (playerX>80 && playerX<90) {
      playerX=80;
    }
    if (playerX>=190 && playerX<=200) {
      playerX=200;
    }
    if (playerY>=490 && playerY<=500) {
      playerY=500;
    }
  }
  if (playerX>=200 && playerX<=586 && playerY>=25 && playerY<=418) {
    if (playerX>=562 && playerX<=586) {
      playerX=586;
    }
    if (playerY>=380 && playerY<=418) {
      playerY=420;
    }
  }
  if (playerX>=586 && playerX<=1173 && playerY>=25 && playerY<=325) {
    if (playerY>=306 && playerY<=325) {
      playerY=325;
    }
  }
  if (playerX>=988 && playerX<=1173 && playerY>=421 && playerY<=601) {
    if (playerX>=988 && playerX<=1005) {
      playerX=988;
    }
    if (playerY>=580 && playerY<=601) {
      playerY=601;
    }
    if (playerY>=421 && playerY<=451) {
      playerY=421;
    }
  }
  if (playerX>=988 && playerX<=1173 && playerY>=613 && playerY<=781) {
    if (playerX>=988 && playerX<=1005) {
      playerX=988;
    }
    if (playerY>=613 && playerY<=620) {
      playerY=613;
    }
    if (playerY>=770 && playerY<=781) {
      playerY=781;
    }
  }
  if (playerX>=254 && playerX<=494 && playerY>=420 && playerY<=504) {
    if (playerX>=254 && playerX<=265) {
      playerX=254;
    }
    if (playerX>=484 && playerX<=494) {
      playerX=494;
    }
    if (playerY>=490 && playerY<=504) {
      playerY=504;
    }
  }
  if (playerX<52) {
    playerX=52;
  }
  if (playerX>1143) {
    playerX=1143;
  }
  if (playerY<66) {
    playerY=66;
  }
  if (playerY>902) {
    playerY=902;
  }
}
