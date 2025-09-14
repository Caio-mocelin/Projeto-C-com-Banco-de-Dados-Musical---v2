drop database if exists musica;
CREATE DATABASE musica;
USE musica;

CREATE TABLE artistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo ENUM ('banda', 'cantor', 'cantora') NOT NULL
);

CREATE TABLE  albuns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    artista_id INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    ano INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(id)
);

CREATE TABLE  musicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    album_id INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns(id)
);

INSERT INTO artistas (nome, tipo) VALUES ('The Beatles', 1);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (1, 'Please Please Me', 1963);
INSERT INTO musicas (album_id, titulo) VALUES 
(1, 'I Saw Her Standing There'),
(1, 'Misery'),
(1, 'Anna (Go to Him)'),
(1, 'Chains'),
(1, 'Boys'),
(1, 'Ask Me Why'),
(1, 'Please Please Me'),
(1, 'Love Me Do'),
(1, 'P.S. I Love You'),
(1, 'Baby It''s You'),
(1, 'Do You Want to Know a Secret'),
(1, 'A Taste of Honey'),
(1, 'There''s a Place'),
(1, 'Twist and Shout');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (1, 'Revolver', 1966);
INSERT INTO musicas (album_id, titulo) VALUES 
(2, 'Taxman'),
(2, 'Eleanor Rigby'),
(2, 'I''m Only Sleeping'),
(2, 'Love You To'),
(2, 'Here, There and Everywhere'),
(2, 'Yellow Submarine'),
(2, 'She Said She Said'),
(2, 'Good Day Sunshine'),
(2, 'And Your Bird Can Sing'),
(2, 'For No One'),
(2, 'Doctor Robert'),
(2, 'I Want to Tell You'),
(2, 'Got to Get You into My Life'),
(2, 'Tomorrow Never Knows');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (1, 'Abbey Road', 1969);
INSERT INTO musicas (album_id, titulo) VALUES 
(3, 'Come Together'),
(3, 'Something'),
(3, 'Maxwell''s Silver Hammer'),
(3, 'Oh! Darling'),
(3, 'Octopus''s Garden'),
(3, 'I Want You (She''s So Heavy)'),
(3, 'Here Comes the Sun'),
(3, 'Because'),
(3, 'You Never Give Me Your Money'),
(3, 'Sun King'),
(3, 'Mean Mr. Mustard'),
(3, 'Polythene Pam'),
(3, 'She Came in Through the Bathroom Window'),
(3, 'Golden Slumbers'),
(3, 'Carry That Weight'),
(3, 'The End'),
(3, 'Her Majesty');

INSERT INTO artistas (nome, tipo) VALUES ('Michael Jackson', 2);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (2, 'Off the Wall', 1979);
INSERT INTO musicas (album_id, titulo) VALUES
(4, 'Don''t Stop ''Til You Get Enough'),
(4, 'Rock with You'),
(4, 'Working Day and Night'),
(4, 'Get on the Floor'),
(4, 'Off the Wall'),
(4, 'Girlfriend'),
(4, 'She''s Out of My Life'),
(4, 'I Can''t Help It'),
(4, 'It''s the Falling in Love'),
(4, 'Burn This Disco Out');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (2, 'Thriller', 1982);
INSERT INTO musicas (album_id, titulo) VALUES
(5, 'Wanna Be Startin'' Somethin'''),
(5, 'Baby Be Mine'),
(5, 'The Girl Is Mine'),
(5, 'Thriller'),
(5, 'Beat It'),
(5, 'Billie Jean'),
(5, 'Human Nature'),
(5, 'P.Y.T. (Pretty Young Thing)'),
(5, 'The Lady in My Life');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (2, 'Bad', 1987);
INSERT INTO musicas (album_id, titulo) VALUES
(6, 'Bad'),
(6, 'The Way You Make Me Feel'),
(6, 'Speed Demon'),
(6, 'Liberian Girl'),
(6, 'Just Good Friends'),
(6, 'Another Part of Me'),
(6, 'Man in the Mirror'),
(6, 'I Just Can''t Stop Loving You'),
(6, 'Dirty Diana'),
(6, 'Smooth Criminal'),
(6, 'Leave Me Alone');

INSERT INTO artistas (nome, tipo) VALUES ('Madonna', 3);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (3, 'Like a Virgin', 1984);
INSERT INTO musicas (album_id, titulo) VALUES
(7, 'Material Girl'),
(7, 'Angel'),
(7, 'Like a Virgin'),
(7, 'Over and Over'),
(7, 'Love Don''t Live Here Anymore'),
(7, 'Dress You Up'),
(7, 'Shoo-Bee-Doo'),
(7, 'Pretender'),
(7, 'Stay');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (3, 'True Blue', 1986);
INSERT INTO musicas (album_id, titulo) VALUES
(8, 'Papa Don''t Preach'),
(8, 'Open Your Heart'),
(8, 'White Heat'),
(8, 'Live to Tell'),
(8, 'Where''s the Party'),
(8, 'True Blue'),
(8, 'La Isla Bonita'),
(8, 'Jimmy Jimmy'),
(8, 'Love Makes the World Go Round');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (3, 'Ray of Light', 1998);
INSERT INTO musicas (album_id, titulo) VALUES
(9, 'Drowned World/Substitute for Love'),
(9, 'Swim'),
(9, 'Ray of Light'),
(9, 'Candy Perfume Girl'),
(9, 'Skin'),
(9, 'Nothing Really Matters'),
(9, 'Sky Fits Heaven'),
(9, 'Shanti/Ashtangi'),
(9, 'Frozen'),
(9, 'The Power of Good-Bye'),
(9, 'To Have and Not to Hold'),
(9, 'Little Star'),
(9, 'Mer Girl');


INSERT INTO artistas (nome, tipo) VALUES ('Queen', 1);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (4, 'A Night at the Opera', 1975);
INSERT INTO musicas (album_id, titulo) VALUES
(10, 'Death on Two Legs (Dedicated to...)'),
(10, 'Lazing on a Sunday Afternoon'),
(10, 'I''m in Love with My Car'),
(10, 'You''re My Best Friend'),
(10, '''39'),
(10, 'Sweet Lady'),
(10, 'Seaside Rendezvous'),
(10, 'The Prophet''s Song'),
(10, 'Love of My Life'),
(10, 'Good Company'),
(10, 'Bohemian Rhapsody'),
(10, 'God Save the Queen');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (4, 'News of the World', 1977);
INSERT INTO musicas (album_id, titulo) VALUES
(11, 'We Will Rock You'),
(11, 'We Are the Champions'),
(11, 'Sheer Heart Attack'),
(11, 'All Dead, All Dead'),
(11, 'Spread Your Wings'),
(11, 'Fight from the Inside'),
(11, 'Get Down, Make Love'),
(11, 'Sleeping on the Sidewalk'),
(11, 'Who Needs You'),
(11, 'It''s Late'),
(11, 'My Melancholy Blues');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (4, 'The Game', 1980);
INSERT INTO musicas (album_id, titulo) VALUES
(12, 'Play the Game'),
(12, 'Dragon Attack'),
(12, 'Another One Bites the Dust'),
(12, 'Need Your Loving Tonight'),
(12, 'Crazy Little Thing Called Love'),
(12, 'Rock It (Prime Jive)'),
(12, 'Don''t Try Suicide'),
(12, 'Sail Away Sweet Sister'),
(12, 'Coming Soon'),
(12, 'Save Me');


INSERT INTO artistas (nome, tipo) VALUES ('Elvis Presley', 2);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (5, 'Elvis Presley', 1956);
INSERT INTO musicas (album_id, titulo) VALUES
(13, 'Blue Suede Shoes'),
(13, 'I''m Counting on You'),
(13, 'I Got a Woman'),
(13, 'One-Sided Love Affair'),
(13, 'I Love You Because'),
(13, 'Just Because'),
(13, 'Tutti Frutti'),
(13, 'Trying to Get to You'),
(13, 'I''m Gonna Sit Right Down and Cry (Over You)'),
(13, 'I''ll Never Let You Go (Little Darlin'')'),
(13, 'Blue Moon'),
(13, 'Money Honey');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (5, 'Elvis Is Back!', 1960);
INSERT INTO musicas (album_id, titulo) VALUES
(14, 'Make Me Know It'),
(14, 'Fever'),
(14, 'The Girl of My Best Friend'),
(14, 'I Will Be Home Again'),
(14, 'Dirty, Dirty Feeling'),
(14, 'Thrill of Your Love'),
(14, 'Soldier Boy'),
(14, 'Such a Night'),
(14, 'It Feels So Right'),
(14, 'Girl Next Door Went A-Walking'),
(14, 'Like a Baby'),
(14, 'Reconsider Baby');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (5, 'From Elvis in Memphis', 1969);
INSERT INTO musicas (album_id, titulo) VALUES
(15, 'Wearin'' That Loved On Look'),
(15, 'Only the Strong Survive'),
(15, 'I''ll Hold You in My Heart'),
(15, 'Long Black Limousine'),
(15, 'It Keeps Right on A-Hurtin'''),
(15, 'I''m Movin'' On'),
(15, 'Power of My Love'),
(15, 'Gentle on My Mind'),
(15, 'After Loving You'),
(15, 'True Love Travels on a Gravel Road'),
(15, 'Any Day Now'),
(15, 'In the Ghetto');

INSERT INTO artistas (nome, tipo) VALUES ('Adele', 3);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (6, '19', 1989);
INSERT INTO musicas (album_id, titulo) VALUES
(16, 'Daydreamer'),
(16, 'Best for Last'),
(16, 'Chasing Pavements'),
(16, 'Cold Shoulder'),
(16, 'Crazy for You'),
(16, 'Melt My Heart to Stone'),
(16, 'First Love'),
(16, 'Right as Rain'),
(16, 'Make You Feel My Love'),
(16, 'My Same'),
(16, 'Tired'),
(16, 'Hometown Glory');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (6, '21', 2011);
INSERT INTO musicas (album_id, titulo) VALUES
(17, 'Rolling in the Deep'),
(17, 'Rumour Has It'),
(17, 'Turning Tables'),
(17, 'Don''t You Remember'),
(17, 'Set Fire to the Rain'),
(17, 'He Won''t Go'),
(17, 'Take It All'),
(17, 'I''ll Be Waiting'),
(17, 'One and Only'),
(17, 'Lovesong'),
(17, 'Someone Like You');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (6, '25', 2015);
INSERT INTO musicas (album_id, titulo) VALUES
(18, 'Hello'),
(18, 'Send My Love (To Your New Lover)'),
(18, 'I Miss You'),
(18, 'When We Were Young'),
(18, 'Remedy'),
(18, 'Water Under the Bridge'),
(18, 'River Lea'),
(18, 'Love in the Dark'),
(18, 'Million Years Ago'),
(18, 'All I Ask'),
(18, 'Sweetest Devotion');


INSERT INTO artistas (nome, tipo) VALUES ('Metallica', 1);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (7, 'Ride the Lightning', 1984);
INSERT INTO musicas (album_id, titulo) VALUES
(19, 'Fight Fire with Fire'),
(19, 'Ride the Lightning'),
(19, 'For Whom the Bell Tolls'),
(19, 'Fade to Black'),
(19, 'Trapped Under Ice'),
(19, 'Escape'),
(19, 'Creeping Death'),
(19, 'The Call of Ktulu');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (7, 'Master of Puppets', 1986);
INSERT INTO musicas (album_id, titulo) VALUES
(20, 'Battery'),
(20, 'Master of Puppets'),
(20, 'The Thing That Should Not Be'),
(20, 'Welcome Home (Sanitarium)'),
(20, 'Disposable Heroes'),
(20, 'Leper Messiah'),
(20, 'Orion'),
(20, 'Damage, Inc.');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (7, 'Metallica (The Black Album)', 1991);
INSERT INTO musicas (album_id, titulo) VALUES
(21, 'Enter Sandman'),
(21, 'Sad but True'),
(21, 'Holier Than Thou'),
(21, 'The Unforgiven'),
(21, 'Wherever I May Roam'),
(21, 'Don''t Tread on Me'),
(21, 'Through the Never'),
(21, 'Nothing Else Matters'),
(21, 'Of Wolf and Man'),
(21, 'The God That Failed'),
(21, 'My Friend of Misery'),
(21, 'The Struggle Within');

INSERT INTO artistas (nome, tipo) VALUES ('Whitney Houston', 3);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (8, 'Whitney Houston', 1985);
INSERT INTO musicas (album_id, titulo) VALUES
(22, 'You Give Good Love'),
(22, 'Thinking About You'),
(22, 'Someone for Me'),
(22, 'Saving All My Love for You'),
(22, 'Nobody Loves Me Like You Do'),
(22, 'How Will I Know'),
(22, 'All at Once'),
(22, 'Take Good Care of My Heart'),
(22, 'Greatest Love of All'),
(22, 'Hold Me');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (8, 'Whitney', 1987);
INSERT INTO musicas (album_id, titulo) VALUES
(23, 'I Wanna Dance with Somebody (Who Loves Me)'),
(23, 'Just the Lonely Talking Again'),
(23, 'Love Will Save the Day'),
(23, 'Didn''t We Almost Have It All'),
(23, 'So Emotional'),
(23, 'Where You Are'),
(23, 'Love Is a Contact Sport'),
(23, 'You''re Still My Man'),
(23, 'For the Love of You'),
(23, 'Where Do Broken Hearts Go'),
(23, 'I Know Him So Well');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (8, 'I''m Your Baby Tonight', 1990);
INSERT INTO musicas (album_id, titulo) VALUES
(24, 'I''m Your Baby Tonight'),
(24, 'My Name Is Not Susan'),
(24, 'All the Man That I Need'),
(24, 'Lover for Life'),
(24, 'Anymore'),
(24, 'Miracle'),
(24, 'I Belong to You'),
(24, 'Who Do You Love'),
(24, 'We Didn''t Know'),
(24, 'After We Make Love'),
(24, 'I''m Knockin''');


INSERT INTO artistas (nome, tipo) VALUES ('Coldplay', 1);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (9, 'Parachutes', 2000);
INSERT INTO musicas (album_id, titulo) VALUES
(25, 'Don''t Panic'),
(25, 'Shiver'),
(25, 'Spies'),
(25, 'Sparks'),
(25, 'Yellow'),
(25, 'Trouble'),
(25, 'Parachutes'),
(25, 'High Speed'),
(25, 'We Never Change'),
(25, 'Everything''s Not Lost');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (9, 'A Rush of Blood to the Head', 2002);
INSERT INTO musicas (album_id, titulo) VALUES
(26, 'Politik'),
(26, 'In My Place'),
(26, 'God Put a Smile upon Your Face'),
(26, 'The Scientist'),
(26, 'Clocks'),
(26, 'Daylight'),
(26, 'Green Eyes'),
(26, 'Warning Sign'),
(26, 'A Whisper'),
(26, 'A Rush of Blood to the Head'),
(26, 'Amsterdam');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (9, 'Viva la Vida or Death and All His Friends', 2008);
INSERT INTO musicas (album_id, titulo) VALUES
(27, 'Life in Technicolor'),
(27, 'Cemeteries of London'),
(27, 'Lost!'),
(27, '42'),
(27, 'Lovers in Japan/Reign of Love'),
(27, 'Yes'),
(27, 'Viva la Vida'),
(27, 'Violet Hill'),
(27, 'Strawberry Swing'),
(27, 'Death and All His Friends');


INSERT INTO artistas (nome, tipo) VALUES ('David Bowie', 2);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (10, 'The Rise and Fall of Ziggy Stardust and the Spiders from Mars', 1972);
INSERT INTO musicas (album_id, titulo) VALUES
(28, 'Five Years'),
(28, 'Soul Love'),
(28, 'Moonage Daydream'),
(28, 'Starman'),
(28, 'It Ain''t Easy'),
(28, 'Lady Stardust'),
(28, 'Star'),
(28, 'Hang On to Yourself'),
(28, 'Ziggy Stardust'),
(28, 'Suffragette City'),
(28, 'Rock ''n'' Roll Suicide');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (10, 'Heroes', 1977);
INSERT INTO musicas (album_id, titulo) VALUES
(29, 'Beauty and the Beast'),
(29, 'Joe the Lion'),
(29, 'Heroes'),
(29, 'Sons of the Silent Age'),
(29, 'Blackout'),
(29, 'V-2 Schneider'),
(29, 'Sense of Doubt'),
(29, 'Moss Garden'),
(29, 'Neuköln'),
(29, 'The Secret Life of Arabia');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (10, 'Let''s Dance', 1983);
INSERT INTO musicas (album_id, titulo) VALUES
(30, 'Modern Love'),
(30, 'China Girl'),
(30, 'Let''s Dance'),
(30, 'Without You'),
(30, 'Ricochet'),
(30, 'Criminal World'),
(30, 'Cat People (Putting Out Fire)'),
(30, 'Shake It');

INSERT INTO artistas (nome, tipo) VALUES ('Beyoncé', 3);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (11, 'Dangerously in Love', 2003);
INSERT INTO musicas (album_id, titulo) VALUES
(31, 'Crazy in Love'),
(31, 'Naughty Girl'),
(31, 'Baby Boy'),
(31, 'Hip Hop Star'),
(31, 'Be with You'),
(31, 'Me, Myself and I'),
(31, 'Yes'),
(31, 'Signs'),
(31, 'Speechless'),
(31, 'That''s How You Like It'),
(31, 'The Closer I Get to You'),
(31, 'Dangerously in Love 2'),
(31, 'Gift from Virgo'),
(31, 'Daddy');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (11, 'B''Day', 2006);
INSERT INTO musicas (album_id, titulo) VALUES
(32, 'Déjà Vu'),
(32, 'Get Me Bodied'),
(32, 'Suga Mama'),
(32, 'Upgrade U'),
(32, 'Ring the Alarm'),
(32, 'Kitty Kat'),
(32, 'Freakum Dress'),
(32, 'Green Light'),
(32, 'Irreplaceable'),
(32, 'Resentment');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (11, 'Lemonade', 2016);
INSERT INTO musicas (album_id, titulo) VALUES
(33, 'Pray You Catch Me'),
(33, 'Hold Up'),
(33, 'Don''t Hurt Yourself'),
(33, 'Sorry'),
(33, '6 Inch'),
(33, 'Daddy Lessons'),
(33, 'Love Drought'),
(33, 'Sandcastles'),
(33, 'Forward'),
(33, 'Freedom'),
(33, 'All Night'),
(33, 'Formation');


INSERT INTO artistas (nome, tipo) VALUES ('Led Zeppelin', 1);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (12, 'Led Zeppelin IV', 1971);
INSERT INTO musicas (album_id, titulo) VALUES
(34, 'Black Dog'),
(34, 'Rock and Roll'),
(34, 'The Battle of Evermore'),
(34, 'Stairway to Heaven'),
(34, 'Misty Mountain Hop'),
(34, 'Four Sticks'),
(34, 'Going to California'),
(34, 'When the Levee Breaks');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (12, 'Physical Graffiti', 1975);
INSERT INTO musicas (album_id, titulo) VALUES
(35, 'Custard Pie'),
(35, 'The Rover'),
(35, 'In My Time of Dying'),
(35, 'Houses of the Holy'),
(35, 'Trampled Under Foot'),
(35, 'Kashmir'),
(35, 'In the Light'),
(35, 'Bron-Yr-Aur'),
(35, 'Down by the Seaside'),
(35, 'Ten Years Gone'),
(35, 'Night Flight'),
(35, 'The Wanton Song'),
(35, 'Boogie with Stu'),
(35, 'Black Country Woman'),
(35, 'Sick Again');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (12, 'Led Zeppelin II', 1969);
INSERT INTO musicas (album_id, titulo) VALUES
(36, 'Whole Lotta Love'),
(36, 'What Is and What Should Never Be'),
(36, 'The Lemon Song'),
(36, 'Thank You'),
(36, 'Heartbreaker'),
(36, 'Living Loving Maid (She''s Just a Woman)'),
(36, 'Ramble On'),
(36, 'Moby Dick'),
(36, 'Bring It On Home');


INSERT INTO artistas (nome, tipo) VALUES ('Taylor Swift', 3);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (13, 'Fearless', 2008);
INSERT INTO musicas (album_id, titulo) VALUES
(37, 'Fearless'),
(37, 'Fifteen'),
(37, 'Love Story'),
(37, 'Hey Stephen'),
(37, 'White Horse'),
(37, 'You Belong with Me'),
(37, 'Breathe'),
(37, 'Tell Me Why'),
(37, 'You''re Not Sorry'),
(37, 'The Way I Loved You'),
(37, 'Forever & Always'),
(37, 'The Best Day'),
(37, 'Change');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (13, '1989', 2014);
INSERT INTO musicas (album_id, titulo) VALUES
(38, 'Welcome to New York'),
(38, 'Blank Space'),
(38, 'Style'),
(38, 'Out of the Woods'),
(38, 'All You Had to Do Was Stay'),
(38, 'Shake It Off'),
(38, 'I Wish You Would'),
(38, 'Bad Blood'),
(38, 'Wildest Dreams'),
(38, 'How You Get the Girl'),
(38, 'This Love'),
(38, 'I Know Places'),
(38, 'Clean');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (13, 'Folklore', 2020);
INSERT INTO musicas (album_id, titulo) VALUES
(39, 'the 1'),
(39, 'cardigan'),
(39, 'the last great american dynasty'),
(39, 'exile'),
(39, 'my tears ricochet'),
(39, 'mirrorball'),
(39, 'seven'),
(39, 'august'),
(39, 'this is me trying'),
(39, 'illicit affairs'),
(39, 'invisible string'),
(39, 'mad woman'),
(39, 'epiphany'),
(39, 'betty'),
(39, 'peace'),
(39, 'hoax');

INSERT INTO artistas (nome, tipo) VALUES ('Bob Marley', 2);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (14, 'Catch a Fire', 1973);
INSERT INTO musicas (album_id, titulo) VALUES
(40, 'Concrete Jungle'),
(40, 'Slave Driver'),
(40, '400 Years'),
(40, 'Stop That Train'),
(40, 'Baby We''ve Got a Date'),
(40, 'Stir It Up'),
(40, 'Kinky Reggae'),
(40, 'No More Trouble'),
(40, 'Midnight Ravers');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (14, 'Rastaman Vibration', 1976);
INSERT INTO musicas (album_id, titulo) VALUES
(41, 'Positive Vibration'),
(41, 'Roots, Rock, Reggae'),
(41, 'Johnny Was'),
(41, 'Cry to Me'),
(41, 'Want More'),
(41, 'Crazy Baldhead'),
(41, 'Who the Cap Fit'),
(41, 'Night Shift'),
(41, 'War'),
(41, 'Rat Race');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (14, 'Exodus', 1977);
INSERT INTO musicas (album_id, titulo) VALUES
(42, 'Natural Mystic'),
(42, 'So Much Things to Say'),
(42, 'Guiltiness'),
(42, 'The Heathen'),
(42, 'Exodus'),
(42, 'Jamming'),
(42, 'Waiting in Vain'),
(42, 'Turn Your Lights Down Low'),
(42, 'Three Little Birds'),
(42, 'One Love/People Get Ready');

INSERT INTO artistas (nome, tipo) VALUES ('Bruno Mars', 2);

-- Album 1
INSERT INTO albuns (artista_id, titulo, ano) VALUES (15, 'Doo-Wops & Hooligans', 2010);
INSERT INTO musicas (album_id, titulo) VALUES
(43, 'Grenade'),
(43, 'Just the Way You Are'),
(43, 'Our First Time'),
(43, 'Runaway Baby'),
(43, 'The Lazy Song'),
(43, 'Marry You'),
(43, 'Talking to the Moon'),
(43, 'Liquor Store Blues'),
(43, 'Count on Me'),
(43, 'The Other Side');

-- Album 2
INSERT INTO albuns (artista_id, titulo, ano) VALUES (15, 'Unorthodox Jukebox', 2012);
INSERT INTO musicas (album_id, titulo) VALUES
(44, 'Young Girls'),
(44, 'Locked Out of Heaven'),
(44, 'Gorilla'),
(44, 'Treasure'),
(44, 'Moonshine'),
(44, 'When I Was Your Man'),
(44, 'Natalie'),
(44, 'Show Me'),
(44, 'Money Make Her Smile'),
(44, 'If I Knew');

-- Album 3
INSERT INTO albuns (artista_id, titulo, ano) VALUES (15, '24K Magic', 2016);
INSERT INTO musicas (album_id, titulo) VALUES
(45, '24K Magic'),
(45, 'Chunky'),
(45, 'Perm'),
(45, 'That''s What I Like'),
(45, 'Versace on the Floor'),
(45, 'Straight Up & Down'),
(45, 'Calling All My Lovelies'),
(45, 'Finesse'),
(45, 'Too Good to Say Goodbye');

/*VIEW QUE BUSQUE TODAS AS MÚSICAS POR ALBUM POR CANTOR/CANTORA/BANDA*/
CREATE VIEW vw_musicas_por_album AS
SELECT a.nome AS artista, al.titulo AS album, m.titulo AS musica, a.tipo
FROM artistas a
JOIN albuns al ON al.artista_id = a.id
JOIN musicas m ON m.album_id = al.id;

/*EXIBIR TODOS OS NOMES DOS ALBUNS POR ARTISTA*/
SELECT a.nome AS artista, al.titulo AS album
FROM artistas a
JOIN albuns al ON al.artista_id = a.id
ORDER BY a.nome, al.ano;

/*EXIBIR TODOS OS ARTISTAS POR ORDEM DECRESCENTE*/
SELECT * FROM artistas
ORDER BY nome DESC;

/*CRIAR UMA VIEW PARA EXIBIR QUANTOS ALBUNS EXISTEM DE CADA ANO CADASTRADO*/
CREATE VIEW vw_albuns_por_ano  AS
SELECT ano, COUNT(*) AS quantidade_albuns
FROM albuns
GROUP BY ano
ORDER BY ano;

/*UTILIZANDO A VIEW LISTE TODOS OS ALBUNS LANÇADOS EM 2000*/
SELECT *
FROM vw_albuns_por_ano
WHERE ano = 2000;

/*CRIAR UMA VIEW QUE MOSTRE TODAS AS MÚSICAS LANÇADAS ANTES DO ANO 2000, A BANDA E O ÁLBUM A QUE PERTENCE*/
CREATE VIEW vw_musicas_antes_2000 AS
SELECT m.titulo AS musica, al.titulo AS album, al.ano, ar.nome AS artista, ar.tipo
FROM musicas m
JOIN albuns al ON m.album_id = al.id
JOIN artistas ar ON al.artista_id = ar.id
WHERE al.ano < 2000;

/*CRIAR UMA VIEW QUE MOSTRE TODAS AS BANDAS QUE TÊM ÁLBUNS LANÇADOS ANTES DE 1990 E TAMBÉM DEPOIS DE 2010*/
CREATE VIEW vw_albuns_1990_2010 AS
SELECT a.*
FROM artistas a
JOIN albuns as al ON a.id = al.artista_id
GROUP BY a.id, a.nome
HAVING MIN(al.ano) < 1990 AND MAX(al.ano) > 2010; 

/*CRIAR UMA VIEW QUE MOSTRE TODAS AS MÚSICAS QUE PERTENCEM A MAIS DE UM ALBUM*/
CREATE VIEW vw_musicas_varios_albuns AS
SELECT titulo, COUNT(album_id) AS qtd_albuns
FROM musicas
GROUP BY titulo
HAVING COUNT(album_id) > 1;

/*CRIAR UMA VIEW QUE MOSTRE TODAS AS MÚSICAS QUE FORAM GRAVADAS POR MAIS DE UMA BANDA/ARTISTA*/
CREATE VIEW view_musicas_varios_artista AS
SELECT m.titulo AS musica, COUNT(al.artista_id) AS qtd_artistas
FROM musicas m
JOIN albuns al ON m.album_id = al.id
GROUP BY m.titulo
HAVING COUNT(al.artista_id) > 1;