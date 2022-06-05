class Unidad{
 
  PVector centro = new PVector(width/2, height/2);
  float ra;
  int angulo;
  color fon ;
  color col ;

  
  public Unidad(float radio, color fondo, color colorin){    
   ra = radio;
   fon = fondo;
   col = colorin;
   
  }
  
  
    
   void dibujar(int medida){
     angulo = medida * 6;
     noStroke();
     fill(col);
     circle(centro.x, centro.y, ra);
     
     fill(fon);
     arc(centro.x, centro.y, ra, ra, radians(-90), radians(angulo -90), PIE);     
    }
  
   void dibujarHoras(int medida){
     angulo = medida * 30;
     noStroke();
     fill(col);
     circle(centro.x, centro.y, ra);
     
     fill(fon);
     arc(centro.x, centro.y, ra, ra, radians(-90), radians(angulo -90), PIE);     
    }
  
} 
