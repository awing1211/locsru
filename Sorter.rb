file=File.open('date.txt', 'r') do |file|
  file.read do |line|
    date = line.match (/[0-9]\d* /)
    puts date
    puts line
  end
end

