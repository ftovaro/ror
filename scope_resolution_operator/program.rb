module Music
  module Record
  end
  module Track
    p "Inside track #{Record}"
    p "Inside track, #{:Record}"
  end
end
module Record
end


p "Outside #{Music::Record}"




