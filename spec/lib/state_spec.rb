require 'spec_helper'

describe Spree::State do
  before(:all) do
    Spree::State.destroy_all
  end

  let(:country){
    Spree::Country.find_or_create_by(name: "Mexico", iso3: "MEX", iso: "MX", iso_name: "MEXICO", numcode: "484", states_required: true)
  }
  

  it "can find a state by name or abbr" do
    state = create(:state, :name => "Aguascalientes", :abbr => "Ags", :country => country)
    Spree::State.find_all_by_name_or_abbr("Aguascalientes").should include(state)
    Spree::State.find_all_by_name_or_abbr("Ags").should include(state)
  end

  it "can find all states group by country id" do
    state = create(:state)
    Spree::State.states_group_by_country_id.should == { state.country_id.to_s => [[state.id, state.name]] }
  end
end
