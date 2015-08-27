# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Admin.all.blank?
	Admin.create( :email => "a@a.com", :password => "123456")
end

if Category.all.blank?
	Category.create( :name => "Луковичные" )
	Category.create( :name => "Многолетники" )
	Category.create( :name => "Хвойные" )
end

if Subcategory.all.blank?
	Subcategory.create( :name => "Лилейники", 			:category_id => 1 )
	Subcategory.create( :name => "Гладиолусы", 			:category_id => 1 )
	Subcategory.create( :name => "Лилии", 					:category_id => 1 )
	Subcategory.create( :name => "Елки", 						:category_id => 3 )
	Subcategory.create( :name => "Можжевельники", 	:category_id => 3 )
	Subcategory.create( :name => "Палки", 					:category_id => 2 )
end

if Plant.all.blank?
	25.times do |i|
		Plant.create( :name => "Индийский лук", :subcategory_id => 6, :leaf_collor => "Синий", 
								:blossom_start => "Июнь", :blossom_collor => "Белый",
								:blossom_duration => "4 месяца", :description => "Ничего" )
	end
	
end

if ContentData.all.blank?
	ContentData.create!( :owner_name => "Надежда", :owner_second_name => "Богарсукова", 
											 :owner_third_name => "Борисовна",
											 :home_address => "Клочковская 101а кв 1",
											 :trade_address => "Центральный рынок", 
											 :static_phone => "701-17-79",
											 :mobile_phone => "")
end

if Image.all.blank?
	Image.create!( :name => "test", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015_b.jpg", :version => 0, :plant_id => 1)
	Image.create!( :name => "test", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015.jpg", 	:version => 1, :plant_id => 1)
	Image.create!( :name => "test", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015_s.jpg", :version => 2, :plant_id => 1)

	Image.create!( :name => "test1", :path => "http://farm3.static.flickr.com/2404/2538171134_2f77bc00d9_b.jpg", :version => 0, :plant_id => 2)
	Image.create!( :name => "test1", :path => "http://farm3.static.flickr.com/2404/2538171134_2f77bc00d9.jpg", :version => 1, :plant_id => 2)
	Image.create!( :name => "test1", :path => "http://farm3.static.flickr.com/2404/2538171134_2f77bc00d9_s.jpg", :version => 2, :plant_id => 2)

	Image.create!( :name => "test2", :path => "http://farm3.static.flickr.com/2093/2538168854_f75e408156_b.jpg", :version => 0, :plant_id => 3)
	Image.create!( :name => "test2", :path => "http://farm3.static.flickr.com/2093/2538168854_f75e408156.jpg", :version => 1, :plant_id => 3)
	Image.create!( :name => "test2", :path => "http://farm3.static.flickr.com/2093/2538168854_f75e408156_s.jpg", :version => 2, :plant_id => 3)

	Image.create!( :name => "test3", :path => "http://farm4.static.flickr.com/3153/2538167690_c812461b7b_b.jpg", :version => 0, :plant_id => 4)
	Image.create!( :name => "test3", :path => "http://farm4.static.flickr.com/3153/2538167690_c812461b7b.jpg", :version => 1, :plant_id => 4)
	Image.create!( :name => "test3", :path => "http://farm4.static.flickr.com/3153/2538167690_c812461b7b_s.jpg", :version => 2, :plant_id => 4)
																						
	Image.create!( :name => "test4", :path => "http://farm4.static.flickr.com/3150/2538167224_0a6075dd18_b.jpg", :version => 0, :plant_id => 5)
	Image.create!( :name => "test4", :path => "http://farm4.static.flickr.com/3150/2538167224_0a6075dd18.jpg", :version => 1, :plant_id => 5)
	Image.create!( :name => "test4", :path => "http://farm4.static.flickr.com/3150/2538167224_0a6075dd18_s.jpg", :version => 2, :plant_id => 5)

	Image.create!( :name => "test5", :path => "http://farm4.static.flickr.com/3204/2537348699_bfd38bd9fd_b.jpg", :version => 0, :plant_id => 6)
	Image.create!( :name => "test5", :path => "http://farm4.static.flickr.com/3204/2537348699_bfd38bd9fd.jpg", :version => 1, :plant_id => 6)
	Image.create!( :name => "test5", :path => "http://farm4.static.flickr.com/3204/2537348699_bfd38bd9fd_s.jpg", :version => 2, :plant_id => 6)

	Image.create!( :name => "test6", :path => "http://farm4.static.flickr.com/3124/2538164582_b9d18f9d1b_b.jpg", :version => 0, :plant_id => 7)
	Image.create!( :name => "test6", :path => "http://farm4.static.flickr.com/3124/2538164582_b9d18f9d1b.jpg", :version => 1, :plant_id => 7)
	Image.create!( :name => "test6", :path => "http://farm4.static.flickr.com/3124/2538164582_b9d18f9d1b_s.jpg", :version => 2, :plant_id => 7)	

	Image.create!( :name => "test7", :path => "http://farm4.static.flickr.com/3205/2538164270_4369bbdd23_b.jpg", :version => 0, :plant_id => 8)
	Image.create!( :name => "test7", :path => "http://farm4.static.flickr.com/3205/2538164270_4369bbdd23.jpg", 	:version => 1, :plant_id => 8)
	Image.create!( :name => "test7", :path => "http://farm4.static.flickr.com/3205/2538164270_4369bbdd23_s.jpg", :version => 2, :plant_id => 8)

	Image.create!( :name => "test8", :path => "http://farm4.static.flickr.com/3211/2538163540_c2026243d2_b.jpg", :version => 0, :plant_id => 9)
	Image.create!( :name => "test8", :path => "http://farm4.static.flickr.com/3211/2538163540_c2026243d2.jpg", 	:version => 1, :plant_id => 9)
	Image.create!( :name => "test8", :path => "http://farm4.static.flickr.com/3211/2538163540_c2026243d2_s.jpg", :version => 2, :plant_id => 9)

	Image.create!( :name => "test9", :path => "http://farm3.static.flickr.com/2315/2537343449_f933be8036_b.jpg", :version => 0, :plant_id => 10)
	Image.create!( :name => "test9", :path => "http://farm3.static.flickr.com/2315/2537343449_f933be8036.jpg", 	:version => 1, :plant_id => 10)
	Image.create!( :name => "test9", :path => "http://farm3.static.flickr.com/2315/2537343449_f933be8036_s.jpg", :version => 2, :plant_id => 10)

	Image.create!( :name => "test10", :path => "http://farm3.static.flickr.com/2167/2082738157_436d1eb280_b.jpg", :version => 0, :plant_id => 11)
	Image.create!( :name => "test10", :path => "http://farm3.static.flickr.com/2167/2082738157_436d1eb280.jpg", 	:version => 1, :plant_id => 11)
	Image.create!( :name => "test10", :path => "http://farm3.static.flickr.com/2167/2082738157_436d1eb280_s.jpg", :version => 2, :plant_id => 11)

	Image.create!( :name => "test11", :path => "http://farm3.static.flickr.com/2342/2083508720_fa906f685e_b.jpg", :version => 0, :plant_id => 12)
	Image.create!( :name => "test11", :path => "http://farm3.static.flickr.com/2342/2083508720_fa906f685e.jpg", 	:version => 1, :plant_id => 12)
	Image.create!( :name => "test11", :path => "http://farm3.static.flickr.com/2342/2083508720_fa906f685e_s.jpg", :version => 2, :plant_id => 12)

	Image.create!( :name => "test12", :path => "http://farm3.static.flickr.com/2132/2082721339_4b06f6abba_b.jpg", :version => 0, :plant_id => 13)
	Image.create!( :name => "test12", :path => "http://farm3.static.flickr.com/2132/2082721339_4b06f6abba.jpg", 	:version => 1, :plant_id => 13)
	Image.create!( :name => "test12", :path => "http://farm3.static.flickr.com/2132/2082721339_4b06f6abba_s.jpg", :version => 2, :plant_id => 13)

	Image.create!( :name => "test13", :path => "http://farm3.static.flickr.com/2139/2083503622_5b17f16a60_b.jpg", :version => 0, :plant_id => 14)
	Image.create!( :name => "test13", :path => "http://farm3.static.flickr.com/2139/2083503622_5b17f16a60.jpg", 	:version => 1, :plant_id => 14)
	Image.create!( :name => "test13", :path => "http://farm3.static.flickr.com/2139/2083503622_5b17f16a60_s.jpg", :version => 2, :plant_id => 14)

	Image.create!( :name => "test14", :path => "http://farm3.static.flickr.com/2041/2083498578_114e117aab_b.jpg", :version => 0, :plant_id => 15)
	Image.create!( :name => "test14", :path => "http://farm3.static.flickr.com/2041/2083498578_114e117aab.jpg", 	:version => 1, :plant_id => 15)
	Image.create!( :name => "test14", :path => "http://farm3.static.flickr.com/2041/2083498578_114e117aab_s.jpg", :version => 2, :plant_id => 15)

	Image.create!( :name => "test15", :path => "http://farm3.static.flickr.com/2149/2082705341_afcdda0663_b.jpg", :version => 0, :plant_id => 16)
	Image.create!( :name => "test15", :path => "http://farm3.static.flickr.com/2149/2082705341_afcdda0663.jpg", 	:version => 1, :plant_id => 16)
	Image.create!( :name => "test15", :path => "http://farm3.static.flickr.com/2149/2082705341_afcdda0663_s.jpg", :version => 2, :plant_id => 16)

	Image.create!( :name => "test16", :path => "http://farm3.static.flickr.com/2014/2083478274_26775114dc_b.jpg", :version => 0, :plant_id => 17)
	Image.create!( :name => "test16", :path => "http://farm3.static.flickr.com/2014/2083478274_26775114dc.jpg", 	:version => 1, :plant_id => 17)
	Image.create!( :name => "test16", :path => "http://farm3.static.flickr.com/2014/2083478274_26775114dc_s.jpg", :version => 2, :plant_id => 17)

	Image.create!( :name => "test17", :path => "http://farm3.static.flickr.com/2194/2083464534_122e849241_b.jpg", :version => 0, :plant_id => 18)
	Image.create!( :name => "test17", :path => "http://farm3.static.flickr.com/2194/2083464534_122e849241.jpg", 	:version => 1, :plant_id => 18)
	Image.create!( :name => "test17", :path => "http://farm3.static.flickr.com/2194/2083464534_122e849241_s.jpg", :version => 2, :plant_id => 18)

	Image.create!( :name => "test18", :path => "http://farm4.static.flickr.com/3127/2538173236_b704e7622e_b.jpg", :version => 0, :plant_id => 19)
	Image.create!( :name => "test18", :path => "http://farm4.static.flickr.com/3127/2538173236_b704e7622e.jpg", 	:version => 1, :plant_id => 19)
	Image.create!( :name => "test18", :path => "http://farm4.static.flickr.com/3127/2538173236_b704e7622e_s.jpg", :version => 2, :plant_id => 19)

	Image.create!( :name => "test19", :path => "http://farm3.static.flickr.com/2375/2538172432_3343a47341_b.jpg", :version => 0, :plant_id => 20)
	Image.create!( :name => "test19", :path => "http://farm3.static.flickr.com/2375/2538172432_3343a47341.jpg", 	:version => 1, :plant_id => 20)
	Image.create!( :name => "test19", :path => "http://farm3.static.flickr.com/2375/2538172432_3343a47341_s.jpg", :version => 2, :plant_id => 20)

	Image.create!( :name => "test20", :path => "http://farm3.static.flickr.com/2353/2083476642_d00372b96f_b.jpg", :version => 0, :plant_id => 21)
	Image.create!( :name => "test20", :path => "http://farm3.static.flickr.com/2353/2083476642_d00372b96f.jpg", 	:version => 1, :plant_id => 21)
	Image.create!( :name => "test20", :path => "http://farm3.static.flickr.com/2353/2083476642_d00372b96f_s.jpg", :version => 2, :plant_id => 21)

	Image.create!( :name => "test21", :path => "http://farm3.static.flickr.com/2201/1502907190_7b4a2a0e34_b.jpg", :version => 0, :plant_id => 22)
	Image.create!( :name => "test21", :path => "http://farm3.static.flickr.com/2201/1502907190_7b4a2a0e34.jpg", 	:version => 1, :plant_id => 22)
	Image.create!( :name => "test21", :path => "http://farm3.static.flickr.com/2201/1502907190_7b4a2a0e34_s.jpg", :version => 2, :plant_id => 22)

	Image.create!( :name => "test22", :path => "http://farm2.static.flickr.com/1116/1380178473_fc640e097a_b.jpg", :version => 0, :plant_id => 23)
	Image.create!( :name => "test22", :path => "http://farm2.static.flickr.com/1116/1380178473_fc640e097a.jpg", 	:version => 1, :plant_id => 23)
	Image.create!( :name => "test22", :path => "http://farm2.static.flickr.com/1116/1380178473_fc640e097a_s.jpg", :version => 2, :plant_id => 23)

	Image.create!( :name => "test23", :path => "http://farm2.static.flickr.com/1260/930424599_e75865c0d6_b.jpg", :version => 0, :plant_id => 24)
	Image.create!( :name => "test23", :path => "http://farm2.static.flickr.com/1260/930424599_e75865c0d6.jpg", 	:version => 1, :plant_id => 24)
	Image.create!( :name => "test23", :path => "http://farm2.static.flickr.com/1260/930424599_e75865c0d6_s.jpg", :version => 2, :plant_id => 24)

	Image.create!( :name => "test24", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015_b.jpg", :version => 0, :plant_id => 25)
	Image.create!( :name => "test24", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015.jpg", 	:version => 1, :plant_id => 25)
	Image.create!( :name => "test24", :path => "http://farm4.static.flickr.com/3261/2538183196_8baf9a8015_s.jpg", :version => 2, :plant_id => 25)
end
