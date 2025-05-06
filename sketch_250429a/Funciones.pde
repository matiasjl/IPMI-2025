// funcion de usuario que NO devuelve valor (dibujo)
void munecoDeNieve(){  //funciona como "acceso directo a codigo", pero en gral no tienen sentido
  fill( 255 );
  noStroke();
  circle( width/2, 100, 50 );
  circle( width/2, 150, 80 );
  circle( width/2, 200, 100 );
}

void munecoDeNieve( int x, int y ){  //funciona con dos parametros de ubicacion
  // x e y son parametros que funcionan como variables locales: existen solo entre las llaves de la funcion
  fill( 255 );
  noStroke();
  circle( x, y, 50 );
  circle( x, y+50, 80 );
  circle( x, y+100, 100 );
}

void munecoDeNieve( int x, int y, float t ){  //se agrefga un tercer parametro/variable: tamano
  // t = tamano del circulo mas grande (el de abajo)
  fill( 255 );
  noStroke();
  circle( x, y, t/2 );
  circle( x, y+(t/2), t*0.8 );
  circle( x, y+t, t );
}
