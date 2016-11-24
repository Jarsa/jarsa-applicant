"""
Your module documentation here
"""
import math;
class PrimeClass(object):
    """
    Your class documentation here
    """


    def is_prime(self, num_int):
        """
        La funcion se basa en dividir el numero ingresado por cada uno
        de los numeros que hay del rango del 3 al numero ingresado -1
        (o para hacer menos proceso, hasta la raiz del numero ingresado,
        ya que a partir de la raiz los numeros siguientes por asi decir se
        vuelven a repetir) con el fin de que el numero no sea divisible entre
        ninguno de esos del rango.

        """
        num = float(num_int);
        # (if) Revisa que el numero ingresado sea 2 o 3.
        # (elif) Luego revisa que el numero no sea par.
        # (else) Si no es ninguno de los dos casos no es primo.
        if num == 2 or num == 3:
            isprime = True;
        elif num % 2 != 0:
            isprime = True;
            rango = 3;

            # Loop para dividir el numero.
            while rango <= math.ceil(math.sqrt(num)):
                if num % rango == 0:
                    isprime = False;
                    break;
                rango += 1;
        else:
            isprime = False;
        if num == 1:
            isprime = False;
        return isprime;
