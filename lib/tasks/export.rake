namespace :export do
  desc "Prints Book.all in a seeds.rb way."
  task :seeds_format => :environment do
    Book.order(:id).all.each do |book|
      puts "Book.create(#{book.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end
