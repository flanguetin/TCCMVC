USE master
GO

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-- Destroy database if already exists
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

IF (EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'TCC'))
BEGIN
	ALTER DATABASE TCC SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE TCC;
END
GO

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-- Files
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

CREATE DATABASE TCC
 ON  PRIMARY 
( NAME = N'TCC', FILENAME = N'C:\Data\MSSQL\TCC.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TCC_log', FILENAME = N'C:\Data\MSSQL\TCC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-- Files
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

USE TCC
GO

CREATE TABLE Court(
	idCourt int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	courtName varchar(45) NOT NULL);

CREATE TABLE Users(
	idUsers int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Firstname varchar(45) NULL,
	LastName varchar(45) NULL,
	UserName nvarchar(50) NOT NULL,
	LastActivityDate datetime NOT NULL);



-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-- Foreign key constraints
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
-- Data
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

Use TCC;
GO

INSERT INTO Users (FirstName, LastName, UserName, LastActivityDate) values 
('Radu','Albot','RuAlbot',CURRENT_TIMESTAMP),
('Nicolas','Almagro','NsAlmagro',CURRENT_TIMESTAMP),
('Kevin','Anderson','KnAnderson',CURRENT_TIMESTAMP),
('Guido','Andreozzi','GoAndreozzi',CURRENT_TIMESTAMP),
('Pablo','Andujar','PoAndujar',CURRENT_TIMESTAMP),
('Facundo','Arguello','FoArguello',CURRENT_TIMESTAMP),
('Andrea','Arnaboldi','AaArnaboldi',CURRENT_TIMESTAMP),
('Matthias','Bachinger','MsBachinger',CURRENT_TIMESTAMP),
('Marcos','Baghdatis','MsBaghdatis',CURRENT_TIMESTAMP),
('Facundo','Bagnis','FoBagnis',CURRENT_TIMESTAMP),
('Agut','Bautista','AtBautista',CURRENT_TIMESTAMP),
('Andreas','Beck','AsBeck',CURRENT_TIMESTAMP),
('Benjamin','Becker','BnBecker',CURRENT_TIMESTAMP),
('Aljaz','Bedene','AzBedene',CURRENT_TIMESTAMP),
('Thomaz','Bellucci','TzBellucci',CURRENT_TIMESTAMP),
('Ruben','Bemelmans','RnBemelmans',CURRENT_TIMESTAMP),
('Julien','Benneteau','JnBenneteau',CURRENT_TIMESTAMP),
('Ricardas','Berankis','RsBerankis',CURRENT_TIMESTAMP),
('Tomas','Berdych','TsBerdych',CURRENT_TIMESTAMP),
('Carlos','Berlocq','CsBerlocq',CURRENT_TIMESTAMP),
('Michael','Berrer','MlBerrer',CURRENT_TIMESTAMP),
('Simone','Bolelli','SeBolelli',CURRENT_TIMESTAMP),
('Alex','Bolt','AxBolt',CURRENT_TIMESTAMP),
('Liam','Broady','LmBroady',CURRENT_TIMESTAMP),
('Dustin','Brown','DnBrown',CURRENT_TIMESTAMP),
('Chase','Buchanan','CeBuchanan',CURRENT_TIMESTAMP),
('Baena','Carballes','BaCarballes',CURRENT_TIMESTAMP),
('Busta','Carreno','BaCarreno',CURRENT_TIMESTAMP),
('Marco','Cecchinato','MoCecchinato',CURRENT_TIMESTAMP),
('Jeremy','Chardy','JyChardy',CURRENT_TIMESTAMP),
('Marco','Chiudinelli','MoChiudinelli',CURRENT_TIMESTAMP),
('Hyeon','Chung','HnChung',CURRENT_TIMESTAMP),
('Marin','Cilic','MnCilic',CURRENT_TIMESTAMP),
('Marius','Copil','MsCopil',CURRENT_TIMESTAMP),
('Kimmer','Coppejans','KrCoppejans',CURRENT_TIMESTAMP),
('Borna','Coric','BaCoric',CURRENT_TIMESTAMP),
('Pablo','Cuevas','PoCuevas',CURRENT_TIMESTAMP),
('Frank','Dancevic','FkDancevic',CURRENT_TIMESTAMP),
('Taro','Daniel','ToDaniel',CURRENT_TIMESTAMP),
('Steve','Darcis','SeDarcis',CURRENT_TIMESTAMP),
('Jon','de Bakker','Jnde Bakker',CURRENT_TIMESTAMP),
('Marc','De Schepper','McDe Schepper',CURRENT_TIMESTAMP),
('Juan','Del Potro','JnDel Potro',CURRENT_TIMESTAMP),
('Federico','Delbonis','FoDelbonis',CURRENT_TIMESTAMP),
('Mate','Delic','MeDelic',CURRENT_TIMESTAMP),
('Somdev','Devvarman','SvDevvarman',CURRENT_TIMESTAMP),
('Grigor','Dimitrov','GrDimitrov',CURRENT_TIMESTAMP),
('Novak','Djokovic','NkDjokovic',CURRENT_TIMESTAMP),
('Ivan','Dodig','InDodig',CURRENT_TIMESTAMP),
('Alexandr','Dolgopolov','ArDolgopolov',CURRENT_TIMESTAMP),
('Evgeny','Donskoy','EyDonskoy',CURRENT_TIMESTAMP),
('James','Duckworth','JsDuckworth',CURRENT_TIMESTAMP),
('Farrukh','Dustov','FhDustov',CURRENT_TIMESTAMP),
('Damir','Dzumhur','DrDzumhur',CURRENT_TIMESTAMP),
('Matthew','Ebden','MwEbden',CURRENT_TIMESTAMP),
('Gastao','Elias','GoElias',CURRENT_TIMESTAMP),
('Burgos','Estrella','BsEstrella',CURRENT_TIMESTAMP),
('Alejandro','Falla','AoFalla',CURRENT_TIMESTAMP),
('Roger','Federer','RrFederer',CURRENT_TIMESTAMP),
('David','Ferrer','DdFerrer',CURRENT_TIMESTAMP),
('Fabio','Fognini','FoFognini',CURRENT_TIMESTAMP),
('Marton','Fucsovics','MnFucsovics',CURRENT_TIMESTAMP),
('Teymuraz','Gabashvili','TzGabashvili',CURRENT_TIMESTAMP),
('Guillermo','Garcia-Lopez','GoGarcia-Lopez',CURRENT_TIMESTAMP),
('Richard','Gasquet','RdGasquet',CURRENT_TIMESTAMP),
('Andre','Ghem','AeGhem',CURRENT_TIMESTAMP),
('Daniel','Gimeno-Traver','DlGimeno-Traver',CURRENT_TIMESTAMP),
('Santiago','Giraldo','SoGiraldo',CURRENT_TIMESTAMP),
('David','Goffin','DdGoffin',CURRENT_TIMESTAMP),
('Peter','Gojowczyk','PrGojowczyk',CURRENT_TIMESTAMP),
('Andrey','Golubev','AyGolubev',CURRENT_TIMESTAMP),
('Norbert','Gombos','NtGombos',CURRENT_TIMESTAMP),
('Alejandro','Gonzalez','AoGonzalez',CURRENT_TIMESTAMP),
('Maximo','Gonzalez','MoGonzalez',CURRENT_TIMESTAMP),
('Marcel','Granollers','MlGranollers',CURRENT_TIMESTAMP),
('Sam','Groth','SmGroth',CURRENT_TIMESTAMP),
('Ernests','Gulbis','EsGulbis',CURRENT_TIMESTAMP),
('Tommy','Haas','TyHaas',CURRENT_TIMESTAMP),
('Robin','Haase','RnHaase',CURRENT_TIMESTAMP),
('Andreas','Haider-Maurer','AsHaider-Maurer',CURRENT_TIMESTAMP),
('Victor','Hanescu','VrHanescu',CURRENT_TIMESTAMP),
('Ryan','Harrison','RnHarrison',CURRENT_TIMESTAMP),
('Pierre-Hugues','Herbert','PsHerbert',CURRENT_TIMESTAMP),
('Lleyton','Hewitt','LnHewitt',CURRENT_TIMESTAMP),
('Galung','Huta','GgHuta',CURRENT_TIMESTAMP),
('Uladzimir','Ignatik','UrIgnatik',CURRENT_TIMESTAMP),
('Marsel','Ilhan','MlIlhan',CURRENT_TIMESTAMP),
('John','Isner','JnIsner',CURRENT_TIMESTAMP),
('Denis','Istomin','DsIstomin',CURRENT_TIMESTAMP),
('Tatsuma','Ito','TaIto',CURRENT_TIMESTAMP),
('Jerzy','Janowicz','JyJanowicz',CURRENT_TIMESTAMP),
('Malek','Jaziri','MkJaziri',CURRENT_TIMESTAMP),
('Steve','Johnson','SeJohnson',CURRENT_TIMESTAMP),
('Tobias','Kamke','TsKamke',CURRENT_TIMESTAMP),
('Ivo','Karlovic','IoKarlovic',CURRENT_TIMESTAMP),
('Blaz','Kavcic','BzKavcic',CURRENT_TIMESTAMP),
('Bradley','Klahn','ByKlahn',CURRENT_TIMESTAMP),
('Martin','Klizan','MnKlizan',CURRENT_TIMESTAMP),
('Philipp','Kohlschreiber','PpKohlschreiber',CURRENT_TIMESTAMP),
('Thanasi','Kokkinakis','TiKokkinakis',CURRENT_TIMESTAMP),
('Austin','Krajicek','AnKrajicek',CURRENT_TIMESTAMP),
('Filip','Krajinovic','FpKrajinovic',CURRENT_TIMESTAMP),
('Jason','Kubler','JnKubler',CURRENT_TIMESTAMP),
('Lukasz','Kubot','LzKubot',CURRENT_TIMESTAMP),
('Denis','Kudla','DsKudla',CURRENT_TIMESTAMP),
('Alexander','Kudryavtsev','ArKudryavtsev',CURRENT_TIMESTAMP),
('Mikhail','Kukushkin','MlKukushkin',CURRENT_TIMESTAMP),
('Andrey','Kuznetsov','AyKuznetsov',CURRENT_TIMESTAMP),
('Alex','Kuznetsov','AxKuznetsov',CURRENT_TIMESTAMP),
('Nick','Kyrgios','NkKyrgios',CURRENT_TIMESTAMP),
('Lukas','Lacko','LsLacko',CURRENT_TIMESTAMP),
('Dusan','Lajovic','DnLajovic',CURRENT_TIMESTAMP),
('Feliciano','Lopez','FoLopez',CURRENT_TIMESTAMP),
('Paolo','Lorenzi','PoLorenzi',CURRENT_TIMESTAMP),
('Yen-Hsun','Lu','YnLu',CURRENT_TIMESTAMP),
('Nicolas','Mahut','NsMahut',CURRENT_TIMESTAMP),
('Adrian','Mannarino','AnMannarino',CURRENT_TIMESTAMP),
('Illya','Marchenko','IaMarchenko',CURRENT_TIMESTAMP),
('Andrej','Martin','AjMartin',CURRENT_TIMESTAMP),
('Paul-Henri','Mathieu','PiMathieu',CURRENT_TIMESTAMP),
('Marinko','Matosevic','MoMatosevic',CURRENT_TIMESTAMP),
('Leonardo','Mayer','LoMayer',CURRENT_TIMESTAMP),
('Florian','Mayer','FnMayer',CURRENT_TIMESTAMP),
('James','McGee','JsMcGee',CURRENT_TIMESTAMP),
('Miloslav','Mecir','MvMecir',CURRENT_TIMESTAMP),
('Jurgen','Melzer','JnMelzer',CURRENT_TIMESTAMP),
('Gerald','Melzer','GdMelzer',CURRENT_TIMESTAMP),
('Adrian','Menendez-Maceiras','AnMenendez-Maceiras',CURRENT_TIMESTAMP),
('Axel','Michon','AlMichon',CURRENT_TIMESTAMP),
('John','Millman','JnMillman',CURRENT_TIMESTAMP),
('Vincent','Millot','VtMillot',CURRENT_TIMESTAMP),
('Denys','Molchanov','DsMolchanov',CURRENT_TIMESTAMP),
('Juan','Monaco','JnMonaco',CURRENT_TIMESTAMP),
('Gael','Monfils','GlMonfils',CURRENT_TIMESTAMP),
('Albert','Montanes','AtMontanes',CURRENT_TIMESTAMP),
('Hiroki','Moriya','HiMoriya',CURRENT_TIMESTAMP),
('Gilles','Muller','GsMuller',CURRENT_TIMESTAMP),
('Andy','Murray','AyMurray',CURRENT_TIMESTAMP),
('Rafael','Nadal','RlNadal',CURRENT_TIMESTAMP),
('Aleksandr','Nedovyesov','ArNedovyesov',CURRENT_TIMESTAMP),
('Jarkko','Nieminen','JoNieminen',CURRENT_TIMESTAMP),
('Kei','Nishikori','KiNishikori',CURRENT_TIMESTAMP),
('Yoshihito','Nishioka','YoNishioka',CURRENT_TIMESTAMP),
('Wayne','Odesnik','WeOdesnik',CURRENT_TIMESTAMP),
('Benoit','Paire','BtPaire',CURRENT_TIMESTAMP),
('Ante','Pavic','AePavic',CURRENT_TIMESTAMP),
('Peter','Polansky','PrPolansky',CURRENT_TIMESTAMP),
('Vasek','Pospisil','VkPospisil',CURRENT_TIMESTAMP),
('Lucas','Pouille','LsPouille',CURRENT_TIMESTAMP),
('Michal','Przysiezny','MlPrzysiezny',CURRENT_TIMESTAMP),
('Tim','Puetz','TmPuetz',CURRENT_TIMESTAMP),
('Sam','Querrey','SmQuerrey',CURRENT_TIMESTAMP),
('Rajeev','Ram','RvRam',CURRENT_TIMESTAMP),
('Albert','Ramos-Vinolas','AtRamos-Vinolas',CURRENT_TIMESTAMP),
('Milos','Raonic','MsRaonic',CURRENT_TIMESTAMP),
('Julian','Reister','JnReister',CURRENT_TIMESTAMP),
('Pere','Riba','PeRiba',CURRENT_TIMESTAMP),
('Stephane','Robert','SeRobert',CURRENT_TIMESTAMP),
('Tommy','Robredo','TyRobredo',CURRENT_TIMESTAMP),
('Edouard','Roger-Vasselin','EdRoger-Vasselin',CURRENT_TIMESTAMP),
('Blaz','Rola','BzRola',CURRENT_TIMESTAMP),
('Lukas','Rosol','LsRosol',CURRENT_TIMESTAMP),
('Michael','Russell','MlRussell',CURRENT_TIMESTAMP),
('Luke','Saville','LeSaville',CURRENT_TIMESTAMP),
('Diego','Schwartzman','DoSchwartzman',CURRENT_TIMESTAMP),
('Dudi','Sela','DiSela',CURRENT_TIMESTAMP),
('Andreas','Seppi','AsSeppi',CURRENT_TIMESTAMP),
('Igor','Sijsling','IrSijsling',CURRENT_TIMESTAMP),
('Gilles','Simon','GsSimon',CURRENT_TIMESTAMP),
('John-Patrick','Smith','JkSmith',CURRENT_TIMESTAMP),
('Tim','Smyczek','TmSmyczek',CURRENT_TIMESTAMP),
('Jack','Sock','JkSock',CURRENT_TIMESTAMP),
('Go','Soeda','GoSoeda',CURRENT_TIMESTAMP),
('Joao','Sousa','JoSousa',CURRENT_TIMESTAMP),
('Joao','Souza','JoSouza',CURRENT_TIMESTAMP),
('Sergiy','Stakhovsky','SyStakhovsky',CURRENT_TIMESTAMP),
('Potito','Starace','PoStarace',CURRENT_TIMESTAMP),
('Radek','Stepanek','RkStepanek',CURRENT_TIMESTAMP),
('Jan-Lennard','Struff','JdStruff',CURRENT_TIMESTAMP),
('Yuichi','Sugita','YiSugita',CURRENT_TIMESTAMP),
('Dominic','Thiem','DcThiem',CURRENT_TIMESTAMP),
('Bernard','Tomic','BdTomic',CURRENT_TIMESTAMP),
('Stefano','Travaglia','SoTravaglia',CURRENT_TIMESTAMP),
('Viktor','Troicki','VrTroicki',CURRENT_TIMESTAMP),
('Jo-Wilfried','Tsonga','JdTsonga',CURRENT_TIMESTAMP),
('Dmitry','Tursunov','DyTursunov',CURRENT_TIMESTAMP),
('Adrian','Ungur','AnUngur',CURRENT_TIMESTAMP),
('Luca','Vanni','LaVanni',CURRENT_TIMESTAMP),
('Fernando','Verdasco','FoVerdasco',CURRENT_TIMESTAMP),
('Jiri','Vesely','JiVesely',CURRENT_TIMESTAMP),
('Matteo','Viola','MoViola',CURRENT_TIMESTAMP),
('Filippo','Volandri','FoVolandri',CURRENT_TIMESTAMP),
('Jimmy','Wang','JyWang',CURRENT_TIMESTAMP),
('James','Ward','JsWard',CURRENT_TIMESTAMP),
('Stan','Wawrinka','SnWawrinka',CURRENT_TIMESTAMP),
('Donald','Young','DdYoung',CURRENT_TIMESTAMP),
('Mikhail','Youzhny','MlYouzhny',CURRENT_TIMESTAMP),
('Horacio','Zeballos','HoZeballos',CURRENT_TIMESTAMP),
('Ze','Zhang','ZeZhang',CURRENT_TIMESTAMP),
('Alexander','Zverev','ArZverev',CURRENT_TIMESTAMP);

GO

INSERT INTO court (courtName) VALUES ('Central'), ('Numéro 1'), ('Numéro 2');
GO

