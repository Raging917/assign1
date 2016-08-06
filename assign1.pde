/* please implement your assign1 code in this file. */

PImage bg1, bg2, enemy, fighter, hp, treasure;
int hpWidth = floor(random(1,193)); //隨機血量
int trX = floor(random(600)), trY = floor(random(440)); //寶物位置
int enY = floor(random(420)); //敵機Y位置
int enemyX = 0;
int speedE = 3; //敵機速度
int bg1X = 0, bg2X = 0;
int speedBg1 =1, speedBg2 = 1;

void setup () {
  size(640,480) ;  // must use this size.
  
  //讀取圖檔
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  rect(5,3,floor(random(232)),31);
}
  
void draw() {
  
  image(bg1,++bg2X %1280-640,0);
  image(bg2,(bg2X+640) %1280-640,0);
  
  image(treasure,trX,trY);
  
  //血量
  fill(255,0,0);
  rect(18,9,hpWidth,15,3,3,3,3);
  
  image(hp,5,5);
  image(fighter,580,240);
  
  //敵機移動
  enemyX += speedE;
  enemyX %= 640;
  image(enemy,enemyX,enY);
  
}

