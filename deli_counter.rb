require 'pry'

katz_deli = []

def take_a_number(deli, new_customer)
    deli << new_customer
    puts "Welcome, #{new_customer}. You are number #{deli.length} in line."
end

def line(deli)
    return puts "The line is currently empty." if deli.empty?

    line = deli.map.with_index do |person, index|
        "#{index + 1}. #{person}"
    end

    puts "The line is currently: #{line.join(" ")}"
end

def now_serving(deli)
    return puts "There is nobody waiting to be served!" if deli.empty?

    puts "Currently serving #{deli.first}."
    deli.shift
end