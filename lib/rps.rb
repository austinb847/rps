class RPS
  def wins?(obj, arg)
    if (obj == "rock") & (arg == "scissors")
      true
    elsif (obj == "scissors") & (arg == "paper")
      true
    elsif (obj == "paper") & (arg == "rock")
      true
    else
      false
    end
  end
  
end