class RPS
  def wins?(obj, arg)
    if (obj == "rock") & (arg == "scissors")
      true
    elsif (obj == "scissors") & (arg == "paper")
      true
    end
  end
  
end