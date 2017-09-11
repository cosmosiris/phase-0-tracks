# require gems
require "sqlite3"
require "faker"

# create SQlite3 database
db = SQLite3::Database.new("project_database.db")
db.execute('DROP TABLE projects')
db.execute('DROP TABLE persons')
db.execute('DROP TABLE steps')
db.execute('DROP TABLE project_steps')
db.execute('DROP TABLE tasks')
db.execute('DROP TABLE teams')
db.execute('DROP TABLE feedback')

#create tables
create_project_table = <<-SQL
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER PRIMARY KEY,
    project_title VARCHAR(255),
    start_date DATE,
    end_date DATE
  )
SQL


create_persons_table = <<-SQL
  CREATE TABLE IF NOT EXISTS persons(
    id INTEGER PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    team_id INT,
    FOREIGN KEY(team_id) REFERENCES teams(id)
  )
SQL

create_steps_table = <<-SQL
  CREATE TABLE IF NOT EXISTS steps(
    id INTEGER PRIMARY KEY,
    description TEXT NOT NULL,
    status VARCHAR(255) NOT NULL
  )
SQL

create_project_steps_table = <<-SQL
  CREATE TABLE IF NOT EXISTS project_steps(
    project_id INT,
    step_id INT,
    FOREIGN KEY(project_id) REFERENCES projects(id),
    FOREIGN KEY(step_id) REFERENCES steps(id),
    PRIMARY KEY(project_id, step_id)
  )
SQL

create_tasks_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    project_id INT,
    assigned_to INT,
    FOREIGN KEY (project_id) REFERENCES projects(id),
    FOREIGN KEY (assigned_to) REFERENCES persons(id)
  )
SQL

create_teams_table = <<-SQL
  CREATE TABLE IF NOT EXISTS teams(
    id INT,
    team_name VARCHAR(255) NOT NULL,
    FOREIGN KEY(id) REFERENCES projects(id)
  )
SQL

create_feedback_table = <<-SQL
  CREATE TABLE IF NOT EXISTS feedback(
    id INTEGER PRIMARY KEY,
    timeliness TEXT,
    communication TEXT,
    follow_through TEXT,
    CEC TEXT,
    effort TEXT,
    written_from VARCHAR(255),
    given_to INT,
    project_id INT,
    FOREIGN KEY(given_to) REFERENCES persons(id),
    FOREIGN KEY(project_id) REFERENCES projects(id)
  )
SQL

db.execute(create_project_table)
db.execute(create_persons_table)
db.execute(create_steps_table)
db.execute(create_project_steps_table)
db.execute(create_tasks_table)
db.execute(create_teams_table)
db.execute(create_feedback_table)

#User input-------------------------
#Create a project
puts "Hey there, if you are ready to work on your project, let's get started!"
puts "What is the name of your project?"
project_title = gets.chomp
puts "Whats the start date? Please use the following format YYYY-MM-DD"
opening = gets.chomp
puts "Whats the end date? Please use the following format YYYY-MM-DD"
closing = gets.chomp

def create_project(db, project_title, start_date, end_date)
  db.execute("INSERT INTO projects (project_title, start_date, end_date) VALUES (?, ?, ?)", [project_title, start_date, end_date])
  project = db.execute("SELECT * FROM projects")
  # project.each do |project|
  #   puts "Your project #{project_title} starts on #{start_date} and ends on #{end_date}."
  # end
  project
end

puts create_project(db, project_title, opening, closing)


#create project team
puts "what's the team's name"
team_name = gets.chomp
puts "what's the team's project number?"
project_number = gets.chomp

def create_teams(db, team_name, id)
  db.execute("INSERT INTO teams (team_name, id) VALUES (?, ?)", [team_name, id])
  team = db.execute("SELECT * FROM teams")
  p team
end

create_teams(db, team_name, project_number)


# create team members
def create_team_members(db, team_id)
  puts "Hey there, now that you've created your project let's create a project team"
  stop = false
  until stop == true do
    puts "Enter participant's full name"
    name_entered = gets.chomp
    puts "Enter participant's full address"
    email_entered = gets.chomp
    db.execute("INSERT INTO persons (full_name, email, team_id) VALUES (?, ?, ?)", [name_entered, email_entered, team_id])
    team_members = db.execute("SELECT full_name, team_name FROM teams JOIN persons WHERE teams.id = #{team_id}")
    puts "Would you like to enter another participant. Please answer yes or no"
    answer = gets.chomp
    if answer == "yes"
      stop = false
    else
      stop = true
    end
  end
  p team_members
end

create_team_members(db, project_number)


