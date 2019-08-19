
"""
Your module documentation here
"""


class CalculatorClass(object):
#class Lista:
   lista = []
   sum = 0
   def llenarlista(self):
       x= int (input("Ingrese Tamaño De La Lista:"))
       for i in range(x):
           #llenar lista
           self.lista.append(int(input("Ingrese Numero:")))
       #imprimir lista
       for i in self.lista:
           print (i)
 
   def sumar(self):
       for i in self.lista:
           self.sum+= i
       print ("La Suma De Los Datos Es:",self.sum)
 
obj = CalculatorClass()
obj.llenarlista()
obj.sumar()

