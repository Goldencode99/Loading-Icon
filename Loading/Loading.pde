float counter = 0.0;
float load_counter = 0.0;
float fin_size = 50;
color icon = color(0, 191, 255);
color bg = color(255, 255, 255);
int spin_save = 0;
int flip = 1;

void setup() {
  frameRate(60);
  size(200, 200);
}

void draw() {
  background(bg);
  if(load_counter != 1) {
    noStroke();
    fill(icon);
    ellipse(100 + cos(counter) * 50, 100 + sin(counter) * 50, (sin(counter) * -5) + 7, (sin(counter) * -5) + 7);
    ellipse(100 + cos(counter) * -50, 100 + sin(counter) * -50, (sin(counter) * -5) + 7, (sin(counter) * -5) + 7);
    if(flip == 1) {
      fill(icon);
      arc(100, 100, 50, 50, radians(-90), radians(-90 - (load_counter * 8)), PIE);
      arc(100, 100, 50, 50, radians(90), radians(90 - (load_counter * 8)), PIE);
    } else if (flip == -1) {
      fill(icon);
      ellipse(100, 100, 50, 50);
      fill(bg);
      arc(100, 100, 51, 51, radians(-90), radians(-90 - (load_counter * 8)), PIE);
      arc(100, 100, 51, 51, radians(90), radians(90 - (load_counter * 8)), PIE);
    }
    fill(bg);
    ellipse(100, 100, 40, 40);
    load_counter -= 0.125;
    counter -= 0.125;
  } else {
    /*noStroke();
    fill(30, 144, 255);
    ellipse(100, 100, fin_size + 3, fin_size + 3);
    fill(0, 191, 255);
    ellipse(100, 100, fin_size, fin_size);
    fill(0);
    ellipse(100, 100, fin_size - 10, fin_size - 10);
    fin_size -= 3;*/
  }
 if (load_counter == -22.5) {
    flip = flip * -1;
 }
 load_counter = load_counter % -22.5;
}
  
