def hundred_doors
	100.times do |index|
		door_number = index + 1
		if (door_number % 2) == 0 &&  (door_number % 3) == 0
			puts "door number #{door_number} is closed"
		elsif door_number % 2 == 0 || door_number % 3 == 0
			puts "door number #{door_number} is open"
		else
			puts "door number #{door_number} is closed"
		end

	end
end

hundred_doors

# sample output
# door number 1 is closed
# door number 2 is open
# door number 3 is open
# door number 4 is open
# door number 5 is closed
# door number 6 is closed
# ...
