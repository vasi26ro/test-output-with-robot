def output(num):
    if num > 100 or num < -100 or num == 13:
        raise Exception("System Error")
    print(10/num)