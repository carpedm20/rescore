require_relative '../config/environment'
Delayed::Worker.delay_jobs = false

movie = Movie.find(5)
puts movie.title
start = Time.now

binding.pry
movie.build_summary

puts "build_summary completed in #{Time.now - start} for #{movie.reviews.size} reviews"

movie.save
