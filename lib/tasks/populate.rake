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

    ru = User.new
    ru.active = true
    ru.email = "rupzilla@gmail.com"
    ru.password = "skillshare"
    ru.first_name = "Rupa"
    ru.last_name = "Patel"
    ru.interests = "Life Coach, Boss"
#	ru.major = "Information Systems"
    ru.save!


    eu = User.new
    eu.active = true
    eu.email = "eman@gmail.com"
    eu.password = "skillshare"
    eu.first_name = "Emmanuel"
    eu.last_name = "Ruiz"
    eu.interests = "Adobe After Effects, Maya 3d Applications"
#	eu.major = "Information Systems"
    eu.save!

    bu = User.new
    bu.active = true
    bu.email = "barnik@gmail.com"
    bu.password = "skillshare"
    bu.first_name = "Barnik"
    bu.last_name = "Saha"
    bu.interests = "Adobe Photoshop, Adobe Illustrator"
#	bu.major = "Information Systems"
    bu.save!


    ju = User.new
    ju.active = true
    ju.email = "juhee@gmail.com"
    ju.password = "skillshare"
    ju.first_name = "Juhee"
    ju.last_name = "Song"
    ju.interests = "Adobe After Effects, Microsoft Office Suite"
#	ju.major = "Information Systems"
    ju.save!


    ryu = User.new
    ryu.active = true
    ryu.email = "ryan@gmail.com"
    ryu.password = "skillshare"
    ryu.first_name = "Ryan"
    ryu.last_name = "Rowe"
    ryu.interests = "iPhone Development, Chemical extraction"
#	ryu.major = "Information Systems"
    ryu.save!

    du = User.new
    du.active = true
    du.email = "drew@gmail.com"
    du.password = "skillshare"
    du.first_name = "Drew"
    du.last_name = "James"
    du.interests = "Computer puppets and dummies"
#	du.major = "Computer Science"
    du.save!

    mu = User.new
	mu.active = true
    mu.email = "mike@gmail.com"
    mu.password = "skillshare"
    mu.first_name = "Michael"
    mu.last_name = "Snipes"
    mu.interests = "Abstract pancake-making"
#	mu.major = "CFA"
    mu.save!
	
	      xs = User.new
    	xs.active = true
        xs.email = "andy@gmail.com"
        xs.password = "skillshare"
        xs.first_name = "Andy"
        xs.last_name = "Johnson"
        xs.interests = "Glass-blowing"
        xs.save!
        
        ae = User.new
        ae.active = true
        ae.email = "einstein@gmail.com"
        ae.password = "skillshare"
        ae.first_name = "Albert"
        ae.last_name = "Einstein"
        ae.interests = "Violins flying at the speed of light"
        ae.save!
        
        nt = User.new
        nt.active = true
        nt.email = "tesla@gmail.com"
        nt.password = "skillshare"
        nt.first_name = "Nikola"
        nt.last_name = "Tesla"
        nt.interests = "Wireless energy"
        nt.save!
        
        bp = User.new
        bp.active = true
        bp.email = "bob@gmail.com"
        bp.password = "skillshare"
        bp.first_name = "Bob"
        bp.last_name = "Parker"
        bp.interests = "Long walks on the beach"
        bp.save!
        
        sp = User.new
        sp.active = true
        sp.email = "sean@gmail.com"
        sp.password = "skillshare"
        sp.first_name = "Sean"
        sp.last_name = "Parker"
        sp.interests = "Solar energy"
        sp.save!

  
  
    #Step 2: Make some Sharers

    bps = Sharer.new
    bps.user_id = bp.id
    bps.credentials = "Worked at Apple"
    bps.major = "Physics"
    bps.save!

    sps = Sharer.new
    sps.user_id = sp.id
    sps.credentials = "Stuff"
    sps.major = "moar stuff"
    sps.save!

    aes = Sharer.new
    aes.user_id = ae.id
    aes.credentials = "E=mc2"
    aes.major = "Science"
    aes.save!

    nts = Sharer.new
    nts.user_id = nt.id
    nts.credentials = "Stuff"
    nts.major = "moar stuff"
    nts.save!

        xsh = Sharer.new
        xsh.user_id = xs.id
        xsh.credentials = "Art club, Robotics Club "
        xsh.major = "Internation Relations"
        xsh.save!

    js = Sharer.new
    js.user_id = bu.id
#	js.first_name = "Barnik"
#	js.last_name = "Saha"
    js.credentials = "Policy club, Sports referee "
    js.major = "Internation Relations"
    js.save!
    
    
    ry = Sharer.new
    ry.user_id = ryu.id
#	ry.first_name = "Ryan"
#	ry.last_name = "Rowe"
    ry.credentials = "Sports"
    ry.major = "Information Systems"
    ry.save!

    rs = Sharer.new
    rs.user_id = ru.id
#	rs.first_name = "Rupa"
#	rs.last_name = "Patel"
    rs.credentials = "Cluster Consultant, Chef "
    rs.major = "Information Systems"
    rs.save!

    ds = Sharer.new
	ds.user_id = du.id
#	ds.first_name = "Drew"
#	ds.last_name = "James"
    ds.credentials = "HTML5 Web Developer, e-Commerce & Online Business "
    ds.major = "Computer Science"
    ds.save!

    ms = Sharer.new
	ms.user_id = mu.id
#	ms.first_name = "Michael"
#	ms.last_name = "Snipes"
    ms.credentials = "Free Style Painting, Music Engineering, Professional Writing for Dr. Suess "
    ms.major = "CFA"
    ms.save!

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