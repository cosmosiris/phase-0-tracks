# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show campuses on the home page
get '/' do
  @campus = db.execute("SELECT DISTINCT campus FROM students")
  erb :campuses
end

get '/campuses/new' do
  erb :new_campus
end

# create new campuses via
# a form
post '/campuses' do
  db.execute("INSERT INTO students (campus) VALUES (?)", params['campus'])
  redirect '/'
end

# add static resources
