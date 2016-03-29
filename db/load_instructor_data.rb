NEED TO CORRECT

require 'pg'

db_conn = PG.connect(:dbname => 'wdi8', :host => 'localhost')

file = File.new("data.csv", "a+")

file.each do |line|
  student = line.split(",")
  instructor = line.split(",")
  instructor = line.split(",")
  sql  = "INSERT INTO instructors (id,name,squad_name)"

  sql  = "INSERT INTO students (id,name,img_url,instructor_id,squad_id,github_url,portfolio_url,project1_url,project2_url,project3_url,project4_url,quote)"

  sql  = "INSERT INTO codeys (id,name,award,student_id)"

  db_conn.exec(sql)

end

file.close

db_conn.close
