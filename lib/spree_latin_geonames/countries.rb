module SpreeLatinGeonames
  module Geoname
    def self.load_country(file)
      path = File.expand_path(geonames_path + "#{file}.rb")
      # Check to see if the specified file has been loaded before
      if !$LOADED_FEATURES.include?(path)
        require path
        puts "Loaded #{file.titleize} country" unless Rails.env == "test"
      end
    end

    private
    def self.geonames_path
      Pathname.new(File.join(File.dirname(__FILE__),'..','..','db','countries'))
    end
  end
end
