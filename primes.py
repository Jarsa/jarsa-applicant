class PrimeClass(object):
    

    def is_prime(self, num_int):
        if num_int < 1:
            return False
    elif num_int == 2:
            return True
    else:
        for i in range(2, num_int):
            if num_int % i == 0:
                return False
        return True
    