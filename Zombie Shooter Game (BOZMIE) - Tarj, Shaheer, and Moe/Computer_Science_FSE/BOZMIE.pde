/* 
Created by Tarj Mecwan, Shaheer Ali, Mohamed Ali Mourtada


  Please read this first:
  This was an exercise for school, where they tested our knowledge to see if we could create a game like this.
  I suggest you look at this to see examples and not to work further work on it, this will break the game if you do. If you want the full game, I will be creating one in the summer.
  Not all code is optimal but the point of this was to understand how a game like this works.
  The assets for this games were aquired on the internet but are not used for commercial use.

  WARNING:
  - There is no delta time in this game, this means your game can slow down. I didn't fully understand how I would implement deltaTime in this game back then so I didn't waste hours on it and focused on actually
  making the project.
  - Please do not work further on this game because it'll make your game slower and will break a lot of the features.
  
  Description:
  For this game you will need a keyboard and a mouse
  Unfortunately there is no sound implemented.
  We created a top down zombie shooter game. There are currently five missions, which have different sets of goals to complete. In the end, you'll have to kill the boss and "save the world"

  Controls:
  - Hold W,A,S,D to move around
  - Click to shoot
  - Press r to reload
  - Press ALT to go back to the main menu. (Doesn't work most of the time. I did talk to the developers, its a problem on there end)
  
  Menu controls:
  - GameMode: To swtich through GameModes, you can change the numbers from 0-5. 0-Main Menu. 1-The Game. 2-Mission Selector. 3-Controls. 4-Options. 5-creditScreen
  - Missions: To switch through msisions, you can change the number from 0-5.
*/


int gameMode=0;
int mission=1;
int lastShopOpened=0;//the last time you open the shop
int shopOpenInterval=400;//timer between opening the shop
/////////////////////////////////////////
float health=100;// player health
FloatList zombieSpeed=new FloatList();
float PLAYERSPEED=1; //player speed 

int zombieKills=0;// number of zombies killed

boolean moveRight=false; //player movement to the right
boolean moveLeft=false; // player movement to the left
boolean moveUp=false; // player movement to the up
boolean moveDown=false; // player movement to the down
boolean zombiespawner=true; // tells the program when to spawn zombies
float playerX=width/2; //player x
float playerY=height/2; //player y

FloatList bx=new FloatList();// bullet x-coordinates
FloatList by=new FloatList();// bullet y-coordinates
FloatList vx=new FloatList();//bullet hor. speed
FloatList vy=new FloatList();//bullet ver. speed

boolean fireBullet=false;// makes sure you dont rapidly shoo the gun

FloatList ex=new FloatList();// enemy x
FloatList ey=new FloatList();// enemy y
FloatList zSize=new FloatList();// enemy size
FloatList bX=new FloatList();// boss x
FloatList bY=new FloatList();// boss y

int shot=0; // how many shots you have shot

Float bozmieX=1069.0;// bozmie x
float bozmieY=477.0;//bozmie y

Float bossX=1069.0;// side boss x
Float bossY=477.0;// side boss y

int zombies;// number of zombies

//loading images
PImage player;
PImage zombie;
PImage zombie2;
PImage zombie3;
PImage labratory;

float healthbar=20;

PImage bozmiepic;
PImage bosspic;
PImage aiming1;
PImage aiming2;
PImage aiming3;
PImage aiming4;
PImage aiming5;
PImage aiming6;
PImage player2;
PImage player3;
PImage player4;
PImage player5;
PImage player6;
PImage mission3;
PImage prisonmission;
PImage controls;
PImage credits;
PImage dungeon;
PImage sentinal1;
PImage sentinal2;
PImage mission4pic;
PImage mission4;
PImage mission5;
PImage mission42pic;
int money=0;


void setup(){
  size(1200,950);//size
  frameRate(200);//fram rate
  
  //loading in the images
  img=loadImage("mmzombie2.png");
  imageMode(CENTER);
  player=loadImage("player.png");
  zombie=loadImage("zombie.png");
  street=loadImage("street.png");
  bomb2=loadImage("bomb.png");
  labratory=loadImage("labratory.png");
  prisoners=loadImage("p1.png");
  bozmiepic=loadImage("bozmie.png");
  bosspic=loadImage("boss.png");
  missions=loadImage("missions.png");
  mission1=loadImage("mission1.jpg");
  mission2=loadImage("mission2.jpg");
  aiming1=loadImage("crosshair1.png");
  aiming2=loadImage("crosshair2.png");
  aiming3=loadImage("crosshair3.png");
  aiming4=loadImage("crosshair4.png");
  aiming5=loadImage("crosshair5.png");
  aiming6=loadImage("crosshair6.png");
  player2=loadImage("player2.png");
  player3=loadImage("player3.png");
  player4=loadImage("player4.png");
  player5=loadImage("player5.png");
  player6=loadImage("player6.png");
  options=loadImage("options.png");
  mission3=loadImage("mission3.png");
  prisonmission=loadImage("prisonmission.jpg");
  controls=loadImage("controla.png");
  credits=loadImage("credits.png");
 AR=loadImage("AR.jpg");  
 AK=loadImage("AK.png");  
 RayGun=loadImage("RAY GUN.png");
 Pistol=loadImage("Pistol.png");
 PlayerSpeed=loadImage("PlayerSpeed.png");
 Ammo=loadImage("Ammo.jpg");
 Health=loadImage("Health.png"); 
 Upgrade=loadImage("upgrade.png");
 zombie2=loadImage("zombie2.png"); 
 zombie3=loadImage("zombie3.png");
 dungeon=loadImage("dungeon.png");
 sentinal1=loadImage("sentinal1.png");
 sentinal2=loadImage("sentinal2.png");
 mission4pic=loadImage("mission4.png");
 mission4=loadImage("mission4.jpg");
 mission5=loadImage("lastmission.jpg");
 mission42pic=loadImage("mission42.png");

 if(mission==4){//when in mission 4 these are the player x and y at the start
  playerX=950;
  playerY=500;
 }
 
Mission5PistolAmmoDecreasing=20;// ammo decreasing equals 20
 
}

void draw(){
  
 if(pause==1){// if pause equals 1 than you are playing the game if it equals 2 than ur in the pause menu / shop
  if(zombiespawner){// if zombie spawner equals true the zombies will spawn and than at the end it will equal false again
    // number of zombies in each mission
    if(mission==1){
      zombies=40;
    }
    if(mission==2){
      zombies=80;
    }
    if(mission==3){
      zombies=70;
    }
    if(mission==4){
      zombies=20;
    }
   
   //where the zombies should spawn and their speed and size for the missions
   for(int i=0;i<zombies;i++){
     if(mission==1){
    ex.set(i,(random(600,width-100))); 
    ey.set(i,(random(450,920)));
    zombieSpeed.set(i,random(0.5,1)); 
    zSize.set(i,random(30,50)); 
    }
    if(mission==2){
    ex.set(i,(random(1500,2000))); 
    ey.set(i,(random(0,950))); 
    zombieSpeed.set(i,random(0.5,1)); 
    zSize.set(i,random(30,50)); 
    }
     if(mission==3){
    ex.set(i,(random(-150,-60))); 
    ey.set(i,(random(0,950))); 
    zombieSpeed.set(i,random(0.5,1)); 
    zSize.set(i,random(30,50)); 
    }
  if(mission==4){
     ex.set(i,(random(-400,0))); 
     ey.set(i,(random(0,1000)));
     zSize.set(i,int(random(30,50)));
     zombieSpeed.set(i,random(0.5,1)); 
   }
    if(mission==5){
    ex.set(i,bozmieX); 
    ey.set(i,bozmieY); 
    zombieSpeed.set(i,random(0.5,1)); 
    zSize.set(i,random(30,50)); 
    bozBX.set(i,bozmieX);
    bozBY.set(i,bozmieY);
    }
   }
   zombiespawner=false;// after sawing the zombies once the zombie spawner goes back to equaling false
 }
  
  // MainMenu     
  if(gameMode==0){
  image(img,600,475);
  }
  
  // Declaring Voids
  if(gameMode==0){
    menuSelector();
  }
  if(gameMode==1){
    if(mission==1){
      mission1();
      moveBullets();
      drawBullets();
      playerMovement();
      collisionZombie();
      bozmie1();
      boss1();
      boundary();
    } 
    if(mission==2){
      mission2();
      moveBullets();
      drawBullets();
      playerMovement();
      collisionZombie();
      boundary();
      boss1();
    }
    if(mission==3){
      mission3();
      playerMovement();
      moveBullets();
      drawBullets();
      collisionZombie();
      boss1();
      boundary();
    }
    if(mission==4){
      mission4();
      playerMovement();
      moveBullets();
      drawBullets();
      collisionZombie();
      boundary();
    }
    if(mission==5){
      mission5();
      playerMovement();
      moveBullets();
      drawBullets();
      collisionZombie();
      boundary();
    }
  }//end of declaring voids
  
  //Part of Mission 5
 //the boss shooting timer in mission 5
  if(frameCount%200==0){//every 200 fram rates the bShooting equals true than the boss shoots
    println("shoot"); 
    BShooting=true;
    println(BShooting);     
  } 
  else{
   BShooting=false;         
  }
  
  if(gameMode==2){// if you click on mission selecter in the main menu it takes you to the missions
    missionSelector();
  }
  if(gameMode==3){// if you click on controls in the main menu it takes you to the controls
    controls();
  }
  if(gameMode==4){// if you click on options in the main menu it takes you to the options
    options();
  }
  if(gameMode==5){// if you click on credits in the main menu it takes you to the credits
    creditScreen();
  }
  println(gameMode+" "+frameRate+" "+keyCode+" "+mousePressed+" "+mouseX+","+mouseY+" "+speed+" "+playerX+" "+playerY);// help us with data
 }//end of pause menu 1
 
 if(pause==2 && gameMode==1){// if pause menu equals 2 and the gamemod is anything other than the mainmenu than you can access the shop
   playerShop();
 }
 
 if(pause>=3){// if you press q than you go into the shop (pausemenu==2) than is pausemenu is 3 or more than pause menu will go back to 1 which is the main menu so you can only go to the main menu or the game 
  pause=1; 
 }
 if (focused == false){
 background(0);
 text("Click on Screen", 200,200);
 }
}
