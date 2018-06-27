def number_comparison(my_ticket, winning_ticket)
	my_ticket = my_ticket.split('')
	puts "my ticket is #{my_ticket}"
	winning_ticket = winning_ticket.split('')
	puts "winning ticket is #{winning_ticket}"
	matching_number = 0
	winning_ticket.each_with_index do |num,index|
	puts "number is #{num} and index is #{index}"
		if num == my_ticket[index]
			matching_number = matching_number + 1
		end
    end
	matching_num = matching_number + 1
end
	def check_for_match_arr(myticketarray, winningticket)
		empty = []
		myticketarray.each do |num|
			number_comparison(num, winningticket)
			if number_comparison(num, winningticket) == 1
				empty << num
			end
		    end
		    empty
	end
	def check_for_match_arr_2(myticketarray, winningticket)
		empty = []
		myticketarray.each do |num|
			empty << number_comparison(num, winningticket)
		end
		empty
	end
	def winarr(myticketarray, winningticket)
		warr = []
		winningticket.each do |num|
			matches = check_for_match_arr_2(myticketarray, num)
			winners = 0
			matches.each do |m|
				if m == 0
					winners += 1
				end
			end
			warr << winners
		end
		warr
	end