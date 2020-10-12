require 'open-uri'
require 'nokogiri'
require 'pry'

class LocationScraper 

    def scrape_locations

        doc = Nokogiri::HTML(open())
        attrs_arr = []
        doc.css().each do |row| 
            attrs = {}
            if !row.css('td').empty?
                attrs[:country]
                attrs[:state]
                attrs[:city]
                