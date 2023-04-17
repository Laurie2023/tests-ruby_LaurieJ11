def add(nb1,nb2) #testOK
  return nb1+nb2
end 

def subtract(nb1,nb2) #testOK
  return nb1-nb2
end 

def sum(arr) #testOK
  return arr.sum #somme les éléments d'une array
end 

def multiply(nb1, nb2) #testOK
  return nb1*nb2
end 

def power(nb1, nb2) #testOK
  return nb1**nb2
end 

def factorial(nb1) #testOK
  fact = 1
  if (nb1==0)
    return "Error"
  else
    counter =1 
    while(counter <= nb1)
          fact = fact * counter 
        counter += 1
    end
    return fact
  end
end 