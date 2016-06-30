"""
Your module documentation here
It contains a class named PrimeClass that it
has too a method called is_prime that checks
a prime number for a given number
"""


class PrimeClass(object):
    """
    Your class documentation here
    This class contains a method called is_prime that
    checks a prime number lmgr0312
    for a random number in its input
    """
    def is_prime(self, num_int):
        """
        Your method documentation here
        This method has a variable called num
        that receives the integer in the method
        ,a counter initialized in Zero
        and a boolean called not_prime with
        default value False
        It has a for in that checks a range between
        the 1 and the given number plus one
        If the residue between the number and the
        item of the for in is equal to zero,
        then the counter is incremented by one
        and then checks if the counter is upper
        than 3, if it is true the not_prime
        boolean is set to true
        After that, we check with a double sentence
        in the if, the value, if is not_prime
        is false or count is equal to 2 then
        we return true, in the other case,
        we return False.
        """
        # your primes code here
        num = int(num_int)
        count = 0
        if num == 1:
            return False
        else:
            not_prime = False
            for item in range(1, num + 1):
                if (num % item) == 0:
                    count = count + 1
                if count >= 3:
                    not_prime = True
                    break
            if not not_prime or count == 2:
                return True
            else:
                return False
