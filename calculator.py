"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    This class takes aq number from the user
    then it uses numbers.split to split the string
    by spaces and add it to a list after that we
    have a function that takes as a parameter the
    list we generated and outputs the sum of the list
    """
    numbers = raw_input("Enter your numbers seperated by a space ")
    list = numbers.split()

    def sum(num_list):
        """
        This function takes a list as a parameter
        it parses each number in the list and
        adds it to the variable sum after which it
        returns sum
        """
        # your sum code here
        sum = 0
        for num in num_list:
            sum += int(num)
        return(sum)
    print(sum(list))
