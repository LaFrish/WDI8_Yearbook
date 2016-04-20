# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
# students_data = JSON.parse(File.read("db/students.json"))
# instructors_data = JSON.parse(File.read("db/instructors.json"))
#
# ActiveRecord::Base.connection.disable_referential_integrity do
#   Student.destroy_all
#   Instructor.destroy_all
#   Student.create!(students_data)
#   Instructor.create!(instructors_data)
# end

Student.destroy_all
Instructor.destroy_all

# students_json = File.read("db/students_data.json")
# instructors_json = File.read("db/instructors_data.json")
#
# students_data= JSON.parse(students_json)
# instructors_data=JSON.parse(instructors_json)
#
# Student.create!(students_data)
# Instructor.create!(instructors_data)
#



Adrian = Instructor.create!(name: "Adrian Maseda", img_url: "")
Becky = Instructor.create!(name: "Becky Beauchamp", img_url: "", squad_name: "")
Jesse = Instructor.create!(name: "Jesse Shawl", img_url: "", squad_name: "Jesse and the Rippers")
Joe = Instructor.create!(name: "Joe Zaretsky", img_url: "", squad_name: "")
Matt = Instructor.create!(name: "Matt Scilipoti", img_url: "", squad_name: "")
Nick = Instructor.create!(name: "Nick Olds", img_url: "", squad_name: "")
Robin = Instructor.create!(name: "Robin Thomas", img_url: "", squad_name: "")


Adrian2 = Student.create!(name: "Adrian Wyatt", img_url: "", github_url:"", portfolio_url:"", project1_url:"", project2_url:"", project3_url:"", project4_url:"", quote:"", instructor_id: "", squad_id:"", codey_id: "")
Alexa = Student.create!(name: "Alexa Klein", img_url:"", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "",quote: "", instructor_id: "", squad_id: "", codey_id: "")
Andrew = Student.create!(name: "Andrew Smith-Mui", img_url:"", github_url: "", portfolio_url: "", project1_url:  "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Anissa = Student.create!(name: "Anissa Jones", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Bipin = Student.create!(name: "Brendan Magee", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Brittany = Student.create!(name: "Brittany Branson", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Caitlin = Student.create!(name: "Caitlin Daitch", img_url:  "",github_url:  "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Cam = Student.create!(name: "Cam Latimer", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote:"" , instructor_id: "", squad_id:  "", codey_id: "")
Casey = Student.create!(name: "Casey Gil", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Charles = Student.create!(name: "Charles Hwang", img_url:  "", github_url:  "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Christine = Student.create!(name: "Christine Movius", img_url: "", github_url: "", portfolio_url: "",  project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Clarissa = Student.create!(name:"Clarissa Stark", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Craig = Student.create!(name:"Craig Eisen", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Farishta = Student.create!(name:"Farishta Haider", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Hilary = Student.create!(name:"Hilary Masland", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Isaac = Student.create!(name:"Isaac Hayes", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Fatai = Student.create!(name:"Fatai Agiri", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Jeffrey = Student.create!(name:"Jeffrey Eaton", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
John = Student.create!(name:"John Blakeman", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Kiara = Student.create!(name:"Kaira Johnson", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Keith = Student.create!(name:"Keith Prifte", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Kimberly = Student.create!(name:"Kimberly Cabbagestock", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Lyndsey = Student.create!(name:"Lyndsey Newsome", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
MattS = Student.create!(name:"Matt Stevens", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Matthew = Student.create!(name:"Matthew Kerns", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Maureen = Student.create!(name:"Maureen Vogel", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Maximillian = Student.create!(name:"Maximillian Kaye", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Melissa = Student.create!(name:"Melissa Miller", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Mohamed = Student.create!(name:"Mohamed Chalal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Nyron = Student.create!(name:"Nyron Waite", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Patrick = Student.create!(name:"Patrick Moran", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Robel = Student.create!(name:"Robel Tekeste", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Ryan = Student.create!(name:"Ryan Krolick", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Sanjaya = Student.create!(name:"Sanjaya Satyal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Sarah = Student.create!(name:"Sarah Ivey", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Toni = Student.create!(name:"Toni Langley", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Vi = Student.create!(name:"Vijender Bajwa", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Winisha = Student.create!(name:"Winisha Smith", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")
Woo = Student.create!(name:"Woo Yun", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "", squad_id: "", codey_id: "")

Codey1 = Codey.create!(name: "Adrian Wyatt", award: "", student_id: "")
Codey2 = Codey.create!(name: "Alexa Klein", award: "", student_id: "")
Codey3 = Codey.create!(name: "Andrew Smith-Mui", award: "", student_id: "")
Codey4 = Codey.create!(name: "Anissa Jones", award: "", student_id: "")
Codey5 = Codey.create!(name: "Bipin Neupane", award: "", student_id: "")
Codey6 = Codey.create!(name: "Brendan Magee", award: "", student_id: "")
Codey7 = Codey.create!(name: "Brittany Branson", award: "", student_id: "")
Codey8 = Codey.create!(name: "Caitlin Daitch", award: "", student_id: "")
Codey9 = Codey.create!(name: "Cam Latimer", award: "", student_id: "")
Codey10 = Codey.create!(name: "Casey Gil", award:  "", student_id: "")
Codey11 = Codey.create!(name: "Charles Hwang", award:  "", student_id: "")
Codey12 = Codey.create!(name: "Christine Movius", award:  "", student_id: "")
Codey13 = Codey.create!(name: "Clarissa Stark", award:  "", student_id: "")
Codey14 = Codey.create!(name: "Craig Eisen", award:  "", student_id: "")
Codey15 = Codey.create!(name: "Farishta Haider", award:  "", student_id: "")
Codey16 = Codey.create!(name: "Hilary Masland", award:  "", student_id: "")
Codey17 = Codey.create!(name: "Isaac Hayes", award:  "", student_id: "")
Codey18 = Codey.create!(name: "Fatai Agiri", award:  "", student_id: "")
Codey19 = Codey.create!(name: "Jeffrey Eaton", award:  "", student_id: "")
Codey20 = Codey.create!(name: "John Blakeman", award:  "", student_id: "")
Codey21 = Codey.create!(name: "Kaira Johnson", award:  "", student_id: "")
Codey22 = Codey.create!(name: "Keith Prifte", award:  "", student_id: "")
Codey23 = Codey.create!(name: "Kimberly Cabbagestock", award:  "", student_id: "")
Codey24 = Codey.create!(name: "Lyndsey Newsome", award:  "", student_id: "")
Codey25 = Codey.create!(name: "Matt Stevens", award:  "", student_id: "")
Codey26 = Codey.create!(name: "Matthew Kerns", award:  "", student_id: "")
Codey27 = Codey.create!(name: "Maureen Vogel", award:  "", student_id: "")
Codey28 = Codey.create!(name: "Maximillian Kaye", award:  "", student_id: "")
Codey29 = Codey.create!(name: "Melissa Miller", award:  "", student_id: "")
Codey30 = Codey.create!(name: "Mohamed Chalal", award:  "", student_id: "")
Codey31 = Codey.create!(name: "Nyron Waite", award:  "", student_id: "")
Codey32 = Codey.create!(name: "Patrick Moran", award:  "", student_id: "")
Codey33 = Codey.create!(name: "Robel Tekeste", award:  "", student_id: "")
Codey34 = Codey.create!(name: "Ryan Krolick", award:  "", student_id: "")
Codey35 = Codey.create!(name: "Sanjaya Satyal", award:  "", student_id: "")
Codey36 = Codey.create!(name: "Sarah Ivey", award:  "", student_id: "")
Codey37 = Codey.create!(name: "Toni Langley", award:  "", student_id: "")
Codey38 = Codey.create!(name: "Vijender Bajwa", award:  "", student_id: "")
Codey39 = Codey.create!(name: "Winisha Smith", award:  "", student_id: "")
Codey40 = Codey.create!(name: "Woo Yun", award:  "", student_id: "")
