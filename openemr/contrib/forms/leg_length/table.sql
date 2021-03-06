CREATE TABLE IF NOT EXISTS `form_leg_length` (
  `id`                  bigint(20)   NOT NULL auto_increment,
  `date`                datetime     DEFAULT NULL,
  `pid`                 bigint(20)   NOT NULL DEFAULT 0,
  `user`                varchar(255) DEFAULT NULL,
  `groupname`           varchar(255) DEFAULT NULL,
  `authorized`          tinyint(4)   NOT NULL DEFAULT 0,
  `activity`            tinyint(4)   NOT NULL DEFAULT 0,
  `AE_left`           text,
  `AE_right`           text,
  `BE_left`           text,
  `BE_right`           text,
  `AK_left`           text,
  `AK_right`           text,
  `K_left`           text,  
  `K_right`           text,  
  `BK_left`           text,  
  `BK_right`           text,  
  `ASIS_left`           text,  
  `ASIS_right`           text,  
  `UMB_left`           text,  
  `UMB_right`           text, 
  `notes`           text, 
  PRIMARY KEY (id)
) ENGINE=InnoDB;
