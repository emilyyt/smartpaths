require 'csv'
namespace :import do
  task :cip => :environment do
    CSV.foreach(File.path("cip.csv")) do |col|
      tag = Tag.new
      tag.name = col[0]
      tag.tag_type = "Skill"
      tag.save!
    end      
  end
end 