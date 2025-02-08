BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "admin_post" (
	"admin_id"	INTEGER NOT NULL,
	"advertisement_title"	TEXT,
	"advertisement_link"	TEXT,
	"thought_title"	TEXT,
	"thought_link"	TEXT,
	"date"	TEXT,
	PRIMARY KEY("admin_id")
);
CREATE TABLE IF NOT EXISTS "follow_user" (
	"follow_id"	INTEGER NOT NULL,
	"user_email"	TEXT,
	"follower_email"	TEXT,
	PRIMARY KEY("follow_id")
);
CREATE TABLE IF NOT EXISTS "images" (
	"image_id"	INTEGER NOT NULL,
	"title"	VARCHAR(100),
	"fields"	VARCHAR(300),
	"description"	VARCHAR(1000),
	"links"	VARCHAR(200),
	"user_id"	INTEGER,
	PRIMARY KEY("image_id")
);
CREATE TABLE IF NOT EXISTS "pin_category" (
	"category_id"	INTEGER NOT NULL,
	"name"	TEXT,
	PRIMARY KEY("category_id")
);
CREATE TABLE IF NOT EXISTS "saved_pins" (
	"save_id"	INTEGER NOT NULL,
	"user_id"	TEXT,
	"img_id"	TEXT,
	PRIMARY KEY("save_id")
);
CREATE TABLE IF NOT EXISTS "track_visits" (
	"visit_id"	INTEGER NOT NULL,
	"user_id"	INTEGER,
	"img_id"	INTEGER,
	PRIMARY KEY("visit_id")
);
CREATE TABLE IF NOT EXISTS "user_slugs" (
	"user_id"	INTEGER,
	"bio"	TEXT,
	"website"	TEXT,
	"slug_id"	INTEGER NOT NULL,
	PRIMARY KEY("slug_id")
);
CREATE TABLE IF NOT EXISTS "users" (
	"user_id"	INTEGER NOT NULL,
	"name"	VARCHAR(100),
	"email"	VARCHAR(100),
	"password"	VARCHAR(100),
	"interests"	VARCHAR(200),
	PRIMARY KEY("user_id")
);
INSERT INTO "admin_post" VALUES (1,'53 Fascinating Spots In Shimla You Need To Visit In 2021!','traveltriangle.com','Celebrations','https://pinterest.com','23 June, 2021');
INSERT INTO "admin_post" VALUES (2,'Be a responsible citizen and get yourself vaccinated today!','https://in.pinterest.com/MyGovIndia/','Motivational Quote Of The Day - May 2, 2019 | Ave Mateiu','https://avemateiu.com/motivational-quotes-of-the-day/motivational-quote-of-the-day-may-2-2019/','23 June, 2021');
INSERT INTO "admin_post" VALUES (3,'Don’t let rumours related to #COVIDVaccination mislead you!','https://www.https://www.mygov.in/','100 Inspirational and Motivational Quotes of All Time! (74)','http://www.lifehack.org/618000/100-inspirational-and-motivational-quotes-of-all-time-74','24 June, 2021');
INSERT INTO "follow_user" VALUES (1,'ritwika@gmail.com','john@gmail.com');
INSERT INTO "follow_user" VALUES (2,'amardeep@gmail.com','jonathan@gmail.com');
INSERT INTO "follow_user" VALUES (3,'ritwika@gmail.com','juanes@gmail.com');
INSERT INTO "images" VALUES (1,'dfjbdshjfdshjfgdshjfgds
','Travel','Amazing Italian scenery along the coast with the sun at its helm.
Capri, Italy #capri #italy #travel','https://www.venuereport.com',1);
INSERT INTO "images" VALUES (2,'Jet Setter BackPack','Travel','Customize this water restant backpack with a chenille letter. Take this bag with you for travel, to the gym, as a mom bag, & whenever you’re on the go! The perfect every day bag and it’s also washable! #jetsetter #travel #travelbackpack #airportfashion #cozystreetwear #fashion #cozystyle #aesthetic #moab #photoshootideas #photoshoot #editorial #campaign #fashionstyle #fashionphotographyeditorial #fashionphotographyposes #fashionphotoshoot #fashiontrend #trendy #backpack #bookbag','https://www.stelgal.com
',1);
INSERT INTO "images" VALUES (3,'Tatra Mountains','Travel','A view of Tatra Mountains from Koscielec.','https://www.flickr.com',1);
INSERT INTO "images" VALUES (4,'Contemporary Peaceful Home in India, Karnataka','Lifestyle','Name: Vaishali and Rasesh Shah and their son, Malhar Location: Ahmedabad, India Size: 5,400 square feet Years lived in: 2.5 years; Owned The outskirts of western Ahmedabad are dotted with farmhouses and weekend getaways. Driven by their love for nature, Vaishali and Rasesh made the decision to move away from the city into a home that brings together all their passions: the outdoors, travel and the quiet life.','https://www,apartmenttherapy.com
',1);
INSERT INTO "images" VALUES (5,'8 Tips for building your own backyard treehouse','Lifestyle','Summer''s here — let the treehouse adventures commence!
','https://www.zillow.com',1);
INSERT INTO "images" VALUES (6,'A cozy shell for experiencing the outdoors','Home','Dedon: the iconic Swingrest collection is enriched with new versions
','https://www.archiproducts.com',1);
INSERT INTO "images" VALUES (7,'CPT: City - Detour Habit','Home','Personal Travel Blog with a strong emphasis on imagery. Words and images about paths less taken. | Kelionių blogas. Nuotrakos ir istorijos iš tolimiausių pasaulio kampelių.','https://www.detourhabit.com
',1);
INSERT INTO "images" VALUES (8,'Signs of the Zodiac','Astronomy','#astrology #zodiac #sunsigns #witchcraft #wicca #spirituality #heirloomartco #posters #prints','https://www.heirloomartco.com
',1);
INSERT INTO "images" VALUES (9,'Nebula','Astronomy','Centre of the Rosette Nebula','https://www.wikipedia.org',1);
INSERT INTO "images" VALUES (10,'28 Of The Most Breathtaking Astronomy Photographs Of The Year 2020 Have Just Been Revealed','Astronomy','Is there anything more breathtaking and surreal than outer space? Often, I feel like there absolutely isn''t. Maybe it''s because of all the celestial masterpieces stars, galaxies, and planets paint, effortlessly sweeping us off our feet? Or maybe we feel this way about space because it''s something we can''t touch, tame, or change? Or perhaps, it''s because of that nostalgic feeling you get when it''s a warm summer night and you raise your head and look up at the sky and all the stars simultaneously remind you of how truly small you are (but in the best way possible)? But now, let''s get to the point. Insight Investment Astronomy Photographer of the Year is the largest international competition of its kind which, every year, showcases the best space photography from a global community of astrophotographers.','https://www.boredpanda.com',1);
INSERT INTO "images" VALUES (11,'Astronomy Photographer of the Year 2019 shortlist – in pictures','Astronomy','The Royal Observatory’s Insight Investment Astronomy Photographer of the Year 2019 shortlist features pictures of the Milky Way, the Southern Lights and two nebulas.','https://www.theguardian.com',2);
INSERT INTO "images" VALUES (12,'Indian food at its best ','Food','More memes, funny videos and pics on 9GAG','https://www.9gag.com',2);
INSERT INTO "images" VALUES (13,'Турция: Стамбул','Travel','После дворца Топкапы пошли в сторону Айя Софии и Голубой Мечети, сначала зашли в гробницы принцев с другой стороны Айя Софии, потом я купила жаренных каштанов и наслаждалась ими на травке между Софией и Голубой Мечтью. Мы хотели сходить в мечеть, но не удалось, ибо шла молитва, до и после которой…','https://www.i-ce.livejournal.com
',2);
INSERT INTO "images" VALUES (14,'How to Create an Indian Dinner Party Menu + Sample Menus | My Heart Beets','Food','Creating an Indian Food Menu Friends and blog readers often ask me what dishes to pair together when creating a menu. While there are no set rules, I typically aim to serve dishes that differ in taste and texture. I pair a “wet” dish (e.g., butter chicken) with a “dry” dish (e.g., cabbage and peas).…
','https://www.myheartbeets.com
',2);
INSERT INTO "images" VALUES (15,'10 Crowd Pleasing Food Bar Ideas For A Party | The Unlikely Hostess','Food','Browse the best food bar ideas for your next party. Find crowd pleasing main dish food bar dispalys that your guests will love!
','https://www.theunlikelyhostess.com
',2);
INSERT INTO "images" VALUES (16,'10 Fruit Salads That Run the Gamut From Classic to Savory to Retro','Food','Winter Fruit Salad with Lemon Poppy Seed Dressing | Cooking Classy','https://www.popsugar.com
',2);
INSERT INTO "images" VALUES (17,'10 recettes de verrines faciles','Food','Pour une garden party ! Partage don','https://www.astucesdefilles.com
',2);
INSERT INTO "images" VALUES (18,'Feast for the Eyes: Epic Grazing Tables are Taking Over!','Food','Feast for the Eyes: Epic Grazing Tables are Taking Over! - Green Wedding Shoes','https://www.greenweddingshoes.com
',2);
INSERT INTO "images" VALUES (19,'Coronavirus Symptoms Day By Day: HERE’s how the virus develops and shows different symptoms gradually','Wellness','Several studies are being done on coronavirus and one common symptom has been noted in it. Fever is the most common one at the onset of the disease followed by a breathing problem and dry cough. Then these symptoms start to evolve day-by-day. So, studies show how COVID-19 spreads day-by-day showing different symptoms. Read below to know. Coronavirus symptoms day by day: Day 1: 88 Percent of infected people will have fever and tiredness. Some also have muscle pain and a dry cough. Day 2-4: Fev','https://www.pinkvilla.com',3);
INSERT INTO "images" VALUES (20,'Ginger Turmeric Wellness Shots (With Lemon & Cayenne) | Fresh Recipes','Wellness','2 reviews · 20 minutes · Vegan Gluten free · Makes 10 oz · Ginger Turmeric Wellness Shot recipe with lemon, cayenne, and orange. A powerful anti-inflammatory and immune boosting tonic!','https://www.livingfreshdaily.com
',3);
INSERT INTO "images" VALUES (21,'Morning Glow Tonic (Juicing Recipe)','Wellness','Vegan Gluten free Paleo · Serves 6 · Packed with carrots, fruit, & ginger this Morning Glow Tonic will get you moving. Skip the coffee and enjoy a glass to get your day off to a healthy start.','https://www.aroundmyfamilytable.com',3);
INSERT INTO "images" VALUES (22,'The Green Apple Energizer','Wellness','A refreshing and energizing green juice perfect any time you need a little pick-me-up!','https://www.triedandtasty.com
',3);
INSERT INTO "images" VALUES (23,'Vehicle Wrapping | Van Wrapping | Vinyl Wrap Van','Motorcade','RTS provides expert services in vehicle wrapping, van wrapping and commercial car wrapping in Maidstone, Chatham, Medway, Rochester and all towns in Kent. For more details, call 01622 677056','https://www.rtsvehiclegraphics.co.uk
',4);
INSERT INTO "images" VALUES (24,'I D O L','Motorcade','Lo conocia desde mucho tiempo pero elegi a otro..... Fanfic de NCT Fanfic de Mark Fanfic de Taemin','https://www.wattpad.com',4);
INSERT INTO "images" VALUES (25,'Audi R8, Black Matte Edition','Motorcade','More memes, funny videos and pics on 9GAG','https://www.9gag.com',4);
INSERT INTO "images" VALUES (26,'Kic Park','Lifestyle','Kic Park located at Yangpu, Shanghai, China is a project by 3GATTI Architecture Studio. This project was submitted to Architecture News Plus (ANP) by 3GATTI Architecture Studio. ','https://www.iremlandscape.wordpress.com
',4);
INSERT INTO "pin_category" VALUES (1,'Lifestyle');
INSERT INTO "pin_category" VALUES (2,'Food');
INSERT INTO "pin_category" VALUES (3,'Home');
INSERT INTO "pin_category" VALUES (4,'Travel');
INSERT INTO "pin_category" VALUES (5,'Nature');
INSERT INTO "pin_category" VALUES (6,'Cooking');
INSERT INTO "pin_category" VALUES (7,'Fashion');
INSERT INTO "pin_category" VALUES (8,'Wellness');
INSERT INTO "pin_category" VALUES (9,'Dieting');
INSERT INTO "pin_category" VALUES (10,'Motorcade');
INSERT INTO "pin_category" VALUES (11,'Science');
INSERT INTO "pin_category" VALUES (12,'Astronomy');
INSERT INTO "saved_pins" VALUES (1,'7','13');
INSERT INTO "track_visits" VALUES (1,8,54);
INSERT INTO "track_visits" VALUES (2,8,20);
INSERT INTO "track_visits" VALUES (3,8,20);
INSERT INTO "track_visits" VALUES (4,8,53);
INSERT INTO "track_visits" VALUES (5,8,60);
INSERT INTO "track_visits" VALUES (6,8,13);
INSERT INTO "track_visits" VALUES (7,8,16);
INSERT INTO "track_visits" VALUES (8,8,11);
INSERT INTO "track_visits" VALUES (9,8,51);
INSERT INTO "track_visits" VALUES (10,8,23);
INSERT INTO "track_visits" VALUES (11,8,9);
INSERT INTO "track_visits" VALUES (12,8,8);
INSERT INTO "track_visits" VALUES (13,8,74);
INSERT INTO "track_visits" VALUES (14,1,76);
INSERT INTO "track_visits" VALUES (15,1,75);
INSERT INTO "track_visits" VALUES (16,1,68);
INSERT INTO "track_visits" VALUES (17,1,47);
INSERT INTO "track_visits" VALUES (18,1,10);
INSERT INTO "track_visits" VALUES (19,1,71);
INSERT INTO "track_visits" VALUES (20,1,70);
INSERT INTO "track_visits" VALUES (21,1,72);
INSERT INTO "track_visits" VALUES (22,1,73);
INSERT INTO "track_visits" VALUES (23,1,66);
INSERT INTO "track_visits" VALUES (24,6,18);
INSERT INTO "track_visits" VALUES (25,6,51);
INSERT INTO "track_visits" VALUES (26,6,12);
INSERT INTO "track_visits" VALUES (27,6,17);
INSERT INTO "track_visits" VALUES (28,6,5);
INSERT INTO "track_visits" VALUES (29,6,35);
INSERT INTO "track_visits" VALUES (30,6,29);
INSERT INTO "track_visits" VALUES (31,6,28);
INSERT INTO "track_visits" VALUES (32,6,34);
INSERT INTO "track_visits" VALUES (33,5,27);
INSERT INTO "track_visits" VALUES (34,5,33);
INSERT INTO "track_visits" VALUES (35,5,61);
INSERT INTO "track_visits" VALUES (36,5,62);
INSERT INTO "track_visits" VALUES (37,7,19);
INSERT INTO "track_visits" VALUES (38,7,21);
INSERT INTO "track_visits" VALUES (39,7,20);
INSERT INTO "track_visits" VALUES (40,7,4);
INSERT INTO "track_visits" VALUES (41,7,6);
INSERT INTO "track_visits" VALUES (42,7,67);
INSERT INTO "track_visits" VALUES (43,9,44);
INSERT INTO "track_visits" VALUES (44,9,52);
INSERT INTO "track_visits" VALUES (45,9,46);
INSERT INTO "track_visits" VALUES (46,1,46);
INSERT INTO "track_visits" VALUES (47,1,19);
INSERT INTO "track_visits" VALUES (48,1,74);
INSERT INTO "track_visits" VALUES (49,1,51);
INSERT INTO "track_visits" VALUES (50,1,11);
INSERT INTO "track_visits" VALUES (51,1,67);
INSERT INTO "track_visits" VALUES (52,1,46);
INSERT INTO "track_visits" VALUES (53,1,46);
INSERT INTO "track_visits" VALUES (54,1,46);
INSERT INTO "track_visits" VALUES (55,1,46);
INSERT INTO "track_visits" VALUES (56,1,46);
INSERT INTO "track_visits" VALUES (57,1,46);
INSERT INTO "track_visits" VALUES (58,3,47);
INSERT INTO "track_visits" VALUES (59,3,47);
INSERT INTO "track_visits" VALUES (60,3,47);
INSERT INTO "track_visits" VALUES (61,3,47);
INSERT INTO "track_visits" VALUES (62,3,47);
INSERT INTO "track_visits" VALUES (63,4,11);
INSERT INTO "track_visits" VALUES (64,7,47);
INSERT INTO "track_visits" VALUES (65,7,47);
INSERT INTO "track_visits" VALUES (66,7,47);
INSERT INTO "track_visits" VALUES (67,7,47);
INSERT INTO "track_visits" VALUES (68,7,13);
INSERT INTO "track_visits" VALUES (69,7,13);
INSERT INTO "track_visits" VALUES (70,7,13);
INSERT INTO "track_visits" VALUES (71,7,13);
INSERT INTO "track_visits" VALUES (72,7,13);
INSERT INTO "track_visits" VALUES (73,7,13);
INSERT INTO "user_slugs" VALUES ('',NULL,NULL,1);
INSERT INTO "user_slugs" VALUES (1,'A cool adventurist who loves to visit places and think about ideas that click!','https://www.github.com/projjal1',2);
INSERT INTO "user_slugs" VALUES (2,'A traveller with ideas to connect and a food lover who lives to eat the best delicacies all around the world!','https://www.amardeep.com',3);
INSERT INTO "user_slugs" VALUES (3,'John Nommensen Duchac, known professionally as John Doe, is an American singer, songwriter, actor, poet, guitarist and bass player.
@theejohndoe
Official Page for John Doe','https://www.john-doe.com',4);
INSERT INTO "user_slugs" VALUES (4,'Media Lawyer 
@reedsmithllp
, 
@OpenUniversity
 Honorary Grad, 
@AmbitiousAutism
 board, 
@CCYDNetwork
 Chair, UK''s 4th most influential disabled person 2020 
@ShawTrust','https://www.jonathan-shaw.com',5);
INSERT INTO "user_slugs" VALUES (5,'Online shopping for Books from a great selection of Literature & Fiction, Science, Nature & Technology, Fantasy, Science Fiction & Horror, Action & Adventure.','https://www.jennifer-gomes.com',6);
INSERT INTO "user_slugs" VALUES (6,'Ritwika Parua. Dekho मगर pyaar से। Engineer to be | Foodie | Traveller | Bong Follow @aahaare_bangali for food updates! ''s profile picture.','https://www.ritwika-foodie.com',7);
INSERT INTO "user_slugs" VALUES (7,'Juan Esteban Aristizábal Vásquez (born August 9, 1972), known professionally as Juanes, is a Colombian musician and singer-songwriter who was a member of the rock band Ekhymosis and is now a solo artist. In 2000, his solo debut album Fíjate Bien won three Latin Grammy Awards. According to his record label, Juanes has sold more than 15 million albums worldwide.[','https://www.juanes.com',8);
INSERT INTO "user_slugs" VALUES (8,'Interested in Motors and explore life, travel freak and love to visit places. #foodie #cars','https://www.vivek-kar.com',9);
INSERT INTO "user_slugs" VALUES (9,'Love to explore with science, build art and concept diagrams. Love to explore the night sky and a foodie. Cooks new items and satisfy palletes.','https://www.sandra.org',10);
INSERT INTO "users" VALUES (1,'Projjal Gop','gopprojjal@gmail.com','root','Home,Travel,Astronomy,Nature,Motorcade');
INSERT INTO "users" VALUES (2,'Amardeep Roy','amardeep@gmail.com','root','Food,Nature,Cooking,Fashion');
INSERT INTO "users" VALUES (3,'John Doe','john@gmail.com','root','Science,Cooking,Astronomy,Nature,Dieting');
INSERT INTO "users" VALUES (4,'Jonathan Andrews','jonathan@gmail.com','root','Fashion,Wellness,Science,Motorcade');
INSERT INTO "users" VALUES (5,'Jennifer Gomes','jennifer@gmail.com','root','Fashion,Dieting');
INSERT INTO "users" VALUES (6,'Ritwika  Parua','ritwika@gmail.com','root','Travel,Lifestyle,Cooking');
INSERT INTO "users" VALUES (7,'Juanes Joseph','juanes@gmail.com','root','Home,Wellness');
INSERT INTO "users" VALUES (8,'Vivek Kar','vivek@gmail.com','root','Lifestyle,Home,Motorcade,Science,Astronomy');
INSERT INTO "users" VALUES (9,'Sandra Ardens','sandra@gmail.com','root','Cooking,Science,Astronomy');
COMMIT;
