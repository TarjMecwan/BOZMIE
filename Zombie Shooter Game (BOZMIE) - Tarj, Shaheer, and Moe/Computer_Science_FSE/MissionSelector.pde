PImage missions; //image
int missionCheck=1; //
boolean missColor1=true; //colors
boolean missColor2=false; //colors
boolean missColor3=false; //colors
boolean missColor4=false; //colors
boolean missColor5=false; //colors

PImage mission1; //images
PImage mission2; //images

void missionSelector(){
  cursor(); //include cursor
  image(missions,600,475); //image
  textSize(50); //text size
  text("SELECT MISSION",70,110); //text

  textSize(30); //text size
  fill(255); //white color
  if(missColor1==true){
    fill(0,255,0);
  }
  text("CONSTERNATION",100,300);
  fill(255);

  if(missColor2==true){
    fill(0,255,0);
  }
  text("EXTERMINATION",100,360);
  fill(255);

  if(missColor3==true){
    fill(0,255,0);
  }
  text("VENGEANCE",100,420);
  fill(255);
  if(missColor4==true){
    fill(0,255,0);
  }
  text("ARTIFICE",100,480);
  fill(255);
  if(missColor5==true){
    fill(0,255,0);
  }
  text("PROVACTION",100,540);
if(mouseX>=100 && mouseX<=352 && mouseY>=271 && mouseY<=302 && missionCheck>=1 && missionCheck<=5){
  image(mission1,780,450,650,500);
  text("MISSION BRIEFING",489,750);
  textSize(20);
  text("You’re in a world where the economy isn’t striving, there isn’t enough",489,780);
  text("food, and many people are trying to destroy the world. Currently,",489,800);
  text("there is a virus outbreak which is turning citizens into zombies. ",489,820);
  text("Your part of a secret organization which is trying to find a cure to ",489,840);
  text("this virus. To find a cure, you’ll need a zombie making potion. The only ",489,860);
  text("person who has this potion is the one who is creating these zombies. ",489,880);
  text("Not only it’s your job to find a cure, but to find the individual who is ",489,900);
  text("created this outbreak.",489,920);
  if(mousePressed){
    mission=1;
    gameMode=0;
  }
}
if(mouseX>=101 && mouseX<=338 && mouseY>=333 && mouseY<=364 && missionCheck>=2 && missionCheck<=5){
  image(mission2,780,450,650,500);
  text("MISSION BRIEFING",489,750);
  textSize(20);
  text("You have to save Bozmie before the zombies take him and kill him!",489,780);
  text("You're going to have to follow him into the streets and try to",489,800);
  text("find Bozmie and find a cure for this virus",489,820);
  if(mousePressed){
    mission=2;
    zombiespawner=true;
    gameMode=0;
  }
}
if(mouseX>=98 && mouseX<=278 && mouseY>=391 && mouseY<=425 && missionCheck>=3 && missionCheck<=5){
  image(prisonmission,780,450,650,500);
  text("MISSION BRIEFING",489,750);
  textSize(20);
  text("You go to follow the boss and you end up seeing civlians",489,780);
  text("trapped and almsot becoming into zombies. It's you're job to",489,800);
  text("kill all the zombies before the civilians become zombies.",489,820);
  if(mousePressed){
    mission=3;
    zombiespawner=true;
    gameMode=0;
  }
}
if(mouseX>=98 && mouseX<=233 && mouseY>=453 && mouseY<=484 && missionCheck>=4 && missionCheck<=5){
  image(mission4,780,450,650,500);
  text("MISSION BRIEFING",489,750);
  textSize(20);
  text("You wake up inside a jail cell when a zombie boss hits you too hard.",489,780);
  text("You're currently trapped and yoyu need to kill the guards that are with you.",489,800);
  text("You will need to pick a lock to actually get out!",489,820);
  if(mousePressed){
    mission=4;
    zombiespawner=true;
    gameMode=0;
  }
}
if(mouseX>=98 && mouseX<=292 && mouseY>=514 && mouseY<=543 && missionCheck>=5 && missionCheck<=5){
  image(mission5,780,450,650,500);
  text("MISSION BRIEFING",489,750);
  textSize(20);
  text("You have finally escaped the mission and killed the boss.",489,780);
  text("That's when you meet the professor and it's your job to",489,800);
  text("kill him and save the world! Good Luck!",489,820);
  if(mousePressed){
    mission=5;
    zombiespawner=true;
    gameMode=0;
  }
}

    fill(255);
    if(mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940){
    fill(255,167,3);
    if(mousePressed){
    gameMode=0;
    }
  }
   text("Back to Menu",29,933);
   fill(255);
}
