"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Esta clase solo contienen 
    un metodo donde se realiza la suma de los items
    de una lista de numeros
    """

    def sum(self, num_list):
        """
        Este metodo recibe una 
        lista de numeros
        de primer nstancia se recibe 
        como string
        luego el string se separa por comas
        y entonces tenemos una lista,
        que podemos
        recorrer con un for.
        Tenemos una variable sumatoria que es 
        donde se iran sumando los numeros
        de la lista.
        En cada interacion del for, se toma
        el valor del item 
        con el index actual del for
        el valor se suma a la sumatoria 
        y al final se 
        rrtona el valor de la sumatoria
        """
        numbers = num_list
        numbers = numbers.split(',')
        sumatoria = 0
        for i in range(0, numbers.lenght - 1):
            sumatoria = sumatoria + int(numbers[i])
        return sumatoria

print "Ingresa una lista de numero separa por coma ej: 1,2,2,3"
string = input()
calculator = CalculatorClass()
value = calculator.sum(string)
print "El resultado de la sumatoria es :" + value