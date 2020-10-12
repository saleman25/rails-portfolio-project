require 'open-uri'
require 'nokogiri'
require 'pry'

class LocationScraper 

    def scrape_locations

        doc = Nokogiri::HTML(open(https://simple.wikipedia.org/wiki/List_of_countries))
        attrs_arr = []
        doc.css('table.wikitable.sortable').each do |row| 
            attrs = {}
            if !row.css('td').empty?
                attrs[:country] = row.css('td').first.text.split("")[0].strip
            end 
            attrs_arr << attrs 
        end
    end
    File.write('country.json' , attr_arr.to_json)
end 
end 
                
