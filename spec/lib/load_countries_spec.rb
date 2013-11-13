require 'spec_helper'

describe "Load Countries" do

  ["mexico","brazil"].each do |country_name|
    it "doesn't raise any error in #{country_name}" do
      expect {
        SpreeLatinGeonames::Engine.load_country(country_name)
      }.to_not raise_error
    end
  end

end
