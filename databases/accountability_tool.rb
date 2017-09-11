# OPERATION ACCOUNTABILITY!

# require gems
require "sqlite3"
require "faker"

# create SQlite3 database
db = SQLite3::Database.new("project_planning.db")

# learn about fancy string delimiters
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
    team_name VARCHAR(255) NOT NULL,
    project_id INT NOT NULL,
    person_id INT NOT NULL,
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

# create tables
db.execute(create_project_table)
db.execute(create_persons_table)
db.execute(create_steps_table)
db.execute(create_project_steps_table)
db.execute(create_tasks_table)
db.execute(create_teams_table)
db.execute(create_feedback_table)

# insert data
db.execute('INSERT INTO projects
    (title, start_date, end_date)
    VALUES
    ("Launch Website", "2017-01-01", "2017-06-01"),
    ("May Day Protest", "2017-01-01", "2017-05-01"),
    ("End of Year Retreat", "2016-01-01", "2017-12-16")')

db.execute('INSERT INTO persons
    (full_name, email)
    VALUES
    ("Iris Nevins", "ikn02010@gmail.com"),
    ("Rhonda Felder", "rh@gmail.com"),
    ("Bertisha Jones", "bertisha@gmail.com"),
    ("Jasmen Rogers", "jasmen@gmail.com"),
    ("Bob Bender", "bobbender@gmail.com"),
    ("Patty Bender", "pattybender@gmail.com"),
    ("Lilian Archer", "lilian@gmail.com")')

db.execute('INSERT INTO tasks
    (title, step_1, step_1_status, step_2, step_2_status, step_3, step_3_status, step_4, step_4_status, project_id, assigned_to)
    VALUES
    ("outline_website", "determine key sections", "complete", "research best layout designs", "in progress", "choose color theme", "not started", "submit outline for review", "not started", 1, 7),
    ("social-media campaign", "assemble team", "complete", "determine theme", "in progress", "layout series of posts", "not started", "release posts", "not started", 2, 2),
    ("Book Location", "determine 3-5 options and their prices", "complete", "organize a vote on the final location", "complete", "book reservation", "not started", "confirm reservation", "not started", 3, 3)')

db.execute('INSERT INTO teams
    (name, organizer_1, organizer_2, organizer_3, project_id)
    VALUES
    ("Website team", 1, 7, 5, 1),
    ("protest team", 2, 4, 6, 2),
    ("retreat team", 2, 1, 3, 3)')

db.execute('INSERT INTO feedback
    (timeliness, communication, follow_through, CEC, effort, written_from, given_to, project_id)
    VALUES
    ("Always on-time", "honest and straight-forward communication", "impeccable follow-through", "does not always engage conflict the best way. Sometimes allows emotions to make her angry", "puts best foot forward", "Rhonda", 1, 3),
    ("Usually late", "honest and straight-forward communication", "does not always give a heads up if she cannot follow through on a committment", "engages conflicts well", "medium effort", "Patty", 4, 2),
    ("always on time or lets us know if she will be late", "sometimes shy or hesitant to speak-up", "always follows through", "does not really engage conflict", "incredible effort", "Iris", 7, 1)')

# explore ORM by retrieving database
projects = db.execute("SELECT * FROM projects")
puts projects.class
p projects

# add lots of projects