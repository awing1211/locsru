#Example search_retrieve request.
require 'rubygems'
require 'sru'
require 'libxml'

#An iterator for search results which allows you to do stuff like:

client = SRU::Client.new 'http://z3950.loc.gov:7090/voyager',:parser=>'libxml'
for record in client.search_retrieve('title = "Lord of Chaos" and author = "Jordan, Rob*"', :maximumRecords => 50)
   File.open('sample.xml', 'w') do|file|
     file.write(record)
   end
   
end 

puts "\n\n"
puts "finished"
