
#
# Table structure for table `customcpt`
#

CREATE TABLE `customcpt` (
  `id` bigint(20) NOT NULL auto_increment,
  `code_text` longtext,
  `code` longtext,
  `code_type` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8369 ;

#
# Dumping data for table `customcpt`
#

INSERT INTO `customcpt` VALUES (320, 'BEN SKIN LESION W/MARG, EXCEPT SKIN TAG SCALP/NECK/HANDS/FEET/GENITAL; EXCISE DIAM 1.1-2.0CM', '11422', 'EXCISE');
INSERT INTO `customcpt` VALUES (4591, 'CARE ONLY; 4 TO 6 VISITS', '59425', 'ANTEPARTUM');
INSERT INTO `customcpt` VALUES (6270, 'DIP STICK/TABLET REAGENT; NON-AUTOMATED, W/O MICROSCOPY', '81002', 'URINALYSIS');
INSERT INTO `customcpt` VALUES (8157, 'VISIT, NEW PT, 3 KEY COMPONENTS: EXPAND PROB FOCUS HX; EXPAND PROB FOCUS EXAM; STRTFWD DEC', '99202', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8158, 'VISIT, NEW PT, 3 KEY COMPONENTS: DETAILED HX; DETAILED EXAM; MED DECISION LOW COMPLEXITY', '99203', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8159, 'VISIT, NEW PT, 3 KEY COMPONENTS:COMPREHENSIVE HX;COMPREHENSIVE EXAM;MED DECISN MOD COMPLEX', '99204', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8160, 'VISIT, NEW PT, 3 KEY COMPONENTS:COMPREHENSIVE HX;COMPREHENSIV EXAM;MED DECISN HIGH COMPLEX', '99205', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8164, 'VISIT, EST PT, 2 KEY COMPONENTS: DETAILED HX; DETAILED EXAM; MED DECISION MOD COMPLEXITY', '99214', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8165, 'VISIT, EST PT, 2 KEY COMPONENTS:COMPREHENSIVE HX;COMPREHENSIV EXAM;MED DECISN HIGH COMPLEX', '99215', 'OFFICE/OP');
INSERT INTO `customcpt` VALUES (8260, 'COMPREHENSIVE PREVENTIVE MEDICINE E&M W/HX/EXAM, NEW PT; 18-39 YR', '99385', 'INITIAL');
INSERT INTO `customcpt` VALUES (8268, 'COMPREHENSIVE PREVENTIVE MEDICINE E&M W/HX/EXAM, EST PT; 40-64 YR', '99396', 'PERIODIC');
