-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 27 mars 2025 à 12:52
-- Version du serveur : 5.7.24
-- Version de PHP : 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mangas`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` int(11) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id`, `nom`, `date`, `id_manga`) VALUES
(1, 'Kentaro Miura', 1989, 1),
(2, 'Haraki', 2004, 2),
(3, 'Inoue Takehiko', 1998, 3),
(4, 'Oda Eichiro', 1997, 4),
(5, 'Naoki Urasawa', 1994, 5);

-- --------------------------------------------------------

--
-- Structure de la table `manga`
--

CREATE TABLE `manga` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `annee` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `manga`
--

INSERT INTO `manga` (`id`, `titre`, `annee`, `note`, `description`) VALUES
(1, 'Berserk', 1989, 9, '\r\n9.47\r\nRanked #1Popularity #1Members 742,327\r\nManga\r\nYoung Animal\r\nMiura, Kentarou (Story & Art), Studio Gaga (Art)\r\nAdd to My List\r\nSelect\r\nVolumes: \r\n0\r\n/?Chapters: \r\n0\r\n/?\r\nEditSynopsis\r\nGuts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.'),
(2, 'Jojo', 2004, 9, 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.\r\n\r\nThe youthful Johnny Joestar, a crippled former horse racer, has come to San Diego to watch the start of the race. There he encounters Gyro Zeppeli, a racer with two steel balls at his waist instead of a gun. Johnny witnesses Gyro using one of his steel balls to unleash a fantastical power, compelling a man to fire his gun at himself during a duel. In the midst of the action, Johnny happens to touch the steel ball and feels a power surging through his legs, allowing him to stand up for the first time in two years. Vowing to find the secret of the steel balls, Johnny decides to compete in the race, and so begins his bizarre adventure across America on the Steel Ball Run.\r\n'),
(3, 'Vagabond', 1998, 9, 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.\r\n\r\nAfter the two are separated, Shinmen returns home on a self-appointed mission to notify the Hon\'iden family of Matahachi\'s survival. He instead finds himself a wanted criminal, framed for his friend\'s supposed murder based on his history of violence. Upon being captured, he is strung up on a tree and left to die. An itinerant monk, the distinguished Takuan Soho, takes pity on the \"devil child,\" secretly freeing Shinmen and christening him with a new name to avoid pursuit by the authorities: Musashi Miyamoto.\r\n\r\nVagabond is the fictitious retelling of the life of one of Japan\'s most renowned swordsmen, the \"Sword Saint\" Musashi Miyamoto—his rise from a swordsman with no desire other than to become \"Invincible Under the Heavens\" to an enlightened warrior who slowly learns of the importance of close friends, self-reflection, and life itself.'),
(4, 'One Piece', 1997, 9, '\r\n9.22\r\nRanked #4Popularity #4Members 655,034\r\nManga\r\nShounen Jump (Weekly)\r\nOda, Eiichiro (Story & Art)\r\nAdd to My List\r\nSelect\r\nVolumes: \r\n0\r\n/?Chapters: \r\n0\r\n/?\r\nEditSynopsis\r\nGol D. Roger, a man referred to as the King of the Pirates, is set to be executed by the World Government. But just before his demise, he confirms the existence of a great treasure, One Piece, located somewhere within the vast ocean known as the Grand Line. Announcing that One Piece can be claimed by anyone worthy enough to reach it, the King of the Pirates is executed and the Great Age of Pirates begins.\r\n\r\nTwenty-two years later, a young man by the name of Monkey D. Luffy is ready to embark on his own adventure, searching for One Piece and striving to become the new King of the Pirates. Armed with just a straw hat, a small boat, and an elastic body, he sets out on a fantastic journey to gather his own crew and a worthy ship that will take them across the Grand Line to claim the greatest status on the high seas.'),
(5, 'Monster', 1994, 9, 'Monster won the Grand Prize at the third Tezuka Osamu Cultural Prize in 1999, as well as the 46th Shogakukan Manga Award in the General category in 2000.\r\n\r\nThe series was published in English by VIZ Media under its VIZ Signature imprint from February 21, 2006, to December 16, 2008, and again in 2-in-1 omnibuses under the subtitle The Perfect Edition. The manga was also published in Brazilian Portuguese by Panini Comics from June 2012 to April 2015; in Polish by Hanami from March 28, 2014, to February 1, 2017; in Spain by Planeta Cómic from June 16, 2009, to September 21, 2010; in Argentina by Editorial Ivrea and LARP Editores; and in Turkey by Marmara Çizgi.');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `id_manga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id`, `nom`, `description`, `id_manga`) VALUES
(1, 'Guts', '\r\n9.47\r\nRanked #1Popularity #1Members 742,327\r\nManga\r\nYoung Animal\r\nMiura, Kentarou (Story & Art), Studio Gaga (Art)\r\nAdd to My List\r\nSelect\r\nVolumes: \r\n0\r\n/?Chapters: \r\n0\r\n/?\r\nEditSynopsis\r\nGuts, a former mercenary now known as the Black Swordsman, is out for revenge. After a tumultuous childhood, he finally finds someone he respects and believes he can trust, only to have everything fall apart when this person takes away everything important to Guts for the purpose of fulfilling his own desires. Now marked for death, Guts becomes condemned to a fate in which he is relentlessly pursued by demonic beings.\r\n\r\nSetting out on a dreadful quest riddled with misfortune, Guts, armed with a massive sword and monstrous strength, will let nothing stop him, not even death itself, until he is finally able to take the head of the one who stripped him—and his loved one—of their humanity.', 1),
(2, 'Johnny Joestar', 'In the American Old West, the world\'s greatest race is about to begin. Thousands line up in San Diego to travel over six thousand kilometers for a chance to win the grand prize of fifty million dollars. With the era of the horse reaching its end, contestants are allowed to use any kind of vehicle they wish. Competitors will have to endure grueling conditions, traveling up to a hundred kilometers a day through uncharted wastelands. The Steel Ball Run is truly a one-of-a-kind event.\r\n\r\nThe youthful Johnny Joestar, a crippled former horse racer, has come to San Diego to watch the start of the race. There he encounters Gyro Zeppeli, a racer with two steel balls at his waist instead of a gun. Johnny witnesses Gyro using one of his steel balls to unleash a fantastical power, compelling a man to fire his gun at himself during a duel. In the midst of the action, Johnny happens to touch the steel ball and feels a power surging through his legs, allowing him to stand up for the first time in two years. Vowing to find the secret of the steel balls, Johnny decides to compete in the race, and so begins his bizarre adventure across America on the Steel Ball Run.', 2),
(3, 'Takezo', 'In 16th-century Japan, Shinmen Takezou is a wild, rough young man in both his appearance and his actions. His aggressive nature has won him the collective reproach and fear of his village, leading him and his best friend, Matahachi Honiden, to run away in search of something grander than provincial life. The pair enlist in the Toyotomi army, yearning for glory—but when the Toyotomi suffer a crushing defeat at the hands of the Tokugawa Clan at the Battle of Sekigahara, the friends barely make it out alive.\r\n\r\nAfter the two are separated, Shinmen returns home on a self-appointed mission to notify the Hon\'iden family of Matahachi\'s survival. He instead finds himself a wanted criminal, framed for his friend\'s supposed murder based on his history of violence. Upon being captured, he is strung up on a tree and left to die. An itinerant monk, the distinguished Takuan Soho, takes pity on the \"devil child,\" secretly freeing Shinmen and christening him with a new name to avoid pursuit by the authorities: Musashi Miyamoto.\r\n\r\nVagabond is the fictitious retelling of the life of one of Japan\'s most renowned swordsmen, the \"Sword Saint\" Musashi Miyamoto—his rise from a swordsman with no desire other than to become \"Invincible Under the Heavens\" to an enlightened warrior who slowly learns of the importance of close friends, self-reflection, and life itself.', 3),
(4, 'Luffy', 'One Piece is the highest-selling manga series of all time, with over 500 million copies in circulation as of 2022. Volume 67 of the series currently holds the record for highest first print run of any manga or book of all time in Japan, with 4.05 million in 2012. The series was a finalist for the Tezuka Osamu Cultural Prize three times in a row from 2000 to 2002. In 2012, it won the 41st Japan Cartoonists Association Award Grand Prize, alongside Kimuchi Yokoyama\'s Neko Darake.\r\n\r\nVIZ Media has published One Piece in English under the Shonen Jump imprint since January 2, 2003, and in 3-in-1 omnibus editions since December 1, 2009. VIZ Media has been publishing boxed sets for the manga since November 5, 2013. It has also been simulpub through MANGA Plus. The series has also been published in numerous amounts of languages worldwide including Korean, Malay, Indonesian, Chinese, Thai, Vietnamese, German, French, Italian, Spanish, Portuguese, Swedish, Danish, Norwegian, Finnish, Polish, Turkish, and Russian.\r\n\r\nThe manga has been adapted into a live-action TV series on Netflix since August 31, 2023.', 4),
(5, 'Kenzou Tenma', 'Kenzou Tenma, a renowned Japanese neurosurgeon working in post-war Germany, faces a difficult choice: to operate on Johan Liebert, an orphan boy on the verge of death, or on the mayor of Düsseldorf. In the end, Tenma decides to gamble his reputation by saving Johan, effectively leaving the mayor for dead.\r\n\r\nAs a consequence of his actions, hospital director Heinemann strips Tenma of his position, and Heinemann\'s daughter Eva breaks off their engagement. Disgraced and shunned by his colleagues, Tenma loses all hope of a successful career—that is, until the mysterious killing of Heinemann gives him another chance.\r\n\r\nNine years later, Tenma is the head of the surgical department and close to becoming the director himself. Although all seems well for him at first, he soon becomes entangled in a chain of gruesome murders that have taken place throughout Germany. The culprit is a monster—the same one that Tenma saved on that fateful day nine years ago.', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
