Negative.destroy_all
Student.destroy_all
Instructor.destroy_all
Photo.destroy_all

Adrian = Instructor.create!(name: "Adrian Maseda", img_url: "", squad_name: "", squad_id: 1, codey_id: 41)
Becky = Instructor.create!(name: "Becky Beauchamp", img_url: "", squad_name: "", squad_id: 2, codey_id: 42)
Jesse = Instructor.create!(name: "Jesse Shawl", img_url: "", squad_name: "Jesse and the Rippers", squad_id: 3, codey_id: 43)
Joe = Instructor.create!(name: "Joe Zaretsky", img_url: "", squad_name: "", squad_id: 4, codey_id: 44)
Matt = Instructor.create!(name: "Matt Scilipoti", img_url: "", squad_name: "", squad_id: 5, codey_id: 45)
Nick = Instructor.create!(name: "Nick Olds", img_url: "", squad_name: "", squad_id: 6, codey_id: 46)
Robin = Instructor.create!(name: "Robin Thomas", img_url: "", squad_name: "", squad_id: 7, codey_id: 47)


t.integer "instructor_id"
t.integer "squad_id"
t.integer "codey_id"
t.string  "q1"
t.string  "q2"
t.string  "q3"
t.string  "q4"
t.string  "fb"
t.string  "linkedin"
t.string  "email"

Adrian2 = Student.create!(name: "Adrian Wyatt", img_url: "http://i.imgur.com/AFP96hil.jpg", github_url:"https://github.com/Wyatt23", portfolio_url:"", project1_url:"", project2_url:"", project3_url:"", project4_url:"", quote:"Everything can be undone, except the thing you didn't do. ", instructor_id: 1, squad_id: 1, codey_id: 1, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "AdrianWyatt@gmail.com ")
Alexa = Student.create!(name: "Alexa Klein", img_url:"", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "",quote: "", instructor_id: 1, squad_id: 1, codey_id: 2, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Andrew = Student.create!(name: "Andrew Smith-Mui", img_url:"", github_url: "", portfolio_url: "", project1_url:  "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 1, squad_id: 1, codey_id: 3, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Anissa = Student.create!(name: "Anissa Jones", img_url: "", github_url: "https://github.com/SuperJones", portfolio_url: "", project1_url: "", project2_url: "https://steps-battle.herokuapp.com/", project3_url: "https://vivalavegan.herokuapp.com/", project4_url: "", quote: "When you want something, all the universe conspires in helping you to achieve it. --Paulo Coehlo", instructor_id: 1, squad_id: 1, codey_id: 4, q1: "Wombat", q2: "My phone - though I still forget my one-on-ones", q3: "I'm not guilty about it but anything zombie related even though they give me nightmares." , q4: "", fb: "", linkedin: "https://www.linkedin.com/in/anissadjones", email: "anissajones10@gmail.com")

Bipin = Student.create!(name: "Bipin Neupane", img_url: "https://scontent-lga3-1.xx.fbcdn.net/hphotos-xla1/v/t1.0-9/12347981_10153799731311052_2603207577644789666_n.jpg?oh=10cfd5dc73cb6c3a0520d667bf43ca69&oe=57C0230B", github_url: "https://github.com/Bneupane", portfolio_url: "http://bneupane.github.io", project1_url: "http://bneupane.github.io/memory-game/", project2_url: "http://projectcheerup.herokuapp.com", project3_url: "http://whereismystuff.herokuapp.com", project4_url: "", quote: "'Nyron is trying to unfuck me.' -- some UXDI girl", instructor_id: 2, squad_id: 2, codey_id: 5, q1: "When I performed "My Relationship with Ruby" poem and the crowd went bananas!", q2: "iPhone, glasses, laptop, friends, happy hour, ", q3: "Looking at solution branch.", q4: "", fb: "https://www.facebook.com/NeuBip", linkedin: "", email: "icomp2@hotmail.com")

Brendan = Student.create!(name: "Brendan Magee", img_url: "", github_url: "https://github.com/brendaneamon", portfolio_url: "http://brendaneamon.github.io/", project1_url: "http://brendaneamon.github.io/project1-flashcards/", project2_url: "https://kleos-app.herokuapp.com/", project3_url: "http://zoosnapz.herokuapp.com/", project4_url: "", quote: "'forsan et haec olim meminisse iuvabit.'" (Maybe someday you'll rejoice to remember even this.") —P. Vergilius Maro (The Aeneid, Book I, line 203)", instructor_id: 1, squad_id: 1, codey_id: 6, q1: "Bipin's GA happy hour poetry slam performance", q2: "The complete oeuvre of the band Rush", q3: "Cookie Clicker, obvi", q4: "", fb: "https://www.facebook.com/Brendan.Eamon", linkedin: "https://www.linkedin.com/in/brendaneamonmagee", email: "bmagee@gmail.com")

Brittany = Student.create!(name: "Brittany Branson", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 2 , squad_id: 2, codey_id: 7, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Caitlin = Student.create!(name: "Caitlin Daitch", img_url:  "https://scontent-lga3-1.xx.fbcdn.net/hphotos-xlp1/v/t1.0-9/12718087_1194207560621759_5398938579378409241_n.jpg?oh=593f5a4f31ef57d8a8ff5a8c3f8dfeca&oe=57BE42ED",github_url:  "https://github.com/caitlindaitch", portfolio_url: "www.caitlindaitch.com", project1_url: "http://caitlindaitch.github.io/ConcentrationGame/", project2_url: "https://bar-in-mind.herokuapp.com/", project3_url: "", project4_url: "", quote: "", instructor_id: 2, squad_id: 2, codey_id: 8, q1: "", q2: "", q3: "", q4: "", fb: "https://www.facebook.com/caitlin.dejcz", linkedin: "https://www.linkedin.com/in/caitlindaitch", email: "caitlin.daitch@gmail.com")
Cam = Student.create!(name: "Cam Latimer", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote:"" , instructor_id: 2, squad_id: 2, codey_id: 9, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Casey = Student.create!(name: "Casey Gil", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 2, squad_id: 2, codey_id: 10, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Charles = Student.create!(name: "Charles Hwang", img_url:  "http://i.imgur.com/htWHGUV.jpg", github_url:  "https://github.com/charlesthwang", portfolio_url: "charlesthwang.github.io", project1_url: "", project2_url: "https://climbr-beta.herokuapp.com/", project3_url: "http://zoosnapz.herokuapp.com", project4_url: "", quote: "With hard work and determination, you can even!", instructor_id: 2, squad_id: 2, codey_id: 11, q1: "Open Mic Night", q2: "Glasses/Contacts", q3: "Late-night talk shows", q4: "", fb: "http://facebook.com/charlesthwang", linkedin: "https://www.linkedin.com/in/charlesthwang", email: "charlesthwang@gmail.com")
Christine = Student.create!(name: "Christine Movius", img_url: "", github_url: "https://github.com/cmmovius", portfolio_url: "http://www.christinemovius.com/",  project1_url: "https://dndr.herokuapp.com/", project2_url: "http://zoosnapz.herokuapp.com/", project3_url: "", project4_url: "", quote: "'Only those who risk going too far can possibly find out how far one can go.' -T.S. Eliot", instructor_id: 2, squad_id: 2, codey_id: 12, q1: "The moments when I witness a fellow classmate celebrating after finally getting their code to work after struggling through a really hard problem.", q2: "Chapstick. I can't go anywhere without it!", q3: "Watching streams of the video game, Hearthstone. But I'm not guilty about it!", q4: "", fb: "https://www.facebook.com/christine.marian13", linkedin: "https://www.linkedin.com/in/christinemovius", email: "christine.movius@gmail.com")
Clarissa = Student.create!(name:"Clarissa Stark", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 3, squad_id: 3, codey_id: 13, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Craig = Student.create!(name:"Craig Eisen", img_url: "", github_url: "https://github.com/Ceisen9", portfolio_url: "", project1_url: "", project2_url: "https://craig-eisen-bestbet-rails.herokuapp.com/", project3_url: "http://johnblakeman.com:7777/#/", project4_url: "", quote: "A wizard is never late, nor is he early, he arrives precisely when he means to. -Lord of the Rings: The Return of the King", instructor_id: 3, squad_id: 3, codey_id: 14, q1: "I do not have a specific memory, but will always remember the enthusiasm shared by the teachers, students, and admins at GA", q2: "Good food and coffee", q3: "Binge watching online tv in lieu of sleeping", q4: "", fb: "https://www.facebook.com/craig.eisen", linkedin: "https://www.linkedin.com/in/craigeisen", email: "ceisen91@gmail.com")
Farishta = Student.create!(name:"Farishta Haider", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 3, squad_id: 3, codey_id: 15, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Hilary = Student.create!(name:"Hilary Masland", img_url: "", github_url: "https://github.com/hilarymasland", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: ""Everything you can imagine is real" - Picasso", instructor_id: 3, squad_id: 3, codey_id: 16, q1: "When Mohammed defined 'sharding' ---still laughing.", q2: "", q3: "pretzels, goldfish, family guy, bloody mary's", q4: "", fb: "https://www.facebook.com/grizzly.masland", linkedin: "https://www.linkedin.com/in/maslandhilary", email: "hilarymasland@gmail.com")
Isaac = Student.create!(name:"Isaac Hayes", img_url: "", github_url: "https://github.com/crunchwrap78 ", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: ""it is better to be pissed off than be pissed on" or "life may not be the party we'd hope for, but while we're here, we might as well dance"", instructor_id: 3, squad_id: 3, codey_id: 17, q1: "Learning how to make rails apps", q2: "Glasses", q3: ".......?", q4: "", fb: "", linkedin: "", email: "")
Fatai = Student.create!(name:"Fatai Agiri", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: 3 squad_id: 3, codey_id: 18, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Jeffrey = Student.create!(name:"Jeffrey Eaton", img_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAaoAAAAJGRjNjIwMmViLTExYWQtNDViOC1iNjg2LTQ4NzBhYTBlNTZmNg.jpg", github_url: "https://github.com/jeffreyeaton76", portfolio_url: "http://jeffreyeaton76.github.io/", project1_url: "https://jeffreyeaton76-lifelist.herokuapp.com/", project2_url: "https://jeffreyeaton76-ihavetogo.herokuapp.com/", project3_url: "http://cryptly.herokuapp.com/", project4_url: "", quote: "Everyone in this cohort is so odd; it really makes me feel like I belong. Thanks everyone for being awesome!", instructor_id: 4, squad_id: 4, codey_id: 19, q1: ""Surprise! This lab is a group project with no prompt!" Despite that heartbreaking announcement it turned out to be one of my favorite projects.", q2: "coffee", q3: "Web comics: xkcd, Dr. McNinja, achewood, GirlGenius", q4: "", fb: "https://www.facebook.com/profile.php?id=100010912957903", linkedin: "https://www.linkedin.com/in/jeffreyeaton76", email: "jeffreyeaton.dc@gmail.com")
John = Student.create!(name:"John Blakeman", img_url: "", github_url: "https://www.github.com/jblakeman", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: 4, squad_id: 4, codey_id: 20, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Kiara = Student.create!(name:"Kaira Johnson", img_url: "", github_url: "https://github.com/kairajohnson", portfolio_url: "IAMNichol.com", project1_url: "https://github.com/kairajohnson/project1", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: 4, squad_id: 4, codey_id: 21, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Keith = Student.create!(name:"Keith Prifte", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: 4, squad_id: 4, codey_id: 22, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Kimberly = Student.create!(name:"Kimberly Cabbagestock", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "", project4_url: "", quote: "", instructor_id: 5, squad_id: 5, codey_id: 23, q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Lyndsey = Student.create!(name:"Lyndsey Newsome", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
MattS = Student.create!(name:"Matt Stevens", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Matthew = Student.create!(name:"Matthew Kerns", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Maureen = Student.create!(name:"Maureen Vogel", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Maximillian = Student.create!(name:"Maximillian Kaye", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Melissa = Student.create!(name:"Melissa Miller", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Mohamed = Student.create!(name:"Mohamed Chalal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Nyron = Student.create!(name:"Nyron Waite", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Patrick = Student.create!(name:"Patrick Moran", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Robel = Student.create!(name:"Robel Tekeste", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Ryan = Student.create!(name:"Ryan Krolick", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Sanjaya = Student.create!(name:"Sanjaya Satyal", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Sarah = Student.create!(name:"Sarah Ivey", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Toni = Student.create!(name:"Toni Langley", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Vi = Student.create!(name:"Vijender Bajwa", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Winisha = Student.create!(name:"Winisha Smith", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")
Woo = Student.create!(name:"Woo Yun", img_url: "", github_url: "", portfolio_url: "", project1_url: "", project2_url: "", project3_url: "",project4_url: "", quote: "", instructor_id: , squad_id: , codey_id: , q1: "", q2: "", q3: "", q4: "", fb: "", linkedin: "", email: "")

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



first_photo = Photo.create(url:"http://cache-blog.credit.com/wp-content/uploads/2013/04/student-loans-ts-1360x860.jpg")
Photo.create(url:"https://www.sdcity.edu/Portals/0/CollegeServices/StudentSupportResources/Counseling/new_students.jpg")

Jesse.photos << first_photo
