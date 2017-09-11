# OPERATION ACCOUNTABILITY!
# require gems
require 'sqlite3'
require 'faker'

# create SQlite3 database
db = SQLite3::Database.new("project_planning.db")

db.execute('DROP TABLE projects')
db.execute('DROP TABLE persons')
db.execute('DROP TABLE steps')
db.execute('DROP TABLE project_steps')
db.execute('DROP TABLE tasks')
db.execute('DROP TABLE teams')
db.execute('DROP TABLE feedback')

# learn about fancy string delimiters
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

# create tables
db.execute(create_project_table)
db.execute(create_persons_table)
db.execute(create_steps_table)
db.execute(create_project_steps_table)
db.execute(create_tasks_table)
db.execute(create_teams_table)
db.execute(create_feedback_table)

# # insert data
db.execute('INSERT INTO projects
    (project_title, start_date, end_date)
    VALUES
    ("Launch Website", "2017-01-01", "2017-06-01"),
    ("May Day Protest", "2017-01-01", "2017-05-01"),
    ("End of Year Retreat", "2016-01-01", "2017-12-16")')

db.execute('INSERT INTO persons
    (full_name, email, team_id)
    VALUES
    ("Iris Nevins", "ikn02010@gmail.com", 1),
    ("Rhonda Felder", "rh@gmail.com", 1),
    ("Bertisha Jones", "bertisha@gmail.com", 2),
    ("Jasmen Rogers", "jasmen@gmail.com", 2),
    ("Bob Bender", "bobbender@gmail.com", 3),
    ("Patty Bender", "pattybender@gmail.com", 3),
    ("Lilian Archer", "lilian@gmail.com", 3)')

db.execute('INSERT INTO steps
    (description, status)
    VALUES
    ("determine key website sections", "complete"),
    ("research best website layout designs", "in progress"),
    ("choose website color theme", "not started"),
    ("submit website outline for review", "not started"),
    ("assemble social media team", "complete"),
    ("determine social media theme", "in progress"),
    ("layout series of social media posts", "not started"),
    ("release social media posts", "not started"),
    ("determine 3-5 venue options and their prices", "complete"),
    ("organize a vote on the final venue", "complete"),
    ("book venue reservation", "not started"),
    ("confirm venue reservation", "not started")')

db.execute('INSERT INTO teams
    (id, team_name)
    VALUES
    (1, "Website team"),
    (2, "Protest team"),
    (3, "Retreat team")')

db.execute('INSERT INTO feedback
    (timeliness, communication, follow_through, CEC, effort, written_from, given_to, project_id)
    VALUES
    ("Always on-time", "honest and straight-forward communication", "impeccable follow-through", "does not always engage conflict the best way. Sometimes allows emotions to make her angry", "puts best foot forward", "Iris", 2, 1),
    ("Usually late", "honest and straight-forward communication", "does not always give a heads up if she cannot follow through on a committment", "engages conflicts well", "medium effort", "Bertisha", 4, 2),
    ("always on time or lets us know if she will be late", "sometimes shy or hesitant to speak-up", "always follows through", "does not really engage conflict", "incredible effort", "Bob", 6, 3)')


# explore ORM by retrieving database
# projects = db.execute("SELECT * FROM projects")
# puts projects.class
# p projects

# persons = db.execute("SELECT * FROM persons")
# p persons

# steps = db.execute("SELECT * FROM steps")
# p steps

# feedback = db.execute("SELECT * FROM feedback")
# p feedback

# teams = db.execute("SELECT * FROM teams")
# p teams

# team_members = db.execute("SELECT persons.full_name, teams.team_name FROM persons JOIN teams ON persons.team_id=teams.id")
# p team_members

# # # add lots of projects