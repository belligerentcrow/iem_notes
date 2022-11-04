class Piece_super{
  int unit = 50; 
  int maxboundBottom = 12; 
  int maxboundLeft; 
  int a = 0; 
  int col1, col2, col3; //int per le componenti rgb
  float speedX, speedY; //velocità x e y
  
  Piece_super(int one, int two, int three){
    col1 = one; 
    col2 = two; 
    col3 = three;
  }; 
  
  Piece_super(){};
  
  boolean stopped; //has it reached its place down?
  
  void display(){};
  
  void run(){
    display(); 
  };
  
  void moveRight(){}; 
  void moveLeft(){}; 
};
