namespace :spree_country do
  desc 'Loads mexico data'
  task :mexico => :environment do
    SpreeLatinGeonames::Engine.load_country("mexico")
  end
end

