NEED TO CORRECT

require 'pg'

db_conn = PG.connect(:dbname => 'wdi8', :host => 'localhost')

file = File.new("wdi8_students.csv", "a+")

file.each do |line|
  student = line.split(",")

  student = line.split(",")
  id = student[0]
  name = student[1].gsub("'","")
  img_url = student[2]
  instructor_id = student[3]
  squad_id = student[4]
  github_url = student[5]
  portfolio_url = student[6]
  project1_url = student[7]
  project2_url = student[8]
  project3_url = student[9]
  project4_url = student[10]
  quote = student[11]


  sql  = "INSERT INTO  (id, name, img_url, instructor_id, squad_id, github_url, portfolio_url, project1_url, project2_url, project3_url, project4_url, quote)"

  sql += "VALUES  ('#{id}', '#{name}', '#{img_url}', '#{instructor_id}', '#{squad_id}', '#{github_url}', '#{portfolio_url}', '#{project1_url}', '#{project2_url}', '#{project3_url}', '#{project4_url}', '#{quote}');"

  db_conn.exec(sql)

end

file.close

db_conn.close
