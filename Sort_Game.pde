String[][] board = {{"A","B","C","D"},{"E","F","G","H"},{"I","J","K"," "}} ;
int row_space;
int col_space;
int row_input;
int col_input;
int position ;


void setup() {
  size(400,300) ;
  background(255) ;
 
}

void draw() {
  display_board(10,80) ;
  //mouseClicked(10,80) ;
}

void display_board(int first_position , int size_button ) {
  int move = first_position * 2 ; 
  fill(255,228,225) ;
  
  
  //first row
  rect(5,5,90,90) ;
  rect(105 ,5,90,90) ;
  rect(205,5,90,90) ;
  rect(305 ,5,90,90) ;
  
  rect(5,105,90,90);
  rect(105,105,90,90) ;
  rect(205,105,90,90) ;
  rect(305,105,90,90) ;
  
  rect(5,205,90,90) ;
  rect(105,205,90,90) ;
  rect(205,205,90,90) ;
  rect(305,205,90,90) ;
  
  fill(0) ;
  textSize(50);
  
  int moveword = size_button + move ;
  
  text(board[0][0], size_button / 2 ,  size_button  ); 
  text(board[0][1], size_button / 2 + moveword,  size_button  ); 
  text(board[0][2], size_button / 2 + moveword * 2,  size_button  ); 
  text(board[0][3], size_button / 2 + moveword * 3,  size_button  ); 
  
  text(board[1][0], size_button / 2 ,  size_button + moveword ); 
  text(board[1][1], size_button / 2 + moveword,  size_button + moveword ); 
  text(board[1][2], size_button / 2 + moveword * 2,  size_button + moveword ); 
  text(board[1][3], size_button / 2 + moveword * 3,  size_button + moveword ); 
  
  text(board[2][0], size_button / 2 ,  size_button + moveword * 2); 
  text(board[2][1], size_button / 2 + moveword,  size_button + moveword * 2 ); 
  text(board[2][2], size_button / 2 + moveword * 2,  size_button + moveword * 2 ); 
  text(board[2][3], size_button / 2 + moveword * 3,  size_button + moveword * 2 ); 
}

void mousePressed() {
    if(mouseX > 5 && mouseX < 95 && mouseY > 5 && mouseY < 95){
    position = 1;
    print("a") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 5 && mouseY < 95){
    position = 2;
    print("b") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 5 && mouseY < 95){
    position = 3;
    print("c") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 5 && mouseY < 95){
    position = 4;
    print("d") ;
  }
  if(mouseX > 5 && mouseX < 95 && mouseY > 105 && mouseY < 195){
    position = 5;
    print("e") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 105 && mouseY < 195){
    position = 6;
    print("f") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 105 && mouseY < 195){
    position = 7;
    print("g") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 105 && mouseY < 195){
    position = 8;
    print("h") ;
  }
  if(mouseX > 5 && mouseX < 95 && mouseY > 205 && mouseY < 295){
    position = 9;
    print("i") ;
  }
  if(mouseX > 105 && mouseX < 195 && mouseY > 205 && mouseY < 295){
    position = 10;
    print("j") ;
  }
  if(mouseX > 205 && mouseX < 295 && mouseY > 205 && mouseY < 295){
    position = 11;
    print("k") ;
  }
  if(mouseX > 305 && mouseX < 395 && mouseY > 205 && mouseY < 295){
    position = 12;
    print("_") ;
  }
  
}


boolean check_result() {
  return true ;
}

void switch_position() {
  for(int i=0;i<3;i++){
    for(int j=0;j<2;j++){
      if(board[i][j] == ""){
        row_space = i;
        col_space = j;
      }
    }
  }
  for(int a=0;a<3;a++){
    for(int b=0;b<2;b++){
      if(position == 1){
        
      }
    }
  }
  
  if(row_space - row_input == 0 && row_space - row_input == -1 && row_space - row_input == 1){
    if(col_space - col_input == 0 && col_space - col_input == -1 && col_space - col_input == 1){
      //String[][] board_temp = board[row_space][col_space];
      board[row_space][col_space] = board[row_input][col_input];
      //board[row_input][col_input] = board_temp;
    } 
  } 
}
