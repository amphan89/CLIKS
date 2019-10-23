
USE cliks_db;

INSERT INTO users (user_name, picture, email) 
VALUES 
('John Smith', 'http://www.stefantell.se/blog/wp-content/uploads/2012/10/Profoto-Telezoom-reflector-through-diffusion-headshot.jpg', 'john_smith@gmail.com'),
('Robert Lewis', 'https://s.hdnux.com/photos/76/36/03/16376043/5/920x920.jpg', 'robert_lewish@hotmail.com'),
('Adam Font', 'https://blakerobinsonphotography.files.wordpress.com/2010/11/capture0063.jpg', 'adam_font@apple.com'),
('William Oak', 'https://www.professionaljeweller.com/wp-content/uploads/2015/03/links%20of%20london%20men.jpg', 'william_oak@gmail.com'),
('Omar Khalil', 'http://urszulakozak.com/wp-content/uploads/2016/07/Urszula-Kozak-Portrait-Ottawa-113.jpg', 'omar_khalil@yahoo.com'),
('Carolina Wallace', 'https://i.pinimg.com/originals/07/3d/4c/073d4c881442c782d2cefed3e7e814f2.jpg', 'carolina_wallace@gmail.com'),
('Barbara Adams', 'https://www.abc.net.au/news/image/11483344-3x2-700x467.jpg', 'barbara_adams@facebook.com'),
('Julia Phillips', 'https://triwaynetworks.com/wp-content/uploads/2013/08/bigstock-Portrait-Of-A-Beautiful-Mature-7014470.jpg', 'julia_phillips@netflix.com'),
('Josephine Curtis', 'https://www.ellasophiephoto.com/IMAGES/portraits/EllaSophie_OaklandWomenPortraitSpecial-ProfessionalCreative.jpg', 'josephine_curtis@gmail.com'),
('Aaleyah Almasi', 'https://www.stu.ae/wp-content/uploads/2018/01/angled-headshot-of-businesswoman.jpg', 'Aaleyah_Almasi@hotmail.com');

INSERT INTO academic_info (user_id, profession, academic_degree, degree_field, academic_institution) 
VALUES 
(1, 'Web Developer', 'BS Degree', 'Computer Sciense', 'SFSU'),
(2, 'Teacher', 'MS Degree', 'History','SDSU'),
(3, 'Software Engineer', 'BS Degree', 'Engineering', 'UC Berkeley'),
(4, 'Architect', 'BA Degree', 'Architecture', 'Boston University'),
(5, 'Lawyer', 'BS Degree', 'Law','Yale'),
(6, 'Product Manager', 'BS Degree', 'Computer Sciense', 'Columbia University'),
(7, 'Sales Representative', 'BS Degree', 'Psychology', 'University of Washington'),
(8, 'Analist', 'BS Degree', 'Business Administration', 'University of Texas'),
(9, 'Software Developer', 'BS Degree', 'Engineering', 'Tennessee State University'),
(10, 'Program Manager','MS Degree', 'Engineering', 'Stanford');

INSERT INTO user_location (user_id, city, user_state, country) 
VALUES 
(1, 'San Francisco', 'CA', 'USA'),
(2, 'San Diego', 'CA', 'USA'),
(3, 'Berkeley', 'CA', 'USA'),
(4, 'Boston', 'MA', 'USA'),
(5, 'Indianapolis', 'IN', 'USA'),
(6, 'New York City', 'NY', 'USA'),
(7, 'Seattle', 'WA', 'USA'),
(8, 'Austin', 'TX', 'USA'),
(9, 'Nashville', 'TN', 'USA'),
(10, 'Palo Alto', 'CA', 'USA');

INSERT INTO coolest_thing (user_id, coolest_thing_done) 
VALUES 
(1, 'Cycled in the Netherlands in 2017'),
(2, 'Backpacked in Peru last year (2018)'),
(3, 'Read Grapes of Wrath during my vacation last month (September, 2019)'),
(4, 'Surfed in Bali this during Summer vacation in 2016'),
(5, 'Fishing trip to Alaska a couple os years ago'),
(6, 'Scuba diving trip to the Channel Islands in 2018'),
(7, 'Finished my 5000 piece puzzle board'),
(8, 'Learned to ride a motorcycle last recently'),
(9, 'Took singing classes'),
(10, 'Took a photography class');

INSERT INTO questions (ques) 
VALUES 
('What interests you?'),
('Do you have a hobby?'),
('Choose a phrase that best defines you as a professional and your career path looking ahead:'),
('Would you ever take a lie detector test with a loved one asking the questions?'),
('Can your philosophy in life be defined as "keep things simple"?'),
('Have you ever dropped food on the floor and then picked it up and eat it?'),
('Is what you are doing now what you always wanted to do growing up?'),
('Have you ever gone through a serious and stressful situation in life?');

INSERT INTO scores (user_id, question_id, answer)
VALUES 
(1,1,2), (2,1,6), (3,1,2), (4,1,8), (5,1,1), (6,1,2), (7,1,9), (8,1,1), (9,1,2), (10,1,8),
(1,2,4), (2,2,12), (3,2,10), (4,2,6), (5,2,1), (6,2,5), (7,2,2), (8,2,5), (9,2,8), (10,2,9),
(1,3,4), (2,3,2), (3,3,5), (4,3,1), (5,3,3), (6,3,1), (7,3,4), (8,3,5), (9,3,2), (10,3,3),
(1,4,1), (2,4,1), (3,4,1), (4,4,2), (5,4,2),(6,4,2), (7,4,1), (8,4,2), (9,4,1), (10,4,1),
(1,5,1), (2,5,1), (3,5,1), (4,5,2), (5,5,2), (6,5,2), (7,5,1), (8,5,2), (9,5,2), (10,5,1),
(1,6,2), (2,6,2), (3,6,2), (4,6,1), (5,6,1), (6,6,2), (7,6,2), (8,6,1), (9,6,2), (10,6,2),
(1,7,1), (2,7,2), (3,7,1), (4,7,1), (5,7,1), (6,7,1),(7,7,2), (8,7,1), (9,7,2), (10,7,1),
(1,8,2), (2,8,1), (3,8,2), (4,8,2), (5,8,2), (6,8,2), (7,8,1), (8,8,1), (9,8,1), (10,8,2);
