PImage options; //image
int optionColor=0; //color
int optionColorChecker=0; //color 
int optionChecker=0; //color
int crossHair=1; //crosshair checkr
int zombiePicker=1; //zombie picker
boolean colorChecker1=true; //color
boolean colorChecker2=false; //color
boolean colorChecker3=false; //color
boolean colorChecker4=false; //color
boolean colorChecker5=false; //color
boolean colorChecker6=false; //color
int playerPicker=1; //player picker
boolean colorChecker11=true; //color checker
boolean colorChecker22=false; //color checker
boolean colorChecker33=false; //color checker
boolean colorChecker44=false; //color checker
boolean colorChecker55=false; //color checker
boolean colorChecker66=false; //color checkr
String name="Tyrone"; //name
int namechecker=1; //name checker
boolean nameColorChecker=false; //name checker


//AGAIN I COULD HAVE DONE THIS AN EASIER WAY, BUT I WASN'T REALLY THINKING WHEN I WAS DOING THIS PART. Please understand.

void options(){
  cursor();
  image(options,600,475);
  fill(255);
  if(mouseX>=100 && mouseX<=241 && mouseY>=71 && mouseY<=104){  
    optionColor=1;
    if(mousePressed){
      optionChecker=1;
      optionColorChecker=1;
    }
  }
  else if(mouseX>=300 && mouseX<=468 && mouseY>=71 && mouseY<=102){  
    optionColor=2;
    if(mousePressed){
      optionChecker=2;
      optionColorChecker=1;
    }
  }
  else if(mouseX>=500 && mouseX<=677 && mouseY>=71 && mouseY<=102){  
    optionColor=3;
    if(mousePressed){
      optionChecker=3;
      optionColorChecker=1;
    }
  }
  else if(mouseX>=717 && mouseX<=851 && mouseY>=71 && mouseY<=102){  
    optionColor=4;
    if(mousePressed){
      optionChecker=4;
      optionColorChecker=1;
    }
  }
  else if(optionColorChecker==0){
    optionColor=0;
  }
  if(optionColor==1){
    fill(255,167,3);
  }
    text("Crosshair",100,100);
    fill(255);
  if(optionColor==2){
    fill(255,167,3);
  }
    text("Player Look",300,100);
    fill(255);
   if(optionColor==3){
    fill(255,167,3);
   }
    text("Player Name",500,100);
    fill(255);
   if(optionColor==4){
    fill(255,167,3);
   }
    text("Zombies",720,100);
    
  if(optionChecker==1){
    if(mouseX>=265 && mouseX<=475 && mouseY>=254 && mouseY<=465 && mousePressed){
      crossHair=1;
      colorChecker1=true;
      colorChecker2=false;
      colorChecker3=false;
      colorChecker4=false;
      colorChecker5=false;
      colorChecker6=false;

    }
    if(mouseX>=508 && mouseX<=718 && mouseY>=254 && mouseY<=465 && mousePressed){
      crossHair=2;
      colorChecker1=false;
      colorChecker2=true;
      colorChecker3=false;
      colorChecker4=false;
      colorChecker5=false;
      colorChecker6=false;
    }
    if(mouseX>=754 && mouseX<=964 && mouseY>=254 && mouseY<=465 && mousePressed){
      crossHair=3;
      colorChecker1=false;
      colorChecker2=false;
      colorChecker3=true;
      colorChecker4=false;
      colorChecker5=false;
      colorChecker6=false;
    }
    
    if(mouseX>=265 && mouseX<=475 && mouseY>=495 && mouseY<=705 && mousePressed){
      crossHair=4;
      colorChecker1=false;
      colorChecker2=false;
      colorChecker3=false;
      colorChecker4=true;
      colorChecker5=false;
      colorChecker6=false;

    }
    if(mouseX>=508 && mouseX<=718 && mouseY>=495 && mouseY<=705 && mousePressed){
      crossHair=5;
      colorChecker1=false;
      colorChecker2=false;
      colorChecker3=false;
      colorChecker4=false;
      colorChecker5=true;
      colorChecker6=false;
    }
    if(mouseX>=754 && mouseX<=964 && mouseY>=495 && mouseY<=705 && mousePressed){
      crossHair=6;
      colorChecker1=false;
      colorChecker2=false;
      colorChecker3=false;
      colorChecker4=false;
      colorChecker5=false;
      colorChecker6=true;
    }
    image(aiming1,369,359,500,500);
    image(aiming2,613,359,500,500);
    image(aiming3,857,359,500,500);
    image(aiming4,369,600,500,500);
    image(aiming5,613,600,500,500);
    image(aiming6,857,600,500,500);
  if(colorChecker1==true && crossHair==1){
        noFill();
    stroke(5);
    stroke(0,255,0);
  rect(265,254,210,210); //1
  }
  if(colorChecker2==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(508,254,210,210); //2
  }  
  if(colorChecker3==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(754,254,210,210); //3
  }  
  if(colorChecker4==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(265,495,210,210); //4
  }  if(colorChecker5==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(508,495,210,210); //5
  }  if(colorChecker6==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(754,495,210,210); //6
  }
  

  }
  if(optionChecker==2){
    if(mouseX>=265 && mouseX<=475 && mouseY>=254 && mouseY<=465 && mousePressed){
      playerPicker=1;
      colorChecker11=true;
      colorChecker22=false;
      colorChecker33=false;
      colorChecker44=false;
      colorChecker55=false;
      colorChecker66=false;

    }
    if(mouseX>=508 && mouseX<=718 && mouseY>=254 && mouseY<=465 && mousePressed){
      playerPicker=2;
      colorChecker11=false;
      colorChecker22=true;
      colorChecker33=false;
      colorChecker44=false;
      colorChecker55=false;
      colorChecker66=false;
    }
    if(mouseX>=754 && mouseX<=964 && mouseY>=254 && mouseY<=465 && mousePressed){
      playerPicker=3;
      colorChecker11=false;
      colorChecker22=false;
      colorChecker33=true;
      colorChecker44=false;
      colorChecker55=false;
      colorChecker66=false;
    }
    
    if(mouseX>=265 && mouseX<=475 && mouseY>=495 && mouseY<=705 && mousePressed){
      playerPicker=4;
      colorChecker11=false;
      colorChecker22=false;
      colorChecker33=false;
      colorChecker44=true;
      colorChecker55=false;
      colorChecker66=false;

    }
    if(mouseX>=508 && mouseX<=718 && mouseY>=495 && mouseY<=705 && mousePressed){
      playerPicker=5;
      colorChecker11=false;
      colorChecker22=false;
      colorChecker33=false;
      colorChecker44=false;
      colorChecker55=true;
      colorChecker66=false;
    }
    if(mouseX>=754 && mouseX<=964 && mouseY>=495 && mouseY<=705 && mousePressed){
      playerPicker=6;
      colorChecker11=false;
      colorChecker22=false;
      colorChecker33=false;
      colorChecker44=false;
      colorChecker55=false;
      colorChecker66=true;
    }
    image(player,369,359,160,130);
    image(player2,613,359,160,130);
    image(player3,857,359,160,130);
    image(player4,369,600,160,130);
    image(player5,613,600,160,130);
    image(player6,857,600,160,130);
  if(colorChecker11==true && playerPicker==1){
        noFill();
    stroke(5);
    stroke(0,255,0);
  rect(265,254,210,210); //1
  }
  if(colorChecker22==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(508,254,210,210); //2
  }  
  if(colorChecker33==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(754,254,210,210); //3
  }  
  if(colorChecker44==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(265,495,210,210); //4
  }  if(colorChecker55==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(508,495,210,210); //5
  }  if(colorChecker66==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(754,495,210,210); //6
  }
  }
  
 if(optionChecker==3){
   fill(255);
   if(name=="Tyrone"){
   fill(255,167,3);
   }
   text("Tyrone Crawford",453,322);
fill(255);
   if(name=="Dwayne"){
   fill(255,167,3);
   }
   text("Dwayne Johnson",453,391);
   fill(255);

   if(name=="Jaden"){
   fill(255,167,3);
   }
   text("Jaden Smith",453,460);
   fill(255);

   if(name=="Deja"){
   fill(255,167,3);
   }
   text("Deja Boren",453,528);
   fill(255);

   if(name=="Jamell"){
   fill(255,167,3);
   }
   text("Jamell Maurice Demons",453,597);
    if(mouseX>=450 && mouseX<=697 && mouseY>=294 && mouseY<=325 && mousePressed){
      name="Tyrone";
    }
    else if(mouseX>=450 && mouseX<=692 && mouseY>=364 && mouseY<=395 && mousePressed){
      name="Dwayne";
    }
   else if(mouseX>=450 && mouseX<=625 && mouseY>=433 && mouseY<=465 && mousePressed){
      name="Jaden";
    }
    else if(mouseX>=450 && mouseX<=609 && mouseY>=500 && mouseY<=530 && mousePressed){
      name="Deja";
    }
    else if(mouseX>=450 && mouseX<=796 && mouseY>=570 && mouseY<=600 && mousePressed){
      name="Jamell";
    }
 }
 if(optionChecker==4){
    if(mouseX>=265 && mouseX<=475 && mouseY>=254 && mouseY<=465 && mousePressed){
      zombiePicker=1;
      colorChecker1=true;
      colorChecker2=false;
      colorChecker3=false;
    }
    if(mouseX>=508 && mouseX<=718 && mouseY>=254 && mouseY<=465 && mousePressed){
      zombiePicker=2;;
      colorChecker1=false;
      colorChecker2=true;
      colorChecker3=false;
    }
    if(mouseX>=754 && mouseX<=964 && mouseY>=254 && mouseY<=465 && mousePressed){
      zombiePicker=3;
      colorChecker1=false;
      colorChecker2=false;
      colorChecker3=true;
    }
    image(zombie,369,359,205,190);
    image(zombie2,613,359,205,190);
    image(zombie3,857,359,205,190);
  if(colorChecker1==true && crossHair==1){
        noFill();
    stroke(5);
    stroke(0,255,0);
  rect(265,254,210,210); //1
  }
  if(colorChecker2==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(508,254,210,210); //2
  }  
  if(colorChecker3==true){
    noFill();
    stroke(5);
    stroke(0,255,0);
  rect(754,254,210,210); //3
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
