boolean fireChecker=true;//when fire checker equals true than the player can shoot and if it equals false the player cannot shoot

void controls(){//when you click on the controls tab on the main menu it will take you into this void
    image(controls,600,475);
     
    fill(255);
    if(mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940){//if you click the back to menu button it will light up
    fill(255,167,3);
    
    if(mousePressed){// takes you back to main menu
    gameMode=0;//main menu
    }
  }
   text("Back to Menu",29,933);
   fill(255);
}//end of controls

void mousePressed(){
if(mission>=1 && mission<=5 && gameMode==1){//you can only shoot if your playing a mission no were else
 if(mousePressed && !fireBullet){// or you can use fireBullet==false
  fireBullet=true;//makes sure you cannot rapid fire so you have to release and click again
  shooting();// ativates the shooting void
 }
 Mission5PistolAmmoDecreasing--;//every time you shoot your ammo will go down
 }
}

void mouseReleased(){
   fireBullet=false;// when the mouse is released you can click it again too shoot (prevents rapid fire)
}

void keyPressed(){
 if (keyPressed && key == CODED && keyCode==ALT){//if you press "ALT" it will bring you back to the main menu
  gameMode=0;//main menu
  }
  
 if(keyPressed==true && key=='d'){//press d to go right
  moveRight=true; 
 }
 if(keyPressed==true && key=='a'){//press a to go left
  moveLeft=true;  
 }
 if(keyPressed==true && key=='w'){//press w to go up
  moveUp=true;  
 }
 if(keyPressed==true && key=='s'){//press s to go down
  moveDown=true;  
 }
 if(keyPressed==true && key==10){//if you press enter and your on a specific mission you will go to the next text box
   if(mission==1){
   mission1TB=mission1TB+1;
   }
   if(mission==2){
   mission2TB=mission2TB+1;
   }
   if(mission==3){
     mission3TB=mission3TB+1;
   }
   if(mission==4){
    // missTB4=missTB4+1;
   }
   if(mission==5){
    if(keyPressed && keyCode==ENTER){
      textBoxM5++; 
    }  
   }
 }
 
if(Mission5Reload==2){
 if(keyPressed=true && key=='r'){//if you press r you can reload
     Mission5Reload=1;
   }
 }
  if(keyPressed=true && key=='q'){//if you pree q you can go to the pause menu / shop
   pause++; 
 }
}

void keyReleased(){
 //Movement
 if(keyPressed=true && key=='d'){
  moveRight=false;  
 }
 if(keyPressed=true && key=='a'){
  moveLeft=false;  
 }
 if(keyPressed=true && key=='w'){
  moveUp=false;  
 }
 if(keyPressed=true && key=='s'){
  moveDown=false;  
 }
}

void playerMovement(){//player movement
  if(moveRight){//player moving right
    playerX+=PLAYERSPEED; 
  }
  if(moveLeft){//player moving left
    playerX-=PLAYERSPEED;
  }
  if(moveUp){//player moving up
    playerY-=PLAYERSPEED;
  }
  if(moveDown){// player moving down
    playerY+=PLAYERSPEED; 
  }
}

void shooting(){//player shooting
if(Mission5Reload==1){//if the reload equals 1 you can shoot if it equals 2 you cannot this is for the reload feature 
 float angle;
 float velx;//horizontal component 
 float vely;//verticle component 
 //************************************
 angle=atan2(mouseY-playerY,mouseX-playerX);//players angle 
 velx=cos(angle)*10;//players cos                    
 vely=sin(angle)*10;//players sin                     
 //************************************
 //appending the bullets to the players cos and sin
 bx.append(playerX);
 by.append(playerY);
 vx.append(velx);
 vy.append(vely); 
 
 for(int i=0;i<bx.size();i++){
  if(Mission5Reload==2){//if reload equals 2 than the player cannot shoot and has to wait a couple of secans for the gun to reload to shoot again
    //when the gun is reloading the bullets that you shoot will get removed
     bx.remove(i);
     by.remove(i);
     vx.remove(i);
     vy.remove(i);
     break;
   }
  }
 } 
}

void drawBullets(){
if(fireChecker==true){//when fire checker equals true than the player can shoot and if it equals false the player cannot shoot
if(Mission2Reload==1){//if reload equals 2 than the player cannot shoot and has to wait a couple of secans for the gun to reload to shoot again
 for(int i=0;i<bx.size();i++){
  ellipse(bx.get(i),by.get(i),10,10);//drawing the bullets
  }
 }
if(Mission5Reload==1){
 for(int i=0;i<bx.size();i++){
  ellipse(bx.get(i),by.get(i),10,10);//drawing the bullets
  }
 }
 }
}

void moveBullets(){
 for(int i=0;i<bx.size();i++){
  bx.add(i,vx.get(i));//moving the bullet x
  by.add(i,vy.get(i));//moving the bullet y
 }
 
 //we need to remove the OFF-SCREEN bullets
 for(int i=0;i<bx.size();i++){
  if(bx.get(i)>width || bx.get(i)<0 || by.get(i)>height || by.get(i)<0){
    bx.remove(i); 
    by.remove(i);
    vx.remove(i); 
    vy.remove(i);
   }
  }
 }


void collisionZombie(){
 for (int i=bx.size()-1;i>=0;i--){//nested loop
   for(int j=ex.size()-1;j>=0;j--){  
    if(dist(bx.get(i),by.get(i),ex.get(j),ey.get(j))<=zSize.get(j)){//distance between the bullet and zombie
     money+=3;//if you shoot a zombie you earn money
     //removing the bullets and zombie components
     ex.remove(j);
     ey.remove(j);
     bx.remove(i);
     by.remove(i);
     vx.remove(i);
     vy.remove(i);
     zSize.remove(j);
     zombieKills=zombieKills+1; //numbers of zombies killed 
     zombies--;//number of zombies
     break;
    } 
   }
  }
 }



void bozmie1(){ 
  image(bozmiepic,bozmieX,bozmieY,90,70);
   for (int i=bx.size()-1;i>=0;i--){
    if(dist(bx.get(i),by.get(i),1069,477)<=30){//if you shoot bozmie in the mission1 than game over
      gameOver1=2;  //game over
    }
  }
}

void boss1(){
  image(bosspic,bossX+30,bossY+80,100,80);
}

void boundary(){
  //player boundrys
  if(playerX<24){
    playerX=24;
  }
  if(playerX>1173){
    playerX=1173;
  }
  if(playerY<25){
    playerY=25;
  }
  if(playerY>925){
    playerY=925;
  }
}
