class Bird{
    constructor(brain){
        this.W=25;
        this.H=19;
        this.y=random()*(CANVAS_HEIGHT-this.H-120);
        this.x=75;

        this.gravity=0.25;
        this.velocity=0;
        this.jmp=20;

        this.score=0;
        this.fitness=0.0;
        if(brain){
            this.brain =brain.copy();
        }
        else{
            this.brain = new NeuralNetwork(4,4,2);
        }
    }
    draw(){
        image(bd,this.x,this.y);
    }
    jump(){
            this.velocity=0;
            this.y-=this.jmp;
    }
    update(){
        this.score++;

        this.velocity+=this.gravity;
        //this.velocity*=0.9;
        this.y+=this.velocity;
        if(this.y > CANVAS_HEIGHT- 120-this.H){
            this.y= CANVAS_HEIGHT-120-this.H;
            this.velocity=0;
            //this.jump();
        }
        if(this.y < this.H){
            this.y= this.H;
            this.velocity=0;
        }
    }
    mutate(){
        this.brain.mutate(.5);
    }
    dispose() {
        this.brain.dispose();
      }
    think(pole){
        let input = [];
        input[0] = pole.x / 300;
        input[1] = (pole.y) / 288;
        input[2] = this.y / (CANVAS_HEIGHT-120-this.H);
        input[3] = (pole.y+pole.gap) / (pole.length+pole.gap) ;

        let output = this.brain.predict(input);
        if(output[0] > output[1])
            this.jump();
    }
    checkCollision(pole){
        // (this.y > CANVAS_HEIGHT - 120 - this.W) || 
        if(( (this.x >= pole.x && this.x < pole.x+75) && 
            (this.y <= pole.y || this.y >=pole.x + pole.gap)) )
            return true;
        else
            return false;
    }

}