require 'spec_helper'

describe "Load Mexico" do
  it "doesn't raise any error" do
    expect {
      SpreeLatinGeonames::Engine.load_country("mexico")
    }.to_not raise_error
  end
end
