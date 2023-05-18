// Avery Jensen | April 6, 2023 | Timeline

void setup() {
  size(950,400);
}

void draw() {
  background(#9FCEEA);
  drawRef();
  histEvent(150,200,"July, 1985",true, "Born in Redding, California");
  histEvent(220,300,"1990",false, "Started playing soccer");
  histEvent(370,200,"2002-2005",true, "Started playing for Elk Grove United");
  histEvent(450,300,"2005-2008",false, "Went to University of Portland Pilots on Scholarship");
  histEvent(540,200,"2009",true, "Drafted by Chicago Red Stars for WPS");
  histEvent(650,300,"2013-2014",false, "Olympique Lyonnais UEFA Women's Championship League");
  histEvent(670,200,"2014",true, "Played for Seattle Reign");
  histEvent(830,300,"2019",false, "Co-captain at World Cup. Team won First Place");
}

void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(#000000);
  text("Megan Rapinoe Timeline",width/2,60);
  textSize(15);
  text("by Avery Jensen",width/2,80);
  strokeWeight(2);
  line(50,250,900,250);
  line(50,245,50,255);
  line(900,245,900,255);
  textSize(13);
  text("1980",50,265);
  text("2023",900,265);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
  line(x,y,x-20,y+50);
  } else {
    line(x,y,x-20,y-50);
  }
  rectMode(CENTER);
  fill(#ABCEBB);
  strokeWeight(2);
  rect(x,y,100,30,10,10,10,10);
  fill(0);
  text(title,x,y+5);
  if(mouseX>x-50 && mouseX<x+50 && mouseY>y-15 && mouseY<y+15) {
    if(top) {
      text(detail,width/2,150);
    } else {
      text(detail,width/2,150);
    }
  }
}
