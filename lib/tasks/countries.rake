namespace :spree_country do
  desc 'Loads countries data'
  
  task :mexico => :environment do
    SpreeLatinGeonames::Engine.load_country("mexico")
  end
  
  task :brazil => :environment do
    SpreeLatinGeonames::Engine.load_country("brazil")
  end

end

