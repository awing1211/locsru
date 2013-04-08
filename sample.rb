#Example search_retrieve request.
require 'rubygems'
require 'sru'
require 'libxml'

#An iterator for search results which allows you to do stuff like:

client = SRU::Client.new 'http://z3950.loc.gov:7090/voyager',:parser=>'libxml'
for record in client.search_retrieve('"harry potter"')
   puts record
end

puts "\n\n"
puts "finished"
