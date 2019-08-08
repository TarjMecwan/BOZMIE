//WORST MAIN MENU EVER!!
//I COULD HAVE DONE THIS A SIMPLIER WAY
// I REALIZED THIS AFTER FINISHING THE GAME..
// I COULD EASILY SUM THIS INTO 40-50 LINES
PImage img;
int playx=155,missionx=155,controlx=155,optionx=155,creditx=155;
int playSize=30,missionSize=30,controlSize=30,optionSize=30,creditSize=30;
int playColor1=255,playColor2=255,playColor3=255;
int missionColor1=255,missionColor2=255,missionColor3=255;
int controlColor1=255,controlColor2=255,controlColor3=255;
int optionColor1=255,optionColor2=255,optionColor3=255;
int creditColor1=255,creditColor2=255,creditColor3=255;

void menuSelector(){
    cursor();
  textSize(playSize);
  fill(playColor1,playColor2,playColor3);
  text("PLAY",playx,500);
  
  textSize(missionSize);
  fill(missionColor1,missionColor2,missionColor3);
  text("MISSIONS",missionx,560);
  
  textSize(controlSize);
  fill(controlColor1,controlColor2,controlColor3);
  text("CONTROLS",controlx,620);
 
  textSize(optionSize);
  fill(optionColor1,optionColor2,optionColor3);
  text("OPTIONS",optionx,680);

  textSize(creditSize);
  fill(creditColor1,creditColor2,creditColor3);
  text("CREDITS",creditx,740);

  if(mouseX>=153 && mouseX<=280 && mouseY>=460 && mouseY<=500){
    playColor1=255;
    playColor2=167;
    playColor3=3;
    playx+=5;
      if(playx>=180){
        playx=180;
      }
      if(mousePressed){
        gameMode=1;
      }
  }
  else if(mouseX>=153 && mouseX<=315 && mouseY>=530 && mouseY<=563){
    missionColor1=255;
    missionColor2=167;
    missionColor3=3;
    missionSize=32;
    missionx+=5;
    if(missionx>=180){
      missionx=180;
    }
    if(mousePressed){
      gameMode=2;
    }
  }
  else if(mouseX>=153 && mouseX<=318 && mouseY>=590 && mouseY<=622){
    controlColor1=255;
    controlColor2=167;
    controlColor3=3;
    controlSize=32;
    controlx+=5;
    if(controlx>=180){
      controlx=180;
    }
    if(mousePressed){
      gameMode=3;
    }
  }
  else if(mouseX>=153 && mouseX<=282 && mouseY>=652 && mouseY<=681){
    optionColor1=255;
    optionColor2=167;
    optionColor3=3;
    optionSize=32;
    optionx+=5;
    if(optionx>=180){
      optionx=180;
    }
    if(mousePressed){
      gameMode=4;
    }
  }
  else if(mouseX>=153 && mouseX<=276 && mouseY>=714 && mouseY<=743){
    creditColor1=255;
    creditColor2=167;
    creditColor3=3;
    creditSize=32;
    creditx+=5;
    if(creditx>=180){
      creditx=180;
    }
    if(mousePressed){
      gameMode=5;
    }
  }
  else{
    playColor1=255;
    playColor2=255;
    playColor3=255; 
    
    missionColor1=255;
    missionColor2=255;
    missionColor3=255; 
    
    controlColor1=255;
    controlColor2=255;
    controlColor3=255;
    
    optionColor1=255;
    optionColor2=255;
    optionColor3=255;
    
    creditColor1=255;
    creditColor2=255;
    creditColor3=255;    
    
    playSize=30;
    playx=155;
    missionx=155;
    controlx=155;
    optionx=155;
    creditx=155;
  }
}
