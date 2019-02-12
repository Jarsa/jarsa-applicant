"""
Your module documentation here
"""


class CalculatorClass(object):
	"""
	Your class documentation here
	"""
	def __init__(self):
		print("init")

	def readnumber(self):
		listnumber1 = []
		while True:
			numero = input("inserta un numero (0) salir >> ")
			val = int(numero)
			if(val==0):
				if(len(listnumber1)>0):
					self.sum(listnumber1)
				else:
					print("there is not any number added to list")
			else:
				listnumber1.append(val)

	def sum(self, num_list):
		suma = 0
		for num in num_list:
			suma = suma + num
		return print("The mount is equals to :"+str(suma))

calculator = CalculatorClass()

calculator.readnumber()