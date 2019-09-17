const canvas = document.getElementById("Screen");
var ctx = canvas.getContext("2d");

const gap = 150;
const bird_h=31;
const bird_w=42;

var bird = new Image();
var bird2 = new Image();
var bg= new Image();
var pu= new Image();
var pd= new Image();
var gd= new Image();

bird.src= "images/bird1.png";
bird2.src= "images/bird1.2.png";
pd.src = "images/poleDOWN.png";
gd.src = "images/ground.png";
pu.src = "images/poleUP2.png";
pd.src = "images/poleDOWN2.png"
bg.src = "images/bg4.png";

var hit= new Audio();
var point=new Audio();
hit.src ="audios/hit.mp3";
point.src="audios/score.mp3";

var bx=248;
var by=360;
var g=0.25;
var d=1;
var con=true;
var count=1;
var score=0;
var pipe =[];
pipe[0]={
  x: canvas.width,
  y: 300
};

bg.addEventListener('load', function() {
    draw();
  }, false);

document.addEventListener("keypress",jump);

function jump(){
  d=0;
  var i=by-40;
  for(by;by>i && by>bird_h ; by--)
  {
    if(con)
    {
      ctx.drawImage(bird,bx-bird_w,by-bird_h,bird_w,bird_w);
      con=false;
    }
    else
    {
      ctx.drawImage(bird2,bx-bird_w,by-bird_h,bird_w,bird_w);
      con=true;
    }
  }
  if(by<bird_h) by=bird_h;
}

ctx.fillstyle = "#000";
ctx.font = "40px Arial";
function draw(){
    ctx.drawImage(bg,0,0,1800,720);
    if(con)
    {
      ctx.drawImage(bird,bx-bird_w,by-bird_h,bird_w,bird_w);
      con=false;
    }
    else
    {
      ctx.drawImage(bird2,bx-bird_w,by-bird_h,bird_w,bird_w);
      con=true;
    }
    for(var i=0;i<pipe.length;i++)
    {
      ctx.drawImage(pd,pipe[i].x,pipe[i].y-600,100,600);
      ctx.drawImage(pu,pipe[i].x,pipe[i].y+gap,100,600);
      pipe[i].x-=4;
      console.log(pipe.length);
      if(pipe[pipe.length-1].x < canvas.width - bx-100-bird_h )
      {
        pipe.push({
            'x':canvas.width ,
            'y':Math.floor(Math.random()*370)
          });
      }
    }
    ctx.drawImage(gd,0,canvas.height-150,1800,240);


    if(pipe[0].x+100 == bx)
    {
       score++;
       point.play();
    }
    if(pipe[0].x + 100 < 0) pipe.shift();

    if((by > canvas.height - 168) || (bx >= pipe[0].x && bx<pipe[0].x+100 && (by<pipe[0].y || by>pipe[0].y+gap )) ){
      hit.play();
      gameOver();
      return;
    }

    d+=g;
    by=by+d;

    ctx.fillText("SCORE : "+score,20,canvas.height-50);
    requestAnimationFrame(draw);
}
function gameOver()
{

}