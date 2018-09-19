
planning = { data: { rooms: [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 }, ] } }

# 1. Retrieve the capacity of room 201 and store it in a variable.
# room_201 = planning[:data][:rooms][0][:capacity]
# puts room_201

# 2. Find all the events taking place in room 201.
# Iterate through them and print "ok" if the number of planned attendees will fit in the room.


planning[:data][:rooms].each do |key,value|
  if key[:room_number] == "201"
  then room_id = key[:id]
       room_cap = key[:capacity]
       planning[:data][:events].each do |key,value|
         if key[:room_id] == room_id
         then
           if room_cap > key[:attendees]
             then puts "ok"
           end
         end
       end
  end
end

#   planning[:data][:events].each do |key,value|
#     if key[:room_id] == room_id
#     then
#       if room_cap > key[:attendees]
#         then puts "ok"
#       end
#     end
#   end
# end
