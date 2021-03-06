CREATE TABLE IF NOT EXISTS `form_intakeverslag` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `date` datetime default NULL,
  `pid` bigint(20) default NULL,
  `user` varchar(255) default NULL,
  `groupname` varchar(255) default NULL,
  `authorized` tinyint(4) default NULL,
  `activity` tinyint(4) default NULL,
  `intakedatum` datetime default NULL,
  `reden_van_aanmelding` longtext,
  `klachten_probleemgebieden` longtext,
  `hulpverlening_onderzoek` longtext,
  `hulpvraag_en_doelen` longtext,
  `bijzonderheden_systeem` longtext,
  `werk_opleiding_vrije_tijdsbesteding` longtext,
  `relatie_kinderen` longtext,
  `somatische_context` longtext,
  `alcohol` varchar(255) default NULL,
  `drugs` varchar(255) default NULL,
  `roken` varchar(255) default NULL,
  `medicatie` longtext,
  `familieanamnese` longtext,
  `indruk_observaties` longtext,
  `beschrijvende_conclusie` longtext,
  `behandelvoorstel` longtext,
  `autosave_flag` tinyint(4) default 1,
  `autosave_datetime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 ;
