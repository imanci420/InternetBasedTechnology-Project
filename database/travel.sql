-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 03:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_id` int(100) NOT NULL,
  `Cat_name` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_id`, `Cat_name`) VALUES
(1, 'Family Tours'),
(2, 'Religious Tours'),
(3, 'Adventure Tours'),
(4, 'Special Event Tours'),
(5, 'National Parks'),
(6, 'Themed Vacations'),
(7, 'Small Group Tours');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactid` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phno` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactid`, `Name`, `Phno`, `Email`, `Message`) VALUES
(7, 'Andrej Anastasovski', '0882472547', 'myemail@email.com', 'Hello i want to go to Thailand do you have any good offers? thanks.');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Enquiryid` int(50) NOT NULL,
  `Packageid` int(50) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NoofDays` int(50) NOT NULL,
  `Child` int(50) NOT NULL,
  `Adults` int(50) NOT NULL,
  `Message` varchar(900) NOT NULL,
  `Statusfield` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Enquiryid`, `Packageid`, `Name`, `Gender`, `Mobileno`, `Email`, `NoofDays`, `Child`, `Adults`, `Message`, `Statusfield`) VALUES
(13, 1, 'name', 'Male', '0882472547', 'myemail@email.com', 4, 3, 2, 'message', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Packid` int(200) NOT NULL,
  `Packname` varchar(1000) NOT NULL,
  `Category` int(200) NOT NULL,
  `Subcategory` int(200) NOT NULL,
  `Packprice` int(200) NOT NULL,
  `Pic1` varchar(8000) NOT NULL,
  `Pic2` varchar(8000) NOT NULL,
  `Pic3` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Packid`, `Packname`, `Category`, `Subcategory`, `Packprice`, `Pic1`, `Pic2`, `Pic3`, `Detail`) VALUES
(1, 'Christmas Adventure in Lapland     ', 1, 1, 1500, 'lapland-sleigh-ride-finland.jpg', 'Image-1-1.jpg', 'igloos-finnish-lapland.jpg', 'What better way to celebrate Christmas than to spend it where Santa Claus lives? Come experience a traditional Lapland Christmas in Finland: meet Santa in person at the world-famous Santa Claus Village, enjoy the thrill of a dog sled ride and learn about the unique Sami culture at a reindeer farm. This magical holiday will surely create lasting memories for the entire family.'),
(2, 'Sunny Beach Family Tour ', 1, 2, 1200, 'unforgettable-summer-sunny-beach.jpg', 'What-is-the-sea-at-the-beaches-of-Sunny-Beach.jpg', 'Sunny_beach_general_view1_small.jpg', 'A fun-filled holiday with your family is the best time to strengthen bonds and rejuvenate the love between dear ones. And, what could be a better place to have a good time with your family members than Sunny beach? The pleasant weather, beautiful sceneries and delightful food is sure to put you in your best mood to revel the best time with your family. For a stress-free vacation, you can explore your options for Sunny beach family holidays packages with us on ExploreTravel.com. From hotel bookings to travel tickets, we offer various services to help you enjoy your Sunny beach family tour packages. Visit the numerous attractions of this beautiful place in the company of your loved ones with our Sunny beach family vacation and tour packages away from the routine tasks of life. '),
(3, 'Holidays in Italy  ', 1, 5, 2000, 'duomo-di-milano-cr-getty.jpg', 'Rome-coroavirus-large-1024x683.jpg', '400x225_cmsv2_e8f55757-04c6-54e9-b3f5-74cfa5bd7b07-5430118.jpg', 'Enjoy golden beaches, sparkling seas, beautiful countryside, exciting cities and great cuisine on family holidays in Italy. Whether you are looking for an activity based holiday or one full of cultural pursuits, let our experience and insider knowledge help you tailor the ideal Italy family holiday.'),
(4, 'Main attraction in Thailand', 1, 4, 2500, 'bangkok.jpg', 'THAILAND-ADVENTURE-TOUR.jpg', '4.jpg', 'Fascinating cultures, a nation that adores children, beautiful beaches in world famous resorts and a well-trodden tourist trail all combine to make Thailand family holidays popular with those looking for a combination of relaxation and adventure. Children can enjoy an invaluable experience discovering new cultures, customs and religions whilst visiting temples alongside having a huge amount of fun when exploring cities, towns and villages and of course in-resort.'),
(5, 'Holidays in Ohrid', 1, 3, 1000, 'Macedonia_Kaneo_shutterstock_1069118279.jpg', '22222.jpg', 'kaneo-letna-bavcha-restaurant.jpg', 'Sublime Ohrid is North Macedonia\'s most seductive destination. It sits on the edge of serene Lake Ohrid, with an atmospheric old quarter that cascades down steep streets, dotted with beautiful churches and topped by the bones of a medieval castle. Traditional restaurants and lakeside cafes liven up the cobblestone streets, which in high summer can be very lively indeed. Outside of July and August, the tourist circus subsides and the town becomes more lived in.'),
(7, 'Tivoli', 2, 7, 2500, 'Organ-Fountain-Villa-dEste-Italy-Tivoli.jpg', 'italy-from-rome-to-tivoli-best-ways-to-get-there-rome-tivoli-by-train.jpg', 'italy-from-rome-to-tivoli-best-ways-to-get-there-by-tour.jpg', 'Villa d\'Este, in the town of Tivoli east of Rome, is a beautiful garden and palace complex that\'s listed on UNESCO\'s World Heritage List. The villa was built in 1560 and was the vision of Cardinal Ippolito II d\'Este (who narrowly failed to become a pope). The villa is famous for its magnificent garden of grottoes, fountains, nymphs and water sculpture. Cardinal d\'Este died in 1572. By then the work on the garden and the interior painting of the villa was mostly complete'),
(9, 'Jerusalem', 2, 9, 3500, 'd4a3b26b-d7ce-4b04-9d48-8330a65a3e7d_16x9_1200x676.jpg', 'Mount-Temple-in-Jerusalem.jpg', '000_9863A4.jpg', 'Our 9 day Christian Holy Land Tour of Israel will bring the Bible stories you’ve always known to life. Places like Jerusalem, Bethlehem, and the Galilee, which are so familiar from the scripture, will transform into experiences of the senses as you visit them in person, smell the air, feel the light, the sun on your skin, and touch the rocks with your own hands.'),
(10, 'Christian Places in England', 2, 10, 4000, 'Canterbury-cathedral-wyrdlight.jpg', '4b8e4fd81567ac8e89f5aa1b8919d9f5.jpg', 'maxresdefault.jpg', 'The Catholic Church in England and Wales is part of the worldwide Roman Catholic Church in full communion with the Pope. Celtic Christianity, with some traditions different from those of Rome, was present in Roman Britain from the first century AD, but after the departure of the Roman legions was in retreat to Paganism. In 597 AD, the first authoritative papal mission, establishing a direct link from the Kingdom of Kent to the See of Rome and to the Benedictine form of monasticism, was carried into effect by Augustine of Canterbury.'),
(13, 'Best of England', 7, 13, 4500, '37.jpg', 'country_image_England.jpg', '79033695.cms_.jpeg', 'The Heart of England is an iconic region, encompassing Oxford, the Cotswolds, Stratford-upon-Avon and Bath, a UNESCO World Heritage site. On this five-day journey, we will visit Oxford and Lacock, explore quaint Cotswold villages famous for their charming honey-coloured stone cottages with thatched roofs and explore traditional stately homes.'),
(14, 'Best of Canada', 7, 14, 7000, '987a910d2de4454e6a64f2c83396de5e_canada-day-5370627_1920-1920-1080-c-100.jpg', '3_100_canada_02.jpg', 'Canada-ReloAdvisor.org_.jpg', 'It is so big it is hard to get your head around sometimes so, by joining a Canada small group holiday and like-minded tourists, it takes the pressure off the organisation front. They are perfect if you want a short cut to Canada’s cultural and natural highlights, such as hiking in the Rockies, going on a polar bear expedition, or dog sledding in the Yukon. '),
(16, 'Best of Thailand', 3, 17, 3800, 'bangkok.jpg', 'THAILAND-ADVENTURE-TOUR.jpg', '07438953-f740-4eff-bb6d-aceb7f57a625-ggia.jpg', 'Bangkok was an amazing introduction to Thailand, especially considering how much we saw in our one full day there. I remember telling our guide Ngu that if my whole trip ended the next day, I would still think visiting Thailand had been worthwhile. Ngu provided us with a remarkably thorough explanation of the historical and religious backgrounds of Wat Arun, the Royal Palace, and the Royal Barges. Although our day was full of activity, we never felt overwhelmed or rushed. In fact, we still had energy to attend a Thai dance show that evening, which Ngu kindly arranged for us and escorted us to, on his own time.'),
(17, ' Best Events in Singapore', 4, 20, 5000, 'August-2019-events-Singapore-6.jpg', 'image (1).jpg', 'image.jpg', 'There are so many Special events in Singapore like New Year celebration, Deepavali celebration, Christmas celebration, Food Festivals, Modeling Competition, Singing Competition etc...Singapore is also a best tourist place in the World...'),
(18, 'Octoberfest', 4, 19, 5000, 'bedienungen_tracht_sebastian_lehner-09569.jpg', '00019b22_medium.jpg', '17936793_303.jpg', 'Experience Octoberfest like never before...'),
(19, 'Best Events in France', 4, 18, 5000, '800.jpeg', '54681316_401.jpg', '800.jpeg', 'There are so many Special events in France like New Year celebration, Deepavali celebration, Christmas celebration, Food Festivals, Modeling Competition, Singing Competition etc...France is also a best tourist place in the World...'),
(20, 'Star Wars Theme Park', 6, 23, 6000, 'walt-disney-world-star-wars-galaxys-edge-tall.jpg', '0402galaxysedge.jpg', 'MW-HK531_galaxy_20190530122830_ZQ.jpg', 'From starry invites to a lightsaber send-off , to keep your big day classy and memorable at the same time. May the force be with you. '),
(21, 'Christmas Party Themes  ', 6, 22, 3000, 'christmas-events.jpg', 'Christmas_tree_in_marunouchi.jpg', '6000.jpg', 'Hundreds of christmas Party Ideas, christmas party themes, Invitations, Decorations, Party Supplies & Favors Party can help you plan and deliver a great Christmas holiday party. We have a variety of Christmas party themes for every type celebration. Spend a few moments browsing through a variety of Christmas party themes until you find the theme that is right for your holiday celebration. '),
(22, 'Couple Vacations', 6, 21, 5000, 'couple-holiday.jpg', 'download (1).jpg', 'download.jpg', 'We will make sure you spend an unforgetable time with your loved one.'),
(23, 'Rila National Park', 5, 26, 1500, 'IMG_6678-1024x683.jpg', 'image_7_rila_lakes_-_bliznaka_and_haramiata_peak.jpg', 'yYWSN-Rilski_ezera.jpg', 'Rila National Park  is the largest national park in Bulgaria spanning an area of 810.46 km2  in the Rila mountain range in the south-west of the country. It was established on 24 February 1992 to protect several ecosystems of national importance. Its altitude varies from 800 mnear Blagoevgrad to 2,925 m  at Musala Peak, the highest summit in the Balkan Peninsula. There are 120 glacial lakes, including the prominent Seven Rila Lakes. Many rivers have their source in the national park, including the river that carries the most water entirely within the Balkans  and the longest river entirely within in Bulgaria .'),
(24, 'Mavrovo National Park', 5, 25, 2000, '20180503_185619-1-2.jpg', 'big_579a25fcba908.jpg', '38d77298-a364-4383-833c-4601d2904fdc-ris.jpg', 'The Mavrovo National Park is the largest of the three national parks of North Macedonia. Located in the west of the country, it spreads over an area of about 780 km2 (300 square miles) and is characterized by deep canyons, lakes and dense forests that abound with diverse wildlife. It was established in 1949 by a law passed by the National Assembly of Macedonia; later the legislation was changed to enforce a much stricter protection system, dividing the park into three zones: strict nature reserves, managed reserves, and a tourist zone.');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `Subcatid` int(200) NOT NULL,
  `Subcatname` varchar(1000) NOT NULL,
  `Catid` int(200) NOT NULL,
  `Pic` varchar(8000) NOT NULL,
  `Detail` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Subcatid`, `Subcatname`, `Catid`, `Pic`, `Detail`) VALUES
(1, 'Family holiday in Lapland            ', 1, '1.jpg', 'A brilliant balance of cosy winter cottage accommodation and adventure, this holiday gives you a taste of the best wilderness activities and plenty of free time to explore too.'),
(2, ' Family holiday in Bulgaria', 1, 'Sunny_beach_general_view1_small.jpg', 'A fun-filled holiday with your family is the best time to strengthen bonds and rejuvenate the love between dear ones. And, what could be a better place to have a good time with your family members than Sunny Beach? The pleasant weather, beautiful sceneries and delightful food is sure to put you in your best mood to revel the best time with your family. For a stress-free vacation, you can explore your options for Sunny beach family holidays packages with us on ExploreTravel.com. From hotel bookings to travel tickets, we offer various services to help you enjoy your Sunny beach family tour packages. Visit the numerous attractions of this beautiful place in the company of your loved ones with our Sunny beach family vacation and tour packages away from the routine tasks of life.'),
(3, 'Family Holiday in Macedonia', 1, 'Macedonia_Kaneo_shutterstock_1069118279.jpg', 'Sublime Ohrid is North Macedonia\'s most seductive destination. It sits on the edge of serene Lake Ohrid, with an atmospheric old quarter that cascades down steep streets, dotted with beautiful churches and topped by the bones of a medieval castle. Traditional restaurants and lakeside cafes liven up the cobblestone streets, which in high summer can be very lively indeed. Outside of July and August, the tourist circus subsides and the town becomes more lived in.'),
(4, 'Family holiday in Thailand ', 1, 'bangkok.jpg', 'This is a real family adventure taking in every face of Thailand - local life, national parks, rainforest and beaches - all held together by great organisation and excellent guides.'),
(5, 'Family holiday in Italy', 1, 'Rome-coroavirus-large-1024x683.jpg', 'World-famous volcanoes, shimmering coastal towns and one of the most exciting humanities lessons ever imaginable. Are your family ready for the Italy tour?'),
(7, 'Religious Tours in Italy', 2, 'duomo-di-milano-cr-getty.jpg', 'The religious Tours  represent an important phenomenon that involves the Tourism industry. Nowadays all over the world there are  40 million people  spending 4 billion dollars that love to visit the places of worship . They are driven by the wish to discover the roots of Christianity and to be moved by those holy places. This great business is particularly flourishing in Italy where there are a lot of significant, beautiful and charming destination and the Christian culture deeply radicated. The itinerary that we propose here ties many important Italian religious destinations.'),
(9, 'Religious tours in Israel', 2, 'Mount-Temple-in-Jerusalem.jpg', 'Our 9 day Christian Holy Land Tour of Israel will bring the Bible stories you’ve always known to life. Places like Jerusalem, Bethlehem, and the Galilee, which are so familiar from the scripture, will transform into experiences of the senses as you visit them in person, smell the air, feel the light, the sun on your skin, and touch the rocks with your own hands.'),
(10, 'Religious Tours in England', 2, 'Canterbury-cathedral-wyrdlight.jpg', 'We follow the history of non-conformism in England and take in those particular sites that are dear to Baptists the world over. Sites relating to the founders of the Baptist faith who strived in those early days against all odds. At the same time we see some of England’s most beautiful countryside and splendid city locations.'),
(13, 'Small Group Tours in England', 7, 'london-big-ben.jpg', 'The Heart of England is an iconic region, encompassing Oxford, the Cotswolds, Stratford-upon-Avon and Bath, a UNESCO World Heritage site. On this five-day journey, we will visit Oxford and Lacock, explore quaint Cotswold villages famous for their charming honey-coloured stone cottages with thatched roofs and explore traditional stately homes.'),
(14, 'Small Group Tours in Canada', 7, '4247662e8eae17e8d12b9484432c12b3.jpeg', 'It is so big it is hard to get your head around sometimes so, by joining a Canada small group holiday and like-minded tourists, it takes the pressure off the organisation front. They are perfect if you want a short cut to Canada’s cultural and natural highlights, such as hiking in the Rockies, going on a polar bear expedition, or dog sledding in the Yukon. '),
(15, 'Adventure Tours in Israel', 3, '17kids600.1.jpg', 'Israel is a tiny country, it got cultural, culinary, architectural, historical and spiritual experiences of biblical proportions.\r\n\r\nIsrael is not somewhere you stop off at or drop by the Holy Land requires attention, commitment, devotion and an open mind and heart, regardless of whether you are Jewish, Christian, Hindu, Agnostic, Animist, Jedi or Rasta.'),
(17, 'Adventure Tours in Thailand', 3, 'THAILAND-ADVENTURE-TOUR.jpg', 'It is difficult to express in words just how grateful Kamy and I are for the trip of a lifetime that you planned for us. Even though we were excited to travel to Asia for the first time, we still could not have imagined how memorable and special our visit to Thailand would be.  I realize that working with me was challenging. Unlike some of your other customers, I usually plan all my own travel, myself, because I like to go to places that aren\'t typically featured in arranged tours. I selected WildThailand because of its custom trip option and its focus on remote destinations. When I wrote you, I was impressed by your prompt response and your willingness to incorporate all our concerns and special interests into the sample itinerary you sent me. But even more impressive was your constant, attentive correspondence with me over a period of at least 3 months, as I asked you countless questions and made additional requests. You never grew impatient with me or stopped writing me, which is why I felt confident that our trip would be great, even though I had not previously heard of WildThailand.'),
(18, 'Special Event Tours in France', 4, 'best-events-in-europe-tour-de-france-european-best-destinations.jpg', 'As a country famed for its forward-thinking, be it in food, fashion, art or architecture, France certainly has plenty to celebrate. Indeed, the French love a festival: celebration is rooted deep in their culture, and there\'s always the promise of an exciting event. Time your trip to France well, and you could mingle with the rich and famous at the acclaimed Cannes Film Festival, or simply make like the locals and celebrate the uprising of modern France on Bastille Day. Of course, you can always just ask around for local festivals and events while you\'re there: from food markets to arts and crafts fairs, you\'ll find plenty to do throughout the year. '),
(19, 'Special Event Tours in Germany', 4, '17936793_303.jpg', 'Enjoy Octoberfest in Germany.'),
(20, 'Special Event Tours in Singapore', 4, 'item_1.thumbnail.carousel-img.740.416.jpg', 'Special events tours in Singapore are Deepavali, New Year, Singapore Food Festival etc...'),
(21, 'Themed Vacations for Couples', 6, '630x355.jpg', 'One of the best parts of being in a relationship is having a built-in travel buddy, and one of the best parts of traveling with that built-in buddy is getting unobstructed one-on-one time while exploring unfamiliar parts of the world. Whether domestic or international, a trip with your significant other almost always guarantees sharing unusual experiences and learning something new about each other, like that your girlfriend gets a rush from cliff diving, or your boyfriend can make friends with anyone despite only being able to say “Where’s the bathroom?” in the local language.'),
(22, 'Christmas Themed Vacations', 6, 'best-christmas-towns-in-the-world-best-christmas-holiday-destinations-696x390.jpg', 'The long school break at Christmastime is a peak time for a winter family vacation. These festive getaways are sure to please kids and parents alike. '),
(23, 'Star Wars Themed Vacation', 6, 'MW-HK531_galaxy_20190530122830_ZQ.jpg', 'My son is going to be 6 in November and we usually take them for vacation somewheres as a big Birthday gift...we are planning on going to Disney World, and I see we are going to miss the Star Wars weekends that are happening in June. Are there going to be any Star Wars attractions there in Nov.? Also what else Star Wars themed could be done? We save up for this since birth and want to make it over the top fun, so please no snide remarks...We all love Star Wars.'),
(25, 'National Parks in Macedonia', 5, '07438953-f740-4eff-bb6d-aceb7f57a625-ggia.jpg', 'The Mavrovo National Park is the largest of the three national parks of North Macedonia. Located in the west of the country, it spreads over an area of about 780 km2 (300 square miles) and is characterized by deep canyons, lakes and dense forests that abound with diverse wildlife. It was established in 1949 by a law passed by the National Assembly of Macedonia; later the legislation was changed to enforce a much stricter protection system, dividing the park into three zones: strict nature reserves, managed reserves, and a tourist zone.'),
(26, 'National Parks in Bulgaria', 5, 'IMG_6678-1024x683.jpg', 'Rila National Park  is the largest national park in Bulgaria spanning an area of 810.46 km2  in the Rila mountain range in the south-west of the country. It was established on 24 February 1992 to protect several ecosystems of national importance. Its altitude varies from 800 mnear Blagoevgrad to 2,925 m  at Musala Peak, the highest summit in the Balkan Peninsula. There are 120 glacial lakes, including the prominent Seven Rila Lakes. Many rivers have their source in the national park, including the river that carries the most water entirely within the Balkans  and the longest river entirely within in Bulgaria .');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(100) NOT NULL,
  `Pwd` varchar(100) NOT NULL,
  `Typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Pwd`, `Typeofuser`) VALUES
('admin', 'admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`Enquiryid`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Packid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Subcatid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `Enquiryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `Packid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Subcatid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
