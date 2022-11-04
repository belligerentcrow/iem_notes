PFont f;
String [] s = {"DKJSKFSD", "FSJKSFJK", "JSKDHKDF", "FKDFJKJJJJFJJJFJJJFJJ"}; 
int i =0; 
String input= ""; 
void setup(){
size(500,500); 
background(0); 
fill(255, 255, 0); 
//textSize(32); 
f=createFont("Book Antiqua", 32); 
textFont(f);
text("helloooooooooooooooooooooooooooooooooooooooooooooooooooooooooo", 0, 50, width, 300); 
}

void draw(){
background(0); 
text(s[i], 0, 50, width, 300); 
}

void mousePressed(){
  if(mouseButton==LEFT&& i<3){
    i++; 
  }
}

void keyPressed(){
   if(key ==' '&&i>0){
     i--; 
   }
}
