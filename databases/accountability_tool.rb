# OPERATION ACCOUNTABILITY!

# require gems
require "sqlite3"
require "faker"

# create SQlite3 database
db = SQLite3::Database.new("project_planning.db")

# learn about fancy string delimiters
create_project_table = <<-SQL
  CREATE TABLE projects(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    start_date DATE,
    end_date DATE
    organizers_id INT,
    FOREIGN KEY (organizers_id) REFERENCES organizers(id)
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
    )
SQL

create_organizers_table = <<-SQL
  CREATE TABLE organizers(
    id INTEGER PRIMARY KEY,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id),
    )
SQL

create_persons_table = <<-SQL
  CREATE TABLE persons(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES projects(id)
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
    feedback_id INT,
    FOREIGN KEY (feedback_id) REFERENCES feedback(id)
    )
SQL

create_roles_table = <<-SQL
  CREATE TABLE roles(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    responsibilities VARCHAR(255),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES projects(id)
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id)
    )
SQL

create_tasks_table = <<-SQL
  CREATE TABLE tasks(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    step_1 VARCHAR(255),
    step_1_status VARCHAR(255),
    step_2 VARCHAR(255),
    step_2_status VARCHAR(255),
    step_3 VARCHAR(255),
    step_3_status VARCHAR(255),
    step_4 VARCHAR(255),
    step_4_status VARCHAR(255),
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES projects(id)
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id)
    )
SQL

create_feedback_table = <<-SQL
  CREATE TABLE feedback(
    id INTEGER PRIMARY KEY,
    fr: VARCHAR(255),
    to: VARCHAR(255),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(id)
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES projects(id)
    timeliness VARCHAR(255),
    communication VARCHAR(255),
    follow-through VARCHAR(255),
    CEC VARCHAR(255),
    effort VARCHAR(255),
    )
SQL

# create a project table
db.execute(create_project_table)
db.execute(create_organizers_table)
db.execute(create_persons_table)
db.execute(create_roles_table)
db.execute(create_tasks_table)
db.execute(create_feedback_table)

# add a test project

# explore ORM by retrieving database

# add lots of projects