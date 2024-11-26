Proceso Fibonacci
    Definir n, a, b, siguiente Como Entero
    Escribir "Introduce el número de términos de la serie de Fibonacci:"
    Leer n
    Si n <= 0 Entonces
        Escribir "Por favor introduce un número entero positivo."
    Sino
        a <- 0
        b <- 1
        Escribir "Serie de Fibonacci:"
        Para i <- 1 Hasta n Hacer
            Escribir a
            siguiente <- a + b
            a <- b
            b <- siguiente
        Fin Para
    Fin Si
Fin Proceso
