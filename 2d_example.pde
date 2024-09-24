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



void setup() {
  size(500, 500);
  strokeWeight(12);
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
  println(mouseX,mouseY);


  int[][] grid = {{1, 2, 1, 3}, {3, 4, 1, 2}, {2, 1, 3, 4}};

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
  fill(255,255,255, blg);
  rect(0, 0, 80, 100);
  fill(255,255,255, blg2); // 190 //100
  rect(90, 0, 100, 100);
  fill(255,255,255, blg3); 
  rect(190, 0, 120, 100);
  fill(255,255,255, blg4); 
  rect(335, 0, 200, 100);
  fill(255,255,255, blg5); 
  rect(0, 150, 100, 100);
  fill(255,255,255, blg6); 
  rect(120, 150, 100, 100);
  fill(255,255,255, blg7); 
  rect(250, 150, 100, 100);

  fill(255,255,255, blg8); 
  rect(370, 150, 200, 100);
  
  fill(255,255,255, blg9); 
  rect(0, 300, 80, 130);
  fill(255,255,255, blg10); 
  rect(100, 300, 100, 130);
  fill(255,255,255, blg11); 
  rect(240, 300, 100, 130);
  fill(255,255,255, blg12); 
  rect(360, 300, 200, 130);

}



void mouseClicked() {
  if (mouseX < 80 && mouseY < 100 ){
    blg = 0 ;
  }
  if (mouseX > 80 && mouseX < 190 && mouseY < 100 ){
    blg2 = 0 ;
  }
  if (mouseX > 190 && mouseX < 310 && mouseY < 100 ){
    blg3 = 0 ;
  }
  if (mouseX > 336 && mouseX < 500 && mouseY < 100 ){
    blg4 = 0 ;
  }
  if (mouseX > 0 && mouseY > 150 && mouseX < 170 && mouseY < 250 ){
    blg5 = 0 ;
  }
  if (mouseX > 120 && mouseY > 150 && mouseX < 220 && mouseY < 250 ){
    blg6 = 0 ;
  }
  if (mouseX > 250 && mouseY > 150 && mouseX < 350 && mouseY < 250 ){
    blg7 = 0 ;
  }

    if (mouseX > 370 && mouseY > 150 && mouseX < 500 && mouseY < 250 ){
    blg8 = 0 ;
  }
    if (mouseX > 0 && mouseY > 300 && mouseX < 80 && mouseY < 430 ){
    blg9 = 0 ;
  }
    if (mouseX > 100 && mouseY > 300 && mouseX < 200 && mouseY < 430 ){
    blg10 = 0 ;
  }
    if (mouseX > 240 && mouseY > 300 && mouseX < 340 && mouseY < 430 ){
    blg11 = 0 ;
  }
    if (mouseX > 360 && mouseY > 300 && mouseX < 500 && mouseY < 430 ){
    blg12 = 0 ;
  }
  
}
