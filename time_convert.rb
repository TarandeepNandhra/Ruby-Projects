# Codewars problem, convert seconds to years, days, hours, minues and seconds.
# Need to refactor

def format_duration(seconds)
  print seconds
  return "now" if seconds == 0
  final = []
  
  check = seconds / 31536000
  #year is 31536000 seconds
  if check > 0
    if check == 1
      final << "#{check} year"
    else
      final << "#{check} years"
    end
  end
  current = seconds - (check * 31536000)
  
  check = current / 86400
  #day is 86400
  if check > 0
    if check == 1
      final << "#{check} day"
    else
      final << "#{check} days"
    end
  end
  current -=  check * 86400
  
  check = current / 3600
  #hours is 3600
  if check > 0
    if check == 1
      final << "#{check} hour"
    else
      final << "#{check} hours"
    end
  end
  current -= check * 3600
  
  check = current / 60
  #min 60
  if check > 0
    if check == 1
      final << "#{check} minute"
    else
      final << "#{check} minutes"
    end
  end
  current -= check * 60
  
  # only seconds remain
  if current > 0
    if current == 1
      final << "#{current} second"
    else
      final << "#{current} seconds"
    end
  end
  
  if final.length == 1
    return final[0]
  elsif final.length == 2
    return final[0] + " and " + final[1]
  else
    return final[0 ... -1].join(", ") + " and " + final[-1]
  end
end