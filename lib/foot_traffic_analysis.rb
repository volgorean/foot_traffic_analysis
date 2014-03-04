def foot_traffic_analysis(input)
  visitors = []
  for i in 0..1023
    visitors[i] = [0, 0]
  end
  rooms = []
  for i in 0..99 do
    rooms[i] = [0, 0]
  end

  input.each do |string|
    string_values = string.split(" ")

    string_values.each do |value|
      value = value.to_i
    end

    if (string_values[2] == "I")
      visitors[string_values[0]] = [string_values[1], string_values[3]]
    elsif (string_values[2] == "O")
      rooms[string_values[1]] = update_room(rooms[string_values[1]], string_values, visitors[string_values[0]])
      visitors[string_values[0]] = [0, 0]
    end
  end
  output_string = "room 0, " + rooms[0][0].to_s + " minutes average visit, " + rooms[0][1].to_s + " visitor(s) total"
end

def update_room(room_array, string_values, visitor_array)
  average = room_array[0]
  number = room_array[1]
  average = ((averate * number) + (string_values[3] - visitor_array[1]))/number + 1
  number += 1
  room_array = [average, number]
end
