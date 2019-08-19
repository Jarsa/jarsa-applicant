class PrimeClass(object):
    num_int=int(input("Enter a number:"))
    
    if num_int <= 1:
        print (num_int,"is not prime")
    else:
        a=2
        check = True
    while a != num_int:
        if num_int%a == 0:
            print (num_int, "is not prime")
            check = False
            break
        a+=1
    if check == True:
        print (num_int,"is prime")
