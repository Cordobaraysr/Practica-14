Algoritmo TrianguloDePascalSinArreglos

	Escribir  "Hecho po RAYMUNDO"
    Definir filas, i, j, coef Como Entero
	

    Escribir "Ingrese el número de filas para el triángulo de Pascal: "
    Leer filas
	

    Para i <- 0 Hasta filas - 1 Hacer
        
        Para j <- 1 Hasta filas - i Hacer
            Escribir Sin Saltar " "
        Fin Para

        coef <- 1 
        Para j <- 0 Hasta i Hacer
            Escribir Sin Saltar coef, " "
   
            coef <- coef * (i - j) / (j + 1)
        Fin Para
		
        Escribir "" 
    Fin Para
FinAlgoritmo