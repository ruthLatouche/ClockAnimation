//Ruth Latouche
//2019027049
//15-4-2021

color fondo = #A3A1A8;
color horas = #FF665A;
color minutos = #FF8C64;
color segundos = #FFF587;
int h, m, s, hora;
int radioS = 200;
int radioM = 400;
int radioH = 600;


Unidad secundero;
Unidad minutero;
Unidad horero;

void setup(){
  fullScreen();
  
  secundero = new Unidad(radioS, fondo, segundos);
  minutero = new Unidad(radioM, fondo, minutos);
  horero = new Unidad(radioH, fondo, horas);
 
}

void draw(){
  background(fondo);
  
  s = second();
  m = minute();
  h = hour();
  
  if( h>= 13 && h<= 23){
    hora = h-12;
  }
  else{
   hora =  h;
  }
  
  horero.dibujarHoras(hora);
  minutero.dibujar(m);
  secundero.dibujar(s);

}
