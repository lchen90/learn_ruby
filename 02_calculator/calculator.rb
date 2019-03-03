#write your code here
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  array.inject(0) { |total, array| total + array}
end

def multiply(a, b, *c)
  product = a * b
  c.reduce(product) {|num, product| num * product}
end

def power(a,b)
  a**b
end

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num-1)
end
end
