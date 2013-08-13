#Sample Parser
file = File.open("sample.txt", "r") do |file|
  file.readlines.each do |line|
    is_title=true if line.match(/^  <title>/)
    if is_title == true
      File.open('title.txt', 'w') do|file|
        file.write(line)
      end
    end 
    is_date=true if line.match(/^  <date>/)
    if is_date == true
      File.open("date.txt", 'w') do |file|
        file.write(line)
      end
    end 
      
    puts line if is_title == true
    puts line if is_date == true
    
  end
end
puts "end"
