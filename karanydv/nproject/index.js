const canvas = document.getElementById("Screen");
var ctx = canvas.getContext("2d");

const CANVAS_HEIGHT = 720;
const CANVAS_WIDTH = 500;
const gap = 75;
ctx.fillStyle = '#f00';
//ctx.fillRect(10,10,100,100);

var bird = new Image();
var bg= new Image();
var pu= new Image();
var pd= new Image();
var gd= new Image();

bird.src= "images/bird1.png";
pd.src = "images/poleDOWN.png";
gd.src = "images/ground.png";
bg.src = "images/bg4.png";
pu.src = "images/poleUP.png";


pu.addEventListener('load', function() {
    draw();
  }, false);

function draw(){
    ctx.drawImage(bg,0,0,1800,720);
    ctx.drawImage(bird,70,360,85,63);
    ctx.drawImage(pu,150,360,100,450);
    ctx.drawImage(gd,0,CANVAS_HEIGHT-150,1800,150)
}