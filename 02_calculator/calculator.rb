#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b 
end

def sum(array)
    summ = 0
    array.each do |element|
        summ += element
    end
    summ
end

def multiply(array)
    mult = 1
    array.each do |element|
        mult *= element
    end
    mult
end

def power(a, b)
    a ** b
end

def factorial(a)
    if a == 1 || a == 0
        return 1
    else
        return a * factorial(a-1)
    end
end