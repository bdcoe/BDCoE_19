const canvas = document.getElementById("Screen");
var ctx = canvas.getContext("2d");

const gap = 150;
const bird_h=31;
const bird_w=42;

var bird = new Image();
var bg= new Image();
var pu= new Image();
var pd= new Image();
var gd= new Image();

bird.src= "images/bird1.png";
pd.src = "images/poleDOWN.png";
gd.src = "images/ground.png";
pu.src = "images/poleUP2.png";
pd.src = "images/poleDOWN2.png"
bg.src = "images/bg4.png";


var bx=250;
var by=360;
var g=1;
var d;
var score=pd.height;
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
  by -=55;
  if(by<0) by=0;
}

function draw(){
    ctx.drawImage(bg,0,0,1800,720);
    ctx.drawImage(bird,bx-bird_w,by-bird_h,bird_w*1.5,bird_w*1.5);

    var i=0
    for(var i=0;i<pipe.length;i++)
    {
      ctx.drawImage(pd,pipe[i].x,pipe[i].y-600,100,600);
      ctx.drawImage(pu,pipe[i].x,pipe[i].y+gap,100,600);
      pipe[i].x-=3;
      console.log(pipe.length);
      if(pipe[pipe.length-1].x < canvas.width - 300 )
      {
        console.log("\ntrue");
        pipe.push({
            'x':canvas.width ,
            'y':Math.floor(Math.random()*370)
          });
      }
    }
    if(pipe[0].x + 100 < 0) pipe.shift();
    console.log(pipe.length);

    ctx.drawImage(gd,0,canvas.height-150,1800,240);
    d+=g;
    by=by+d;
    //requestAnimationFrame(draw);
}