NEED TO CORRECT

require 'pg'

db_conn = PG.connect(:dbname => 'wdi8', :host => 'localhost')

file = File.new("data.csv", "a+")

file.each do |line|
  student = line.split(",")
  instructor = line.split(",")

  sql  = "INSERT INTO instructors (name, squad_name,)"

  sql  = "INSERT INTO students (name, img_url)"

  db_conn.exec(sql)

end

file.close

db_conn.close
