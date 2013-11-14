namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    # Invoke rake db:migrate just in case...
    Rake::Task['db:migrate'].invoke

    # Need two gems to make this work: faker & populator
    # Docs at: http://populator.rubyforge.org/
    require 'populator'
    # Docs at: http://faker.rubyforge.org/rdoc/
    require 'faker'

    # Step 0: clear any old data in the db
    [Sharer, Upvote, Subscription, Workshop, User].each(&:delete_all)

	
  	#Step 1: Add users

    ti = User.new
    ti.active = true
    ti.email = "tahsin@gmail.com"
    ti.password = "smartpaths"
    ti.first_name = "Tahsin"
    ti.last_name = "Islam"
    ti.save!


    et = User.new
    et.active = true
    et.email = "emily@gmail.com"
    et.password = "smartpaths"
    et.first_name = "Emily"
    et.last_name = "Tsai"
    et.save!

    js = User.new
    js.active = true
    js.email = "juhee@gmail.com"
    js.password = "smartpaths"
    js.first_name = "Juhee"
    js.last_name = "Song"
    js.save!


    mt = User.new
    mt.active = true
    mt.email = "marco@gmail.com"
    mt.password = "smartpaths"
    mt.first_name = "Marco"
    mt.last_name = "Talabacu"
    mt.save!


    et = User.new
    et.active = true
    et.email = "emily@gmail.com"
    et.password = "smartpaths"
    et.first_name = "Emily"
    et.last_name = "Tsai"
    et.save!
  
  
    #Step 2: Make some Programs

    hci = program.new
    hci.institution_id = 
    hci.name = "Human Computer Interaction"
    hci.graduating_salary = 95000
    hci.save!
    
    ba = program.new
    ba.institution_id = 
    ba.name = "Business Administration"
    ba.graduating_salary = 80000
    ba.save!
    
    chem = program.new
    chem.institution_id = 
    chem.name = "Chemistry"
    chem.graduating_salary = 60000
    chem.save!
    
    ah = program.new
    ah.institution_id = 
    ah.name = "Art History"
    ah.graduating_salary = 35000
    ah.save!
    
    cd = program.new
    cd.institution_id = 
    cd.name = "Communication Design"
    cd.graduating_salary = 70000
    cd.save!

    

	#Step 3: Make some Workshops
  
  
  ws7 = Workshop.new
	ws7.sharer_id = nts.id
	ws7.active = true
	ws7.start_time = "21:30:00"
	ws7.end_time = "22:30:00"
	ws7.date = "1993-01-25"
	ws7.size = "15"
	ws7.category = "Science"
	ws7.location = "Baker Hall"
	ws7.subdescription = "We work hard play hard with physics. Learn everything you
	want with Physics 2"
	ws7.description = "Physics Lab 2"
	ws7.save!
	
	ws8 = Workshop.new
	ws8.sharer_id = aes.id
	ws8.active = true
	ws8.start_time = "21:30:00"
	ws8.end_time = "22:30:00"
	ws8.date = "1993-01-25"
	ws8.size = "15"
	ws8.category = "Engineering"
	ws8.location = "Baker Hall"
	ws8.subdescription = "Intro for all engineering majors"
	ws8.description = "Engineering 101"
	ws8.save!
	
	
	ws9 = Workshop.new
	ws9.sharer_id = bps.id
	ws9.active = true
	ws9.start_time = "21:30:00"
	ws9.end_time = "22:30:00"
	ws9.date = "1993-01-25"
	ws9.size = "15"
	ws9.category = "Longboarding"
	ws9.location = "Schenley Park"
	ws9.subdescription = "Let your hair down and bring out your board!"
	ws9.description = "Longboarding"
	ws9.save!
	
	
	ws10 = Workshop.new
	ws10.sharer_id = sps.id
	ws10.active = true
	ws10.start_time = "21:30:00"
	ws10.end_time = "22:30:00"
	ws10.date = "1993-01-25"
	ws10.size = "15"
	ws10.category = "Science"
	ws10.location = "Baker Hall"
	ws10.subdescription = "We work hard play hard with chemistry. Learn everything you
	want with chemistry 2"
	ws10.description = "Chemistry Lab 2"
	ws10.save!
	
	
	
	

	wsp = Workshop.new
	wsp.sharer_id = xsh.id
	wsp.active = true
	wsp.start_time = "21:30:00"
	wsp.end_time = "22:30:00"
	wsp.date = "1993-01-25"
	wsp.size = "15"
	wsp.category = "Science"
	wsp.location = "Baker Hall"
	wsp.subdescription = "We work hard play hard with chemistry. Learn everything you
	want with chemistry 2"
	wsp.description = "Chemistry Lab 3"
	wsp.save!


	ws1 = Workshop.new
	ws1.sharer_id = js.id
	ws1.active = true
	ws1.start_time = "21:30:00"
	ws1.end_time = "22:30:00"
	ws1.date = "1993-01-25"
	ws1.size = "15"
	ws1.category = "Science"
	ws1.location = "Baker Hall"
	ws1.subdescription = "We work hard play hard with chemistry. Learn everything you
	want with chemistry"
	ws1.description = "Chemistry Lab 1"
	ws1.save!


	ws2 = Workshop.new
	ws2.sharer_id = rs.id
	ws2.active = true
	ws2.start_time = "11:30:00"
	ws2.end_time = "12:30:00"
	ws2.date = "1993-01-29"
	ws2.size = "15"
	ws2.category = "Adobe"
	ws2.location = "Tepper Building"
	ws2.subdescription = "This is an introductory course to Photoshop. We definitely
	welcome beginners. We will help you learn all sorts of rules with the tools."
	ws2.description = "Photoshop"
	ws2.save!

	ws3 = Workshop.new
	ws3.sharer_id = ds.id
	ws3.active = false
	ws3.start_time = "13:30:00"
	ws3.end_time = "14:30:00"
	ws3.date = "1995-01-25"
	ws3.size = "15"
	ws3.category = "Information Systems"
	ws3.location = "IS Wing Conference Room"
	ws3.subdescription = "This workshop helps figure out how to hook up a working
	application with a working databse. Learn SQL queries. We will work with
	phpMyAdmin."
	ws3.description = "Database Design"
#	ws3.save!


	ws4 = Workshop.new
	ws4.sharer_id = ds.id
	ws4.active = true
	ws4.start_time = "14:30:00"
	ws4.end_time = "15:30:00"
	ws4.date = "2000-02-27"
	ws4.size = "15"
	ws4.category = "Art"
	ws4.location = "CFA Building"
	ws4.subdescription = "This workshop will be an introductory course to black and
	white photography. You will find out how to develop film in the darkroom."
	ws4.description = "Photography"
	ws4.save!

	ws5 = Workshop.new
	ws5.sharer_id = ms.id
	ws5.active = true
	ws5.start_time = "13:30:00"
	ws5.end_time = "14:30:00"
	ws5.date = "2002-02-14"
	ws5.size = "15"
	ws5.category = "Psychology"
	ws5.location = "Porter Hall Basement"
	ws5.subdescription = "This workshop will introduce students to psychology on an
	introductory level. Learn everything you need to know to assess people and read
	them. You can learn to manipulate them and use them to your advantage."
	ws5.description = "Intro to Psychology"
	ws5.save!

	ws6 = Workshop.new
	ws6.sharer_id = ms.id
	ws6.active = false
	ws6.start_time = "15:00:00"
	ws6.end_time = "16:00:00"
	ws6.date = "2013-02-19"
	ws6.size = "5"
	ws6.category = "Art"
	ws6.location = "CFA Building"
	ws6.subdescription = "Looking for a place to learn how make some of the best art you've ever seen.  Come to CFA to learn how to finger paint with the latest styles in the art community.  We will have painting professionals to assist in this workshop.  Hope to see you all there!"
	ws6.description = "Finger Painting"
#	ws6.save!

  # Step 4: Add new Subscription
	ss = Subscription.new
	ss.active = true
	ss.workshop_id = ws2.id
	ss.user_id = ju.id
	ss.save!
  
  #Step 5: Add upvotes
	uv = Upvote.new
	uv.workshop_id = ws1.id
	uv.user_id = ju.id
	uv.active = true
	uv.save!

  # uv1 = Upvote.new
  # uv1.active = true
  # uv1.workshop = ws6
  # uv1.user = uu1.id
  # uv1.save! 
  
   end
end