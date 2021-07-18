﻿PRINT 'Inserting Application.People'
GO

DECLARE @CurrentDateTime datetime2(7) = '20130101'
DECLARE @EndOfTime datetime2(7) =  '99991231 23:59:59.9999999'

INSERT [Application].People 
  (PersonID, FullName, PreferredName, IsPermittedToLogon, LogonName, IsExternalLogonProvider, HashedPassword, IsSystemUser, IsEmployee, IsSalesperson, UserPreferences, PhoneNumber, FaxNumber, EmailAddress, LastEditedBy, ValidFrom, ValidTo) 
VALUES 
  (1,'Data Conversion', 'Data Conversion Only', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', NULL, NULL, NULL, 1, @CurrentDateTime, @EndOfTime)
, (2,'Kayla Woodcock', 'Kayla', 1,'kaylaw@wideworldimporters.com', 0, 0xC0A5B201368FD43B8EC1CDC0F7E5A9D43884CEAABB24331160F8FCA3486B543F, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'kaylaw@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (3,'Hudson Onslow', 'Hudson', 1,'hudsono@wideworldimporters.com', 0, 0xFCA9E8036F1D1FAE2C227DF6545FD5B86964137321530735A2A7ACF68652E52B, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'hudsono@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (4,'Isabella Rupp', 'Isabella', 1,'isabellar@wideworldimporters.com', 0, 0x103F430C7223CB5ED13B2B81FD12FB319F30183B40C710AF3483FF05F9AD9ADA, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'isabellar@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (5,'Eva Muirden', 'Eva', 0,'evam@wideworldimporters.com', 0, 0xE682D36E43B6A3940ED6428B2DE3CEEDD1763C5E0EC02FFBDC35671F9B3E5F3A, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'evam@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (6,'Sophia Hinton', 'Sophia', 1,'sophiah@wideworldimporters.com', 0, 0x5F789AFAB8681C0C2A49E85A3F174A82CC1F1A1CABA92188EC176C7279C58886, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'sophiah@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (7,'Amy Trefl', 'Amy', 1,'amyt@wideworldimporters.com', 0, 0x944BE96E379CF7576ECE86DFFF37DCE0AEBF082521F242165A6648DCEDE2D8D0, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'amyt@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (8,'Anthony Grosse', 'Anthony', 1,'anthonyg@wideworldimporters.com', 0, 0x6A3DC5501EE5118A28779CA573D3D320FBDF057F1D0042A2B31C09F15DD34089, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'anthonyg@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (9,'Alica Fatnowna', 'Alica', 1,'alicaf@wideworldimporters.com', 0, 0xB86A3C56532462C24253AC6FEEEDF4CE391B199E6D49050933733FCA2947F07C, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'alicaf@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (10,'Stella Rosenhain', 'Stella', 1,'stellar@wideworldimporters.com', 0, 0xD30CF49957D34F28158CE15236D4AD31107573F44FA9BD5A3504FBAB9522CBB3, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'stellar@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (11,'Ethan Onslow', 'Ethan', 1,'ethano@wideworldimporters.com', 0, 0x0262CB682AAB27829029D4A770104AD2258E08FFEFF7D0CF593E70B8690FB5E1, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'ethano@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (12,'Henry Forlonge', 'Henry', 1,'henryf@wideworldimporters.com', 0, 0xB00D0327498CC25D07774BDEB8D234FEA8B59EFDFE6DDEB0FF718531BD38F83B, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'henryf@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (13,'Hudson Hollinworth', 'Hudson', 1,'hudsonh@wideworldimporters.com', 0, 0x57CDBF352E140B8D52496400682CA4E8B24BB044488ECC9CE9D31D35AE51C96F, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'hudsonh@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (14,'Lily Code', 'Lily', 1,'lilyc@wideworldimporters.com', 0, 0xCDF7EE2DB6B94C9BCF2D003E37354081BCD53D7B983F1412729D3BC1E4F89876, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'lilyc@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (15,'Taj Shand', 'Taj', 1,'tajs@wideworldimporters.com', 0, 0x816BAFE08EFE7672B35BC077589C0D2372E6A8D8A1E78C2F0C2DE315E1136E7D, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'tajs@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (16,'Archer Lamble', 'Archer', 0,'archerl@wideworldimporters.com', 0, 0x06187F68631295411B022C48B07338F20F4C5C73B31DB67C056C0AE07B8F6EF6, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'archerl@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (17,'Piper Koch', 'Piper', 1,'piperk@wideworldimporters.com', 0, 0xDEB8C639CC07A649974AEE04C63CE0BC19026E07039FF0070689A7A9EDB11359, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'piperk@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (18,'Katie Darwin', 'Katie', 1,'katied@wideworldimporters.com', 0, 0x08623CFDF6BC77B8B40D8791097F25B97874BCECE21BA1B97E757E2D2A3B4C80, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'katied@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (19,'Jai Shand', 'Jai', 1,'jais@wideworldimporters.com', 0, 0x385006DE5AEBEACCF61F230EB84F2DBAD838E3145015A0415CAFBA3CDD84E4F3, 1, 1, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'jais@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (20,'Jack Potter', 'Jack', 1,'jackp@wideworldimporters.com', 0, 0xD13627F11FCCD9C9C0BFDEF0D8C1012BF4E34126BA1D120EA950C564F86C6BDE, 1, 1, 1, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0102', '(415) 555-0103', 'jackp@wideworldimporters.com', 1, @CurrentDateTime, @EndOfTime)
, (21,'Reio Kabin', 'Reio', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(847) 555-0100', '(847) 555-0101', 'reio@adatum.com', 1, @CurrentDateTime, @EndOfTime)
, (22,'Oliver Kivi', 'Olly', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(847) 555-0100', '(847) 555-0101', 'olly@adatum.com', 1, @CurrentDateTime, @EndOfTime)
, (23,'Hanna Mihhailov', 'Hanna', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(360) 555-0100', '(360) 555-0101', 'hannam@contoso.com', 1, @CurrentDateTime, @EndOfTime)
, (24,'Paulus Lippmaa', 'Paulus', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(360) 555-0100', '(360) 555-0101', 'paulusl@contoso.com', 1, @CurrentDateTime, @EndOfTime)
, (25,'Kerstin Parn', 'Kerstin', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0100', '(415) 555-0101', 'kerstin@consolidatedmessenger.com', 1, @CurrentDateTime, @EndOfTime)
, (26,'Helen Ahven', 'Helen', 0,'NO LOGON', 0, NULL, 0, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0100', '(415) 555-0101', 'helen@consolidatedmessenger.com', 1, @CurrentDateTime, @EndOfTime)
, (27,'Bill Lawson', 'Bill', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(203) 555-0107', '(203) 555-0107', 'billl@fabrikam.com', 1, @CurrentDateTime, @EndOfTime)
, (28,'Helen Moore', 'Helen', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(203) 555-0104', '(203) 555-0107', 'helenm@fabrikam.com', 1, @CurrentDateTime, @EndOfTime)
, (29,'Penny Buck', 'Penny', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(406) 555-0107', '(406) 555-0109', 'pennyb@graphicdesigninstitute.com', 1, @CurrentDateTime, @EndOfTime)
, (30,'Donna Smith', 'Donna', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(406) 555-0101', '(406) 555-0109', 'donnas@graphicdesigninstitute.com', 1, @CurrentDateTime, @EndOfTime)
, (31,'Madelaine  Cartier', 'Madelaine', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(423) 555-0101', '(423) 555-0100', 'madelainec@humongousinsurance.com', 1, @CurrentDateTime, @EndOfTime)
, (32,'Annette Talon', 'Annette', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(423) 555-0106', '(423) 555-0100', 'annettet@humongousinsurance.com', 1, @CurrentDateTime, @EndOfTime)
, (33,'Elias Myllari', 'Elias', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(209) 555-0101', '(209) 555-0106', 'eliasm@litwareinc.com', 1, @CurrentDateTime, @EndOfTime)
, (34,'Vilma Niva', 'Vilma', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(209) 555-0103', '(209) 555-0106', 'vilman@litwareinc.com', 1, @CurrentDateTime, @EndOfTime)
, (35,'Prem Prabhu', 'Prem', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(423) 555-0102', '(423) 555-0108', 'premp@lucernepublishing.com', 1, @CurrentDateTime, @EndOfTime)
, (36,'Sunita Jadhav', 'Sunita', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(423) 555-0101', '(423) 555-0108', 'sunitaj@lucernepublishing.com', 1, @CurrentDateTime, @EndOfTime)
, (37,'Marcos Costa', 'Marcos', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(252) 555-0106', '(252) 555-0101', 'marcosc@nodpublishers.com', 1, @CurrentDateTime, @EndOfTime)
, (38,'Matheus Oliveira', 'Matheus', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(252) 555-0107', '(252) 555-0101', 'matheuso@nodpublishers.com', 1, @CurrentDateTime, @EndOfTime)
, (39,'Eliza Soderberg', 'Eliza', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(201) 555-0101', '(201) 555-0106', 'elizas@northwindelectriccars.com', 1, @CurrentDateTime, @EndOfTime)
, (40,'Sara Karlsson', 'Sara', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(201) 555-0100', '(201) 555-0106', 'sarak@northwindelectriccars.com', 1, @CurrentDateTime, @EndOfTime)
, (41,'Donald Jones', 'Donald', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(605) 555-0101', '(605) 555-0101', 'donaldj@treyresearch.net', 1, @CurrentDateTime, @EndOfTime)
, (42,'Sharon Graham', 'Sharon', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(605) 555-0106', '(605) 555-0101', 'sharong@treyresearch.net', 1, @CurrentDateTime, @EndOfTime)
, (43,'Hai Dam', 'Hai', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(218) 555-0101', '(218) 555-0108', 'haid@thephone-company.com', 1, @CurrentDateTime, @EndOfTime)
, (44,'Thanh Dinh', 'Thanh', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(218) 555-0104', '(218) 555-0108', 'thanhd@thephone-company.com', 1, @CurrentDateTime, @EndOfTime)
, (45,'Hubert Helms', 'Hubert', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0103', '(415) 555-0104', 'huberth@woodgrovebank.com', 1, @CurrentDateTime, @EndOfTime)
, (46,'Donald Small', 'Donald', 0,'NO LOGON', 0, NULL, 1, 0, 0, '{ "theme": "defaultblue", "layout": "default", "dateformat": "m/d/yy", "timezoneoffset": "-8", "favoritesondashboard": "true" }', '(415) 555-0105', '(415) 555-0104', 'donalds@woodgrovebank.com', 1, @CurrentDateTime, @EndOfTime)
GO
