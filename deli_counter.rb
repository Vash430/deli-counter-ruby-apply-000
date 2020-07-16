katz_deli = []
ticket_number = 0

def line(katz_deli)
  line = [ ]
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each.with_index(1) do |name, index|
    line.push("#{index}. #{name}")
    end
    puts "The line is currently: #{line.join(" ")}"
  end
end

def take_a_number(katz_deli)
  ticket_number += 1
  katz_deli.push(ticket_number)
  puts "Welcome, you are number #{ticket_number}. "
end



def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end