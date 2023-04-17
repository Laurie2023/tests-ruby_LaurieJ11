def ftoc (number) #testOK
  return ((number-32)/1.8).round(1)
end 

def ctof (number) #testOK
  return ((number*1.8)+32).round(1)
end 
