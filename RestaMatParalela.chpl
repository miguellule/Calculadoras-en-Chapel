use IO;

// Definición de las matrices
var A: [1..3, 1..3] int;
var B: [1..3, 1..3] int;
var C: [1..3, 1..3] int;

A = 1000;
B = 2;

// Función para leer la matriz del usuario
//proc leerMatriz(ref mat: [] int) {
  //  for i in mat.domain.dim(0) {
    //    for j in mat.domain.dim(1) {
      //      writeln("Ingrese el valor para la posición (", i, ",", j, "): ");
        //    mat[i,j] = stdin.read(int);
        //}
    //}
//}

// Leer las matrices del usuario
//writeln("=========================================");
//writeln("||Ingrese los valores para la matriz A ||");
//writeln("==========================================");
//leerMatriz(A);
//writeln("=========================================");
//writeln("||Ingrese los valores para la matriz B ||");
//writeln("=========================================");
//leerMatriz(B);

// Resta de las matrices en paralelo
forall i in 1..3 with (+ reduce C) {
    forall j in 1..3 {
        var sum: int = 0;
        for k in 1..3 {
            sum = A[i, k] - B[k, j];
        }
        C[i, j] = sum;
    }
}

// Imprimir la matriz resultante
writeln(" ");
writeln("=========================================");
writeln("Resultado guardado en la matriz C: ");
writeln("=========================================");
writeln("                Matriz C");
writeln(C);
writeln("=========================================");
writeln("****FIN DE LA OPERACION****");
