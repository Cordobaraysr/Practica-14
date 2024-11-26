print("Hecho por Raymundo y Alberto")
def fibonacci(n):
    serie = []
    a, b = 0, 1
    for _ in range(n):
        serie.append(a)
        a, b = b, a + b
    return serie

n = int(input("Introduce el número de términos de la serie de Fibonacci: "))
if n <= 0:
    print("Por favor introduce un número entero positivo.")
else:
    print("Serie de Fibonacci:", fibonacci(n))
