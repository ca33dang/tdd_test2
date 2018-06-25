def check_for_match(myticket, winnigticket)
	my_ticket = myticket.split("")
	puts "my ticket is #{my_ticket}"
	winning_ticket = winningticket.split("")
	puts "winningticket is #{winnig_ticket}"
	matching_num = 0
	winningticket.each_with_index do |num,index|
		puts "num is #{num} and index is #{index}"
		if num == myticket[index]
			matching_num += 1
		end
    end
	matching_num
end