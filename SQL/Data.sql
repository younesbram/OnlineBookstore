SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `bookstore`
--

--
-- Dumping data for table `account`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `account` (`account_id`, `login`, `password`, `email`, `role`, `token`, `status`) VALUES
(1, 'admin', 'admin', 'bookstore-admin@yopmail.com', 'admin', '2ee41870577eb8c563156820ca8e7fbb', '0'),
(2, 'owner', 'owner', 'bookstore-owner@yopmail.com', 'owner', '3e3bfd81838548cbd28253489539e351', '0'),
(3, 'user1', 'user1', 'bookstore-user1@yopmail.com', 'user', '', '0');

--
-- Dumping data for table `author`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `author` (`author_id`, `name`) VALUES
(28, ''),
(18, ' Joaquin Vanschoren'),
(22, 'Adam C. Berger'),
(9, 'Alan Donovan'),
(3, 'Andrew Hunt'),
(10, 'Brian Kernighan'),
(25, 'Carmen Mombourquette'),
(27, 'Chris Santella'),
(15, 'David Flanagan'),
(2, 'David Thomas'),
(23, 'David Thousend'),
(5, 'Elisabeth Robson'),
(4, 'Eric Freeman'),
(7, 'Eric Matthes'),
(16, 'Frank Hutter'),
(12, 'Jon Duckett'),
(1, 'Joshua Bloch'),
(14, 'Kevin Wayne'),
(17, 'Lars Kotthoff'),
(8, 'Marijn Haverbeke'),
(11, 'Mark Lutz'),
(26, 'National Geographic'),
(24, 'Pamela Adams'),
(13, 'Robert Sedgewick'),
(6, 'Sam Newman'),
(19, 'Sarah H. Beachy'),
(20, 'Siobhan Addie'),
(21, 'Steve Olson');

--
-- Dumping data for table `book`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `book` (`book_id`, `title`, `is_activated`, `description`, `image_src`, `isbn`, `purchase_price`, `sale_price`, `quantity`, `nbOfPages`, `genre_id`, `publisher_id`) VALUES
(1, 'The Pragmatic Programmer: your journey to mastery, 20th Anniversary Edition', 1, 'The Pragmatic Programmer is one of those rare tech books you’ll read, re-read, and read again over the years. Whether you’re new to the field or an experienced practitioner, you’ll come away with fresh insights each and every time.<br /><br /><br /><br /><br /><br />\n<br /><br /><br /><br /><br /><br />\nDave Thomas and Andy Hunt wrote the first edition of this influential book in 1999 to help their clients create better software and rediscover the joy of coding. These lessons have helped a generation of programmers examine the very essence of software development, independent of any particular language, framework, or methodology, and the Pragmatic philosophy has spawned hundreds of books, screencasts, and audio books, as well as thousands of careers and success stories.', 'Pragmatic-Programmer-journey-mastery-Anniversary.jpg', '978-0135957059', 50.00, 30.00, 50, '352', 2, 1),
(2, 'Head First Design Patterns: Building Extensible and Maintainable Object-Oriented Software', 1, 'You know you don\\\\\\''t want to reinvent the wheel, so you look to Design Patterns: the lessons learned by those who\\\\\\''ve faced the same software design problems. With Design Patterns, you get to take advantage of the best practices and experience of others so you can spend your time on something more challenging. Something more fun. This book shows you the patterns that matter, when to use them and why, how to apply them to your own designs, and the object-oriented design principles on which they\\\\\\''re based. Join hundreds of thousands of developers who\\\\\\''ve improved their object-oriented design skills through Head First Design Patterns.', 'Head-First-Design-Patterns-Object-Oriented.jpg', '978-1492078005', 89.17, 55.50, 50, '672', 2, 2),
(3, 'Effective Java', 1, 'Since this Jolt-award winning classic was last updated in 2008, the Java programming environment has changed dramatically. Java 7 and Java 8 introduced new features and functions including, forEach() method in Iterable interface, default and static methods in Interfaces, Functional Interfaces and Lambda Expressions, Java Stream API for Bulk Data Operations on Collections, Java Time API, Collection API improvements, Concurrency API improvements, and Java IO improvements.', 'Effective-Java-3rd-Joshua-Bloch.jpg', '978-0134685991', 72.35, 35.50, 50, '416', 2, 3),
(4, 'Python Crash Course', 1, 'Reading books is a kind of enjoyment. Reading books is a good habit. We bring you a different kinds of books. You can carry this book where ever you want. It is easy to carry. It can be an ideal gift to yourself and to your loved ones. Care instruction keep away from fire.', 'Python-Crash-Course-Eric-Matthes.jpg', '978-1593279288', 53.95, 32.71, 50, '544', 2, 4),
(5, 'Building Microservices: Designing Fine-Grained Systems', 1, 'As organizations shift from monolithic applications to smaller, self-contained microservices, distributed systems have become more fine-grained. But developing these new systems brings its own host of problems. This expanded second edition takes a holistic view of topics that you need to consider when building, managing, and scaling microservices architectures.\n\nThrough clear examples and practical advice, author Sam Newman gives everyone from architects and developers to testers and IT operators a firm grounding in the concepts. You\\''ll dive into the latest solutions for modeling, integrating, testing, deploying, and monitoring your own autonomous services. Real-world cases reveal how organizations today manage to get the most out of these architectures.', 'Building-Microservices-Designing-Fine-Grained-Systems.jpg', '978-1492034025', 89.44, 68.51, 40, '616', 2, 2),
(6, 'Eloquent JavaScript', 1, 'JavaScript lies at the heart of almost every modern web application, from social apps like Twitter to browser-based game frameworks like Phaser and Babylon. through simple for beginners to pick up and play with, JavaScript is a flexible, complex language that you can use to build full-scale applications.\n\nThis much anticipated and thoroughly revised third edition of Eloquent JavaScript dives deep into the JavaScript language to show you how to write beautiful, effective code. It has been updated to reflect the current state of Java¬Script and web browsers and includes brand-new material on features like class notation, arrow functions, iterators, async functions, template strings, and block scope. A host of new exercises have also been added to test your skills and keep you on track.', 'Eloquent-JavaScript-3rd-Introduction-Programming.jpg', '978-1593279509', 53.00, 29.00, 30, '472', 2, 4),
(7, 'Go Programming Language', 1, 'Go Programming Language  is the authoritative resource for any programmer who wants to learn Go. It shows how to write clear and idiomatic Go to solve real-world problems. The book does not assume prior knowledge of Go nor experience with any specific language, so you’ll find it accessible whether you’re most comfortable with JavaScript, Ruby, Python, Java, or C++.P UL LI DIV style=\\"MARGIN: 0px\\"The first chapter is a tutorial on the basic concepts of Go, introduced through programs for file IO and text processing, simple graphics, and web clients and servers.', 'Go-Programming-Language-Alan-Donovan.jpg', '978-0134190440', 52.71, 49.49, 30, '400', 2, 3),
(8, 'Learning Python: Powerful Object-Oriented Programming', 1, 'Get a comprehensive, in-depth introduction to the core Python language with this hands-on book. Based on author Mark Lutz’s popular training course, this updated fifth edition will help you quickly write efficient, high-quality code with Python. It’s an ideal way to begin, whether you’re new to programming or a professional developer versed in other languages.', 'Learning-Python-Powerful-Object-Oriented-Programming.jpg', '978-1449355739', 96.12, 80.50, 40, '1648', 2, 2),
(9, 'HTML and CSS: Design and Build Websites', 1, 'Every day, more and more people want to learn some HTML and CSS. Joining the professional web designers and programmers are new audiences who need to know a little bit of code at work (update a content management system or e-commerce store) and those who want to make their personal blogs more attractive. Many books teaching HTML and CSS are dry and only written for those who want to become programmers, which is why this book takes an entirely new approach.', 'HTML-CSS-Design-Build-Websites.jpg', '978-1118008188', 35.63, 30.00, 35, '512', 2, 5),
(10, 'Algorithms (4th edition)', 1, 'This fourth edition of Robert Sedgewick and Kevin Wayne’s Algorithms is the leading textbook on algorithms today and is widely used in colleges and universities worldwide. This book surveys the most important computer algorithms currently in use and provides a full treatment of data structures and algorithms for sorting, searching, graph processing, and string processing--including fifty algorithms every programmer should know. In this edition, new Java implementations are written in an accessible modular programming style, where all of the code is exposed to the reader and ready to use.\n\nThe algorithms in this book represent a body of knowledge developed over the last 50 years that has become indispensable, not just for professional programmers and computer science students but for any student with interests in science, mathematics, and engineering, not to mention students who use computation in the liberal arts.', 'Algorithms-4th-Robert-Sedgewick.jpg', '978-0321573513', 111.37, 100.00, 20, '976', 2, 1),
(11, 'jQuery Pocket Reference: Read Less, Learn More', 1, '\\"As someone who uses jQuery on a regular basis, it was surprising to discover how much of the library I’m not using. This book is indispensable for anyone who is serious about using jQuery for non-trivial applications.\\"-- Raffaele Cecco, longtime developer of video games, including Cybernoid, Exolon, and Stormlord', 'jquery-pocket-reference.jpg', '978-1449397227', 25.00, 13.00, 45, '158', 2, 2),
(12, 'Automated Machine Learning: Methods, Systems, Challenges', 1, 'This open access book presents the first comprehensive overview of general methods in Automated Machine Learning (AutoML), collects descriptions of existing systems based on these methods, and discusses the first series of international challenges of AutoML systems. The recent success of commercial ML applications and the rapid growth of the field has created a high demand for off-the-shelf ML methods that can be used easily and without expert knowledge. However, many of the recent machine learning successes crucially rely on human experts, who manually select appropriate ML architectures (deep learning architectures or more traditional ML workflows) and their hyperparameters. To overcome this problem, the field of AutoML targets a progressive automation of machine learning, based on principles from optimization and machine learning itself. This book serves as a point of entry into this quickly-developing field for researchers and advanced students alike, as well as providing a reference for practitioners aiming to use AutoML in their work.', 'Automated-Machine-Learning-Challenges-Springer-ebook.jpg', '978-3030053178', 35.00, 30.00, 30, '287', 1, 6),
(13, 'A History of Canada in Ten Maps: Epic Stories of Charting a Mysterious Land', 1, 'Every map tells a story, and every map has a purpose: inviting us to go somewhere we\\''ve never been. It is an account of what we know, but also a trace of what we long for. Like a story, a map is never completely objective. It records special interests and agendas. It leaves important things unsaid even as it purports to lay things out clearly and indisputably. We can know our history by our maps.', 'History-Canada-Ten-Maps-Mysterious.jpg', '978-0143193982', 22.50, 11.25, 50, '352', 9, 7),
(14, 'Beyond the Trees: A Journey Alone Across Canada\\''s Arctic', 1, 'In the spring of 2017, Adam Shoalts, bestselling author and adventurer, set off on an unprecedented solo journey across North America\\''s greatest wilderness. A place where, in our increasingly interconnected, digital world, it\\''s still possible to wander for months without crossing a single road, or even see another human being.\n\nBetween his starting point in Eagle Plains, Yukon Territory, to his destination in Baker Lake, Nunavut, lies a maze of obstacles: shifting ice floes, swollen rivers, fog-bound lakes, and gale-force storms. And Shoalts must time his departure by the breakup of the spring ice, then sprint across nearly 4,000 kilometers of rugged, wild terrain to arrive before winter closes in.', 'Beyond-Trees-Journey-Across-Canadas.jpg', '978-0735236851', 30.00, 19.51, 70, '336', 9, 7),
(15, 'National Geographic Guide to the National Parks of Canada', 1, 'This completely updated guidebook shows you how to make the most out of your visit to Canada’s 47 gorgeous national parks, just in time for Canada’s 150th birthday—from Cape Breton Highlands to Banff to Pacific Rim National Park Preserve, plus the five newest additions: Nááts\\''ihch\\''oh National Park Reserve, Mealy Mountains, Rouge Urban, Qausuittuq, and Sable Island National Park Reserve of Canada. Written by national park experts who know the parks inside out, chock-full of handy, practical information, and beautifully illustrated with stunning photography and one-of-a-kind maps prepared by National Geographic cartographers specifically for this book, this edition takes you step-by-step to the must-sees of each park, and lesser known places as well, making sure you don’t miss a thing. Detailed guidance highlights the best spots for wildlife watching, favorite places for kayaking, swimming, camping, hiking, and other activities, as well as such nuts-and-bolts information as how to get to each park, the best seasons, where to stay, and much more. This is the only guide you’ll need on your next foray into Canada’s splendid parks.', 'National-Geographic-Guide-Parks-Canada.jpg', '978-1426217562', 29.00, 25.65, 100, '384', 12, 8),
(16, 'The Ultimate Montreal Canadiens Trivia Book', 0, 'The Ultimate Montreal Canadiens Trivia Book: A Collection of Amazing Trivia Quizzes and Fun Facts for Die-Hard Habs Fans!\nhink you know more about the Montreal Canadiens than everyone else?\n\nWell, now you’ve got a chance to prove it! Whether you’re a die-hard fan who’s been around since the dynasty days of the 1970s or a brand-new fan just getting into hockey, The Ultimate Montreal Canadiens Trivia Book will captivate you with hundreds of questions and interesting facts about the team you love.', 'Ultimate-Montreal-Canadiens-Trivia-Book.jpg', '978-1953563187', 56.00, 25.65, 30, '', 13, 9),
(17, 'How to Be Better At Basketball in 21 days', 1, 'The Ultimate Guide to Drastically Improving Your Basketball Shooting, Passing and Dribbling Skills', 'How-Better-Basketball-days-Drastically.jpg', '978-1520883878', 31.52, 23.56, 30, '87', 13, 10),
(18, 'Fifty Places to Play Golf Before You Die', 0, 'Golf Experts Share the World\\''s Greatest Destinations. Golfing enthusiasts and experts describe fifty of the world\\''s finest golf venues, from Ballyliffin in Ireland to New Zealand\\''s Cape Kidnappers, detailing each course\\''s noteworthy holes, location, ambiance, history, local color, and trip-planning suggestions.', 'Fifty-Places-Play-Golf-Before.jpg', '978-1584794745', 31.95, 15.87, 50, '224', 13, 11),
(19, 'Dental Joke Book: 200 Funny Jokes for Dentists & Dental Hygienists & Assistants', 1, 'Need a break after a straining day at the practice or a good laugh after a grueling tooth extraction first thing in the morning? Then you’re going to love the Dental Joke Book featuring 200 hilarious jokes for dentists, dental hygienists, orthodontists and assistants. This book also makes for perfect gift for colleagues and friends and will sure be an instant success in your breakroom.', 'Dental-Joke-Book-Hygienists-Assistants.jpg', '979-8557820523', 18.09, 5.99, 25, '102', 16, 10),
(20, 'Difficult Riddles For Smart Kids: 300 Difficult Riddles And Brain Teasers Families Will Love', 1, 'This kids book is a collection of 300 brain teasing riddles and puzzles. Their purpose is to encourage children to think and stretch their minds. They are designed to test logic, lateral thinking as well as memory and to engage the brain in seeing patterns and connections between different things and circumstances.', 'Difficult-Riddles-Smart-Kids-Families.jpg', '978-1546595908', 15.68, 10.50, 30, '79', 16, 12),
(21, 'Applying an Implementation Science Approach to Genomic Medicine: Workshop Summary', 1, 'Although it is becoming increasingly more common for clinicians to use genomic data in their practices for disease prevention, diagnosis, and treatment, the process of integrating genomic data into the practice of medicine has been a slow and challenging one. Some of the major barriers impeding the incorporation of new genomic technology into clinical practice are: the difficulty of changing routine medical practices to account for the use of genetic testing, the limited knowledge', 'Applying-Implementation-Science-Approach-Medicine-ebook.jpg', '0309437768', 69.56, 45.55, 30, '127', 12, 13),
(22, 'Genomics-Enabled Learning Health Care Systems: Gathering and Using Genomic Information to Improve Patient Care and Research', 1, 'The inclusion of genomic data in a knowledge-generating health care system infrastructure is one promising way to harness the full potential of that information to provide better patient care. In such a system, clinical practice and research influence each other with the goal of improving the efficiency and effectiveness of disease prevention, diagnosis, and treatment. To examine pragmatic approaches to incorporating genomics in learning health care systems, the Institute of Medicine Roundtable on Translating Genomic-Based Research for Health hosted a workshop which convened a variety of stakeholder groups, including commercial developers, health information technology professionals, clinical providers, academic researchers, patient groups, and government and health system representatives, to present their perspectives and participate in discussions on maximizing the value that can be obtained from genomic information. The workshop examined how a variety of systems are capturing and making use of genomic data to generate knowledge for advancing health care in the 21st century. It also sought to evaluate the challenges, opportunities, and best practices for capturing or using genomic information in knowledge-generating health care systems. Genomics-Enabled Learning Health Care Systems summarizes the presentations and discussion of the workshop.', 'Genomics-Enabled-Learning-Health-Care-Systems-ebook.jpg', '978-1773381572', 62.36, 58.24, 30, '157', 12, 13),
(23, 'Leadership in Education: The Power of Generative Dialogue', 1, 'How do we encourage meaningful growth in our schools and classrooms? With over a decade of research and development, including thousands of conversations with leaders, teachers, and students from around the world, the authors of Leadership in Education suggest that sustained and purposeful growth starts with provocation: an emotional incitement that causes reflection, a shift in thinking, and a variation in the course of action. This resource shows educators how to adopt a \\"leader-as-provocateur\\" mindset by demonstrating highly effective ways of questioning that affirm mutual respect, build trust, stimulate reflection, strengthen partnerships, and use inquiry to guide action. A quick and compelling read, this textbook is the ideal resource for graduate students in education and leadership programs across North America, the United Kingdom, and Australia.', 'Leadership-Education-Power-Generative-Dialogue.jpg', '978-1773381572', 44.95, 24.95, 25, '258', 4, 14),
(24, 'New book', 1, 'desc', 'screenshot-39-backend-token-resend.png', '978-1449397227', 31.52, 13.00, 45, '158', 9, 12);

--
-- Dumping data for table `book_author`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `book_author` (`book_author_id`, `book_id`, `author_id`) VALUES
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(1, 3, 1),
(7, 4, 7),
(6, 5, 6),
(8, 6, 8),
(9, 7, 9),
(10, 7, 10),
(11, 8, 11),
(12, 9, 12),
(13, 10, 13),
(14, 10, 14),
(15, 11, 15),
(16, 12, 16),
(17, 12, 17),
(18, 12, 18),
(42, 15, 26),
(43, 18, 27),
(19, 21, 19),
(20, 21, 20),
(35, 22, 2),
(38, 23, 23),
(36, 23, 24),
(37, 23, 25);

--
-- Dumping data for table `cart_book`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `cart_book` (`cart_book_id`, `cart_qty`, `cart_id`, `book_id`) VALUES
(55, 10, 5, 10);

--
-- Dumping data for table `genre`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `genre` (`genre_id`, `name`) VALUES
(8, 'Biographies & Memoirs'),
(5, 'Business & Investing'),
(6, 'Children\\''s Books'),
(7, 'Cookbooks & Food'),
(4, 'Education'),
(16, 'Entertainment'),
(9, 'History'),
(3, 'History & Culture'),
(10, 'Literature'),
(15, 'Medical Books'),
(11, 'Politics'),
(2, 'Programming'),
(12, 'Science'),
(13, 'Sports'),
(1, 'Technology'),
(14, 'Travel');

--
-- Dumping data for table `order`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `order` (`order_id`, `Order_TotalAmount`, `current_status`, `shipping_address`, `billing_address`, `user_id`) VALUES
(1, 550.40, 0, 'Ottawa', 0, 1),
(2, 0.00, 0, '', 0, 1),
(3, 262.00, 0, '', 0, 1),
(4, 90.00, 0, 'Gatino', 0, 1),
(5, 440.50, 0, 'Gatino', 0, 1),
(6, 458.05, 0, 'Ottawa', 0, 1);

--
-- Dumping data for table `order_book`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `order_book` (`order_book_id`, `qty`, `amounts`, `book_id`, `order_id`) VALUES
(1, 1, 55.50, 2, 1),
(2, 10, 49.49, 7, 1),
(3, 2, 60.00, 1, 2),
(4, 3, 166.50, 2, 2),
(5, 1, 35.50, 3, 2),
(6, 2, 60.00, 1, 3),
(7, 3, 166.50, 2, 3),
(8, 1, 35.50, 3, 3),
(9, 2, 60.00, 1, 4),
(10, 1, 30.00, 9, 4),
(11, 1, 30.00, 1, 5),
(12, 1, 55.50, 2, 5),
(13, 10, 355.00, 3, 5),
(14, 2, 60.00, 1, 6),
(15, 1, 55.50, 2, 6),
(16, 5, 342.55, 5, 6);

--
-- Dumping data for table `order_history`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `order_history` (`order_history_id`, `status`, `date`, `order_id`) VALUES
(1, '0', '2021-12-07', 1),
(2, '1', '2021-12-08', 1),
(3, '2', '2021-12-09', 1),
(4, '0', '2021-12-13', 2),
(5, '0', '2021-12-13', 3),
(6, '0', '2021-12-14', 4),
(7, '0', '2021-12-16', 5),
(8, '0', '2021-12-16', 6);

--
-- Dumping data for table `owner`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `owner` (`owner_id`, `firstname`, `lastname`, `account_id`) VALUES
(1, 'Harry', 'Newman', 1),
(2, 'Bernard', 'Steve', 2);

--
-- Dumping data for table `publisher`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `publisher` (`publisher_id`, `name`, `email`,  `banking_account`, `address`) VALUES
(1, 'Addison-Wesley Professional', '',  '', ''),
(2, 'O Reilly Media', '', '', ''),
(3, 'Pearson Addison-Wesley', '', '', ''),
(4, 'No Starch Press', '', '', ''),
(5, 'Wiley', '', '', ''),
(6, 'Springer', '', '', ''),
(7, 'Penguin Canada', '', '', ''),
(8, 'National Geographic', '', '', ''),
(9, 'HRP House', '', '', ''),
(10, 'Independently published', '', '', ''),
(11, 'Harry N. Abrams', '', '', ''),
(12, 'CreateSpace Independent Publishing Platform', '', '', ''),
(13, 'National Academies Press', '', '', ''),
(14, 'Canadian Scholars', '', '', '');

--
-- Dumping data for table `shopping_cart`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `shopping_cart` (`cart_id`, `user_id`) VALUES
(5, 1);

--
-- Dumping data for table `user`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `user` (`user_id`, `firstname`, `middleInitial`, `lastname`, `Phone1`, `Phone2`, `credit_card_name`, `credit_card_number`, `credit_card_security_code`, `credit_card_expiry_date`, `account_id`) VALUES
(1, 'Hacen', '', 'Mortada', '00156983225', NULL, 'Hacen Mortada', '4929248980295542', '123', '2021-09-01', 3);

--
-- Dumping data for table `user_address`
--
SET FOREIGN_KEY_CHECKS=0;
INSERT IGNORE INTO `user_address` (`address_id`, `streetnumber`, `streetname`, `apart_num`, `city`, `state`, `zip`, `user_id`) VALUES
(1, '06', 'Robenson Av', '04', 'Ottawa', 'Ontario', '', 1);


SET FOREIGN_KEY_CHECKS=1;