"""
Your module documentation here
"""


class PrimeClass(object):
	"""
	Your class documentation here
	"""
	def __init__(self):
		print ("init")

	def readnumber(self):
		while True:
			numero = input("inserta un numero (0) salir >> ")
			val = int(numero)
			if val==0:
				break
			else:
				is_primo = self.is_prime(numero)
				if is_primo:
					print ("\nEl numero %s es primo" % (numero))
				else:
					print ("\nEl numero %s NO es primo" % (numero))

	def is_prime(self,numero):
		"""
		Funcion que determina si un numero es primo
		Recibe un entero
		"""
		# your primes code here 
		num = int(numero)
		for i in range(2,num):
			if (num%i)==0:
				#es divisible
				return False
			return True



primo = PrimeClass()

primo.readnumber()