void creditScreen(){ //screen for the credits
  image(credits,600,475); //the image for the credits
  fill(255); //white color
    if(mouseX>=28 && mouseX<=255 && mouseY>=902 && mouseY<=940){ //if the mouse is hovering over the "Back to Menu" text
      fill(255,167,3); //orange color
      if(mousePressed){ //checking if the mouse is pressed
        gameMode=0; //Main Menu
      } //end of the second if
    } //End of first if
  text("Back to Menu",29,933); //Text for "Back to Menu"
  fill(255); //White color
}
