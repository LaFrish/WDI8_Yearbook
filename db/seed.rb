# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
require 'csv'
require 'pg'

db_conn = PG.connect(:dbname => 'wdi8', :host => 'localhost')

Student.destroy_all
Instructor.destroy_all
Codey.destroy_all

student_data = File.read('db/student_data.csv')
csv = CSV.parse(student_data, :headers => true)
csv.each do |row|
  Student.create!(row.to_hash)
# end
# #
# # instructor_data = csv_text = File.read('db/instructor_data.csv')
# # csv = CSV.parse(csv_text, :headers => true)
# # csv.each do |row|
# # file = File.new("instructor_data.rb", "a+")
# #   Instructor.create!(row.to_hash)
# #
# #     db_conn.exec(psql)
# # end
# #
# # codey_data = csv_text = File.read('db/codey_data.csv')
# # csv = CSV.parse(csv_text, :headers => true)
# # csv.each do |row|
# #   file = File.new("codey_data.rb", "a+")
# #   Codey.create!(row.to_hash)
# #
# #     db_conn.exec(psql)
# # end
# #
# # file.close
# #
# # db_conn.close
#
# # Student.create!(data)
# #
# #
# # Instructor.create!(data)
# #
# #
# # Codey.create!(data)
#
#
# # require_relative './student_data.rb'
# # require_relative './instructor_data.rb'
# # require_relative './codey_data.rb'
# # Student.destroy_all
# # Instructor.destroy_all
# # Codey.destroy_all
# #
# # student_data = get_student_data()
# # instructor_data = get_instructor_data()
# # codey_data = get_instructor_data()
