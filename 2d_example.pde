int blg = 255 ;
int blg2 = 255 ;
int blg3 = 255 ;
int blg4 = 255 ;
int blg5 = 255 ;
int blg6 = 255 ;
int blg7 = 255 ;
int blg8 = 255 ;
int blg9 = 255 ;
int blg10 = 255 ;
int blg11 = 255 ;
int blg12 = 255 ;

int mt1,mt2,mt3,mt4,mt5,mt6,mt7,mt8,mt9,mt10,mt11,mt12;
int click1,click2,one1,one2,one3,one4,two1,two2,two3,two4,th1,th2,fr1,fr2;

//color
int r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12;


void grid(){
 stroke(0);
 strokeWeight(5);
 //columm
 line(110,0,110,430);
 line(230,0,230,430);
 line(360,0,360,430);
 
 //row
 line(0,115,500,115);
 line(0,285,500,285);
 line(0,430,500,430);
}

void setup() {
  size(500, 500);
  strokeWeight(12);
  r1=r2=r3=r4=r5=r6=r7=r8=r9=r10=r11=r12 = 255;
  b1=b2=b3=b4=b5=b6=b7=b8=b9=b10=b11=b12 = 255;
}

void checkMatch(int check1,int check2){
  
  if (check1 == check2){
   
   click1 = click2 = 0;
   if (one1 == 1){
    r1 = b1 = 0;
    blg = 255;
   }
   if (one2 == 1){
     r3 = b3 = 0;
     blg3 = 255;
     
   }
   if (one3 == 1){
    r7 = b7 = 0;
    blg7 = 255;
     
   }
   if (one4 == 1){
    r10 = b10 = 0;
    blg10 = 255;
   }
   if (two1 == 1){
     r2=b2 = 0;
     blg2 = 255;
   }
   if (two2 == 1){
     r8 = b8 = 0;
     blg8 = 255;
   }
   if (two3 == 1){
     r9 = b9 = 0;
     blg9 = 255;
   }
   if (two4 == 1){
     r11 = b11 = 0;
     blg11 = 255;
   }
   if (th1 == 1){
    r4 = b4 = 0;
    blg4 = 255;
   }
   if (th2 == 1){
    r5 = b5 = 0;
    blg5 = 255;
   }
   if (fr1 == 1){
    r6 = b6 = 0;
    blg6 = 255;
   }
   if (fr2 == 1){
    r12 = b12 = 0;
    blg12 = 255;
   }
   
    
  }else{
   click1 = click2 = 0;
   one1=one2=one3=one4=two1=two2=two3=two4=th1=th2=fr1=fr2 = 0;
   
   blg=blg2=blg3=blg4=blg5=blg6=blg7=blg8=blg9=blg10=blg11=blg12 = 255; 
  }
}

void draw_lines(int x, int y, int n) {
  int i = 0;
  while (i < n) {

    stroke(0);
    strokeWeight(15);
    line(x + i*20, y, x + i*20, y + 40);
    i++;
  }
}

void draw() {
  background(255);

  int[][] grid = {{1, 2, 1, 3}, {3, 4, 1, 2}, {2, 1, 2, 4}};

  int rows = grid.length;
  int cols = grid[0].length;

  int w = width/cols;
  int h = height/rows;
  int i = 0;

  while (i < rows) {
    int j = 0;
    while (j < cols) {
      

      draw_lines(10+j * w, 10+i * h, grid[i][j]);
    
      j++;
    }

    i++;
  }
  
  noStroke();
  fill(r1,255,b1, blg);
  rect(0, 0, 110, 115);
  fill(r2,255,b2, blg2); // 190 //100
  rect(110, 0, 120, 115);
  fill(r3,255,b3, blg3); 
  rect(230, 0, 130, 115);
  fill(r4,255,b4, blg4); 
  rect(360, 0, 200, 115);
  fill(r5,255,b5, blg5); 
  rect(0, 115, 110, 170);
  fill(r6,255,b6, blg6); 
  rect(110, 115, 120, 170);
  fill(r7,255,b7, blg7); 
  rect(230, 115, 130, 170);
  fill(r8,255,b8, blg8); 
  rect(360, 115, 200, 170);
  fill(r9,255,b9, blg9); 
  rect(0, 285, 110, 145);
  fill(r10,255,b10, blg10); 
  rect(110, 285, 120, 145);
  fill(r11,255,b11, blg11); 
  rect(230, 285, 130, 145);
  fill(r12,255,b12, blg12); 
  rect(360, 285, 200, 145);
  
  grid();

}



void mousePressed() {
  if (click1 == 0){
    if (mouseX < 110 && mouseY < 115 ){
      blg = 0 ;
      click1 = 1;
      one1 = 1;
    }
    if (mouseX > 110 && mouseX < 230 && mouseY < 115 ){
      blg2 = 0 ;
      click1 = 2;
      two1 = 1;
    }
    if (mouseX > 230 && mouseX < 360 && mouseY < 115 ){
      blg3 = 0 ;
      click1 = 1;
      one2 = 1;
    }
    if (mouseX > 360 && mouseX < 500 && mouseY < 115 ){
      blg4 = 0 ;
      click1 = 3;
      th1 = 1;
    }
    if (mouseX > 0 && mouseY > 115 && mouseX < 110 && mouseY < 285 ){
      blg5 = 0 ;
      click1 = 3;
      th2 = 1;
    }
    if (mouseX > 110 && mouseY > 115 && mouseX < 230 && mouseY < 285 ){
      blg6 = 0 ;
      click1 = 4;
      fr1 = 1;
    }
    if (mouseX > 230 && mouseY > 115 && mouseX < 360 && mouseY < 285 ){
      blg7 = 0 ;
      click1 = 1;
      one3 = 1;
    }

    if (mouseX > 360 && mouseY > 115 && mouseX < 500 && mouseY < 285){
      blg8 = 0 ;
      click1 = 2;
      two2 = 1;
    }
    if (mouseX > 0 && mouseY > 285 && mouseX < 110 && mouseY < 430 ){
      blg9 = 0 ;
      click1 = 2;
      two3 = 1;
    }
    if (mouseX > 110 && mouseY > 285 && mouseX < 230 && mouseY < 430 ){
      blg10 = 0 ;
      click1 = 1;
      one4 = 1;
    }
    if (mouseX > 230 && mouseY > 285 && mouseX < 360 && mouseY < 430 ){
      blg11 = 0 ;
      click1 = 2;
      two4 = 1;
    }
    if (mouseX > 360 && mouseY > 285 && mouseX < 500 && mouseY < 430 ){
      blg12 = 0 ;
      click1 = 4;
      fr2 = 1;
    }
  }else {
    if (mouseX < 110 && mouseY < 115 ){
      blg = 0 ;
      click2 = 1;
      one1 = 1;
    }
    if (mouseX > 110 && mouseX < 230 && mouseY < 115 ){
      blg2 = 0 ;
      click2 = 2;
      two1 = 1;
    }
    if (mouseX > 230 && mouseX < 360 && mouseY < 115 ){
      blg3 = 0 ;
      click2 = 1;
      one2 = 1;
    }
    if (mouseX > 360 && mouseX < 500 && mouseY < 115 ){
      blg4 = 0 ;
      click2 = 3;
      th1 = 1;
    }
    if (mouseX > 0 && mouseY > 115 && mouseX < 110 && mouseY < 285 ){
      blg5 = 0 ;
      click2 = 3;
      th2 = 1;
    }
    if (mouseX > 110 && mouseY > 115 && mouseX < 230 && mouseY < 285 ){
      blg6 = 0 ;
      click2 = 4;
      fr1 = 1;
    }
    if (mouseX > 230 && mouseY > 115 && mouseX < 360 && mouseY < 285 ){
      blg7 = 0 ;
      click2 = 1;
      one3 = 1;
    }

    if (mouseX > 360 && mouseY > 115 && mouseX < 500 && mouseY < 285){
      blg8 = 0 ;
      click2 = 2;
      two2 = 1;
    }
    if (mouseX > 0 && mouseY > 285 && mouseX < 110 && mouseY < 430 ){
      blg9 = 0 ;
      
      click2 = 2;
      two3 = 1;
    }
    if (mouseX > 110 && mouseY > 285 && mouseX < 230 && mouseY < 430 ){
      blg10 = 0 ;
      click2 = 1;
      one4 = 1;
    }
    if (mouseX > 230 && mouseY > 285 && mouseX < 360 && mouseY < 430 ){
      blg11 = 0 ;
      click2 = 2;
      two4 = 1;
    }
    if (mouseX > 360 && mouseY > 285 && mouseX < 500 && mouseY < 430 ){
      blg12 = 0 ;
      click2 = 4;
      fr2 = 1;
    }
    
    println(click1,click2);
    checkMatch(click1,click2);
  }
 
  
  
}
