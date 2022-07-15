CREATE TABLE IF NOT EXISTS `form_sdoh` (
id bigint(20) NOT NULL auto_increment,
date datetime default NULL,
pid bigint(20) default NULL,
user varchar(255) default NULL,
groupname varchar(255) default NULL,
authorized tinyint(4) default NULL,
activity tinyint(4) default NULL,
education varchar(30),
disability varchar(30),
housing varchar(30),
housingotherinput text,
workfulltime varchar(5) default NULL,
workparttime varchar(5) default NULL,
worktemporary varchar(5) default NULL,
workseasonal varchar(5) default NULL,
worklooking varchar(5) default NULL,
workretired varchar(5) default NULL,
workdisabled varchar(5) default NULL,
workstudent varchar(5) default NULL,
worknotemployed varchar(5) default NULL,
worknotans varchar(5) default NULL,
workhours int default NULL,
hhincome int default NULL,
hhsize int default NULL,
careno  varchar(5) default NULL,
careunder5 varchar(5) default NULL,
care5to12 varchar(5) default NULL,
careover12 varchar(5) default NULL,
carespecneeds varchar(5) default NULL,
caredisabled varchar(5) default NULL,
careelderly varchar(5) default NULL,
careother varchar(5) default NULL,
careotherinput text,
debtno varchar(5) default NULL,
debtmedical varchar(5) default NULL,
debtcreditcards varchar(5) default NULL,
debtrent varchar(5) default NULL,
debtstudentloans varchar(5) default NULL,
debttaxes varchar(5) default NULL,
debtlegal varchar(5) default NULL,
debtcar varchar(5) default NULL,
debtutilities varchar(5) default NULL,
debtother varchar(5) default NULL,
debtotherinput text,
moneyno varchar(5) default NULL,
moneyfood varchar(5) default NULL,
moneymedical varchar(5) default NULL,
moneychildcare varchar(5) default NULL,
moneyutilities varchar(5) default NULL,
moneyphone varchar(5) default NULL,
moneyrent varchar(5) default NULL,
moneytransportation varchar(5) default NULL,
moneyclothing varchar(5) default NULL,
moneyeducation varchar(5) default NULL,
moneyother varchar(5) default NULL,
moneyotherinput text,
transportationno varchar(5) default NULL,
transportmedical varchar(5) default NULL,
transportfood varchar(5) default NULL,
transportwork varchar(5) default NULL,
transportschool varchar(5) default NULL,
transportfamily varchar(5) default NULL,
transportother varchar(5) default NULL,
transportotherinput text,
medicalno varchar(5) default NULL,
medicalnoinsurance varchar(5) default NULL,
medicalcopay varchar(5) default NULL,
medicalnotcovered varchar(5) default NULL,
medicalwork varchar(5) default NULL,
medicalnoprovider varchar(5) default NULL,
medicalunderstand varchar(5) default NULL,
medicaltrust varchar(5) default NULL,
medicalchildcare varchar(5) default NULL,
medicalother varchar(5) default NULL,
medicalotherinput text,
dentist varchar(30),
dentistotherinput text,
social varchar(30),
stress varchar(30),
stressno varchar(5) default NULL,
stressdeath varchar(5) default NULL,
stressdivorce varchar(5) default NULL,
stressjob varchar(5) default NULL,
stressmoved varchar(5) default NULL,
stressillness varchar(5) default NULL,
stressvictim varchar(5) default NULL,
stresswitness varchar(5) default NULL,
stresslegal varchar(5) default NULL,
stresshomeless varchar(5) default NULL,
stressincarcerated varchar(5) default NULL,
stressbankruptcy varchar(5) default NULL,
stressmarriage varchar(5) default NULL,
stressbirth varchar(5) default NULL,
stressadultchild varchar(5) default NULL,
stressother varchar(5) default NULL,
stressotherinput text,
safety varchar (30),
partnersafety varchar(30),
female varchar(30),
addiction varchar(30),
armedservices varchar(30),
refugee varchar(30),
discrimno varchar(5) default NULL,
discrimrace varchar(5) default NULL,
discrimgender varchar(5) default NULL,
discrimsexpref varchar(5) default NULL,
discrimgenexp varchar(5) default NULL,
discrimreligion varchar(5) default NULL,
discrimdisability varchar(5) default NULL,
discrimage varchar(5) default NULL,
discrimweight varchar(5) default NULL,
discrimses varchar(5) default NULL,
discrimedu varchar(5) default NULL,
discrimmarital varchar(5) default NULL,
discrimcitizen varchar(5) default NULL,
discrimaccent varchar(5) default NULL,
discrimcriminalhist varchar(5) default NULL,
discrimother varchar(5) default NULL,
discrimotherinput text,
displaceno varchar(5) default NULL,
displacework varchar(5) default NULL,
displacehousing varchar(5) default NULL,
displacehealth varchar(5) default NULL,
displacelaw varchar(5) default NULL,
displaceedu varchar(5) default NULL,
displacepublic varchar(5) default NULL,
displaceclubs varchar(5) default NULL,
displacegovt varchar(5) default NULL,
displacefinance varchar(5) default NULL,
displaceother varchar(5) default NULL,
displaceotherinput text,
contact varchar(30),
contactotherinput text,
additional_notes longtext,
totalscore int default NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB;
