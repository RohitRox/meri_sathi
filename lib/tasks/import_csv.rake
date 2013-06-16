namespace :import do

  desc "import csv and dump to incidents document"
  task :volience_reports => :environment do
    CSV.foreach("#{Rails.root}/public/voilence_reports.csv", :headers => true) do |row|
      puts "title: #{row[1]}"
      puts "date: #{row[2]}"
      puts "address: #{row[3]}"
      puts "victims: #{(row[10].present? ? row[10].to_i : 0) + (row[11].present? ? row[11].to_i : 0)}"
      puts "coordinates: [#{row[6]},#{row[7]}]"
      Incident.create!(title: row[1], date: row[2], address: row[3], coordinates: [row[6].to_f,row[7].to_f],victims: ((row[10].present? ? row[10].to_i : 0) + (row[11].present? ? row[11].to_i : 0)) )
      puts '-----------------------------------------------------------------'
    end
  end

end