//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
int[] numre = new int [32]; //sætter maks atntal kast til 32
int counter = 0; //sætter antallet af kast til 0

int et=0; //sætter antallet af kast for de forskellige sider af terningen til 0
int to=0;
int tre=0;
int fire=0;
int fem=0;
int seks=0;

void setup() {
  textSize(20);
  frameRate(3);
  size(800, 800);
  clear();
  text("TRYK på 'k' FOR AT KASTE", 50, 50);
  text("Fordeling af terningkast",60,730);
  for(int b=1;b<=6;b++)text(b,20+50*b,700);
}

void draw() {
  
}

void keyPressed() {
  clear();
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k'&&counter<31) {
    //OPGAVE:  lav manglende funktion der laver 'terningekast'. 
    
    int kast = lavTerningeKast(1, 6); //sætter mulighederne for et terningkast til 1-6
    text("DIT KAST BLEV:" + kast, 50, 75);
  }

  if (key == 's'&& counter>0) { //udfære fjernSidsteKast når "s" er trykket og antallet af kast er over 0
    //OPGAVE:  lav manglende funktion til at et terningekast
    fjernSidsteKast();
  }
  
  //OPGAVE: lav manglende funktion til at fordelingen af terningekast. 
  tegnFordeling();
  //OPGAVE: lav manglende funktion der kan udskrive alle terningekast som tekst ...
  udskrivKast(); // start med funktioner
  //println(counter);
  //println(tre);
}

int lavTerningeKast(int min, int max) { 
  counter++;
  int nyKast= int(random(min, max + 1));
  numre[counter]=nyKast;
  
  if(nyKast==1)et++; //fordeler kastene mellem de 6 sider af terningen
  if(nyKast==2)to++;
  if(nyKast==3)tre++;
  if(nyKast==4)fire++;
  if(nyKast==5)fem++;
  if(nyKast==6)seks++;
  return nyKast;

}

void fjernSidsteKast() {
    
    
    if(numre[counter]==1)et--; //fjerner det sidste output fra counteren
    if(numre[counter]==2)to--;
    if(numre[counter]==3)tre--;
    if(numre[counter]==4)fire--;
    if(numre[counter]==5)fem--;
    if(numre[counter]==6)seks--;
    counter--;
}

void tegnFordeling(){
  
      text("Fordeling af terningkast",60,730);
      for(int b=1;b<=6;b++){
        text(b,20+50*b,700);
      }
      textSize(14);
      rect(50,680,50,et*-20);      text(et+" stk",55,670-20*et);
      rect(100,680,50,to*-20);     text(to+" stk",105,670-20*to);
      rect(150,680,50,tre*-20);    text(tre+" stk",155,670-20*tre);
      rect(200,680,50,fire*-20);   text(fire+" stk",205,670-20*fire);
      rect(250,680,50,fem*-20);    text(fem+" stk",255,670-20*fem);
      rect(300,680,50,seks*-20);   text(seks+" stk",305,670-20*seks);
      textSize(20);
}

void udskrivKast(){
  
    for(int b=1; b<counter;b++){
      text("Kast "+b+": "+numre[b],680,50+20*b);
    }
    
    
}
