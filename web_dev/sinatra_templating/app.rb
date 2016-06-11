# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db2 = SQLite3::Database.new("teachers.db")
db2.results_as_hash = true
# show students on the home page
get '/' do
	@teachers = db2.execute("SELECT * FROM teachers")
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/teachers' do
end

get '/teachers/new' do
	erb :new_teacher
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources