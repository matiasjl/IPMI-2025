//map( valor, rango1inicio, rango1fin, rango2inicio, rango2fin );

// cambio de escala: color a ancho pantalla
println( map( 127, 0, 255, 0, 600 ) );

// cambio de escala: pulgadas a centimetros
println( map( 5, 0, 1, 0, 2.54 ) );

// cambio de escala: dolar a pesos
println( map( 150, 0, 1, 0, 1200 ) );

// cambio de escala: pesos a dolares
println( map( 50000, 0, 1200, 0, 1 ) );
