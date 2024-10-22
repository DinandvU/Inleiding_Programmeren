int levens = 5;
int score = 0;
boolean gameOver = false;
int balSize = 75;

ArrayList<Particle> particles = new ArrayList<Particle>();

Bal[] ballen = new Bal[3];
PImage ag;

void setup() {
  size(1000, 1000);
  String url = "https://i.pinimg.com/736x/48/09/2a/48092a026928bd10576536b9326c0c2d.jpg";
  ag = loadImage(url, "png");
  startGame();
}

void draw() {
  if (!gameOver) {
    image(ag, 0, 0, width, height);
    for (int i = particles.size() - 1; i >=0; i--) {
      Particle p = particles.get(i);
      p.update();
      p.display();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
    fill(255);
    textSize(30);
    text("Score: " + score, 880, 30);
    textSize(30);
    text("Levens: " + levens, 10, 30);
    for (int i = 0; i < ballen.length; i++) {
      ballen[i].update();
      ballen[i].drawMe();
    }
  }
}

void mousePressed() {
  if (!gameOver) {
    for (int i = 0; i < ballen.length; i++) {
      ballen[i].mousePressed();
    }
  }
  if (gameOver) {
    startGame();
  }
}

void startGame() {
  score = 0;
  levens = 5;
  gameOver = false;
  balSize = 75;
  particles.clear();
  for (int i = 0; i < ballen.length; i++) {
    ballen[i] = new Bal(random(75, 925), 0, 3, balSize);
  }
  loop();
}

class Bal {
  float x;
  float y;
  int speed = 5;
  int grote = 50;

  Bal(float x, float y, int speed, int grote) {

    this.x = x;
    this.y = y;
    this.speed = speed;
    this.grote = grote;
  }

  void drawMe() {
    fill(65, 105, 225);
    ellipse(x, y, grote, grote);
  }

  void update() {
    y = y + speed;
    if (y >= 1000) {
      y = 0;
      x = random(75, 925);
      text("Levens: " + levens--, 10, 30);
    }
    if ( levens <= 0) {
      gameOver = true;
      background(0, 0, 0);
      y = 2000;
      fill(255);
      textSize(100);
      text("GAME OVER", 265, 450);
      textSize(50);
      text("Score: " + score, 425, 500);
      textSize(50);
      text("Press to restart", 350, 550);
      noLoop();
    }

    if (score >= 15) {
      speed = 7;
      balSize = 85;
    }

    if ( score >= 30) {
      speed = 10;
      balSize = 100;
    }

    if (score >= 50) {
      speed = 15;
      balSize = 125;
    }
  }

  void mousePressed() {
    if (dist(mouseX, mouseY, x, y) < grote / 2) {
      score++;
      generateParticles();
      resetObject();
    }
  }

  void resetObject() {
    x = random(75, 925);
    y = 0;
  }

  void generateParticles() {
    for (int i = 0; i < 100; i++) {
      float angle = random(TWO_PI);
      float speed = random(2, 5);
      particles.add(new Particle(x, y, angle, speed));
    }
  }
}

class Particle {
  float x;
  float y;
  float speedX;
  float speedY;
  float lifespan;

  Particle(float startX, float startY, float angle, float speed) {
    x = startX;
    y = startY;
    speedX = cos(angle) * speed;
    speedY = sin(angle) * speed;
    lifespan = 250;
  }

  void update() {
    x += speedX;
    y += speedY;
    lifespan -= 10;
  }

  void display() {
    fill(65, 105, 225, lifespan);
    noStroke();
    ellipse(x, y, 10, 10);
  }

  boolean isDead() {
    return lifespan < 0;
  }
}

//highscore 86 incl muis
