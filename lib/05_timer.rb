def print(nb)
  if nb.to_i < 10 #moins de 10
    return "0#{nb}" 
  else 
      return nb.to_s
  end  
end

def convert(sec)
  clock = []
  if sec < 60 #moins d'une minute
    clock = [0,0,sec]
  else 
    if sec < 3600 #moins d'une heure
      min = sec/60.to_i
      clock = [0,min,sec-(min*60)]
    else 
      hour = sec/3600.to_i
      min= (sec-hour*3600)/60.to_i
      clock = [hour,min,sec-(min*60)-(hour*3600)]
    end 
  end
end 

def time_string(time)#testOK
  return "#{print(convert(time)[0])}:#{print(convert(time)[1])}:#{print(convert(time)[2])}" 
end 

