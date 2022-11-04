class Yellow_O extends Piece_super{
  int col1 = 255; 
  int col2 = 255; 
  int col3 = 0; 
  int a =0; 
  int lowerBound = 0; 
  int leftBound = 3; 
  int rightBound = 3; 
  int c = 0; 
  int mov = 0; 
  
  Yellow_O(){};
  
  void display(){
     fill(col1, col2, col3); 
     noStroke(); 
     quad((7*super.unit)+mov, 0+a, (9*super.unit)+mov, 0+a, (9*super.unit)+mov, (2*super.unit)+a, (7*super.unit)+mov, (2*super.unit)+a);
     if(lowerBound<super.maxboundBottom-1){
     if(c%10==0){
       moveDown();
     }
     c++;
     }
  };
  
   void moveDown(){
    a+=super.unit;
    lowerBound++; 
  };
   
   void moveLeft(){
     if(leftBound>0){
     mov -=super.unit; 
     rightBound++; 
     leftBound--; 
     }
     
   };
   
   void moveRight(){
     if(rightBound>0){
     mov +=super.unit;
     leftBound++;
     rightBound--; 
     }
   }
};
