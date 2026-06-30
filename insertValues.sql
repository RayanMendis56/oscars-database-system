INSERT INTO Country VALUES (1, 'United States', 'USA');
INSERT INTO Country VALUES (2, 'United Kingdom', 'GBR');
INSERT INTO Country VALUES (3, 'New Zealand', 'NZL');
INSERT INTO Country VALUES (4, 'Canada', 'CAN');
INSERT INTO Country VALUES (5, 'France', 'FRA');
INSERT INTO Country VALUES (6, 'Germany', 'DEU');
INSERT INTO Country VALUES (7, 'Ireland', 'IRL');
INSERT INTO Country VALUES (8, 'Australia', 'AUS');
INSERT INTO Country VALUES (9, 'Japan', 'JPN');
INSERT INTO Country VALUES (10, 'South Korea', 'KOR');
INSERT INTO Country VALUES (11, 'Italy', 'ITA');
INSERT INTO Country VALUES (12, 'India', 'IND');
INSERT INTO Country VALUES (13, 'China', 'CHN');
INSERT INTO Country VALUES (14, 'Mexico', 'MEX');
INSERT INTO Country VALUES (15, 'Spain', 'ESP');
INSERT INTO Country VALUES (16, 'Sweden', 'SWE');
INSERT INTO Country VALUES (17, 'Norway', 'NOR');
INSERT INTO Country VALUES (18, 'Poland', 'POL');
INSERT INTO Country VALUES (19, 'Belgium', 'BEL');
INSERT INTO Country VALUES (20, 'Denmark', 'DNK');
INSERT INTO Country VALUES (21, 'Finland', 'FIN');
INSERT INTO Country VALUES (22, 'Argentina', 'ARG');
INSERT INTO Country VALUES (23, 'Switzerland', 'CHE');
INSERT INTO Country VALUES (24, 'Hungary', 'HUN');
INSERT INTO Country VALUES (25, 'Netherlands', 'NLD');
INSERT INTO Country VALUES (26, 'Israel', 'ISR');
INSERT INTO Country VALUES (27, 'South Africa', 'ZAF');
INSERT INTO Country VALUES (28, 'Brazil', 'BRA');

INSERT INTO Ceremony VALUES
(1,2021),  -- 93rd Academy Awards (honored 2020 films)
(2,2022),  -- 94th Academy Awards (honored 2021 films)
(3,2023),  -- 95th Academy Awards (honored 2022 films)
(4,2024),  -- 96th Academy Awards (honored 2023 films)
(5,2025);  -- 97th Academy Awards (honoring 2024 films)

INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Nomadland', 'Drama', 'English', 1),
('The Father', 'Drama', 'English', 1),
('Judas and the Black Messiah', 'Drama', 'English', 1),
('Mank', 'Drama', 'English', 1),
('Minari', 'Drama', 'Korean; English', 1),
('Promising Young Woman', 'Thriller', 'English', 1),
('Sound of Metal', 'Drama', 'English', 1),
('The Trial of the Chicago 7', 'Drama', 'English', 1);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Another Round', 'Drama', 'Danish; Swedish', 1),
('Ma Rainey''s Black Bottom', 'Drama', 'English', 1),
('The United States vs. Billie Holiday', 'Drama', 'English', 1),
('Pieces of a Woman', 'Drama', 'English', 1),
('One Night in Miami...', 'Drama', 'English', 1),
('Borat Subsequent Moviefilm', 'Comedy', 'English; Kazakh', 1),
('Hillbilly Elegy', 'Drama', 'English', 1);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('CODA', 'Drama', 'English', 2),
('Belfast', 'Drama', 'English', 2),
('Don''t Look Up', 'Comedy', 'English', 2),
('Drive My Car', 'Drama', 'Japanese', 2),
('Dune', 'Sci-Fi', 'English', 2),
('King Richard', 'Drama', 'English', 2),
('Licorice Pizza', 'Comedy-Drama', 'English', 2),
('Nightmare Alley', 'Thriller', 'English', 2),
('The Power of the Dog', 'Western-Drama', 'English', 2),
('West Side Story', 'Musical', 'English; Spanish', 2);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Being the Ricardos', 'Drama', 'English', 2),
('tick, tick... BOOM!', 'Musical-Drama', 'English', 2),
('The Tragedy of Macbeth', 'Drama', 'English', 2),
('The Eyes of Tammy Faye', 'Drama', 'English', 2),
('The Lost Daughter', 'Drama', 'English; Greek', 2),
('Parallel Mothers', 'Drama', 'Spanish', 2),
('Spencer', 'Drama', 'English', 2);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Everything Everywhere All at Once', 'Sci-Fi', 'English; Cantonese; Mandarin', 3),
('All Quiet on the Western Front', 'War', 'German', 3),
('Avatar: The Way of Water', 'Sci-Fi', 'English; Na''vi', 3),
('The Banshees of Inisherin', 'Dark Comedy', 'English; Irish Gaelic', 3),
('Elvis', 'Drama', 'English', 3),
('The Fabelmans', 'Drama', 'English', 3),
('Tár', 'Drama', 'English; German', 3),
('Top Gun: Maverick', 'Action', 'English', 3),
('Triangle of Sadness', 'Satire', 'English; Swedish', 3),
('Women Talking', 'Drama', 'English', 3);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Blonde', 'Drama', 'English', 3),
('To Leslie', 'Drama', 'English', 3),
('Causeway', 'Drama', 'English', 3),
('Black Panther: Wakanda Forever', 'Action', 'English; Xhosa', 3),
('The Whale', 'Drama', 'English', 3);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Oppenheimer', 'Drama', 'English', 4),
('American Fiction', 'Comedy-Drama', 'English', 4),
('Anatomy of a Fall', 'Thriller', 'French; English', 4),
('Barbie', 'Comedy', 'English', 4),
('The Holdovers', 'Comedy-Drama', 'English', 4),
('Killers of the Flower Moon', 'Crime-Drama', 'English; Osage', 4),
('Maestro', 'Drama', 'English', 4),
('Past Lives', 'Romance-Drama', 'English; Korean', 4),
('Poor Things', 'Fantasy', 'English', 4),
('The Zone of Interest', 'War-Drama', 'German; Polish', 4);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Nyad', 'Drama', 'English', 4),
('Rustin', 'Drama', 'English', 4),
('The Color Purple', 'Musical-Drama', 'English', 4);
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Anora', 'Drama', 'English', 5),
('Dune: Part Two', 'Sci-Fi', 'English', 5),
('The Substance', 'Horror', 'English', 5),
('The Brutalist', 'Drama', 'English', 5),
('Challengers', 'Romance-Drama', 'English', 5),
('Civil War', 'Action', 'English', 5),
('The Bikeriders', 'Crime-Drama', 'English', 5),
('Furiosa: A Mad Max Saga', 'Action', 'English', 5),
('The Taste of Things', 'Romance', 'French', 5),
('Wicked: Part One', 'Musical', 'English', 5);


INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Tenet','Action','English',1),
('Godzilla Minus One','Action','Japanese',4),
('A Real Pain','Drama','English',5),
('Emilia Pérez','Crime-Drama','Spanish; French',5);

INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('A Complete Unknown','Drama','English',5),
('Conclave','Drama','English',5),
('The Apprentice','Drama','English',5),
('Sing Sing','Drama','English',5),
('Maria','Drama','English',5),
('Nosferatu','Horror','English',5),
('Alien: Romulus','Sci-Fi','English',5),
('Better Man','Drama','English',5),
('Kingdom of the Planet of the Apes','Sci-Fi','English',5),
('I''m Still Here','Drama','Portuguese',5);


# 2024 ceremony (Ceremony_ID = 4)
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('The Creator','Sci-Fi','English',4),
('Guardians of the Galaxy Vol. 3','Action','English',4),
('Napoleon','Drama','English',4),
('Mission: Impossible – Dead Reckoning Pt. 1','Action','English',4),
('El Conde','Drama','Spanish',4);

# 2023 ceremony (Ceremony_ID = 3)
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Aftersun','Drama','English',3),
('Living','Drama','English',3),
('Bardo, False Chronicle of a Handful of Truths','Drama','Spanish',3),
('Empire of Light','Drama','English',3),
('The Batman','Action','English',3);

# 2021 ceremony (Ceremony_ID = 1)
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('News of the World','Western-Drama','English',1),
('Love and Monsters','Adventure','English',1),
('The Midnight Sky','Sci-Fi','English',1),
('Mulan','Action','English; Mandarin',1),
('The One and Only Ivan','Family','English',1);


# Missing 2023 films (proposed next IDs)
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Aftersun','Drama','English',3),  
('Living','Drama','English',3);     

# missed 2022 films
INSERT INTO Film (Film_title, genre, language, Ceremony_ID) VALUES
('Free Guy','Action','English',2),
('No Time to Die','Action','English',2),
('Shang-Chi and the Legend of the Ten Rings','Action','English',2),
('Spider-Man: No Way Home','Action','English',2);


INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Adrien Brody','M',2),
('Timothée Chalamet','M',1),
('Colman Domingo','M',1),
('Ralph Fiennes','M',1),
('Sebastian Stan','M',1);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Cynthia Erivo','M',1),
('Karla Sofía Gascón','M',1),
('Mikey Madison','M',1),
('Demi Moore','M',5),
('Fernanda Torres','M',1);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Yura Borisov','M',1),
('Kieran Culkin','M',1),
('Edward Norton','M',1),
('Guy Pearce','M',2),
('Jeremy Strong','M',1);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Monica Barbaro','M',1),
('Ariana Grande','F',1),
('Felicity Jones','M',2),
('Isabella Rossellini','F',1),
('Zoe Saldaña','F',1);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Lol Crawley','M',2),          
('Greig Fraser','M',1),         
('Paul Guilhaume','M',1),       
('Edward Lachman','M',1),       
('Jarin Blaschke','M',1);       

# Visual Effects: add key VFX supervisors/producers frequently credited on the 2024 films
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Paul Lambert','M',1),
('Tristan Myles','M',1),
('Brian Connor','M',1),
('Gerd Nefzer','M',1),

('Erik Winquist','M',1),
('Daniel Barrett','M',1),
('Paul Story','M',1),
('Seth Maury','M',1),

('Luke Millar','M',1),
('Charley Henley','M',1),
('Neil Corbould','M',1),
('Simone Coco','M',1),

('Theo Bialek','M',1),
('Eric Saindon','M',1),
('Russell Earl','M',1),
('Bryan Grill','M',1),

('Seth Hill','M',1),
('Guy Williams','M',1),
('Kelly Port','M',1),
('Christopher Townsend','M',1);

# 96th (2024) — Best Picture (all nominated producers present in your list)
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Emma Thomas','F',1),('Charles Roven','M',1),('Christopher Nolan','M',1), 
('Ben LeClair','M',1),('Jermaine Johnson','M',1),                         
('Marie-Ange Luciani','F',5),('David Thion','M',5),                        
('Margot Robbie','F',1),('Tom Ackerley','M',1),('David Heyman','M',1),     
('Mark Johnson','M',1),                                                    
('Dan Friedkin','M',1),('Bradley Thomas','M',1),('Martin Scorsese','M',1), 
('Bradley Cooper','M',1),('Fred Berner','M',1),('Amy Durning','F',1),('Kristie Macosko Krieger','M',1), 
('Christine Vachon','M',1),('David Hinojosa','M',1),('Pamela Koffler','M',1),                           
('Ed Guiney','M',2),('Andrew Lowe','M',2),('Yorgos Lanthimos','M',2),('Emma Stone','F',2),              
('James Wilson','M',6);                                                                                 

# 96th (2024) — Directing
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Christopher Nolan','M',1),           
('Justine Triet','F',5),
('Martin Scorsese','M',1),
('Jonathan Glazer','M',6),
('Yorgos Lanthimos','M',2);

# 96th (2024) — Actor in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Cillian Murphy','M',1),              
('Bradley Cooper','M',1),
('Colman Domingo','M',1),
('Paul Giamatti','M',1),
('Jeffrey Wright','M',1);

# 96th (2024) — Actress in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Emma Stone','F',2),                  
('Lily Gladstone','F',1),
('Sandra Hüller','F',5),
('Carey Mulligan','F',1),
('Annette Bening','F',1);

# 96th (2024) — Actor in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Robert Downey Jr.','M',1),           
('Ryan Gosling','M',1),
('Sterling K. Brown','M',1),
('Robert De Niro','M',1),
('Mark Ruffalo','M',2);

# 96th (2024) — Actress in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Da''Vine Joy Randolph','F',1),       
('Emily Blunt','M',1),
('Danielle Brooks','F',1),
('America Ferrera','M',1),
('Jodie Foster','M',1);

# 96th (2024) — Cinematography
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Hoyte van Hoytema','M',1),           
('Robbie Ryan','M',2),                 
('Rodrigo Prieto','M',1),              
('Matthew Libatique','M',1),           
('Edward Lachman','M',1);              

# 96th (2024) — Visual Effects
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Takashi Yamazaki','M',1),('Kiyoko Shibuya','M',1),('Masaki Takahashi','M',1),('Tatsuji Nojima','M',1), 
('Andrew Roberts','M',1),('Ian Comley','M',1),('Jay Cooper','M',1),('Neil Corbould','M',1),              
('Stephane Ceretti','M',1),('Christopher Townsend','M',1),('Guy Williams','M',1),('Theo Bialek','M',1),  
('Charley Henley','M',1),('Luc-Ewen Martin-Fenouillet','M',1),('Simone Coco','M',1),('Neil Corbould','M',1), 
('Alex Wuttke','M',1),('Simone Coco','M',1);                                                              


# 95th (2023) — Best Picture (all nominated producers present in your list)
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Daniel Kwan','M',1),('Daniel Scheinert','M',1),('Jonathan Wang','M',1),                          
('Malte Grunert','M',6),                                                                          
('James Cameron','M',1),('Jon Landau','M',1),                                                     
('Graham Broadbent','M',7),('Pete Czernin','M',7),('Martin McDonagh','M',7),                      
('Baz Luhrmann','M',1),('Catherine Martin','M',1),                                                
('Kristie Macosko Krieger','M',1),('Steven Spielberg','M',1),('Tony Kushner','M',1),              
('Todd Field','M',6),('Alexandra Milchan','F',6),                                                 
('Tom Cruise','M',1),('Christopher McQuarrie','M',1),('David Ellison','M',1),('Jerry Bruckheimer','M',1), 
('Erik Hemmendorff','M',16),('Philippe Bober','M',16),                                            
('Dede Gardner','M',4),('Jeremy Kleiner','M',4),('Frances McDormand','F',1);                      

# 95th (2023) — Directing
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Daniel Kwan','M',1),('Daniel Scheinert','M',1),  
('Martin McDonagh','M',7),
('Steven Spielberg','M',1),
('Todd Field','M',6),
('Ruben Östlund','M',16);

# 95th (2023) — Actor in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Brendan Fraser','M',1),             
('Austin Butler','M',1),
('Colin Farrell','M',7),
('Paul Mescal','M',1),
('Bill Nighy','M',1);

# 95th (2023) — Actress in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Michelle Yeoh','F',1),              
('Cate Blanchett','F',6),
('Ana de Armas','F',1),
('Andrea Riseborough','F',1),
('Michelle Williams','F',1);

# 95th (2023) — Actor in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Ke Huy Quan','M',1),                
('Brendan Gleeson','M',7),
('Brian Tyree Henry','M',1),
('Judd Hirsch','M',1),
('Barry Keoghan','M',7);

# 95th (2023) — Actress in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Jamie Lee Curtis','F',1),           
('Angela Bassett','M',1),
('Hong Chau','M',1),
('Kerry Condon','F',7),
('Stephanie Hsu','M',1);

# 95th (2023) — Cinematography
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('James Friend','M',6),               
('Darius Khondji','M',1),             
('Mandy Walker','M',1),               
('Roger Deakins','M',1),              
('Florian Hoffmeister','M',6);        

# 95th (2023) — Visual Effects
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Joe Letteri','M',1),('Richard Baneham','M',1),('Eric Saindon','M',1),('Daniel Barrett','M',1),     
('Frank Petzold','M',6),('Markus Frank','M',6),('Kamil Jafar','M',6),('Viktor Prášil','M',6),        
('Dan Lemmon','M',1),('Russell Earl','M',1),('Anders Langlands','M',1),('Dominic Tuohy','M',1),      
('Geoffrey Baumann','M',1),('Craig Hammack','M',1),('R. Christopher White','M',1),('Dan Sudick','M',1), 
('Ryan Tudhope','M',1),('Seth Hill','M',1),('Bryan Litson','M',1),('Scott R. Fisher','M',1);         

# Academy Awards 2022

# Best Picture
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Philippe Rousselet','M',1),('Fabrice Gianfermi','M',1),('Patrick Wachsberger','M',1),          
('Laura Berwick','F',2),('Kenneth Branagh','M',2),('Becca Kovacik','M',2),('Tamar Thomas','M',2), 
('Adam McKay','M',1),('Kevin Messick','M',1),                                                     
('Teruhisa Yamamoto','M',9),                                                                      
('Mary Parent','M',1),('Cale Boyter','M',1),('Denis Villeneuve','M',1),                           
('Tim White','M',1),('Trevor White','M',1),('Will Smith','M',1),                                  
('Paul Thomas Anderson','M',1),('Sara Murphy','M',1),('Adam Somner','M',1),                       
('Guillermo del Toro','M',1),('J. Miles Dale','M',1),('Bradley Cooper','M',1),                    
('Jane Campion','F',3),('Tanya Seghatchian','M',3),('Emile Sherman','M',3),('Iain Canning','M',3),('Roger Frappier','M',3), 
('Steven Spielberg','M',1),('Kristie Macosko Krieger','M',1);                                     

# Directing
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Jane Campion','F',3),                 
('Kenneth Branagh','M',2),
('Ryusuke Hamaguchi','M',9),
('Paul Thomas Anderson','M',1),
('Steven Spielberg','M',1);

# Actor in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Will Smith','M',1),                   
('Javier Bardem','M',1),
('Benedict Cumberbatch','M',3),
('Andrew Garfield','M',1),
('Denzel Washington','M',1);

# Actress in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Jessica Chastain','F',1),             
('Olivia Colman','F',2),
('Penélope Cruz','F',1),
('Nicole Kidman','F',1),
('Kristen Stewart','F',1);

# Actor in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Troy Kotsur','M',1),                  
('Ciarán Hinds','M',2),
('Jesse Plemons','M',3),
('J.K. Simmons','M',1),
('Kodi Smit-McPhee','M',3);

# Actress in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Ariana DeBose','F',1),                
('Jessie Buckley','M',1),
('Judi Dench','M',2),
('Kirsten Dunst','F',3),
('Aunjanue Ellis','M',1);

# Cinematography
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Greig Fraser','M',1),                 
('Dan Laustsen','M',1),                 
('Ari Wegner','M',3),                   
('Bruno Delbonnel','M',1),              
('Janusz Kaminski','M',1);              

# Visual Effects
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Paul Lambert','M',1),('Tristan Myles','M',1),('Brian Connor','M',1),('Gerd Nefzer','M',1),      
('Swen Gillberg','M',1),('Bryan Grill','M',1),('Nikos Kalaitzidis','M',1),('Dan Sudick','M',1),   
('Charlie Noble','M',1),('Joel Green','M',1),('Jonathan Fawkner','M',1),('Chris Corbould','M',1), 
('Christopher Townsend','M',1),('Joe Farrell','M',1),('Sean Noel Walker','M',1),('Dan Oliver','M',1), 
('Kelly Port','M',1),('Chris Waegner','M',1),('Scott Edelstein','M',1),('Dan Sudick','M',1);      


# Academy awards 2023

# Best Picture
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Frances McDormand','F',1),('Peter Spears','M',1),('Mollye Asher','M',1),('Dan Janvey','M',1),   
('David Parfitt','M',2),('Jean-Louis Livi','M',2),('Philippe Carcassonne','M',2),                 
('Shaka King','M',1),('Charles D. King','M',1),('Ryan Coogler','M',1),                            
('Ceán Chaffin','M',1),('Eric Roth','M',1),('Douglas Urbanski','M',1),                            
('Christina Oh','M',1),                                                                           
('Ben Browning','M',1),('Ashley Fox','M',1),('Emerald Fennell','M',1),                            
('Bert Hamelinck','M',1),('Sacha Ben Harroche','M',1),                                            
('Marc Platt','M',1),('Stuart Besser','M',1);                                                     

# Directing
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Chloé Zhao','F',1),                  
('Thomas Vinterberg','M',1),
('David Fincher','M',1),
('Lee Isaac Chung','M',1),
('Emerald Fennell','M',1);

# Actor in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Anthony Hopkins','M',2),             
('Riz Ahmed','M',1),
('Chadwick Boseman','M',1),
('Gary Oldman','M',1),
('Steven Yeun','M',1);

# Actress in a Leading Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Frances McDormand','F',1),           
('Viola Davis','M',1),
('Andra Day','M',1),
('Vanessa Kirby','F',1),
('Carey Mulligan','F',1);

# Actor in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Daniel Kaluuya','M',1),              
('Sacha Baron Cohen','M',1),
('Leslie Odom','M',1),
('Paul Raci','M',1),
('Lakeith Stanfield','M',1);

# Actress in a Supporting Role
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Yuh-Jung Youn','F',1),               
('Maria Bakalova','F',1),
('Glenn Close','M',1),
('Olivia Colman','F',2),
('Amanda Seyfried','M',1);

# Cinematography
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Erik Messerschmidt','M',1),          
('Sean Bobbitt','M',1),                
('Dariusz Wolski','M',1),              
('Joshua James Richards','M',1),       
('Phedon Papamichael','M',1);          

# Visual Effects
INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Andrew Jackson','M',1),('David Lee','M',1),('Andrew Lockley','M',1),('Scott R. Fisher','M',1),  
('Matt Sloan','M',1),('Genevieve Camilleri','M',1),('Matt Everitt','M',1),('Brian Cox','M',1),    
('Matthew Kasmir','M',1),('David Watkins','M',1),('Max Solomon','M',1),                           
('Sean Faden','M',1),('Anders Langlands','M',1),('Seth Maury','M',1),('Steve Ingram','M',1),      
('Nick Davis','M',1),('Greg Fisher','M',1),('Ben Jones','M',1),('Santiago Colomo Martinez','M',1); 


INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Sean Baker','M',1),
('Brady Corbet','M',2),
('James Mangold','M',1),
('Jacques Audiard','M',1),
('Coralie Fargeat','M',5);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Stephen James','M',1),
('Rhys Salcombe','M',1),
('Stephen Unterfranz','M',1),
('Rodney Burke','M',1),
('Eric Barba','M',1),
('Nelson Sepulveda-Fauser','M',1),
('Daniel Macarin','M',1),
('Shane Mahan','M',1),
('David Clayton','M',1),
('Keith Herft','M',1),
('Peter Stubbs','M',1),
('Pablo Helman','M',1),
('David Shirk','M',1),
('Paul Corbould','M',1);

INSERT INTO Person (Person_name, Gender, Country_ID) VALUES
('Tessa Ross','F',1),
('Juliette Howell','F',4),
('Michael A. Jackman','M',1),
('Maria Carlota Bruno','F',2),
('Rodrigo Teixeira','M',28);

# 2021 Academy Awards

INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES
(1,'Best Picture',1, 1, 276),          
(2,'Directing',1, 1, 296),             
(3,'Actor in a Leading Role',1, 2, 301),
(4,'Actress in a Leading Role',1, 1, 306),
(5,'Actor in a Supporting Role',1, 3, 311),
(6,'Actress in a Supporting Role',1, 5, 316),
(7,'Cinematography',1, 4, 321),        
(8,'Visual Effects',1,71, 326); 

# 2022 Academy Awards

INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES
(9,'Best Picture',2, 16,196),          
(10,'Directing',2, 24,225),            
(11,'Actor in a Leading Role',2, 21,230),
(12,'Actress in a Leading Role',2, 29,235),
(13,'Actor in a Supporting Role',2, 16,240),
(14,'Actress in a Supporting Role',2, 25,245),
(15,'Cinematography',2, 20,250),       
(16,'Visual Effects',2, 20,255);       

# 2023 Academy Awards

INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES
(17,'Best Picture',3, 33,122),         
(18,'Directing',3, 33,145),            
(19,'Actor in a Leading Role',3, 47,151),
(20,'Actress in a Leading Role',3, 33,156),
(21,'Actor in a Supporting Role',3, 33,161),
(22,'Actress in a Supporting Role',3, 33,166),
(23,'Cinematography',3, 34,171),       
(24,'Visual Effects',3, 35,176);       

# 2024 Academy Awards

INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES
(25,'Best Picture',4, 48,46),          
(26,'Directing',4, 48,72),             
(27,'Actor in a Leading Role',4, 48,77),
(28,'Actress in a Leading Role',4, 56,82),
(29,'Actor in a Supporting Role',4, 48,87),
(30,'Actress in a Supporting Role',4, 52,92),
(31,'Cinematography',4, 48,97),        
(32,'Visual Effects',4,72, 102); 

# 2025 Academy Awards

INSERT INTO Award (Award_ID, Award_name, Ceremony_ID, Film_ID, Person_ID) VALUES
(33,'Best Picture',5, 61,345) ,  
(34,'Directing',5, 61,345),     
(35,'Actor in a Leading Role',5, 64, 1),      
(36,'Actress in a Leading Role',5, 61, 8),    
(37,'Actor in a Supporting Role',5,73, 12), 
(38,'Actress in a Supporting Role',5,74, 20),
(39,'Cinematography',5, 64, 21),              
(40,'Visual Effects',5, 62, 26);               

# 2025 Academy Awards
# Best Picture (film-level; producer Person_ID when available)
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(1, 33, 61, 345, 1, 'Best Picture'),     
(2, 33, 64, 346, 0, 'Best Picture'),     
(3, 33, 75, 347, 0, 'Best Picture'),     
(4, 33, 76, 364, 0, 'Best Picture'),    
(5, 33, 62, 365, 0, 'Best Picture'),     
(6, 33, 74, 366, 0, 'Best Picture'),     
(7, 33, 84, 367, 0, 'Best Picture'),    
(8, 33, 63, 349, 0, 'Best Picture'),     
(9, 33, 70, 294, 0, 'Best Picture');     


# Directing
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(10, 34, 61, 345, 1, 'Directing'),   
(11, 34, 64, 346, 0, 'Directing'),   
(12, 34, 75, 347, 0, 'Directing'),   
(13, 34, 74, 348, 0, 'Directing'),   
(14, 34, 63, 349, 0, 'Directing');   

# Actor in a Leading Role 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(15, 35, 64, 1, 1, 'Actor in a Leading Role'),   
(16, 35, 75, 2, 0, 'Actor in a Leading Role'),   
(17, 35, 78, 3, 0, 'Actor in a Leading Role'),   
(18, 35, 76, 4, 0, 'Actor in a Leading Role'),   
(19, 35, 77, 5, 0, 'Actor in a Leading Role');   

# Actress in a Leading Role 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(20, 36, 70, 6, 0, 'Actress in a Leading Role'),   
(21, 36, 74, 7, 0, 'Actress in a Leading Role'),   
(22, 36, 61, 8, 1, 'Actress in a Leading Role'),   
(23, 36, 63, 9, 0, 'Actress in a Leading Role'),   
(24, 36, 84, 10, 0, 'Actress in a Leading Role');  

# Actor in a Supporting Role 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(25, 37, 61, 11, 0, 'Actor in a Supporting Role'),   
(26, 37, 73, 12, 1, 'Actor in a Supporting Role'),   
(27, 37, 75, 13, 0, 'Actor in a Supporting Role'),   
(28, 37, 64, 14, 0, 'Actor in a Supporting Role'),   
(29, 37, 77, 15, 0, 'Actor in a Supporting Role');   

# Actress in a Supporting Role 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(30, 38, 75, 16, 0, 'Actress in a Supporting Role'),  
(31, 38, 70, 17, 0, 'Actress in a Supporting Role'),  
(32, 38, 64, 18, 0, 'Actress in a Supporting Role'),  
(33, 38, 76, 19, 0, 'Actress in a Supporting Role'),  
(34, 38, 74, 20, 1, 'Actress in a Supporting Role');  

# Cinematography 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(35, 39, 64, 21, 1, 'Cinematography'),   
(36, 39, 62, 22, 0, 'Cinematography'),   
(37, 39, 74, 23, 0, 'Cinematography'),   
(38, 39, 79, 24, 0, 'Cinematography'),   
(39, 39, 80, 25, 0, 'Cinematography');   

# Visual Effects 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES

(40, 40, 81, 354, 0, 'Visual Effects'),
(41, 40, 81, 355, 0, 'Visual Effects'),
(42, 40, 81, 356, 0, 'Visual Effects'),
(43, 40, 81, 357, 0, 'Visual Effects'),

(44, 40, 82, 358, 0, 'Visual Effects'),
(45, 40, 82, 359, 0, 'Visual Effects'),
(46, 40, 82, 360, 0, 'Visual Effects'),

(47, 40, 62, 26, 1, 'Visual Effects'),
(48, 40, 62, 350, 1, 'Visual Effects'),
(49, 40, 62, 351, 1, 'Visual Effects'),
(50, 40, 62, 29, 1, 'Visual Effects'),

(51, 40, 83, 30, 0, 'Visual Effects'),
(52, 40, 83, 352, 0, 'Visual Effects'),
(53, 40, 83, 32, 0, 'Visual Effects'),
(54, 40, 83, 353, 0, 'Visual Effects'),

(55, 40, 70, 361, 0, 'Visual Effects'),
(56, 40, 70, 265, 0, 'Visual Effects'),
(57, 40, 70, 362, 0, 'Visual Effects'),
(58, 40, 70, 363, 0, 'Visual Effects');

# 2024 Academy Awards

# Best Picture 
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(59, 25, 48, 46, 1, 'Best Picture'),   
(60, 25, 49, 49, 0, 'Best Picture'),   
(61, 25, 50, 51, 0, 'Best Picture'),   
(62, 25, 51, 53, 0, 'Best Picture'),   
(63, 25, 52, 56, 0, 'Best Picture'),   
(64, 25, 53, 57, 0, 'Best Picture'),   
(65, 25, 54, 60, 0, 'Best Picture'),   
(66, 25, 55, 64, 0, 'Best Picture'),   
(67, 25, 56, 67, 0, 'Best Picture'),   
(68, 25, 57, 71, 0, 'Best Picture');   

# Directing
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(69, 26, 48, 72, 1, 'Directing'),  
(70, 26, 50, 73, 0, 'Directing'),  
(71, 26, 53, 74, 0, 'Directing'),  
(72, 26, 57, 75, 0, 'Directing'),  
(73, 26, 56, 76, 0, 'Directing');  

# Actor in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(74, 27, 48, 77, 1, 'Actor in a Leading Role'),  
(75, 27, 54, 78, 0, 'Actor in a Leading Role'),  
(76, 27, 59, 79, 0, 'Actor in a Leading Role'),  
(77, 27, 52, 80, 0, 'Actor in a Leading Role'),  
(78, 27, 49, 81, 0, 'Actor in a Leading Role');  

# Actress in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(79, 28, 56, 82, 1, 'Actress in a Leading Role'),  
(80, 28, 53, 83, 0, 'Actress in a Leading Role'),  
(81, 28, 50, 84, 0, 'Actress in a Leading Role'),  
(82, 28, 54, 85, 0, 'Actress in a Leading Role'),  
(83, 28, 58, 86, 0, 'Actress in a Leading Role');  

# Actor in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(84, 29, 48, 87, 1, 'Actor in a Supporting Role'),  
(85, 29, 51, 88, 0, 'Actor in a Supporting Role'),  
(86, 29, 49, 89, 0, 'Actor in a Supporting Role'),  
(87, 29, 53, 90, 0, 'Actor in a Supporting Role'),  
(88, 29, 56, 91, 0, 'Actor in a Supporting Role');  

# Actress in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(89, 30, 52, 92, 1, 'Actress in a Supporting Role'),  
(90, 30, 48, 93, 0, 'Actress in a Supporting Role'),  
(91, 30, 60, 94, 0, 'Actress in a Supporting Role'),  
(92, 30, 51, 95, 0, 'Actress in a Supporting Role'),  
(93, 30, 58, 96, 0, 'Actress in a Supporting Role');  

# Cinematography
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(94, 31, 48, 97, 1, 'Cinematography'),  
(95, 31, 56, 98, 0, 'Cinematography'),  
(96, 31, 53, 99, 0, 'Cinematography'),  
(97, 31, 54, 100, 0, 'Cinematography'), 
(98, 31, 89, 101, 0, 'Cinematography'); 

# Visual Effects
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES

(99,  32, 72, 102, 1, 'Visual Effects'),
(100, 32, 72, 103, 1, 'Visual Effects'),
(101, 32, 72, 104, 1, 'Visual Effects'),
(102, 32, 72, 105, 1, 'Visual Effects'),

(103, 32, 85, 106, 0, 'Visual Effects'),
(104, 32, 85, 107, 0, 'Visual Effects'),
(105, 32, 85, 108, 0, 'Visual Effects'),
(106, 32, 85, 109, 0, 'Visual Effects'),

(107, 32, 86, 110, 0, 'Visual Effects'),
(108, 32, 86, 111, 0, 'Visual Effects'),
(109, 32, 86, 112, 0, 'Visual Effects'),
(110, 32, 86, 113, 0, 'Visual Effects'),

(111, 32, 87, 114, 0, 'Visual Effects'),
(112, 32, 87, 115, 0, 'Visual Effects'),
(113, 32, 87, 116, 0, 'Visual Effects'),
(114, 32, 87, 117, 0, 'Visual Effects'),

(115, 32, 88, 118, 0, 'Visual Effects'),
(116, 32, 88, 119, 0, 'Visual Effects');


# Academy Awards 2023


# Best Picture
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(117, 17, 33, 122, 1, 'Best Picture'),  
(118, 17, 34, 123, 0, 'Best Picture'),  
(119, 17, 35, 125, 0, 'Best Picture'),  
(120, 17, 36, 126, 0, 'Best Picture'),  
(121, 17, 37, 129, 0, 'Best Picture'),  
(122, 17, 38, 131, 0, 'Best Picture'),  
(123, 17, 39, 134, 0, 'Best Picture'),  
(124, 17, 40, 136, 0, 'Best Picture'),  
(125, 17, 41, 140, 0, 'Best Picture'),  
(126, 17, 42, 142, 0, 'Best Picture');  

# Directing (two winners, co-directors)
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(127, 18, 33, 145, 1, 'Directing'),  
(128, 18, 33, 146, 1, 'Directing'),  
(129, 18, 36, 147, 0, 'Directing'),  
(130, 18, 38, 148, 0, 'Directing'),  
(131, 18, 39, 149, 0, 'Directing'),  
(132, 18, 41, 150, 0, 'Directing');  

# Actor in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(133, 19, 47, 151, 1, 'Actor in a Leading Role'),  
(134, 19, 37, 152, 0, 'Actor in a Leading Role'),  
(135, 19, 36, 153, 0, 'Actor in a Leading Role'),  
(136, 19, 90, 154, 0, 'Actor in a Leading Role'),
(137, 19, 91, 155, 0, 'Actor in a Leading Role');

# Actress in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(138, 20, 33, 156, 1, 'Actress in a Leading Role'),  
(139, 20, 39, 157, 0, 'Actress in a Leading Role'),  
(140, 20, 43, 158, 0, 'Actress in a Leading Role'),  
(141, 20, 44, 159, 0, 'Actress in a Leading Role'),  
(142, 20, 38, 160, 0, 'Actress in a Leading Role');  

# Actor in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(143, 21, 33, 161, 1, 'Actor in a Supporting Role'),  
(144, 21, 36, 162, 0, 'Actor in a Supporting Role'),  
(145, 21, 45, 163, 0, 'Actor in a Supporting Role'),  
(146, 21, 38, 164, 0, 'Actor in a Supporting Role'),  
(147, 21, 36, 165, 0, 'Actor in a Supporting Role');  

# Actress in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(148, 22, 33, 166, 1, 'Actress in a Supporting Role'),  
(149, 22, 46, 167, 0, 'Actress in a Supporting Role'),  
(150, 22, 47, 168, 0, 'Actress in a Supporting Role'),  
(151, 22, 36, 169, 0, 'Actress in a Supporting Role'),  
(152, 22, 33, 170, 0, 'Actress in a Supporting Role');  

# Cinematography
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(153, 23, 34, 171, 1, 'Cinematography'),  
(154, 23, 92, 172, 0, 'Cinematography'),
(155, 23, 37, 173, 0, 'Cinematography'),  
(156, 23, 93, 174, 0, 'Cinematography'),
(157, 23, 39, 175, 0, 'Cinematography');  

# Visual Effects
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES

(158, 24, 35, 176, 1, 'Visual Effects'),
(159, 24, 35, 177, 1, 'Visual Effects'),
(160, 24, 35, 178, 1, 'Visual Effects'),
(161, 24, 35, 179, 1, 'Visual Effects'),

(162, 24, 34, 180, 0, 'Visual Effects'),
(163, 24, 34, 181, 0, 'Visual Effects'),
(164, 24, 34, 182, 0, 'Visual Effects'),
(165, 24, 34, 183, 0, 'Visual Effects'),

(166, 24, 94, 184, 0, 'Visual Effects'),
(167, 24, 94, 185, 0, 'Visual Effects'),
(168, 24, 94, 186, 0, 'Visual Effects'),
(169, 24, 94, 187, 0, 'Visual Effects'),

(170, 24, 46, 188, 0, 'Visual Effects'),
(171, 24, 46, 189, 0, 'Visual Effects'),
(172, 24, 46, 190, 0, 'Visual Effects'),
(173, 24, 46, 191, 0, 'Visual Effects'),

(174, 24, 40, 192, 0, 'Visual Effects'),
(175, 24, 40, 193, 0, 'Visual Effects'),
(176, 24, 40, 194, 0, 'Visual Effects'),
(177, 24, 40, 195, 0, 'Visual Effects');


# Academy Awards 2022


# Best Picture
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(178, 9, 16, 196, 1, 'Best Picture'),  
(179, 9, 17, 199, 0, 'Best Picture'),  
(180, 9, 18, 203, 0, 'Best Picture'),  
(181, 9, 19, 205, 0, 'Best Picture'),  
(182, 9, 20, 206, 0, 'Best Picture'),  
(183, 9, 21, 209, 0, 'Best Picture'),  
(184, 9, 22, 212, 0, 'Best Picture'),  
(185, 9, 23, 215, 0, 'Best Picture'),  
(186, 9, 24, 218, 0, 'Best Picture'),  
(187, 9, 25, 223, 0, 'Best Picture');  

# Directing
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(188, 10, 24, 225, 1, 'Directing'),  
(189, 10, 17, 226, 0, 'Directing'),  
(190, 10, 19, 227, 0, 'Directing'),  
(191, 10, 22, 228, 0, 'Directing'),  
(192, 10, 25, 229, 0, 'Directing');  

# Actor in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(193, 11, 21, 230, 1, 'Actor in a Leading Role'),  
(194, 11, 26, 231, 0, 'Actor in a Leading Role'),  
(195, 11, 24, 232, 0, 'Actor in a Leading Role'),  
(196, 11, 27, 233, 0, 'Actor in a Leading Role'),  
(197, 11, 28, 234, 0, 'Actor in a Leading Role');  

# Actress in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(198, 12, 29, 235, 1, 'Actress in a Leading Role'),  
(199, 12, 30, 236, 0, 'Actress in a Leading Role'),  
(200, 12, 31, 237, 0, 'Actress in a Leading Role'),  
(201, 12, 26, 238, 0, 'Actress in a Leading Role'),  
(202, 12, 32, 239, 0, 'Actress in a Leading Role');  

# Actor in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(203, 13, 16, 240, 1, 'Actor in a Supporting Role'),  
(204, 13, 17, 241, 0, 'Actor in a Supporting Role'),  
(205, 13, 24, 242, 0, 'Actor in a Supporting Role'),  
(206, 13, 26, 243, 0, 'Actor in a Supporting Role'),  
(207, 13, 24, 244, 0, 'Actor in a Supporting Role');  

# Actress in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(208, 14, 25, 245, 1, 'Actress in a Supporting Role'),  
(209, 14, 30, 246, 0, 'Actress in a Supporting Role'),  
(210, 14, 17, 247, 0, 'Actress in a Supporting Role'),  
(211, 14, 24, 248, 0, 'Actress in a Supporting Role'),  
(212, 14, 21, 249, 0, 'Actress in a Supporting Role');  

# Cinematography
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(213, 15, 20, 250, 1, 'Cinematography'),  
(214, 15, 23, 251, 0, 'Cinematography'),  
(215, 15, 24, 252, 0, 'Cinematography'),  
(216, 15, 28, 253, 0, 'Cinematography'),  
(217, 15, 25, 254, 0, 'Cinematography');  

# Visual Effects
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES

(218, 16, 20, 255, 1, 'Visual Effects'),
(219, 16, 20, 256, 1, 'Visual Effects'),
(220, 16, 20, 257, 1, 'Visual Effects'),
(221, 16, 20, 258, 1, 'Visual Effects'),

(222, 16, 102, 259, 0, 'Visual Effects'),
(223, 16, 102, 260, 0, 'Visual Effects'),
(224, 16, 102, 261, 0, 'Visual Effects'),
(225, 16, 102, 262, 0, 'Visual Effects'),

(226, 16, 103, 263, 0, 'Visual Effects'),
(227, 16, 103, 264, 0, 'Visual Effects'),
(228, 16, 103, 265, 0, 'Visual Effects'),
(229, 16, 103, 266, 0, 'Visual Effects'),

(230, 16, 104, 267, 0, 'Visual Effects'),
(231, 16, 104, 268, 0, 'Visual Effects'),
(232, 16, 104, 269, 0, 'Visual Effects'),
(233, 16, 104, 270, 0, 'Visual Effects'),

(234, 16, 105, 271, 0, 'Visual Effects'),
(235, 16, 105, 272, 0, 'Visual Effects'),
(236, 16, 105, 273, 0, 'Visual Effects'),
(237, 16, 105, 274, 0, 'Visual Effects');


# Academy Awards 2021


# Best Picture
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(238, 1, 1, 275, 1, 'Best Picture'),  
(239, 1, 2, 279, 0, 'Best Picture'),  
(240, 1, 3, 282, 0, 'Best Picture'),  
(241, 1, 4, 285, 0, 'Best Picture'),  
(242, 1, 5, 288, 0, 'Best Picture'),  
(243, 1, 6, 289, 0, 'Best Picture'),  
(244, 1, 7, 292, 0, 'Best Picture'),  
(245, 1, 8, 294, 0, 'Best Picture');  

# Directing
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(246, 2, 1, 296, 1, 'Directing'),  
(247, 2, 9, 297, 0, 'Directing'),  
(248, 2, 4, 298, 0, 'Directing'),  
(249, 2, 5, 299, 0, 'Directing'),  
(250, 2, 6, 300, 0, 'Directing');  

# Actor in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(251, 3, 2, 301, 1, 'Actor in a Leading Role'),  
(252, 3, 7, 302, 0, 'Actor in a Leading Role'),  
(253, 3, 10, 303, 0, 'Actor in a Leading Role'), 
(254, 3, 4, 304, 0, 'Actor in a Leading Role'),  
(255, 3, 5, 305, 0, 'Actor in a Leading Role');  

# Actress in a Leading Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(256, 4, 1, 306, 1, 'Actress in a Leading Role'),  
(257, 4, 10, 307, 0, 'Actress in a Leading Role'), 
(258, 4, 11, 308, 0, 'Actress in a Leading Role'), 
(259, 4, 12, 309, 0, 'Actress in a Leading Role'), 
(260, 4, 6, 310, 0, 'Actress in a Leading Role');  

# Actor in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(261, 5, 3, 311, 1, 'Actor in a Supporting Role'),  
(262, 5, 8, 312, 0, 'Actor in a Supporting Role'),  
(263, 5, 13, 313, 0, 'Actor in a Supporting Role'), 
(264, 5, 7, 314, 0, 'Actor in a Supporting Role'),  
(265, 5, 3, 315, 0, 'Actor in a Supporting Role');  

# Actress in a Supporting Role
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(266, 6, 5, 316, 1, 'Actress in a Supporting Role'),  
(267, 6, 14, 317, 0, 'Actress in a Supporting Role'), 
(268, 6, 15, 318, 0, 'Actress in a Supporting Role'), 
(269, 6, 2, 319, 0, 'Actress in a Supporting Role'),  
(270, 6, 4, 320, 0, 'Actress in a Supporting Role');  

# Cinematography
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES
(271, 7, 4, 321, 1, 'Cinematography'),  
(272, 7, 3, 322, 0, 'Cinematography'),  
(273, 7, 95, 323, 0, 'Cinematography'), 
(274, 7, 1, 324, 0, 'Cinematography'),  
(275, 7, 8, 325, 0, 'Cinematography');  

# Visual Effects
INSERT INTO Nominee (Nominee_ID, Award_ID, Film_ID, Person_ID, Is_Winner, Category) VALUES

(276, 8, 71, 326, 1, 'Visual Effects'),
(277, 8, 71, 327, 1, 'Visual Effects'),
(278, 8, 71, 328, 1, 'Visual Effects'),
(279, 8, 71, 329, 1, 'Visual Effects'),

(280, 8, 96, 330, 0, 'Visual Effects'),
(281, 8, 96, 331, 0, 'Visual Effects'),
(282, 8, 96, 332, 0, 'Visual Effects'),
(283, 8, 96, 333, 0, 'Visual Effects'),

(284, 8, 97, 334, 0, 'Visual Effects'),
(285, 8, 97, 335, 0, 'Visual Effects'),
(286, 8, 97, 336, 0, 'Visual Effects'),

(287, 8, 98, 337, 0, 'Visual Effects'),
(288, 8, 98, 338, 0, 'Visual Effects'),
(289, 8, 98, 339, 0, 'Visual Effects'),
(290, 8, 98, 340, 0, 'Visual Effects'),

(291, 8, 99, 341, 0, 'Visual Effects'),
(292, 8, 99, 342, 0, 'Visual Effects'),
(293, 8, 99, 343, 0, 'Visual Effects'),
(294, 8, 99, 344, 0, 'Visual Effects');


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(1,  64, 'László Tóth'),        
(2,  75, 'Bob Dylan'),          
(3,  78, 'Divine G'),           
(4,  76, 'Lawrence'),           
(5,  77, 'Donald Trump');       

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(11, 61, 'Igor'),                               
(12, 73, 'Benji Kaplan'),                       
(13, 75, 'Pete Seeger'),                        
(14, 64, 'Harrison Leo Van Buren Sr.'),         
(15, 77, 'Roy Cohn');                           

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(6,  70, 'Elphaba'),            
(7,  74, 'Emilia/Manitas'),     
(8,  61, 'Ani'),                
(9,  63, 'Elisabeth Sparkle'),  
(10, 84, 'Eunice Paiva');       

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(16, 75, 'Joan Baez'),          
(17, 70, 'Galinda/Glinda'),     
(18, 64, 'Erzébet Tóth'),       
(19, 76, 'Sister Agnes'),       
(20, 74, 'Rita');               



INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(77, 48, 'J. Robert Oppenheimer'),   
(82, 56, 'Bella Baxter'),            
(87, 48, 'Lewis Strauss'),           
(92, 52, 'Mary Lamb');               


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(151, 47, 'Charlie'),                
(156, 33, 'Evelyn Wang'),            
(161, 33, 'Waymond Wang'),           
(166, 33, 'Deirdre Beaubeirdre');    


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(230, 21, 'Richard Williams'),       
(235, 29, 'Tammy Faye Bakker'),      
(240, 16, 'Frank Rossi'),            
(245, 25, 'Anita');                  


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(301, 2, 'Anthony'),                 
(306, 1, 'Fern'),                   
(311, 3, 'Fred Hampton'),            
(316, 5, 'Soon-ja');                



INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(78, 54, 'Leonard Bernstein'),      
(79, 59, 'Bayard Rustin'),          
(80, 52, 'Paul Hunham'),            
(81, 49, 'Thelonious "Monk" Ellison'); 


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(83, 53, 'Mollie Burkhart'),        
(84, 50, 'Sandra Voyter'),          
(85, 54, 'Felicia Montealegre'),    
(86, 58, 'Diana Nyad');             


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(88, 51, 'Ken'),                    
(89, 49, 'Clifford Ellison'),       
(90, 53, 'William Hale'),           
(91, 56, 'Duncan Wedderburn');      


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(93, 48, 'Kitty Oppenheimer'),      
(94, 60, 'Sofia'),                  
(95, 51, 'Gloria'),                 
(96, 58, 'Bonnie Stoll');           



INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(152, 37, 'Elvis Presley'),        
(153, 36, 'Pádraic Súilleabháin'),  
(154, 85, 'Calum'),                 
(155, 86, 'Mr. Williams');          

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(157, 39, 'Lydia Tár'),             
(158, 43, 'Marilyn Monroe'),        
(159, 44, 'Leslie'),                
(160, 38, 'Mitzi Fabelman');        


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(162, 36, 'Colm Doherty'),          
(163, 45, 'James Aucoin'),          
(164, 38, 'Uncle Boris'),           
(165, 36, 'Dominic Kearney');       

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(167, 46, 'Queen Ramonda'),         
(168, 47, 'Liz'),                   
(169, 36, 'Siobhán Súilleabháin'),  
(170, 33, 'Joy Wang / Jobu Tupaki');



INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(231, 26, 'Desi Arnaz'),            
(232, 24, 'Phil Burbank'),          
(233, 27, 'Jonathan Larson'),       
(234, 28, 'Macbeth');               

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(236, 30, 'Leda Caruso'),           
(237, 31, 'Janis Martínez'),        
(238, 26, 'Lucille Ball'),         
(239, 32, 'Princess Diana');       

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(241, 17, 'Pop'),                   
(242, 24, 'George Burbank'),        
(243, 26, 'William Frawley'),       
(244, 24, 'Peter Gordon');          

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(246, 30, 'Young Leda Caruso'),     
(247, 17, 'Granny'),                
(248, 24, 'Rose Gordon'),           
(249, 21, 'Oracene Price');         

INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(302, 7,  'Rubin Stone'),           
(303, 10, 'Levee Green'),           
(304, 4,  'Herman J. Mankiewicz'),  
(305, 5,  'Jacob Yi');              


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(307, 10, 'Ma Rainey'),             
(308, 11, 'Billie Holiday'),        
(309, 12, 'Martha'),                
(310, 6,  'Cassandra "Cassie" Thomas'); 


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(312, 8,  'Abbie Hoffman'),         
(313, 13, 'Sam Cooke'),             
(314, 7,  'Joe'),                   
(315, 3,  'William O''Neal');       


INSERT INTO Act (Person_ID, Film_ID, Role) VALUES
(317, 14, 'Tutar Sagdiyev'),        
(318, 15, 'Mamaw'),                 
(319, 2,  'Anne'),                  
(320, 4,  'Marion Davies');         

