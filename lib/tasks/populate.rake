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

    hci = Program.new
    hci.institution_id = 
    hci.name = "Human Computer Interaction"
    hci.graduating_salary = 95000
    hci.save!
    
    ba = Program.new
    ba.institution_id = 
    ba.name = "Business Administration"
    ba.graduating_salary = 80000
    ba.save!
    
    chem = Program.new
    chem.institution_id = 
    chem.name = "Chemistry"
    chem.graduating_salary = 60000
    chem.save!
    
    ah = Program.new
    ah.institution_id = 
    ah.name = "Art History"
    ah.graduating_salary = 35000
    ah.save!
    
    cd = Program.new
    cd.institution_id = 
    cd.name = "Communication Design"
    cd.graduating_salary = 70000
    cd.save!

    

	#Step 3: Make some Institutions
  
  
  i1 = Institution.new
	i1.name = "Carnegie Mellon University"
	i1.city = "Pittsburgh"
	i1.state = "PA"
	i1.zip = "15213"
	i1.address = "5000 Forbes Avenue"
	i1.save!
  
  i2 = Institution.new
	i2.name = "Stanford University"
	i2.city = "Stanford"
	i2.state = "CA"
	i2.zip = "94305"
	i2.address = "450 Serra Mall"
	i2.save!
  
  
  i3 = Institution.new
	i3.name = "The Wharton School, University of Pennsylvania"
	i3.city = "Philadelphia"
	i3.state = "PA"
	i3.zip = "19104"
	i3.address = "3620 Locust Walk"
	i3.save!
  
  
  i4 = Institution.new
	i4.name = "MIT"
	i4.city = "Cambridge"
	i4.state = "MA"
	i4.zip = "02139"
	i4.address = "77 Massachusetts Ave"
	i4.save!
  
  i5 = Institution.new
	i5.name = "Emory University"
	i5.city = "Atlanta"
	i5.state = "GA"
	i5.zip = "30322"
	i5.address = "201 Dowman Dr"
	i5.save!
	
	

  # Step 4: Add new Reviews
	r1 = Review.new
  r1.program_id = i1.id
	r1.rating = 
	r1.user_id = 
	r1.save!
  
  
  
  
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