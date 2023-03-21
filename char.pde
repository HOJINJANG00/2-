void BBANGMAN(float x, float y, float s){
  fill(255,178,102);
  strokeWeight(8);
  circle(x,y,s);
  fill(0,0,0);
  ellipse(x-s*0.15,y-s*0.2,s*3/40,s*5/40);
  ellipse(x+s*0.15,y-s*0.2,s*3/40,s*5/40);
  fill(255,0,0);
  circle(x,y,s*11/40);
  strokeWeight(0);
  fill(255,0,0);
  circle(x-s*11/40,y,s*11/40);
  circle(x+s*11/40,y,s*11/40);
  strokeWeight(8);
  arc(x-s*11/40,y,s*11/40,s*11/40,-PI/2,PI/2);
  arc(x+s*11/40,y,s*11/40,s*11/40,PI/2,PI*3/2);
  strokeWeight(10);
  fill(255,178,102);
  arc(x-s*0.15,y-s*0.3,s*3/20,s*1/4,-PI*5/6,-PI*1/6);
  arc(x+s*0.15,y-s*0.3,s*3/20,s*1/4,-PI*5/6,-PI*1/6);
  fill(255,51,51);
  arc(x,y+s*3/16,s*3/8,s*3/8,0,PI);
  line(x-s*3/16,y+s*3/16,x+s*3/16,y+s*3/16);
  strokeWeight(0);
  fill(255,255,255);
  square(x-s*12/40,y-s*11/160,s*1/23);
  square(x+s*1/40,y-s*11/160,s*1/23);
  square(x+s*12/40,y-s*11/160,s*1/23);
}

void segyunman(float x, float y, float s){
  fill(0,0,51); // 검정 + 남색
  strokeWeight(4);
  circle(x,y,s); 
  
  fill(153,102,204); // 보라색
  strokeWeight(0);
  quad(x,y-s*1/20, x-s*19/40,y+s*5/40, x,y+s*1/2, x+s*19/40,y+s*5/40); // 사각형
  strokeWeight(1);
  curve(x,y-s*1/20, x-s*19/40,y+s*49/400, x,y+s*199/400, x+s*19/40,y+s*5/40); // 왼쪽 아래
  curve(x,y-s*1/20, x+s*19/40,y+s*49/400, x,y+s*199/400, x-s*19/40,y+s*5/40); // 오른쪽 아래
  curve(x,y+s*1/2, x-s*19/40,y+s*51/400, x,y-s*19/400, x+s*19/40,y+s*5/40); // 왼쪽 위
  curve(x,y+s*1/2, x+s*19/40,y+s*51/400, x,y-s*19/400, x-s*19/40,y+s*5/40); // 오른쪽 위
  fill(255,255,255); // 흰색
  strokeWeight(0);
  quad(x,y+s*1/20, x-s*17/40,y+s*9/40, x,y+s*1/2, x+s*17/40,y+s*9/40); // 위와 순서 동일
  strokeWeight(1);
  curve(x,y+s*1/20, x-s*17/40,y+s*89/400, x,y+s*199/400, x+s*17/40,y+s*9/40);
  curve(x,y+s*1/20, x+s*17/40,y+s*89/400, x,y+s*199/400, x-s*17/40,y+s*9/40);
  curve(x,y+s*1/2, x-s*17/40,y+s*91/400, x,y+s*21/400, x+s*17/40,y+s*9/40);
  curve(x,y+s*1/2, x+s*17/40,y+s*91/400, x,y+s*21/400, x-s*17/40,y+s*9/40);
  
  fill(153,102,204); // 코 (보라 + 흰색)
  strokeWeight(1);
  circle(x,y+s*1/20,s*13/40);
  fill(255,255,255);
  strokeWeight(0);
  square(x-s*25/400,y-s*1/80,s*3/40);
 
  fill(255,255,255); // 눈 (흰색)
  strokeWeight(2);
  circle(x-s*1/8,y-s*9/40,s*9/40);
  circle(x+s*1/8,y-s*9/40,s*9/40);
  fill(0,0,0);
  strokeWeight(0);
  circle(x-s*25/400,y-s*9/40,s*35/400);
  circle(x+s*25/400,y-s*9/40,s*35/400);
  
  strokeWeight(2); // 이빨
  line(x-s*11/40,y+s*48/400, x-s*12/40,y+s*145/400);
  line(x-s*64/400,y+s*32/400, x-s*68/400,y+s*18/40);
  line(x,y+s*85/400, x,y+s*1/2);
  line(x+s*64/400,y+s*32/400, x+s*68/400,y+s*18/40);
  line(x+s*11/40,y+s*48/400, x+s*12/40,y+s*145/400);
  
  line(x-s*13/40,y+s*56/400, x-s*116/400,y+s*105/400);
  line(x-s*116/400,y+s*105/400, x-s*72/400,y+s*85/400);
  line(x-s*72/400,y+s*85/400, x-s*1/8,y+s*13/40);
  line(x-s*1/8,y+s*13/40, x,y+s*1/4);
  line(x,y+s*1/4, x+s*1/8,y+s*13/40);
  line(x+s*1/8,y+s*13/40, x+s*72/400,y+s*85/400);
  line(x+s*72/400,y+s*85/400, x+s*116/400,y+s*105/400);
  line(x+s*116/400,y+s*105/400, x+s*13/40,y+s*56/400);
  
  fill(0,0,51); // 뿔
  quad(x-s*1/4,y-s*178/400, x-s*12/40,y-s*3/4, x-s*103/400,y-s*305/400, x-s*78/400,y-s*183/400);
  quad(x+s*1/4,y-s*178/400, x+s*12/40,y-s*3/4, x+s*103/400,y-s*305/400, x+s*78/400,y-s*183/400);
  circle(x-s*115/400,y-s*315/400,s*3/40);
  circle(x+s*115/400,y-s*315/400,s*3/40);
}
