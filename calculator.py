#!/usr/bin/python
# -- coding: utf-8 --


class calculator_class:
    def sumalista(listaNumeros):
        laSuma = 0
        for i in listaNumeros:
            laSuma = laSuma + i
        return laSuma
    a = int(input("Enter first number: "))
    b = int(input("Enter second number: "))
    c = int(input("Enter third number: "))
    d = int(input("Enter four number: "))
    print(sumalista([a,b,c,d]))
