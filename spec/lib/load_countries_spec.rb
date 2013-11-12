require 'spec_helper'

describe "Load Countries" do
  it "doesn't raise any error in mexico" do
    expect {
      SpreeLatinGeonames::Engine.load_country("mexico")
    }.to_not raise_error
  end

	it "doesn't raise any error in brazil" do
    expect {
      SpreeLatinGeonames::Engine.load_country("brazil")
    }.to_not raise_error
  end


end
