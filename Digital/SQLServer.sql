USE [master]
GO
/****** Object:  Database [digital3]    Script Date: 3/9/2020 4:11:32 AM ******/
CREATE DATABASE [digital3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'digital3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\digital3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'digital3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\digital3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [digital3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [digital3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [digital3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [digital3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [digital3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [digital3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [digital3] SET ARITHABORT OFF 
GO
ALTER DATABASE [digital3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [digital3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [digital3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [digital3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [digital3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [digital3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [digital3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [digital3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [digital3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [digital3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [digital3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [digital3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [digital3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [digital3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [digital3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [digital3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [digital3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [digital3] SET RECOVERY FULL 
GO
ALTER DATABASE [digital3] SET  MULTI_USER 
GO
ALTER DATABASE [digital3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [digital3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [digital3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [digital3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [digital3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'digital3', N'ON'
GO
ALTER DATABASE [digital3] SET QUERY_STORE = OFF
GO
USE [digital3]
GO
/****** Object:  Table [dbo].[Digital]    Script Date: 3/9/2020 4:11:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digital](
	[id] [int] NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[description] [text] NOT NULL,
	[image] [nvarchar](500) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[timePost] [datetime] NOT NULL,
	[shortDes] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (1, N'Kamala Harris endorses Joe Biden as Democratic presidential candidate', N'California Senator Kamala Harris has endorsed Joe Biden with "great enthusiasm" as the Democratic party''s US presidential candidate.

"Biden has served our country with dignity and we need him now more than ever," she said in a Twitter post.

Her announcement is another boost for Mr Biden, the Democratic front runner to take on Donald Trump in November.

Ms Harris, seen as a rising star within the party, dropped out of the presidential race in December.

Support for Mr Biden surged in the Super Tuesday Democratic primaries last week, with the 77-year-old winning 10 of the 14 states that voted.

The list of possible candidates who might realistically win the nomination then narrowed to become a contest between centrist Mr Biden and the left-wing Senator Bernie Sanders.

Throwing her support behind Mr Biden on Sunday, Ms Harris, 55, said in a recorded message on Twitter: "I really believe in him and I have known him for a long time."', N'.\images\a3.jpg', N'BBC-News', CAST(N'2020-08-03T21:00:00.000' AS DateTime), N'California Senator Kamala Harris has endorsed Joe Biden with "great enthusiasm" as the Democratic party''s US presidential candidate.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (2, N'Coronavirus: Italy death toll soars amid travel ban', N'The number of people to have died from the coronavirus in Italy has shot up by 133 in a day to 366, officials say.

The total number of infections leapt 25% to 7,375 from 5,883, according to the Civil Protection agency.

The jump in figures comes as millions adapt to radical measures introduced on Sunday in an attempt to contain the outbreak.

Up to 16 million people in Lombardy and 14 provinces need special permission to travel under new quarantine rules.

Prime Minister Giuseppe Conte also announced the closure of schools, gyms, museums, nightclubs and other venues across the whole country.

The restrictions will last until 3 April.

Sunday''s events as they happened
The latest figures mean Italy now has the highest number of confirmed infections outside China, where the outbreak originated in December. It has overtaken South Korea, where the total number of cases is 7,313.

Among the latest people to test positive in Italy is the army''s chief of staff. Salvatore Farina said he felt well and was self-isolating.

The strict new quarantine measures affect a quarter of the Italian population and centre on the rich northern part of the country that powers its economy.

The health system is under immense strain in Lombardy, a northern region of 10 million people, where people are being treated in hospital corridors.

"We want to guarantee the health of our citizens. We understand that these measures will impose sacrifices, sometimes small and sometimes very big," Prime Minister Conte said as he announced the measures in the middle of Saturday night.', N'.\images\a2.png', N'BBC-News', CAST(N'2020-09-03T00:00:00.000' AS DateTime), N'The number of people to have died from the coronavirus in Italy has shot up by 133 in a day to 366, officials say.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (3, N'Photos showing what motherhood is really like', N'The ambitious project, which was published in a book in 2015, was a rallying cry “to break those hierarchies”, she says, and bring the attention back to the mother. Renaissance painters had long made a meme of the adoration of baby Jesus, but the experience of the Madonna was nowhere to be seen. “What I became really aware of was how overlooked normal people are, and the incredible stories people were telling me time and time again,” says Lewis, whose editorial work is often focused on the famous. Perched on the end of their beds with minimal photographic equipment, Lewis found an extraordinary openness in the new mothers. She says: “People don’t have any self-consciousness when they are photographed at that point because they are so overwhelmed with emotion [and] an amazing authentic self comes across.”

In 2016, WaterAid invited Lewis to repeat the project in Malawi, where some of the women faced a six-hour walk home from the birthing centre. Though her subjects for both locations varied in age, ethnicity and background, the universality of the motherhood experience in the first 24 hours was evident. “All of these women, up until this point, have had such different lives, but at this moment, they’re all the same,’’ she says.', N'.\image\a5.jpg', N'BBC', CAST(N'2020-06-03T13:13:13.000' AS DateTime), N'For International Women’s Day, Deborah Nicholls-Lee explores the work of photographers who look beyond clichés, revealing the physical and psychological changes after giving birth.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (4, N'Coronavirus: Five ways virus upheaval is hitting women in Asia', N'Millennials are often defined as ''the loneliest generation'' - but one app in the US is trying to tackle that problem for young Jews.

OneTable, a non-profit app, is trying to get more young people to celebrate Friday night dinners, known as Shabbat, that begin the day of rest celebrated by practising Jews.

Their aim is to use the app to make Shabbat a habit every week, and get more young Jews not only willing to attend these dinners but to actually host them - ensuring that the practice survives for the next generation.

For some, it is about ritual and prayer - but for many millennial Jews who see their Jewish identity as more cultural than religious, it''s also an important way to thwart loneliness in a bustling city like New York.

To find out more about religion apps, listen to the World Service''s Heart and Soul documentary about them here.', N'.\images\a4.jpg', N'Lara Owen', CAST(N'2020-08-03T12:12:12.000' AS DateTime), N'Since its outbreak in China, the coronavirus has killed or infected tens of thousands of people across Asia, and is spreading worldwide.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (5, N'PV Sindhu named BBC Indian Sportswoman of Year', N'Indian badminton player PV Sindhu won the inaugural BBC Indian Sportswoman of the Year award following a public vote.

The shortlist of five contenders also consisted of sprinter Dutee Chand, boxer Mary Kom, wrestler Vinesh Phogat and para-badminton player Manasi Joshi.

In 2019, Sindhu became the first Indian to win badminton World Championship gold in Basel, Switzerland.

She is considered a medal prospect at this year''s Olympics in Tokyo.', N'.\images\a6.jpg', N'BBC-Sport', CAST(N'2020-08-03T23:00:00.000' AS DateTime), N'Indian badminton player PV Sindhu won the inaugural BBC Indian Sportswoman of the Year award following a public vote.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (6, N'Avalanches in Austrian Alps kill at least six', N'At least six people have died in two separate avalanches in the Austrian Alps, police say.

Five people, believed to be Czech nationals, were killed in the mountainous Dachstein region, about 80km (50 miles) south-east of Salzburg.

They were caught while on a snowshoeing trip when the avalanche hit about 2,800m (9,200ft) up, police said.

In a separate incident, a 33-year-old police officer died in an avalanche in the southern Carinthia region.

In response to the avalanche in the Dachstein mountain range, seven helicopters were used to transport some 100 rescuers to the site to help search for those missing, the head of operations for the local mountain rescue team, Heribert Eisl, said.

"The avalanche happened on the northern side of the Dachstein, just under the entry point Rankluft," Mr Eisl said.

"We mobilised all our staff, but unfortunately there was no happy ending," he added.

Separately, the police officer killed in the Carinthia region was reportedly taking part in a training exercise.

In January 2019, 60 hotel guests escaped injury when their building was hit by an avalanche overnight in Ramsau am Dachstein.

That avalanche was strong enough to throw vehicles out of its path and burst through windows. More than 40,000 people were trapped in one of Austria''s largest ski resorts at the time because of the avalanche risk.

', N'.\images\a7.jpg', N'BBC-News', CAST(N'2020-02-21T11:11:11.000' AS DateTime), N'At least six people have died in two separate avalanches in the Austrian Alps, police say.')
USE [master]
GO
ALTER DATABASE [digital3] SET  READ_WRITE 
GO
