//ricorda che PImage usa le coordinate invertite rispetto alle normali matrici.
//quindi I.get(i,j) diventa I[j][i].
///Dobbiamo quindi usare le coppie I.get(i,j) e I[j][i] o I.get(j,i) e I[i][j] per riferirci alla stessa locazione.

PImage ImGattino, ImGattinoBlurred, ImGattinoVeryBlurred, ImSharpenedGattino, ImCarolyn, ImSharpenCarolyn;
//Creazione dei Kernel per le convoluzioni
float n3=1/9.0;
float [] [] nbox3 = {{n3,n3,n3},{n3,n3,n3},{n3,n3,n3}};

float n5=1.0/25;
float [][] nbox5 = {{n5,n5,n5,n5,n5},{n5,n5,n5,n5,n5},{n5,n5,n5,n5,n5},{n5,n5,n5,n5,n5},{n5,n5,n5,n5,n5}};

float [] [] sharpen = {{-1,0,-1},{0,5,0},{-1,0,-1}}; 

void setup(){
size(1024,1024);
ImGattino=loadImage("gattino.jpg");
ImGattino.filter(GRAY);
ImCarolyn=loadImage("carolyn.png");
ImCarolyn.filter(GRAY);
ImCarolyn.resize(400,400);

ImGattinoBlurred=converti(convoluzione(ImGattino,nbox3));
ImGattinoVeryBlurred=converti(convoluzione(ImGattino, nbox5));
ImSharpenedGattino = converti(convoluzione(ImGattino,sharpen));
ImSharpenCarolyn = converti(convoluzione(ImCarolyn,sharpen));

//image(ImGattino,0,0);
image(ImGattinoVeryBlurred,0,0);
image(ImSharpenCarolyn,740,0);
}

void draw(){

}

float[][] convoluzione(PImage I, float[][] K)
{
   float[][] R = new float[I.height][I.width];
   int N = K[0].length;
   int M = K.length;
   PImage tmp;
   float res;
   for(int x = 0; x<I.width;x++){
     for(int y = 0; y<I.height;y++){
       tmp = I.get(x-N/2, y-M/2, N,M);
       res = 0;
       for(int p=0; p<N; p++){
         for(int q=0;q<M; q++){
             //attenzione agli indici
            res = res+green(tmp.get(p,q)) * K[q][p];    
         }
       }
       R[y][x] = res;
     }
   }
   return R;
}

PImage converti(float[][] F){
  PImage R = createImage(F[0].length, F.length, RGB);
  
  float res = 0;
  for(int x = 0; x<R.width; x++){
    for(int y = 0; y<R.height; y++){
        res=constrain(F[y][x],0,255);
        R.set(x,y,color(res));
    }
  }
  return R;
}
