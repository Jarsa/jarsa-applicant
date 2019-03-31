"""
Your module documentation here
"""


class PrimeClass(object):
    """
    This class takes a number from the user
    parses it into an integer then runs a 
    function to determine if the number is prime
    if the number in questrion is prime it 
    returns true else it returns false
    
    """
    num = input('Input your number ')
    num = int(num)
    


    def is_prime(n):
        """
        This function takes a parameter n 
        it checks this parameter against the first two numbers 
        1 and 2 if its neither 1 or two it starts a loop
        where it checks if any number inbetween 2 and n
        is a multiple of n 

        """
        # your primes code here
        if (n==1):
            return False
        elif (n==2):
            return True;
        else:
            for x in range(2,n):
                if(n % x==0):
                    return False
        return True
    print (is_prime(num))