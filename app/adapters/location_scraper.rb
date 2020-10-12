require 'open-uri'
require 'nokogiri'

class LocationScraper 

    def self.scrape_locations

        doc = Nokogiri::HTML(open("https://simple.wikipedia.org/wiki/List_of_countries"))
        country_arr = []
        doc.css('b').each do |row| 
                country_arr << row.css("a").text
        end
    File.write('country.json' , country_arr.to_json)
    country_arr
end 


end 
                
