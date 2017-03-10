"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Esta clase contiene un metodo o funcion 
    que verifica si un numero es primo o no
    """

    def is_prime(self, num_int):
        """
        El metodo hace recibe un paramro, el cual
        debe de ser un numero.
        Al entrar en el metodo, el valor recibido 
        se convierte en entero.
        El numero 1 no e sun numero primo, por lo que si 
        el numero recibido es igual a uno, 
        se retorna false.
        Si el numero es mayor de uno, se realiza un ciclo
        for donde se verifica en cada iteraccion, 
        que el numero recibido dividido por el index de interacion
        tenga un reciduo de 0, si lo tiene se va sumando
        uno a un contador, si el contador llega a 3
        el ciclo se rompe. 
        Si la variable Prime, es false al principio
        y en el for no se tiene ninguna interacion
        donde el residuo sea 0, el numero es primo
        de igual forma lo es cuando se tienen interaciones
        y el contador llega unicamente a 2.
        En caso contario, el numero no es primo
        """
        
        Int_Num = int(num_int)
        Count = 0
        if num_int == 1:
            return False
        else:
            isPrime = False
            for x in range(1, Int_Num + 1):
                if (Int_Num % x) == 0:
                    Count = Count + 1
                    if Count >= 3:
                        isPrime = True
                        break
            if not isPrime or Count == 2:
                return True
            else:
                return False
