# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end
# http://localhost:4567/?name=iris //input

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end
# http://localhost:4567/about/iris   //input

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end
# http://localhost:4567/iris/loves/omar    //input


# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
# http://localhost:4567/students/1 //input

#write a /contact route that displays an address
get '/contact' do
  "Your address is #{params[:address]}"
end
# http://localhost:4567/contact?address=13165 sw 21st st

get '/great_job/:name' do
  name = params[:name]
  if name
    "Good Job, #{name}"
  else
    "Good Job"
  end
  # the else doesnt work
end