//SHOP

//IMAGES
PImage AR;
PImage AK;
PImage RayGun;
PImage Pistol;
PImage PlayerSpeed;
PImage Health;
PImage Ammo;
PImage Upgrade;  
//RELOADING
int reloading;

//FEATURES
int pause=1;
int HealthUpgradeCounter=0;
int AmmoUpgradeCounter=0; 
int PlayerSpeedUpgradeCounter=0; 

int reloadSpeed=0;
int bulletSpeed=0;
int gunMobility=0;

//DIDN'T COMMENT MUCH BECAUSE THERE ISN'T MUCH TO COMMENT
//A lot of it is just text, colors, and just adding integers

void playerShop(){
  fireChecker=false;
  cursor();
  background(255);
  fill(0);
  textSize(30);
  text("$"+money,900,475);
  
  textSize(50); 
  text("ITEM & UPGRADE SHOP",350,50);   
  
  //UPGRADE ICONS
  
  //Health
  image(Health,130,200,100,100);
  //Health upgrade disription
  textSize(30);
  text(HealthUpgradeCounter,50,210);
  textSize(15);
  //Hovering
  if(mouseX>=80 && mouseX<=177 && mouseY>=150 && mouseY<=252){
   fill(0);
  textSize(15);
  text("Upgrading the Health will",80,280);
  text("increase your player Health by 10%",80,300);
   if(mousePressed && money>=50 && millis()>lastShopOpened+shopOpenInterval){ //used so a small pause can occur, so they dont "spam" click it
     healthbar=20;
    money=money-50;
     lastShopOpened=millis();
   }
  }
  
  //How to upgrade
  text("To upgrade your player simply sellect what you want to upgrade",190,170);
  text("and the number counter will show you how many times you have upgraded that ability",190,170+20);
  text("if the number counter shows max than you cannot upgrade you player ability any furthur",190,170+40);
  
  //Ammo
  image(Ammo,130,500,100,100);
  if(mouseX>=80 && mouseX<=177 && mouseY>=450 && mouseY<=545){
  //Ammo upgrade disription
  text("Upgrading the Ammo will",80,580);
  text(" increase your gun Ammo capacity by",75,600);
  text("10 extra bullets",80,620);
   if(mousePressed && money>=50 && millis()>lastShopOpened+shopOpenInterval){ //used so a small pause can occur, so they dont "spam" click it
    ammoNumber++;
    if(ammoNumber<=3){
    money=money-50;
    }
     lastShopOpened=millis();
   }
  }
  
  //Player Speed
  image(PlayerSpeed,130,800,100,100);
  //PlayerSpeed Description

  if(mouseX>=80 && mouseX<=177 && mouseY>=750 && mouseY<=850){
  text("Upgrading the PlayerSpeed will",80,880);
  text(" increase your playerSpeed by 5%",75,900);
  
  if(mousePressed && money>=50 && millis()>lastShopOpened+shopOpenInterval){ //used so a small pause can occur, so they dont "spam" click it
    speed++;
    if(speed<=6){
    money=money-50;
    }
    lastShopOpened=millis();

  }
 }
}
