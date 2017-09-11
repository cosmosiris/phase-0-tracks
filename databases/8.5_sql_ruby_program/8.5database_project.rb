# require gems
require "sqlite3"
require "faker"

# create SQlite3 database
db = SQLite3::Database.new("project_database.db")

#create tables
create_project_table = <<-SQL
  CREATE TABLE IF NOT EXISTS projects(
    id INTEGER AUTO INCREMENT PRIMARY KEY,
    project_title VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
  )
SQL

create_persons_table = <<-SQL
  CREATE TABLE IF NOT EXISTS persons(
    id INTEGER AUTO INCREMENT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255)
  )
SQL

create_steps_table = <<-SQL
  CREATE TABLE IF NOT EXISTS steps(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    description TEXT NOT NULL,
    status VARCHAR(255) NOT NULL,
  )
SQL

create_project_steps_table = <<-SQL
  CREATE TABLE IF NOT EXISTS project_steps(
    project_id INT NOT NULL,
    task_id INT NOT NULL,
    step_id INT NOT NULL
    FOREIGN KEY(project_id) REFERENCES projects(id),
    FOREIGN KEY(task_id) REFERENCES tasks(id),
    FOREIGN KEY(step_id) REFERENCES steps(id),
    PRIMARY KEY (project_id, task_id)
  )
SQL

create_tasks_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER AUTO INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    project_steps INT,
    project_id INT,
    assigned_to INT,
    FOREIGN KEY (step_id) REFERENCES steps(id),
    FOREIGN KEY (project_id) REFERENCES projects(id),
    FOREIGN KEY (assigned_to) REFERENCES persons(id)
  )
SQL
create_teams_table = <<-SQL
  CREATE TABLE IF NOT EXISTS teams(
    project_id INT NOT NULL,
    person_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    FOREIGN KEY(project_id) REFERENCES projects(id),
    FOREIGN KEY(person_id) REFERENCES persons(id),
    PRIMARY KEY(project_id, person_id)
  )
SQL

create_feedback_table = <<-SQL
  CREATE TABLE IF NOT EXISTS feedback(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
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
  projects = db.execute("SELECT * FROM projects")
  projects.each do |project|
    puts "Your project #{project_title} starts on #{start_date} and ends on #{end_date}."
  end
  puts projects
end

create_project(db, project_title, opening, closing)

#create project team
puts "Hey there, now that you've created your project let's create a project team"
puts "What is the full name of the first participant?"
name_1 = gets.chomp
puts "What is the email address of the first participant?"
email_1 = gets.chomp
puts "What is the full name of the second participant?"
name_2 = gets.chomp
puts "What is the email address of the second participant?"
email_2 = gets.chomp
puts "What is the full name of the third participant?"
name_3 = gets.chomp
puts "What is the email address of the third participant?"
email_3 = gets.chomp

def create_persons(db, full_name, email)
  db.execute("INSERT INTO persons (full_name, email) VALUES (?, ?)", [full_name, email])
  persons = db.execute("SELECT * FROM persons")
  persons.each do |persons|
    puts "Participant #{full_name} has the following email #{email}."
  end
end

create_persons(db, name_1, email_1)
create_persons(db, name_2, email_2)
create_persons(db, name_3, email_3)

def create_teams(db, team_name, project_title, person_id)
  puts "how many people are on this team?"
  team_count = gets.chomp
  puts "team name?"
  team_name = gets.chomp
  db.execute("INSERT INTO teams (team_name, project_id, person_id (?, ?, ?)", [team_name, project_id, person_id)
  team = db.execute("SELECT team_name, project_title, full_name FROM teams JOIN persons ON persons.id=teams.person_id JOIN projects ON projects.id=teams.project_id")
  team_count.times do |i|
    create_teams(db, team_name, project_title, full_name)
  end
end



team_count.times do
  puts "team name?"
  team_name = gets.chomp
  create_teams(db, team_name, project_title, full_name)
end


