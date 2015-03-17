delimiter $$

CREATE DATABASE `avante_loyality_app` /*!40100 DEFAULT CHARACTER SET utf8 */$$

delimiter $$

CREATE TABLE `tbl_agents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agent_id` varchar(12) NOT NULL,
  `m_id` varchar(12) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `mobi` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `locatn` varchar(50) NOT NULL,
  `device_id` int(11) NOT NULL,
  `device_tag` varchar(20) NOT NULL,
  `datecreated` date NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_audit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `event` varchar(300) NOT NULL,
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `device_type` varchar(7) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `device_id_UNIQUE` (`device_id`),
  UNIQUE KEY `device_name_UNIQUE` (`device_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_loyalty_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` varchar(12) NOT NULL,
  `min_trans_value` bigint(20) NOT NULL,
  `duratn` bigint(20) NOT NULL,
  `percent` bigint(20) NOT NULL,
  `value` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_loyalty_earned` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `trans_id` varchar(20) NOT NULL,
  `dateupdated` date NOT NULL,
  `expirydate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `trans_id_UNIQUE` (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_merchants` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `m_id` varchar(12) NOT NULL,
  `biz_name` varchar(450) NOT NULL,
  `mobi` varchar(50) NOT NULL,
  `contact_addy` varchar(450) NOT NULL,
  `email` varchar(450) NOT NULL,
  `contact_person` varchar(450) NOT NULL,
  `pass` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `m_id_UNIQUE` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` varchar(12) NOT NULL,
  `pdt_name` varchar(450) NOT NULL,
  `merchant_id` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_UNIQUE` (`pid`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_provider` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_id` varchar(12) NOT NULL,
  `prov_name` varchar(300) NOT NULL,
  `mobi` varchar(50) NOT NULL,
  `contact_person` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `p_id_UNIQUE` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_rewards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reward_id` varchar(20) DEFAULT NULL,
  `m_id` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `reward_id_UNIQUE` (`reward_id`),
  UNIQUE KEY `merchant_id_UNIQUE` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `descriptn` varchar(450) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_subscriptn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `expiry_date` date NOT NULL,
  `subscriptn_date` date NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(12) NOT NULL,
  `trans_id` varchar(20) NOT NULL,
  `m_id` varchar(12) NOT NULL,
  `trans_author` varchar(20) NOT NULL,
  `trans_amt` bigint(20) NOT NULL,
  `trans_date` date NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `trans_id_UNIQUE` (`trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `tbl_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(12) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `mobi` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `locatn` varchar(45) NOT NULL,
  `device_id` binary(1) NOT NULL,
  `subscriptn_status` varchar(10) NOT NULL,
  `date_created` date NOT NULL,
  `iscampaign` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `fname_UNIQUE` (`fname`),
  UNIQUE KEY `lname_UNIQUE` (`lname`),
  UNIQUE KEY `mobi_UNIQUE` (`mobi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$

