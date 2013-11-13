namespace :spree_country do
  desc 'Loads countries data'

  task :geoname, [:country] => :environment do |t, args|
    if ActiveRecord::Base.connection.table_exists?("spree_states")
      SpreeLatinGeonames::Engine.load_country(args.country)
    else
      puts %Q{
          Please run db:migrate separately from spree_geoname:country[mexico].
          Running db:migrate and spree_geoname:country[mexico] at the same time has been known to
          cause problems where columns may be not available during sample data loading.
          Migrations have been run. Please run "rake spree_geoname:country[mexico]" by itself now.
      }
    end
  end

end
  

