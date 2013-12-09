namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    # Invoke rake db:migrate just in case...
    Rake::Task['db:migrate'].invoke

    # Need two gems to make this work: faker & populator
    # Docs at: http://populator.rubyforge.org/
    #require 'populator'
    # Docs at: http://faker.rubyforge.org/rdoc/
    #require 'faker'

    # Step 0: clear any old data in the db
    [User, UserTag, ProgramTag, Tag, Program, Institution, Review, UserProgram].each(&:delete_all)

	
  	#Step 1: Add users

    ti = User.new
   
    ti.email = "tahsin@gmail.com"
    ti.password = "smartpaths"
    ti.first_name = "Tahsin"
    ti.last_name = "Islam"
    ti.role = "Admin"
    ti.save!


    et = User.new

    et.email = "emily@gmail.com"
    et.password = "smartpaths"
    et.first_name = "Emily"
    et.last_name = "Tsai"
    et.role = "Admin"
    et.save!

    js = User.new

    js.email = "juhee@gmail.com"
    js.password = "smartpaths"
    js.first_name = "Juhee"
    js.last_name = "Song"
    js.role = "User"
    js.save!


    mt = User.new

    mt.email = "marco@gmail.com"
    mt.password = "smartpaths"
    mt.first_name = "Marco"
    mt.last_name = "Talabacu"
    mt.role = "User"
    mt.save!


    bs = User.new

    bs.email = "barnik@gmail.com"
    bs.password = "smartpaths"
    bs.first_name = "Barnik"
    bs.last_name = "Saha"
    bs.role = "User"
    bs.save!
    
    sp = User.new

    sp.email = "sean@gmail.com"
    sp.password = "smartpaths"
    sp.first_name = "Sean"
    sp.last_name = "Parker"
    sp.role = "User"
    sp.save!
    
    gs = User.new

    gs.email = "greg@gmail.com"
    gs.password = "smartpaths"
    gs.first_name = "Gregory"
    gs.last_name = "Smith"
    gs.role = "User"
    gs.save!
    
    as = User.new

    as.email = "alex@gmail.com"
    as.password = "smartpaths"
    as.first_name = "Alex"
    as.last_name = "Smith"
    as.role = "User"
    as.save!
    
    cs = User.new

    cs.email = "craig@gmail.com"
    cs.password = "smartpaths"
    cs.first_name = "Craig"
    cs.last_name = "Smith"
    cs.role = "User"
    cs.save!
    
    
    ds = User.new

    ds.email = "dale@gmail.com"
    ds.password = "smartpaths"
    ds.first_name = "Dale"
    ds.last_name = "Smith"
    ds.role = "User"
    ds.save!
    
    hs = User.new

    hs.email = "howard@gmail.com"
    hs.password = "smartpaths"
    hs.first_name = "Howard"
    hs.last_name = "Smith"
    hs.role = "User"
    hs.save!
    
    
    es = User.new

    es.email = "earl@gmail.com"
    es.password = "smartpaths"
    es.first_name = "Earl"
    es.last_name = "Smith"
    es.role = "User"
    es.save!
    
    
    fs = User.new

    fs.email = "fox@gmail.com"
    fs.password = "smartpaths"
    fs.first_name = "Fox"
    fs.last_name = "Smith"
    fs.role = "User"
    fs.save!
    
    rw = User.new

    rw.email = "randy@gmail.com"
    rw.password = "smartpaths"
    rw.first_name = "Randy"
    rw.last_name = "Weinberg"
    rw.role = "User"
    rw.save!
    
    mh = User.new

    mh.email = "mike@gmail.com"
    mh.password = "smartpaths"
    mh.first_name = "Mike"
    mh.last_name = "Hoffman"
    mh.role = "User"
    mh.save!
    
    
  
  


    

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
	
	
  
  
  #Step 2: Make some Programs

  hci = Program.new
  hci.institution_id = i1.id
  hci.name = "Human Computer Interaction"
  hci.graduating_salary = 95000
  hci.save!
  
  ba = Program.new
  ba.institution_id = i2.id
  ba.name = "Business Administration"
  ba.graduating_salary = 80000
  ba.save!
  
  chem = Program.new
  chem.institution_id = i3.id
  chem.name = "Chemistry"
  chem.graduating_salary = 60000
  chem.save!
  
  ah = Program.new
  ah.institution_id = i4.id
  ah.name = "Art History"
  ah.graduating_salary = 35000
  ah.save!
  
  cd = Program.new
  cd.institution_id = i5.id
  cd.name = "Communication Design"
  cd.graduating_salary = 70000
  cd.save!

  # Step 4: Add new Reviews
	r1 = Review.new
  r1.program_id = hci.id
	r1.rating = 4
	r1.user_id = mt.id
  r1.text = "This school is great for technical majors. People who graduate are very prepared for real jobs."
	r1.save!
  
	r2 = Review.new
  r2.program_id = ba.id
	r2.rating = 2
	r2.user_id = bs.id
  r2.text = "You get know social life at this school. Be prepared to only do work your 4 years here."
	r2.save!
  
	r3 = Review.new
  r3.program_id = hci.id
	r3.rating = 5
	r3.user_id = js.id
  r3.text = "My son is having a blast at this school. He graduated with a CS degree and is very happy at his current job."
	r3.save!
  
  
	r4 = Review.new
  r4.program_id = ba.id
	r4.rating = 3
	r4.user_id = et.id
  r4.text = "The community is great. We all encourage each to do well and have fun at the same time. Wish more money went to gym facilities."
	r4.save!
  
	r5 = Review.new
  r5.program_id = ba.id
	r5.rating = 5
	r5.user_id = ti.id
  r5.text = "I am so glad I graduated from here. I made some lifetime friends and learned so much from my time here. Great faculty!"
	r5.save!
  
	r6 = Review.new
  r6.program_id = ba.id
	r6.rating = 1
	r6.user_id = mh.id
  r6.text = "This school is hard to get into and nothing like I expected. The school is filled with hippies."
	r6.save!
  
	r7 = Review.new
  r7.program_id = chem.id
	r7.rating = 4
	r7.user_id = rw.id
  r7.text = "This school is good depending on your major. The social life is wonderful. I love the city."
	r7.save!
  
	r8 = Review.new
  r8.program_id = chem.id
	r8.rating = 4
	r8.user_id = fs.id
  r8.text = "I wish living spaces were better, but other than that I love this place!"
	r8.save!
  
	r9 = Review.new
  r9.program_id = chem.id
	r9.rating = 2
	r9.user_id = es.id
  r9.text = "Teachers are not very helpful when you are struggling with course load."
	r9.save!
  
	r10 = Review.new
  r10.program_id = ah.id
	r10.rating = 1
	r10.user_id = hs.id
  r10.text = "You need to really love technology if you come here. People are stubborn and not friendly."
	r10.save!
  
	r11 = Review.new
  r11.program_id = ah.id
	r11.rating = 2
	r11.user_id = ds.id
  r11.text = "The winters are too cold and I never signed up for this kind of lifestyle. Good prestige for the school."
	r11.save!
  
	r12 = Review.new
  r12.program_id = ah.id
	r12.rating = 3
	r12.user_id = cs.id
  r12.text = "The work load is tough and you will be challenged. We need better facilities and more outlets for fun."
	r12.save!
  
	r13 = Review.new
  r13.program_id = cd.id
	r13.rating = 5
	r13.user_id = as.id
  r13.text = "The weather is amazing, people are social and fun to be around."
	r13.save!
  
	r14 = Review.new
  r14.program_id = cd.id
	r14.rating = 5
	r14.user_id = gs.id
  r14.text = "I've learned so much from my time here. Send your kid to this school!"
	r14.save!
  
	r15 = Review.new
  r15.program_id = cd.id
	r15.rating = 4
	r15.user_id = sp.id
  r15.text = "You have your fair share of strange people but what campus doesn't? Everyone should go here."
	r15.save!
  
  
  
  
  
  
  #Step 5: Add UserPrograms
	
  up1 = UserProgram.new
  up1.user_id = mt.id
  up1.program_id = hci.id 
  up1.graduating_year = 2014
  up1.save!
  
  up2 = UserProgram.new
  up2.user_id = bs.id
  up2.program_id = hci.id 
  up2.graduating_year = 1998
  up2.save!
  
  up3 = UserProgram.new
  up3.user_id = js.id
  up3.program_id = hci.id 
  up3.graduating_year = 1999
  up3.save!
  
  up4 = UserProgram.new
  up4.user_id = et.id
  up4.program_id = ba.id 
  up4.graduating_year = 2004
  up4.save!
  
  up5 = UserProgram.new
  up5.user_id = ti.id
  up5.program_id = ba.id 
  up5.graduating_year = 2005
  up5.save!
  
  up6 = UserProgram.new
  up6.user_id = mh.id
  up6.program_id = ba.id 
  up6.graduating_year = 2001
  up6.save!
  
  up7 = UserProgram.new
  up7.user_id = rw.id
  up7.program_id = chem.id 
  up7.graduating_year = 1993
  up7.save!
  
  up8 = UserProgram.new
  up8.user_id = fs.id
  up8.program_id = chem.id 
  up8.graduating_year = 1977
  up8.save!
  
  up9 = UserProgram.new
  up9.user_id = es.id
  up9.program_id = chem.id 
  up9.graduating_year = 2007
  up9.save!
  
  up10 = UserProgram.new
  up10.user_id = hs.id
  up10.program_id = ah.id 
  up10.graduating_year = 2001
  up10.save!
  
  up11 = UserProgram.new
  up11.user_id = ds.id
  up11.program_id = ah.id 
  up11.graduating_year = 2011
  up11.save!
  
  up12 = UserProgram.new
  up12.user_id = cs.id
  up12.program_id = ah.id 
  up12.graduating_year = 2009
  up12.save!
  
  up13 = UserProgram.new
  up13.user_id = as.id
  up13.program_id = cd.id 
  up13.graduating_year = 2003
  up13.save!
  
  up14 = UserProgram.new
  up14.user_id = gs.id
  up14.program_id = cd.id 
  up14.graduating_year = 2010
  up14.save!
  
  up15 = UserProgram.new
  up15.user_id = sp.id
  up15.program_id = cd.id 
  up15.graduating_year = 2002
  up15.save!
  
  
  
  #Step 6: Add Tags
  #Add tags from CSV filerake
 # CSV.foreach(File.path("cip.csv")) do |col|
  #  tag = Tag.new
 #   tag.name = col[0]
 #   tag.tag_type = "Skill"
 #   tag.save!
 # end  
  
  t1 = Tag.new
  t1.name = "Design"
  t1.tag_type = "Skill"
  t1.save!
  
  t2 = Tag.new
  t2.name = "Business"
  t2.tag_type = "Skill"
  t2.save!
  
  t3 = Tag.new
  t3.name = "Science"
  t3.tag_type = "Skill"
  t3.save!
  
  t4 = Tag.new
  t4.name = "Art"
  t4.tag_type = "Skill"
  t4.save!
  
  t5 = Tag.new
  t5.name = "Communication Design"
  t5.tag_type = "Skill"
  t5.save!
  
  
  #Step 7: Add ProgramTags
  
  pt1 = ProgramTag.new
  pt1.program_id = hci.id
  pt1.tag_id = t1.id
  pt1.counter = 0
  pt1.save!
  
  pt2 = ProgramTag.new
  pt2.program_id = ba.id
  pt2.tag_id = t2.id
  pt2.counter = 0
  pt2.save!
  
  pt3 = ProgramTag.new
  pt3.program_id = chem.id
  pt3.tag_id = t3.id
  pt3.counter = 0
  pt3.save!
  
  pt4 = ProgramTag.new
  pt4.program_id = ah.id
  pt4.tag_id = t4.id
  pt4.counter = 0
  pt4.save!
  
  pt5 = ProgramTag.new
  pt5.program_id = cd.id
  pt5.tag_id = t5.id
  pt5.counter = 0
  pt5.save!
  
  
  #Step 7: Add UserTags
  
    ut1 = UserTag.new
    ut1.program_tag_id = pt1.id
    ut1.user_id = ti.id
    ut1.save!
    
    ut2 = UserTag.new
    ut2.program_tag_id = pt2.id
    ut2.user_id = et.id
    ut2.save!
    
    ut3 = UserTag.new
    ut3.program_tag_id = pt3.id
    ut3.user_id = bs.id
    ut3.save!
    
    ut4 = UserTag.new
    ut4.program_tag_id = pt4.id
    ut4.user_id = js.id
    ut4.save!
    
    ut5 = UserTag.new
    ut5.program_tag_id = pt5.id
    ut5.user_id = bs.id
    ut5.save!
  
   end
end