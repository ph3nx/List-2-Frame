def list_to_frame list=[]
    list = ["Hello", "World", "in", "a", "frame"] if list.empty?
    
    longest = 0
    
    list.each do |element|
        longest = element.length if longest < element.length
    end
    
    (0..longest+3).each do
        print "*"
    end
    
    print "\n"
    
    list.each do |el|
        print "* "
        print el
        (0..longest-el.length).each do
            print " "
        end
        print "*\n"
    end
    
    (0..longest+3).each do
        print "*"
    end
    puts "\n"
    return
end

puts "Write a sentence: "
input = gets.chomp
puts " "
list_to_frame input.split(/ /)
puts "\n"
puts 'Exit the script with ENTER'
gets