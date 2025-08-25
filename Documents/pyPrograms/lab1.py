#/usr/bin/env/python3

# La siguiente funcion realiza el calculo de la imagen correspondiente al punto medio que se vaya usando
# en la funcion sumaRieman, el valor del punto medio se recibe como la variable independiente.
def funIntegrando(varInd):
    return 4.0 / (1.0 + varInd**2)

# En esta funcion se calcula la suma de Rieman para calcular el valor de pi.
def sumaRieman(funInt, numRect, limSup, limInf):

    # La variable 'ancho' corresponde al ancho de cada rectangulo de la suma de Rieman.
    ancho = (limSup - limInf)/numRect
    resultado = 0.0

    # En este bucle for se realiza la suma de Rieman. En este caso, la altura de cada rectangulo
    # es la imagen que corresponde a la mitad o punto medio del ancho del rectangulo.
    for n in range(numRect):
        puntoMedio = limInf + ancho*n + ancho*0.5
        imagen = funInt(puntoMedio)
        resultado += imagen*ancho

    return resultado


# Las siguientes 3 variables corresponden a los parametros para la suma de Rieman.
numRectangulos = 10000
limSuperior = 1
limInferior = 0

resultado = sumaRieman(funIntegrando, numRectangulos, limSuperior, limInferior)
print(resultado)

