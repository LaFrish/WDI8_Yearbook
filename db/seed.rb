# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"
require 'csv'

require_relative "../models/student"
require_relative "../models/instructor"
require_relative "../models/codey"

require_relative "../db/connection.rb"

Student.destroy_all
Instructor.destroy_all
Codey.destroy_all

Adrian = Instructor.create(instructor_id: "1", name: "Adrian Maseda", img_url: "", squad_name:"", squad_id:"1")
Becky = Instructor.create(instructor_id: "2" ,name: "Becky Beauchamp", img_url: "", squad_name: "", squad_id:"2")
Jesse = Instructor.create(instructor_id: "3",name: "Jesse Shawl", img_url: "", squad_name: "Jesse and the Rippers", squad_id: "3")
Joe = Instructor.create(instructor_id: "4",name: "Joe Zaretsky", img_url: "", squad_name: "", squad_id:"4")
Matt = Instructor.create(instructor_id: "5",name: "Matt Scilipoti", img_url: "", squad_name: "", squad_id:"5")
Nick = Instructor.create(instructor_id: "6",name: "Nick Olds", img_url: "", squad_name: "", squad_id:"6")
Robin = Instructor.create(instructor_id: "7",name: "Robin Thomas", img_url: "", squad_name: "", squad_id:"7")


Student.create(student_id: "1", name: "Adrian Wyatt", img_url: "", github_url:"", portfolio_url:"", project1_url:"", project2_url:"", project3_url:"", project4_url:"", quote:"", instructor_id: "1", squad_id:"1")
Student.create(student_id: "2", name: "Alexa Klein", img_url:"", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "",quote: "", instructor_id: "1", squad_id: "1")
Student.create(student_id: "3", name: "Andrew Smith-Mui", img_url:"", github_url: "", portfolio_url: "", project1_url:  "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id:  "1", squad_id: "1")
Student.create(student_id: "4", name: "Anissa Jones", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id:  "1", squad_id: "1")
Student.create(student_id: "5", name: "Bipin Neupane", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id:  "1", squad_id: "1")
Student.create(student_id: "6", name: "Brendan Magee", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id:  "1", squad_id: "1")
Student.create(student_id: "7", name: "Brittany Branson", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "2", squad_id: "2")
Student.create(student_id: "8", name: "Caitlin Daitch", img_url:  "",github_url:  "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "2", squad_id: "2")
Student.create(student_id: "9",  name: "Cam Latimer", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote:"" , instructor_id: "2", squad_id:  "2")
Student.create(student_id: "10", name: "Casey Gil", img_url:  "",github_url:  "" portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: ,"2", squad_id: "2")
Student.create(student_id: "11", name: "Charles Hwang", img_url:  "",github_url:  "" portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: ,"2", squad_id: "2")
Student.create(student_id: "12", name: "Christine Movius", img_url: "", github_url: "",portfolio_url: "",  project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "2", squad_id: "2")
Student.create(student_id: "13", name:"Clarissa Stark", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "14", name:"Craig Eisen", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "15", name:"Farishta Haider", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "16", name:"Hilary Masland", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "17", name:"Isaac Hayes", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "18", name:"Fatai Agiri", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "3", squad_id: "3")
Student.create(student_id: "19", name:"Jeffrey Eaton", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "4", squad_id: "4")
Student.create(student_id: "20", name:"John Blakeman", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "4", squad_id: "4")
Student.create(student_id: "21", name:"Kaira Johnson", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "4", squad_id: "4")
Student.create(student_id: "22", name:"Keith Prifte", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "4", squad_id: "4")
Student.create(student_id: "23", name:"Kimberly Cabbagestock", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url:  ""project4_url: "", quote: "", instructor_id: "5", squad_id: "5")
Student.create(student_id: "24", name:"Lyndsey Newsome", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: " ", squad_id: "5")
Student.create(student_id: "25", name:"Matt Stevens", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "5", squad_id: "5")
Student.create(student_id: "26", name:"Matthew Kerns", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "5", squad_id: "5")
Student.create(student_id: "27", name:"Maureen Vogel", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "5", squad_id: "5")
Student.create(student_id: "28", name:"Maximillian Kaye", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "5", squad_id: "5")
Student.create(student_id: "29", name:"Melissa Miller", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "30", name:"Mohamed Chalal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "31", name:"Nyron Waite", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "32", name:"Patrick Moran", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "33", name:"Robel Tekeste", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "34", name:"Ryan Krolick", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "6", squad_id: "6")
Student.create(student_id: "35", name:"Sanjaya Satyal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")
Student.create(student_id: "36", name:"Sarah Ivey", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")
Student.create(student_id: "37", name:"Toni Langley", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")
Student.create(student_id: "38", name:"Vijender Bajwa", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")
Student.create(student_id: "39", name:"Winisha Smith", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")
Student.create(student_id: "40", name:"Woo Yun", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: "7", squad_id: "7")



Codey.create(codey_id: "1", name: "Adrian Wyatt", award: "", student_id: "1")
Codey.create(codey_id: "2", name: "Alexa Klein", award: "", student_id: "2")
Codey.create(codey_id: "3", name: "Andrew Smith-Mui", award: "", student_id: "3")
Codey.create(codey_id: "4", name: "Anissa Jones", award: "", student_id: "4")
Codey.create(codey_id: "5", name: "Bipin Neupane", award: "", student_id: "5")
Codey.create(codey_id: "6", name: "Brendan Magee", award: "", student_id: "6")
Codey.create(codey_id: "7", name: "Brittany Branson", award: "", student_id: "7")
Codey.create(codey_id: "8", name: "Caitlin Daitch", award: "", student_id: "8")
Codey.create(codey_id: "9", name: "Cam Latimer", award: "", student_id: "9")
Codey.create(codey_id: "10", name: "Casey Gil", award:  "", student_id: "10")
Codey.create(codey_id: "11", name: "Charles Hwang", award:  "", student_id: "11")
Codey.create(codey_id: "12", name: "Christine Movius", award:  "", student_id: "12")
Codey.create(codey_id: "13", name: "Clarissa Stark", award:  "", student_id: "13")
Codey.create(codey_id: "14", name: "Craig Eisen", award:  "", student_id: "14")
Codey.create(codey_id: "15", name: "Farishta Haider", award:  "", student_id: "15")
Codey.create(codey_id: "16", name: "Hilary Masland", award:  "", student_id: "16")
Codey.create(codey_id: "17", name: "Isaac Hayes", award:  "", student_id: "17")
Codey.create(codey_id: "18", name: "Fatai Agiri", award:  "", student_id: "18")
Codey.create(codey_id: "19", name: "Jeffrey Eaton", award:  "", student_id: "19")
Codey.create(codey_id: "20", name: "John Blakeman", award:  "", student_id: "20")
Codey.create(codey_id: "21", name: "Kaira Johnson", award:  "", student_id: "21")
Codey.create(codey_id: "22", name: "Keith Prifte", award:  "", student_id: "22")
Codey.create(codey_id: "23", name: "Kimberly Cabbagestock", award:  "", student_id: "23")
Codey.create(codey_id: "24", name: "Lyndsey Newsome", award:  "", student_id: "24")
Codey.create(codey_id: "25", name: "Matt Stevens", award:  "", student_id: "25")
Codey.create(codey_id: "26", name: "Matthew Kerns", award:  "", student_id: "26")
Codey.create(codey_id: "27", name: "Maureen Vogel", award:  "", student_id: "27")
Codey.create(codey_id: "28", name: "Maximillian Kaye", award:  "", student_id: "28")
Codey.create(codey_id: "29", name: "Melissa Miller", award:  "", student_id: "29")
Codey.create(codey_id: "30", name: "Mohamed Chalal", award:  "", student_id: "30")
Codey.create(codey_id: "31", name: "Nyron Waite", award:  "", student_id: "31")
Codey.create(codey_id: "32", name: "Patrick Moran", award:  "", student_id: "32")
Codey.create(codey_id: "33", name: "Robel Tekeste", award:  "", student_id: "33")
Codey.create(codey_id: "34", name: "Ryan Krolick", award:  "", student_id: "34")
Codey.create(codey_id: "35", name: "Sanjaya Satyal", award:  "", student_id: "35")
Codey.create(codey_id: "36", name: "Sarah Ivey", award:  "", student_id: "36")
Codey.create(codey_id: "37", name: "Toni Langley", award:  "", student_id: "37")
Codey.create(codey_id: "38", name: "Vijender Bajwa", award:  "", student_id: "38")
Codey.create(codey_id: "39", name: "Winisha Smith", award:  "", student_id: "39")
Codey.create(codey_id: "40", name: "Woo Yun", award:  "", student_id: "40")
