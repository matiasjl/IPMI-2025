//lerp(start, stop, amt)

void setup(){
  size( 500, 500 );
}

void draw(){
  background( 255 );
  
  line( 100, 0, 100, height );
  line( 400, 0, 400, height );
  
  float x = lerp( 100, 400, 0.3 );
  circle( x, 250, 50 );

}
