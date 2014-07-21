-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2014 at 09:49 AM
-- Server version: 5.5.9
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_empadmin_sandford`
--
create database db_empadmin_sandford;
use db_empadmin_sandford;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_absent_day_information`
--

CREATE TABLE `tbl_absent_day_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `number_of_days_to_be_deducted` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`year`,`month`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_absent_day_information`
--

INSERT INTO `tbl_absent_day_information` VALUES(3, 12, 2014, 4, 3, 6, '2014-04-23');
INSERT INTO `tbl_absent_day_information` VALUES(5, 4, 2014, 4, 5, 6, '2014-04-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `password` varchar(150) NOT NULL,
  `account_creation_date` datetime NOT NULL,
  `member_type` varchar(30) NOT NULL,
  `system_module` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`password`,`system_module`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` VALUES(6, 6, 'root', '63a9f0ea7bb98050796b649e85481845', '2011-10-19 00:00:00', 'Administrator', '');
INSERT INTO `tbl_account` VALUES(5, 5, 'user5', 'd35f6fa9a79434bcd17f8049714ebfcb', '2011-10-19 00:00:00', 'Administrator', '');
INSERT INTO `tbl_account` VALUES(7, 8, 'leki', 'e1ef1a8976bd53dd748c15632e64fe8c', '2012-04-29 00:00:00', 'Administrator', '');
INSERT INTO `tbl_account` VALUES(8, 12, 'wude', '0fcea85cfb520abc431df7e63fdb6ed1', '2012-05-04 00:00:00', 'Administrator', '');
INSERT INTO `tbl_account` VALUES(9, 13, 'beke', '3a4a7addfb055ccfa68a9d9e0ec029b9', '2012-05-05 00:00:00', 'Data Clerk', '');
INSERT INTO `tbl_account` VALUES(10, 14, 'buki', '9c9e8429c30861ee8d7266b454085635', '2012-07-22 00:00:00', 'Data Clerk', '');
INSERT INTO `tbl_account` VALUES(11, 15, 'user11', '0102812fbd5f73aa18aa0bae2cd8f79f', '2013-10-24 00:00:00', 'Data Clerk', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_action_on_employee`
--

CREATE TABLE `tbl_action_on_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_taken` varchar(30) NOT NULL,
  `date_of_action` datetime NOT NULL,
  `description` mediumtext NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_action_on_employee`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `permanent_address` text NOT NULL,
  `present_address` text NOT NULL,
  `telephone_number` varchar(70) NOT NULL,
  `telephone_fax_number` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` VALUES(1, 1, '7314 Powhatan St,\nLanham, MD 20706', 'Bethel Addis Ababa', '2023743138', '0936921527', 6, '2014-03-04');
INSERT INTO `tbl_address` VALUES(2, 2, '7314 Powhatan St,\nLanham, MD 20706', 'Bethel Addis Ababa', '2023743138', '0936921527', 6, '2014-02-04');
INSERT INTO `tbl_address` VALUES(3, 3, '7314 Powhatan St,\nLanham, MD 20706', 'Bethel Addis Ababa', '2023743138', '0936921527', 6, '2014-02-04');
INSERT INTO `tbl_address` VALUES(4, 4, 'Bethel, Addis Ababa Ethiopia', 'Bethel, Addis Ababa Ethiopia. this is a simple filed that is updated.', '0931152898', '0931152898', 6, '2014-05-05');
INSERT INTO `tbl_address` VALUES(5, 5, 'permanent address', 'present address. And that will be updated.', 'telephone no', 'telephone fax no', 6, '2014-02-12');
INSERT INTO `tbl_address` VALUES(6, 6, 'Addis Ababa, Ethiopia', 'Addis Ababa, Ethiopia', '0912345678', '0912345678', 6, '2014-05-05');
INSERT INTO `tbl_address` VALUES(7, 7, 'Addis Ababa, Ethiopia', 'Addis Ababa, Ethiopia', '0911512345', '0911512345', 6, '2014-03-04');
INSERT INTO `tbl_address` VALUES(8, 8, 'London, Britain', 'Addis Ababa, Ethiopia', '0912344556', '0912344556', 6, '2014-03-02');
INSERT INTO `tbl_address` VALUES(9, 9, 'Virginia, USA', 'Virginia, USA', '2023743234', '98798787', 6, '2014-04-06');
INSERT INTO `tbl_address` VALUES(10, 10, 'Virginia, USA', 'Virginia, USA', '89273492874', '98347598347`', 6, '2014-04-06');
INSERT INTO `tbl_address` VALUES(11, 11, 'Addis Ababa, Ethiopia', 'Addis Ababa, Ethiopia', '765765765', '654654564', 6, '2014-04-10');
INSERT INTO `tbl_address` VALUES(12, 12, 'Addis Ababa, Ethiopia', 'Addis Ababa, Ethiopia', '0911234567', '089798787', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(13, 13, '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(14, 14, '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(15, 15, '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(16, 16, 'London, England', 'Addis Ababa, Ethiopia', '98798798', '876876876', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(17, 16, 'London, England', 'Addis Ababa, Ethiopia', '98798798', '876876876', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(18, 17, 'London, England', 'Addis Ababa, Ethiopia', '345345435', '345345344', 6, '2014-04-11');
INSERT INTO `tbl_address` VALUES(19, 18, '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_address` VALUES(20, 19, 'Maryland, USA', 'Addis Ababa, Ethiopia', '32452345', '2345345', 6, '2014-04-13');
INSERT INTO `tbl_address` VALUES(21, 20, '', '', '345345', '345345', 6, '2014-04-13');
INSERT INTO `tbl_address` VALUES(22, 21, '', '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_address` VALUES(23, 22, '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_address` VALUES(24, 23, '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_address` VALUES(25, 24, '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_address` VALUES(26, 25, '', '', '', '', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_staff_payroll_sheet`
--

CREATE TABLE `tbl_admin_staff_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `basic_salary` float NOT NULL,
  `overtime` float NOT NULL,
  `retirement_pf_er` float NOT NULL,
  `allowance_other` float NOT NULL,
  `gross_salary` float NOT NULL,
  `taxable_income` float NOT NULL,
  `income_tax` float NOT NULL,
  `retirement_pf_er_deduction` float NOT NULL,
  `retirement_pf_ee` float NOT NULL,
  `pension` float NOT NULL,
  `loan_pf_loan` float NOT NULL,
  `other` float NOT NULL,
  `credit_association` float NOT NULL,
  `labor_union` float NOT NULL,
  `total_deduction` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_admin_staff_payroll_sheet`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance`
--

CREATE TABLE `tbl_advance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `advance_amount` float NOT NULL,
  `advance_date` date NOT NULL,
  `reason` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_advance`
--

INSERT INTO `tbl_advance` VALUES(1, 4, 1234, '2014-03-31', 'This is the reason of the advance payment. This line is updated!', 6, '2014-04-01');
INSERT INTO `tbl_advance` VALUES(3, 17, 2000, '2014-04-11', 'reason goes here...', 6, '2014-04-11');
INSERT INTO `tbl_advance` VALUES(4, 20, 1200, '2014-04-25', '', 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowance`
--

CREATE TABLE `tbl_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `allowance_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_allowance`
--

INSERT INTO `tbl_allowance` VALUES(1, 'Mobile Phone Air Time Allowance', 'This is a 300 birr per month allowance for employees.', 6, '2014-03-30');
INSERT INTO `tbl_allowance` VALUES(3, 'Chair Persone Allowance', '---', 6, '2014-03-31');
INSERT INTO `tbl_allowance` VALUES(4, 'Transportation Allowance', '---', 6, '2014-03-31');
INSERT INTO `tbl_allowance` VALUES(5, 'Housing Allowance', '---', 6, '2014-04-01');
INSERT INTO `tbl_allowance` VALUES(6, 'Responsibility Allowance', 'Responsibility Allowance in ETB', 6, '2014-04-11');
INSERT INTO `tbl_allowance` VALUES(7, 'Provident Fund', '---', 6, '2014-04-11');
INSERT INTO `tbl_allowance` VALUES(8, 'Responsibility Allowance USD', 'Responsibility allowance in USD.', 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `punch_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `punch_in_note` text,
  `punch_out` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `punch_out_note` text,
  `status` varchar(50) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  `total_hour` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` VALUES(1, 1, NULL, '', NULL, '', 'Absent', 6, '2014-04-23', '0.0');
INSERT INTO `tbl_attendance` VALUES(2, 20, '2014-04-23 01:55:47', '', '2014-04-22 21:55:53', '', 'Present', 6, '2014-04-23', '8:0');
INSERT INTO `tbl_attendance` VALUES(3, 1, NULL, '', NULL, '', 'Absent', 6, '2014-04-23', '0.0');
INSERT INTO `tbl_attendance` VALUES(4, 20, '2014-04-23 01:10:05', '', '2014-04-22 21:10:16', '', 'Present', 6, '2014-04-23', '8:0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_benefit_management`
--

CREATE TABLE `tbl_benefit_management` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `benefit_name` varchar(200) NOT NULL,
  `benefit_date` datetime NOT NULL,
  `description` text NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_benefit_management`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_clerance_form`
--

CREATE TABLE `tbl_clerance_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `termination_date` date NOT NULL,
  `immediate_supervisor_name` varchar(100) NOT NULL,
  `immediate_supervisor_cleared` varchar(70) NOT NULL,
  `immediate_supervisor_clearance_date` date NOT NULL,
  `immediate_supervisor_remark` text NOT NULL,
  `library_head_name` varchar(100) NOT NULL,
  `library_head_cleared` varchar(70) NOT NULL,
  `library_head_clearance_date` date NOT NULL,
  `library_head_remark` text NOT NULL,
  `finance_head_name` varchar(100) NOT NULL,
  `finance_head_cleared` varchar(70) NOT NULL,
  `finance_head_clearance_date` date NOT NULL,
  `finance_head_remark` text NOT NULL,
  `property_housing_name` varchar(100) NOT NULL,
  `property_housing_cleared` varchar(70) NOT NULL,
  `property_housing_clearance_date` date NOT NULL,
  `property_housing_remark` text NOT NULL,
  `accounts_budget_name` varchar(100) NOT NULL,
  `accounts_budget_cleared` varchar(70) NOT NULL,
  `accounts_budget_clearance_date` date NOT NULL,
  `accounts_budget_remark` text NOT NULL,
  `procurment_name` varchar(100) NOT NULL,
  `procurment_cleared` varchar(70) NOT NULL,
  `procurment_clearance_date` date NOT NULL,
  `procurment_remark` text NOT NULL,
  `hr_head_name` varchar(100) NOT NULL,
  `hr_head_cleared` varchar(70) NOT NULL,
  `hr_head_clearance_date` date NOT NULL,
  `hr_head_remark` text NOT NULL,
  `personnel_benefits_name` varchar(100) NOT NULL,
  `personnel_benefits_cleared` varchar(70) NOT NULL,
  `personnel_benefits_clearance_date` date NOT NULL,
  `personnel_benefits_remark` text NOT NULL,
  `maintainance_general_service_name` varchar(100) NOT NULL,
  `maintainance_general_service_cleared` varchar(70) NOT NULL,
  `maintainance_general_service_clearance_date` date NOT NULL,
  `maintainance_general_service_remark` text NOT NULL,
  `it_name` varchar(100) NOT NULL,
  `it_cleared` varchar(70) NOT NULL,
  `it_clearance_date` date NOT NULL,
  `it_remark` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_clerance_form`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_college`
--

CREATE TABLE `tbl_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college_code` varchar(2) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_college`
--

INSERT INTO `tbl_college` VALUES(1, '01', 'Sandford International School', '---');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_converted_hard_currency`
--

CREATE TABLE `tbl_converted_hard_currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `foreign_currency_amount` float NOT NULL,
  `exchange_rate_used` float NOT NULL,
  `conv_hrd_currency_amount` float NOT NULL,
  `convertion_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_converted_hard_currency`
--

INSERT INTO `tbl_converted_hard_currency` VALUES(1, 17, 0, 18.59, 0, '2014-04-22', 6, '2014-04-22');
INSERT INTO `tbl_converted_hard_currency` VALUES(2, 10, 0, 18.59, 0, '2014-04-22', 6, '2014-04-22');
INSERT INTO `tbl_converted_hard_currency` VALUES(3, 4, 0, 18.59, 0, '2014-05-01', 6, '2014-05-01');
INSERT INTO `tbl_converted_hard_currency` VALUES(4, 1, 0, 18.59, 0, '2014-04-22', 6, '2014-04-22');
INSERT INTO `tbl_converted_hard_currency` VALUES(5, 20, 1, 18.59, 18.59, '2014-05-01', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` VALUES(1, 'US Dollars', 'This is the money of USA', 6, '2014-03-31');
INSERT INTO `tbl_currency` VALUES(2, 'British Pound', 'This is the official money of Britain', 6, '2014-03-31');
INSERT INTO `tbl_currency` VALUES(3, 'Euro', 'This is the money of Europ.', 6, '2014-04-16');
INSERT INTO `tbl_currency` VALUES(4, 'Ethiopian Birr', 'This is the currency of Ethiopia this line is updated', 6, '2014-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deduction`
--

CREATE TABLE `tbl_deduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deduction_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_deduction`
--

INSERT INTO `tbl_deduction` VALUES(1, 'Pension', '---', 6, '2014-04-01');
INSERT INTO `tbl_deduction` VALUES(2, 'Income Tax', '---', 6, '2014-03-31');
INSERT INTO `tbl_deduction` VALUES(4, 'Provident Fund - ER', '----', 6, '2014-04-01');
INSERT INTO `tbl_deduction` VALUES(6, 'Credit Association', '---', 6, '2014-03-31');
INSERT INTO `tbl_deduction` VALUES(7, 'Labor Union', '---', 6, '2014-04-01');
INSERT INTO `tbl_deduction` VALUES(8, 'Provident Fund - EE', '--- ', 6, '2014-04-01');
INSERT INTO `tbl_deduction` VALUES(10, 'Other', '---', 6, '2014-04-01');
INSERT INTO `tbl_deduction` VALUES(11, 'Telephone and Fax', '---', 6, '2014-04-11');
INSERT INTO `tbl_deduction` VALUES(12, 'Telephone and Electricity', '', 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_demotion`
--

CREATE TABLE `tbl_demotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `from_department_id` int(11) NOT NULL,
  `to_department_id` int(11) NOT NULL,
  `demotion_detail` text NOT NULL,
  `demotion_date` datetime NOT NULL,
  `job_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_demotion`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_departing_employee_checkout_form`
--

CREATE TABLE `tbl_departing_employee_checkout_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `reason_for_leaving` varchar(70) NOT NULL,
  `other_causes` text NOT NULL,
  `library_books_signature` varchar(50) NOT NULL,
  `library_books_date_cleared` date NOT NULL,
  `library_books_remark` text NOT NULL,
  `curriculum_notes_signature` varchar(50) NOT NULL,
  `curriculum_date_cleared` date NOT NULL,
  `curriculum_remark` text NOT NULL,
  `textbook_signature` varchar(50) NOT NULL,
  `textbook_date_cleared` date NOT NULL,
  `textbook_remark` text NOT NULL,
  `room_office_signature` varchar(50) NOT NULL,
  `room_office_date_cleared` date NOT NULL,
  `room_office_remark` text NOT NULL,
  `property_finance_signature` varchar(50) NOT NULL,
  `property_finance_date_cleared` date NOT NULL,
  `property_finance_remark` text NOT NULL,
  `accounts_utilities_signature` varchar(50) NOT NULL,
  `accounts_utilities_date_cleared` date NOT NULL,
  `accounts_utilities_remark` text NOT NULL,
  `purchasing_signature` varchar(50) NOT NULL,
  `purchasing_date_cleared` date NOT NULL,
  `purchasing_remark` text NOT NULL,
  `personnel_benefits_signature` varchar(50) NOT NULL,
  `personnel_benefits_date_cleared` date NOT NULL,
  `personnel_benefits_remark` text NOT NULL,
  `maintainance_transport_signature` varchar(50) NOT NULL,
  `maintainance_transport_date_cleared` date NOT NULL,
  `maintainance_remark` text NOT NULL,
  `it_signature` varchar(50) NOT NULL,
  `it_date_cleared` date NOT NULL,
  `it_remark` text NOT NULL,
  `cleared_for_final_payment` varchar(100) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_departing_employee_checkout_form`
--

INSERT INTO `tbl_departing_employee_checkout_form` VALUES(1, 1, 'End of Contract', '', 'Not Signed', '2014-02-16', 'library remark', 'Signed', '2014-02-16', 'curriculum notes remark', 'Not Signed', '2014-02-16', 'textbook remark', 'Signed', '2014-02-16', 'room office remark', 'Not Signed', '2014-02-16', 'property housing remark', 'Signed', '2014-02-16', 'accounts and utilities remark', 'Not Signed', '2014-02-16', 'purchasing remark', 'Signed', '2014-02-16', 'personnel and benefits remark', 'Not Signed', '2014-02-16', 'maintainance transport remark', 'Signed', '2014-02-16', 'it network remark', '', 6, '2014-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_code` varchar(2) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `fis_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fis_id` (`fis_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` VALUES(1, '01', 'Administration', 1, 'description goes here');
INSERT INTO `tbl_department` VALUES(2, '02', 'Information Technology (IT)', 1, 'Department description two');
INSERT INTO `tbl_department` VALUES(3, '03', 'Secondary', 1, '---');
INSERT INTO `tbl_department` VALUES(4, '04', 'Primary', 1, '---');
INSERT INTO `tbl_department` VALUES(5, '05', 'Library', 1, '---');
INSERT INTO `tbl_department` VALUES(6, '06', 'Outreach', 1, '---');
INSERT INTO `tbl_department` VALUES(7, '07', 'Sickbay', 1, '---');
INSERT INTO `tbl_department` VALUES(8, '08', 'Finance', 1, '---');
INSERT INTO `tbl_department` VALUES(9, '09', 'Personnel and Benefits', 1, '---');
INSERT INTO `tbl_department` VALUES(10, '10', 'General Service', 1, '---');
INSERT INTO `tbl_department` VALUES(11, '11', 'Clinic', 1, '---');
INSERT INTO `tbl_department` VALUES(12, '12', 'Printing and Photocopy', 1, '---');
INSERT INTO `tbl_department` VALUES(13, '13', 'Procurement', 1, '---');
INSERT INTO `tbl_department` VALUES(14, '14', 'Maintainance and Technique', 1, '---');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dependant`
--

CREATE TABLE `tbl_dependant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `name` varchar(140) NOT NULL,
  `date_of_birth` date NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `tbl_dependant`
--

INSERT INTO `tbl_dependant` VALUES(72, 5, 'dependant name1', '1978-08-12', 'relationship', 6, '2014-02-12');
INSERT INTO `tbl_dependant` VALUES(94, 1, 'Yefikir Mahder', '2012-08-30', 'Daugther', 6, '2014-03-04');
INSERT INTO `tbl_dependant` VALUES(3, 2, 'Lekbir Taffesse', '1987-12-23', 'Wife', 6, '2014-02-04');
INSERT INTO `tbl_dependant` VALUES(4, 2, 'Yefikir Mahder', '2012-08-30', 'Daughter', 6, '2014-02-04');
INSERT INTO `tbl_dependant` VALUES(5, 3, 'Lekbir Taffesse', '1987-12-23', 'Wife', 6, '2014-02-04');
INSERT INTO `tbl_dependant` VALUES(6, 3, 'Yefikir Mahder', '2012-08-30', 'Daughter', 6, '2014-02-04');
INSERT INTO `tbl_dependant` VALUES(93, 1, 'Lekbir Taffesse', '1987-12-23', 'Wife', 6, '2014-03-04');
INSERT INTO `tbl_dependant` VALUES(102, 4, 'Mahder Alemayehu', '1979-09-13', 'Husband', 6, '2014-05-05');
INSERT INTO `tbl_dependant` VALUES(73, 5, 'dependant name2', '1234-09-09', 'relationship value new', 6, '2014-02-12');
INSERT INTO `tbl_dependant` VALUES(103, 6, 'Senait Getahun Asamo', '1978-09-24', 'Sister', 6, '2014-05-05');
INSERT INTO `tbl_dependant` VALUES(92, 7, 'Tesema Alemu Tasew', '1987-07-23', 'Brother', 6, '2014-03-04');
INSERT INTO `tbl_dependant` VALUES(85, 8, 'Rebika James', '1965-09-08', 'Wife', 6, '2014-03-02');
INSERT INTO `tbl_dependant` VALUES(84, 8, 'Paula Solmon', '1988-11-22', 'Daugther', 6, '2014-03-02');
INSERT INTO `tbl_dependant` VALUES(96, 12, 'Biruk Fikre', '1978-03-03', 'Husband', 6, '2014-04-11');
INSERT INTO `tbl_dependant` VALUES(97, 12, 'Zemichael Biruk', '2005-12-12', 'Son', 6, '2014-04-11');
INSERT INTO `tbl_dependant` VALUES(98, 12, 'Fenet Biruk', '2012-11-12', 'Daughter', 6, '2014-04-11');
INSERT INTO `tbl_dependant` VALUES(99, 19, 'Tesfaye Tassew', '1978-10-09', 'Husband', 6, '2014-04-13');
INSERT INTO `tbl_dependant` VALUES(100, 19, 'Biniyam Tesfaye', '2004-09-12', 'Son', 6, '2014-04-13');
INSERT INTO `tbl_dependant` VALUES(101, 20, 'David''s Son', '2003-03-05', 'Son', 6, '2014-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline_management`
--

CREATE TABLE `tbl_discipline_management` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `discipline_name` varchar(200) NOT NULL,
  `discipline_date` datetime NOT NULL,
  `description` text NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_discipline_management`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_education_information`
--

CREATE TABLE `tbl_education_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `name_place_country` varchar(250) NOT NULL,
  `attended_from` varchar(100) NOT NULL,
  `attended_to` varchar(70) NOT NULL,
  `degrees_academic_distinctions` text NOT NULL,
  `main_course_of_study` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `tbl_education_information`
--

INSERT INTO `tbl_education_information` VALUES(89, 1, 'AAU, Ethiopia', '2000', '2004', 'BA 123', 'Library and Information Science', 6, '2014-03-04');
INSERT INTO `tbl_education_information` VALUES(3, 2, 'AAU, Ethiopia', '2007', '2009', 'MSc', 'Health Informatics', 6, '2014-02-04');
INSERT INTO `tbl_education_information` VALUES(4, 2, 'AAU, Ethiopia', '2000', '2004', 'BA', 'Library and Information Science', 6, '2014-02-04');
INSERT INTO `tbl_education_information` VALUES(5, 3, 'AAU, Ethiopia', '2007', '2009', 'MSc', 'Health Informatics', 6, '2014-02-04');
INSERT INTO `tbl_education_information` VALUES(6, 3, 'AAU, Ethiopia', '2000', '2004', 'BA', 'Library and Information Science', 6, '2014-02-04');
INSERT INTO `tbl_education_information` VALUES(113, 4, 'AAU, Ethiopia', '2001', '2004', 'BA', 'Philosophy', 6, '2014-05-05');
INSERT INTO `tbl_education_information` VALUES(69, 5, 'name place and country', 'attended from', 'attended to', 'degrees', 'main course of study', 6, '2014-02-12');
INSERT INTO `tbl_education_information` VALUES(88, 1, 'AAU, Ethiopia', '2007', '2009', 'MSc', 'Health Informatics', 6, '2014-03-04');
INSERT INTO `tbl_education_information` VALUES(112, 4, 'undefined', '1999', 'undefined', 'undefined', 'undefined', 6, '2014-05-05');
INSERT INTO `tbl_education_information` VALUES(114, 6, 'AAU, Addis Ababa Ethiopia', 'Oct/2000', 'Aug/2004', 'First Degree in Computer Science', 'Computer Science', 6, '2014-05-05');
INSERT INTO `tbl_education_information` VALUES(87, 7, 'Unity, Addis Ababa Ethiopia', 'Sept/2000', 'Aug/2004', 'Degree', 'Society and Admin', 6, '2014-03-04');
INSERT INTO `tbl_education_information` VALUES(80, 8, 'Oxford, London England', 'Sept/2000', 'June/2006', 'MSc', 'Physicis', 6, '2014-03-02');
INSERT INTO `tbl_education_information` VALUES(90, 10, 'Virginia, USA', '01/1995', '12/1999', 'BSc in Computational Sciences', 'Computational Sciences', 6, '2014-04-06');
INSERT INTO `tbl_education_information` VALUES(92, 11, 'National college, Addis Ababa Ethiopia', 'Sept/2011', 'July/2013', 'Diploma', 'Accounting', 6, '2014-04-10');
INSERT INTO `tbl_education_information` VALUES(97, 12, 'Unity University College, Addis Ababa Ethiopia', 'Sept/2005', 'June/2007', 'Diploma', 'Accounting', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(98, 12, 'CPU College, Addis Ababa Ethiopia', 'Sept/2009', 'July/2011', 'Degree', 'Accounting', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(99, 13, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(100, 14, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(101, 15, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(102, 16, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(103, 17, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_education_information` VALUES(104, 18, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_education_information` VALUES(105, 19, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_education_information` VALUES(106, 20, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_education_information` VALUES(107, 21, '', '', '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_education_information` VALUES(108, 22, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_education_information` VALUES(109, 23, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_education_information` VALUES(110, 24, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_education_information` VALUES(111, 25, '', '', '', '', '', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_education_level`
--

CREATE TABLE `tbl_education_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `education_level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_education_level`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_education_level_criteria_value_list`
--

CREATE TABLE `tbl_education_level_criteria_value_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vacancy_id` bigint(20) NOT NULL,
  `education_level_id` int(11) NOT NULL,
  `point` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `education_level_id` (`education_level_id`),
  KEY `vacancy_id` (`vacancy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_education_level_criteria_value_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_emergency_contact`
--

CREATE TABLE `tbl_emergency_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `home_telephone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `work_telephone` varchar(50) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_emergency_contact`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(70) NOT NULL,
  `first_name` varchar(70) NOT NULL,
  `middle_name` varchar(70) NOT NULL,
  `maiden_name` varchar(70) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(100) NOT NULL,
  `nationality_at_birth` varchar(100) NOT NULL,
  `present_nationality` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `marital_status` varchar(70) NOT NULL,
  `preferred_field_of_work` text NOT NULL,
  `list_of_professional_activities` text,
  `list_of_publications` text,
  `employment_record` text NOT NULL,
  `object_contacting_present_employer` tinyint(4) NOT NULL,
  `been_arrested` tinyint(4) NOT NULL,
  `employee_category_type` varchar(50) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  `employee_id_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id_number` (`employee_id_number`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` VALUES(1, 'Neway', 'Mahder', 'Alemayehu', '---', '1979-09-13', 'Addis Ababa', 'Ethiopian', 'Ethiopian', 'Male', 'Married', 'Programming. I just love coding so very much that ....', 'PHP, Java and Information Technology group', 'No significant publications yet', 'Employment record', 0, 0, 'International', 0, 6, '2014-03-04', 'SIS/1');
INSERT INTO `tbl_employee` VALUES(4, 'Gebretsadik', 'Lekbir', 'Taffesse', '---', '1987-12-23', 'Addis Ababa', 'Ethiopian', 'Ethiopian', 'Female', 'Married', 'Communication <span style="color:rgb(147,196,125);">Officer</span>', 'None', 'Not yet', 'Employment <span style="color:rgb(224,102,102);font-size: 24px;">Record</span>', 0, 0, 'International', 0, 6, '2014-05-05', 'SIS/2');
INSERT INTO `tbl_employee` VALUES(5, 'family name', 'first name', 'middle name', 'maiden name', '2003-02-12', 'place of birth', 'nationality at birth', 'present nationality', 'Female', 'Divorced', 'preferred field of work. I love Java Programming very much!', 'list professional societies', 'list any significant publications you have written', 'employment record', 1, 0, 'National', 0, 6, '2014-02-12', 'SIS/3');
INSERT INTO `tbl_employee` VALUES(6, 'Asamo', 'Alemu', 'Getahun', '---', '1967-03-15', 'Addis Ababa Ethiopia', 'Ethiopian', 'Ethiopian', 'Male', 'Single', 'Computer Programming/Software Development', 'None', 'None', 'This is the employment record of this employee', 0, 0, 'National', 0, 6, '2014-05-05', 'SIS/4');
INSERT INTO `tbl_employee` VALUES(7, 'Adane', 'Mulu', 'Gizachew', 'None', '1982-03-24', 'Wolo', 'Ethiopian', 'Ethiopian', 'Female', 'Single', 'Janetor', 'None', 'None', 'Employment record of Mulu Adane', 0, 0, 'National', 0, 6, '2014-03-04', 'SIS/5');
INSERT INTO `tbl_employee` VALUES(8, 'Peter', 'Macintosh', 'Loard', 'Holla', '1984-03-28', 'London, England', 'British', 'British', 'Male', 'Married', 'Preferred field of work', 'list professional societies and activities in civic, public or international affairs', 'list any significant publications you have written', 'employment record', 0, 0, 'International', 0, 6, '2014-03-02', 'SIS/6');
INSERT INTO `tbl_employee` VALUES(11, 'Butte', 'Seyoum', 'Hailu', '---', '1988-04-14', 'Ethiopia', 'Ethiopian', 'Ethiopian', 'Male', 'Married', 'perferred field or work', '---', '---', '---', 0, 0, 'National', 0, 6, '2014-04-10', 'SIS/7');
INSERT INTO `tbl_employee` VALUES(10, 'James', 'Sharah', 'Pawlos', 'None', '1987-04-14', 'Virginia, USA', 'American', 'American', 'Female', 'Divorced', 'Preferred field of work...', 'None', 'None', 'this is the employment record....', 0, 0, 'International', 0, 6, '2014-04-06', 'SIS/8');
INSERT INTO `tbl_employee` VALUES(12, 'Abreham', 'Rahel', 'Taye', '---', '1969-04-10', 'Addis Ababa, Ethiopia', 'Ethiopian', 'Ethiopian', 'Female', 'Married', 'Bank Auditor', 'None', 'None', 'Employment record goes in here', 0, 0, 'National', 0, 6, '2014-04-11', 'SIS/9');
INSERT INTO `tbl_employee` VALUES(13, 'Abdela', 'Temam', 'Hassen', '---', '1967-04-13', 'Addis Ababa, Ethiopia', 'Ethiopian', 'Ethiopian', 'Male', 'Married', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-11', 'SIS/10');
INSERT INTO `tbl_employee` VALUES(14, 'Birru', 'Feleke', 'Jemaneh', '---', '1958-04-16', 'Gehur', 'Ethiopian', 'Ethiopian', 'Male', 'Married', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-11', 'SIS/11');
INSERT INTO `tbl_employee` VALUES(15, 'Hailu', 'Gedion', 'Meshesha', '---', '1950-04-19', 'Addis Ababa, Ethiopia', 'Ethiopian', 'Ethiopian', 'Male', 'Married', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-11', 'SIS/12');
INSERT INTO `tbl_employee` VALUES(16, 'Mark', 'Donovan', 'Peter', '---', '1969-04-23', 'London, England', 'British', 'British', 'Male', 'Married', '', '', '', '', 0, 0, 'International', 0, 6, '2014-04-11', 'SIS/13');
INSERT INTO `tbl_employee` VALUES(17, 'Richard', 'Morries', 'Jeff', '---', '1965-04-15', 'London, England', 'British', 'British', 'Male', 'Married', '', '', '', '', 0, 0, 'International', 0, 6, '2014-04-11', 'SIS/14');
INSERT INTO `tbl_employee` VALUES(18, 'Darling', 'Save', 'The', 'Last', '1945-04-20', '', '', '', 'Female', 'Married', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-13', 'SIS/15');
INSERT INTO `tbl_employee` VALUES(19, 'Tesfa', 'Zebib', 'Kibreab', '---', '1972-04-19', 'Addis Ababa, Ethiopia', 'Ethiopian', 'Eritrian', 'Female', 'Married', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-13', 'SIS/16');
INSERT INTO `tbl_employee` VALUES(20, 'David', 'Skirtil', 'Silva', '', '1963-04-18', '', '', '', 'Male', 'Single', '', '', '', '', 0, 0, 'International', 0, 6, '2014-04-13', 'SIS/17');
INSERT INTO `tbl_employee` VALUES(21, 'Belachew', 'Mama', 'Hailu', '', '1983-04-13', '', '', '', 'Female', 'Single', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-16', 'SIS/18');
INSERT INTO `tbl_employee` VALUES(22, 'Robert', 'Mugabe', 'Anderson', '---', '1970-04-16', '', '', '', 'Male', 'Separated', '', '', '', '', 0, 0, 'International', 0, 6, '2014-04-25', 'SIS/19');
INSERT INTO `tbl_employee` VALUES(23, 'Tadele', 'Dawit', 'Fekade', 'None', '1998-04-08', '', '', '', 'Male', 'Single', '', '', '', '', 0, 0, 'National', 0, 6, '2014-04-25', 'SIS/20');
INSERT INTO `tbl_employee` VALUES(24, 'Samuel', 'LL', 'Jakson', 'none', '2003-04-16', '', '', '', 'Male', 'Single', '', '', '', '', 0, 0, 'International', 0, 6, '2014-04-25', 'SIS/21');
INSERT INTO `tbl_employee` VALUES(25, 'F Name', 'First Name', 'Middle Name', 'Maiden....', '1949-05-18', '', '', '', 'Male', 'Single', '', '', '', '', 0, 0, 'International', 0, 6, '2014-05-01', 'SIS/22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_allowance`
--

CREATE TABLE `tbl_employee_allowance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `allowance_id` int(11) NOT NULL,
  `allowance_amount` float NOT NULL,
  `currency_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_employee_allowance`
--

INSERT INTO `tbl_employee_allowance` VALUES(1, 4, 1, 350, 4, 6, '2014-03-31');
INSERT INTO `tbl_employee_allowance` VALUES(4, 7, 3, 456, 4, 6, '2014-03-31');
INSERT INTO `tbl_employee_allowance` VALUES(5, 5, 4, 436, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_allowance` VALUES(6, 8, 5, 2000, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_allowance` VALUES(7, 8, 6, 1000, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_allowance` VALUES(8, 12, 6, 1750, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(9, 13, 6, 300, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(10, 14, 1, 100, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(11, 16, 6, 6500, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(12, 17, 8, 323, 1, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(13, 17, 6, 1103, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_allowance` VALUES(14, 17, 5, 11000, 4, 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_contract_type`
--

CREATE TABLE `tbl_employee_contract_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_employee_contract_type`
--

INSERT INTO `tbl_employee_contract_type` VALUES(1, 1, '', 6, '2014-02-12');
INSERT INTO `tbl_employee_contract_type` VALUES(2, 4, 'Two years', 6, '2014-05-05');
INSERT INTO `tbl_employee_contract_type` VALUES(3, 8, 'Two years', 6, '2014-03-02');
INSERT INTO `tbl_employee_contract_type` VALUES(4, 10, 'Two years', 6, '2014-04-06');
INSERT INTO `tbl_employee_contract_type` VALUES(5, 16, 'Two years', 6, '2014-04-11');
INSERT INTO `tbl_employee_contract_type` VALUES(6, 17, 'Two years', 6, '2014-04-11');
INSERT INTO `tbl_employee_contract_type` VALUES(7, 22, 'Two years', 6, '2014-04-25');
INSERT INTO `tbl_employee_contract_type` VALUES(8, 24, 'Two years', 6, '2014-04-25');
INSERT INTO `tbl_employee_contract_type` VALUES(9, 25, 'Short Term', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_deduction`
--

CREATE TABLE `tbl_employee_deduction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `deduction_id` int(11) NOT NULL,
  `deduction_type` varchar(10) NOT NULL,
  `deduction_amount` float NOT NULL,
  `currency_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_employee_deduction`
--

INSERT INTO `tbl_employee_deduction` VALUES(1, 4, 1, 'Percentage', 3, 4, 6, '2014-04-16');
INSERT INTO `tbl_employee_deduction` VALUES(4, 7, 1, '', 0.5, 4, 6, '2014-03-31');
INSERT INTO `tbl_employee_deduction` VALUES(5, 6, 1, '', 0.05, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_deduction` VALUES(13, 11, 4, '', 0.14, 4, 6, '2014-04-10');
INSERT INTO `tbl_employee_deduction` VALUES(14, 11, 8, '', 0.09, 4, 6, '2014-04-10');
INSERT INTO `tbl_employee_deduction` VALUES(15, 5, 4, '', 0.14, 4, 6, '2014-04-10');
INSERT INTO `tbl_employee_deduction` VALUES(16, 12, 8, '', 0.09, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_deduction` VALUES(17, 12, 4, '', 0.14, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_deduction` VALUES(18, 13, 4, 'Percentage', 0.14, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(19, 13, 8, 'Percentage', 0.09, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(20, 13, 6, 'Percentage', 0.073063, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(21, 13, 7, 'Percentage', 0.01, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(22, 14, 4, 'Percentage', 0.17, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(23, 14, 8, 'Percentage', 0.06, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(24, 14, 6, 'Percentage', 0.041511, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(25, 14, 7, 'Percentage', 0.01, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(26, 15, 4, 'Percentage', 0.14, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(27, 15, 8, 'Percentage', 0.09, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(28, 15, 10, 'Percentage', 0.00584283, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(29, 15, 6, 'Percentage', 0.0260123, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(30, 15, 7, 'Percentage', 0.01, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_deduction` VALUES(31, 4, 6, 'Amount', 200, 4, 6, '2014-04-16');
INSERT INTO `tbl_employee_deduction` VALUES(32, 20, 6, 'Percentage', 0.2, 4, 6, '2014-04-16');
INSERT INTO `tbl_employee_deduction` VALUES(33, 20, 7, 'Amount', 200, 4, 6, '2014-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_insurance`
--

CREATE TABLE `tbl_employee_insurance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `insurance_policy_number` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_employee_insurance`
--

INSERT INTO `tbl_employee_insurance` VALUES(1, 7, '0201315001000017/11');
INSERT INTO `tbl_employee_insurance` VALUES(2, 1, '1234567890');
INSERT INTO `tbl_employee_insurance` VALUES(3, 11, '');
INSERT INTO `tbl_employee_insurance` VALUES(4, 12, '');
INSERT INTO `tbl_employee_insurance` VALUES(5, 4, '');
INSERT INTO `tbl_employee_insurance` VALUES(6, 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_job`
--

CREATE TABLE `tbl_employee_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `job_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_employee_job`
--

INSERT INTO `tbl_employee_job` VALUES(1, 7, 5, 6, '2014-03-04');
INSERT INTO `tbl_employee_job` VALUES(2, 8, 13, 6, '2014-03-05');
INSERT INTO `tbl_employee_job` VALUES(3, 1, 3, 6, '2014-03-04');
INSERT INTO `tbl_employee_job` VALUES(4, 10, 12, 6, '2014-04-06');
INSERT INTO `tbl_employee_job` VALUES(5, 11, 9, 6, '2014-04-10');
INSERT INTO `tbl_employee_job` VALUES(6, 12, 2, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(7, 13, 14, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(8, 14, 3, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(9, 15, 5, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(10, 16, 2, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(11, 17, 12, 6, '2014-04-11');
INSERT INTO `tbl_employee_job` VALUES(12, 18, 3, 6, '2014-04-13');
INSERT INTO `tbl_employee_job` VALUES(13, 19, 7, 6, '2014-04-13');
INSERT INTO `tbl_employee_job` VALUES(14, 20, 5, 6, '2014-04-13');
INSERT INTO `tbl_employee_job` VALUES(15, 21, 4, 6, '2014-04-16');
INSERT INTO `tbl_employee_job` VALUES(16, 22, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_job` VALUES(17, 23, 3, 6, '2014-04-25');
INSERT INTO `tbl_employee_job` VALUES(18, 24, 3, 6, '2014-04-25');
INSERT INTO `tbl_employee_job` VALUES(19, 25, 2, 6, '2014-05-01');
INSERT INTO `tbl_employee_job` VALUES(20, 4, 6, 6, '2014-05-05');
INSERT INTO `tbl_employee_job` VALUES(21, 6, 14, 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_leave_status`
--

CREATE TABLE `tbl_employee_leave_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `available` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_employee_leave_status`
--

INSERT INTO `tbl_employee_leave_status` VALUES(1, 1, 29.52, 6, '2014-03-04');
INSERT INTO `tbl_employee_leave_status` VALUES(2, 4, 40, 6, '2014-03-03');
INSERT INTO `tbl_employee_leave_status` VALUES(3, 5, 30, 6, '2014-03-03');
INSERT INTO `tbl_employee_leave_status` VALUES(4, 6, 20, 6, '2014-03-03');
INSERT INTO `tbl_employee_leave_status` VALUES(5, 7, 17, 6, '2014-03-03');
INSERT INTO `tbl_employee_leave_status` VALUES(6, 11, 14, 6, '2014-04-10');
INSERT INTO `tbl_employee_leave_status` VALUES(7, 12, 14, 6, '2014-04-11');
INSERT INTO `tbl_employee_leave_status` VALUES(8, 13, 14, 6, '2014-04-11');
INSERT INTO `tbl_employee_leave_status` VALUES(9, 14, 14, 6, '2014-04-11');
INSERT INTO `tbl_employee_leave_status` VALUES(10, 15, 14, 6, '2014-04-11');
INSERT INTO `tbl_employee_leave_status` VALUES(11, 18, 14, 6, '2014-04-13');
INSERT INTO `tbl_employee_leave_status` VALUES(12, 19, 14, 6, '2014-04-13');
INSERT INTO `tbl_employee_leave_status` VALUES(13, 21, 14, 6, '2014-04-16');
INSERT INTO `tbl_employee_leave_status` VALUES(14, 23, 14, 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_loan`
--

CREATE TABLE `tbl_employee_loan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `amount_taken` float NOT NULL,
  `monthly_payment_amount` float NOT NULL,
  `balance_remaining` float NOT NULL,
  `currency_id` int(11) NOT NULL,
  `date_taken` date NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_employee_loan`
--

INSERT INTO `tbl_employee_loan` VALUES(1, 11, 1000, 254, 238, 4, '2014-04-10', 'this is a sample loan information entered for cross checking with the excel information I got from Mekdes!', 6, '2014-04-25');
INSERT INTO `tbl_employee_loan` VALUES(2, 12, 1000, 344, 344, 4, '2014-04-11', 'this is a loan taken by Rahel Taye for the purpose of celebrating her daughter''s birthday.', 6, '2014-04-25');
INSERT INTO `tbl_employee_loan` VALUES(3, 13, 1000, 226, 322, 4, '2014-04-11', '---', 6, '2014-04-25');
INSERT INTO `tbl_employee_loan` VALUES(4, 14, 1000, 131, 872, 4, '2014-04-11', '', 6, '2014-04-25');
INSERT INTO `tbl_employee_loan` VALUES(5, 15, 1000, 387, 613, 4, '2014-04-11', '', 6, '2014-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_overtime`
--

CREATE TABLE `tbl_employee_overtime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `total_hours_worked` float NOT NULL,
  `date_worked` date NOT NULL,
  `rate_per_hour` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_employee_overtime`
--

INSERT INTO `tbl_employee_overtime` VALUES(1, 4, 8, '2014-03-30', 23.45, 6, '2014-03-31');
INSERT INTO `tbl_employee_overtime` VALUES(3, 4, 10, '2014-03-18', 3.5, 6, '2014-03-31');
INSERT INTO `tbl_employee_overtime` VALUES(4, 7, 7, '2014-03-30', 8.45, 6, '2014-04-01');
INSERT INTO `tbl_employee_overtime` VALUES(5, 5, 9, '2014-03-30', 14.5, 6, '2014-04-01');
INSERT INTO `tbl_employee_overtime` VALUES(6, 13, 50, '2014-04-11', 45.726, 6, '2014-04-11');
INSERT INTO `tbl_employee_overtime` VALUES(7, 14, 50, '2014-04-11', 5.3382, 6, '2014-04-11');
INSERT INTO `tbl_employee_overtime` VALUES(8, 12, 5, '2014-04-16', 12.35, 6, '2014-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payroll_type_map`
--

CREATE TABLE `tbl_employee_payroll_type_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `payroll_emp_type_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_employee_payroll_type_map`
--

INSERT INTO `tbl_employee_payroll_type_map` VALUES(2, 4, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(3, 5, 1, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(4, 6, 5, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(5, 7, 2, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(6, 8, 3, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(7, 1, 4, 6, '2014-04-01');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(8, 9, 4, 6, '2014-04-09');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(10, 10, 4, 6, '2014-04-09');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(11, 11, 1, 6, '2014-04-10');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(12, 12, 1, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(13, 13, 1, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(14, 14, 5, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(15, 15, 2, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(16, 16, 3, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(17, 17, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(18, 18, 1, 6, '2014-04-25');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(19, 19, 5, 6, '2014-04-25');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(20, 20, 4, 6, '2014-04-25');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(21, 21, 2, 6, '2014-04-25');
INSERT INTO `tbl_employee_payroll_type_map` VALUES(22, 22, 3, 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_photo`
--

CREATE TABLE `tbl_employee_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`file_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_employee_photo`
--

INSERT INTO `tbl_employee_photo` VALUES(1, 4, 'EMP_PHOTO_1.png', 6, '2014-02-25');
INSERT INTO `tbl_employee_photo` VALUES(2, 1, 'EMP_PHOTO_2.jpeg', 6, '2014-02-24');
INSERT INTO `tbl_employee_photo` VALUES(3, 5, 'EMP_PHOTO_3.gif', 6, '2014-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_salary`
--

CREATE TABLE `tbl_employee_salary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `salary_id` bigint(20) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tbl_employee_salary`
--

INSERT INTO `tbl_employee_salary` VALUES(1, 4, 1, 6, '2014-03-30');
INSERT INTO `tbl_employee_salary` VALUES(2, 7, 2, 6, '2014-03-30');
INSERT INTO `tbl_employee_salary` VALUES(3, 6, 3, 6, '2014-03-30');
INSERT INTO `tbl_employee_salary` VALUES(4, 5, 4, 6, '2014-04-10');
INSERT INTO `tbl_employee_salary` VALUES(5, 1, 3, 6, '2014-03-30');
INSERT INTO `tbl_employee_salary` VALUES(7, 10, 1, 6, '2014-04-06');
INSERT INTO `tbl_employee_salary` VALUES(8, 9, 2, 6, '2014-04-06');
INSERT INTO `tbl_employee_salary` VALUES(9, 11, 6, 6, '2014-04-10');
INSERT INTO `tbl_employee_salary` VALUES(10, 12, 7, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(11, 13, 8, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(12, 14, 9, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(13, 15, 10, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(14, 16, 4, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(15, 17, 5, 6, '2014-04-11');
INSERT INTO `tbl_employee_salary` VALUES(16, 22, 6, 6, '2014-04-25');
INSERT INTO `tbl_employee_salary` VALUES(17, 20, 7, 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_type`
--

CREATE TABLE `tbl_employee_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `employee_type` varchar(100) DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_employee_type`
--

INSERT INTO `tbl_employee_type` VALUES(1, 1, 'ELD', 6, '2014-03-04');
INSERT INTO `tbl_employee_type` VALUES(2, 4, 'Regular Contract Holder', 6, '2014-05-05');
INSERT INTO `tbl_employee_type` VALUES(3, 8, 'Regular Contract Holder', 6, '2014-03-02');
INSERT INTO `tbl_employee_type` VALUES(4, 10, 'Regular Contract Holder', 6, '2014-04-06');
INSERT INTO `tbl_employee_type` VALUES(5, 16, 'Regular Contract Holder', 6, '2014-04-11');
INSERT INTO `tbl_employee_type` VALUES(6, 17, 'Regular Contract Holder', 6, '2014-04-11');
INSERT INTO `tbl_employee_type` VALUES(7, 20, 'Part-time Employee', 6, '2014-04-13');
INSERT INTO `tbl_employee_type` VALUES(8, 22, 'Regular Contract Holder', 6, '2014-04-25');
INSERT INTO `tbl_employee_type` VALUES(9, 24, 'Regular Contract Holder', 6, '2014-04-25');
INSERT INTO `tbl_employee_type` VALUES(10, 25, 'Regular Contract Holder', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employement_type`
--

CREATE TABLE `tbl_employement_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employement_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_employement_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_evaluation_result`
--

CREATE TABLE `tbl_evaluation_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `result` float NOT NULL,
  `date_evaluated` datetime NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_evaluation_result`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_expat_teachers_etb_payroll_sheet`
--

CREATE TABLE `tbl_expat_teachers_etb_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `usd_basic_salary` float NOT NULL,
  `responsibility_allowance` float NOT NULL,
  `usd_gross_salary` float NOT NULL,
  `exchange_rate` float NOT NULL,
  `total_in_birr` float NOT NULL,
  `etb_basic_salary` float NOT NULL,
  `etb_responsibility_allowance` float NOT NULL,
  `converted_hard_currency` float NOT NULL,
  `house_rent_allowance` float NOT NULL,
  `gratuity_amount` float NOT NULL,
  `etb_gross_salary` float NOT NULL,
  `grand_in_birr` float NOT NULL,
  `advance_and_loans` float NOT NULL,
  `house_rent_deduction` float NOT NULL,
  `taxable_income` float NOT NULL,
  `income_tax` float NOT NULL,
  `tel_and_elec` float NOT NULL,
  `total_deduction` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_expat_teachers_etb_payroll_sheet`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_expat_teachers_usd_payroll_sheet`
--

CREATE TABLE `tbl_expat_teachers_usd_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `basic_salary` float NOT NULL,
  `responsibility_allowance` float NOT NULL,
  `gross_salary` float NOT NULL,
  `converted_into_birr` float NOT NULL,
  `advance_and_loans` float NOT NULL,
  `retained_with_school` float NOT NULL,
  `tel_fax_elect` float NOT NULL,
  `total_deductions` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_expat_teachers_usd_payroll_sheet`
--

INSERT INTO `tbl_expat_teachers_usd_payroll_sheet` VALUES(1, 1, 4, 5679, 0, 6029, 0, 100, 1135.8, 0, 1235.8, 4793.2, 6, '2014-05-01');
INSERT INTO `tbl_expat_teachers_usd_payroll_sheet` VALUES(2, 1, 1, 1122, 0, 1122, 0, 0, 0, 0, 0, 1122, 6, '2014-05-01');
INSERT INTO `tbl_expat_teachers_usd_payroll_sheet` VALUES(3, 1, 17, 1941, 323, 14367, 0, 0, 0, 0, 0, 14367, 6, '2014-05-01');
INSERT INTO `tbl_expat_teachers_usd_payroll_sheet` VALUES(4, 1, 10, 5679, 0, 5679, 0, 0, 0, 0, 0, 5679, 6, '2014-05-01');
INSERT INTO `tbl_expat_teachers_usd_payroll_sheet` VALUES(5, 1, 20, 1881, 0, 1881, 1, 0, 0, 0, 1, 1880, 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience_criteria_value_list`
--

CREATE TABLE `tbl_experience_criteria_value_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vacancy_id` bigint(20) NOT NULL,
  `minimum_experience_year` int(11) NOT NULL,
  `point` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vacancy_id` (`vacancy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_experience_criteria_value_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience_information`
--

CREATE TABLE `tbl_experience_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `place_worked` varchar(80) NOT NULL,
  `starting_from` datetime NOT NULL,
  `upto` datetime NOT NULL,
  `job_id` varchar(200) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_experience_information`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_faculty_institute_school`
--

CREATE TABLE `tbl_faculty_institute_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fis_code` varchar(2) NOT NULL,
  `fis_name` varchar(100) NOT NULL,
  `college_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `college_id` (`college_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_faculty_institute_school`
--

INSERT INTO `tbl_faculty_institute_school` VALUES(1, '01', 'Main Division', 1, 'Division description goes in here');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_field_of_study`
--

CREATE TABLE `tbl_field_of_study` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_of_study` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_field_of_study`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_field_of_study_criteria_value_list`
--

CREATE TABLE `tbl_field_of_study_criteria_value_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vacancy_id` bigint(20) NOT NULL,
  `field_of_study_id` int(11) NOT NULL,
  `point` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vacancy_id` (`vacancy_id`),
  KEY `field_of_study_id` (`field_of_study_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_field_of_study_criteria_value_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_foreign_currency_exchange_rate`
--

CREATE TABLE `tbl_foreign_currency_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(70) NOT NULL,
  `etb_equivalent_amount` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_foreign_currency_exchange_rate`
--

INSERT INTO `tbl_foreign_currency_exchange_rate` VALUES(2, '1 USD', 18.59, 6, '2014-04-11');
INSERT INTO `tbl_foreign_currency_exchange_rate` VALUES(3, '1 EUR', 26, 6, '2014-04-06');
INSERT INTO `tbl_foreign_currency_exchange_rate` VALUES(4, '1 Pound', 32, 6, '2014-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_functionality`
--

CREATE TABLE `tbl_functionality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `functionality_name` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `tbl_functionality`
--

INSERT INTO `tbl_functionality` VALUES(1, 'employeeManagement', 'This functionality will enable management of all employees information stored in the database.', 'Employee', 3);
INSERT INTO `tbl_functionality` VALUES(2, 'manageAdminFields', 'This module is used to manage the information that will be used in the look up table, Such as education, religion, marital status ...', 'Fields', 0);
INSERT INTO `tbl_functionality` VALUES(3, 'fisManagement', 'This module is used to maintain information about division', 'Division', 1);
INSERT INTO `tbl_functionality` VALUES(14, 'helpManagement', 'This is a tab which is used in downloading the help doc', 'Help', 13);
INSERT INTO `tbl_functionality` VALUES(4, 'departmentManagement', 'This menu is used to maintain information about a unit/Department.', 'Unit', 2);
INSERT INTO `tbl_functionality` VALUES(6, 'viewReport', 'This module will allow you to generate different reports from the database', 'Reports', 10);
INSERT INTO `tbl_functionality` VALUES(7, 'userManagement', 'This module will enable to create, edit and delete users from the system.', 'User', 9);
INSERT INTO `tbl_functionality` VALUES(8, 'roleManagement', 'This module enables you to maintain role information for each account created in the system', 'Role', 7);
INSERT INTO `tbl_functionality` VALUES(9, 'accountManagement', 'This module will enable you manage your account. If you want to change your username or password, this is where you should come', 'Account', 5);
INSERT INTO `tbl_functionality` VALUES(12, 'hrModuleManagement', 'This module enables you to do the different HR Modules, i.e, Planning, Recruitment, Transfer, Promotion, Training and Development, Benefit Management, Grievance Management, Discipline Management and Job Leaving Management', 'HR Modules', 6);
INSERT INTO `tbl_functionality` VALUES(16, 'vacancyManagement', 'This module handles all the necessary transactions for Vacancy, i.e, Request and  maintenance.', 'Vacancy', 11);
INSERT INTO `tbl_functionality` VALUES(15, 'attendanceManagement', 'This module is used to track the attendance history of each employee in the organization', 'Attendance', 4);
INSERT INTO `tbl_functionality` VALUES(17, 'recruitmentRequestForm', 'This module is used to manage the recruitment request process', 'Recruitment', 12);
INSERT INTO `tbl_functionality` VALUES(18, 'permitManagement', 'This module is used to manage the work and residence permits of employees', 'Permit', 14);
INSERT INTO `tbl_functionality` VALUES(19, 'formsManagement', 'This is a form management module. Various types of forms can be maintained in here.', 'Form', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_staff_payroll_sheet`
--

CREATE TABLE `tbl_general_staff_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `basic_salary` float NOT NULL,
  `overtime` float NOT NULL,
  `retirement_pf_er` float NOT NULL,
  `allowance_other` float NOT NULL,
  `gross_salary` float NOT NULL,
  `taxable_income` float NOT NULL,
  `income_tax` float NOT NULL,
  `retirement_pf_er_deduction` float NOT NULL,
  `retirement_pf_ee` float NOT NULL,
  `pension` float NOT NULL,
  `loan_pf_loan` float NOT NULL,
  `other` float NOT NULL,
  `credit_association` float NOT NULL,
  `labor_union` float NOT NULL,
  `total_deduction` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_general_staff_payroll_sheet`
--

INSERT INTO `tbl_general_staff_payroll_sheet` VALUES(1, 2, 6, 2345, 0, 0, 0, 2345, 2345, 351.5, 0, 0, 117.25, 0, 0, 0, 0, 468.75, 1876.25, 6, '2014-04-12');
INSERT INTO `tbl_general_staff_payroll_sheet` VALUES(2, 2, 14, 2409, 266.91, 409.53, 100, 3185.44, 2775.91, 458.98, 409.53, 144.54, 0, 128, 300, 100, 24.09, 1565.14, 1620.3, 6, '2014-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gratuity`
--

CREATE TABLE `tbl_gratuity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `amount_given` float NOT NULL,
  `currency_id` int(11) NOT NULL,
  `date_given` date NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_gratuity`
--

INSERT INTO `tbl_gratuity` VALUES(7, 17, 6861, 4, '2014-04-11', 'This is the description of this particular Gratuity information!', 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_griveance_management`
--

CREATE TABLE `tbl_griveance_management` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `griveance_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_griveance_management`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_hr_module`
--

CREATE TABLE `tbl_hr_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(70) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_hr_module`
--

INSERT INTO `tbl_hr_module` VALUES(4, 'Promotion Management', 'This is the promotion phase of the HR Module');
INSERT INTO `tbl_hr_module` VALUES(6, 'Benefits Management', 'This is the benefits management phase of the HR Module');
INSERT INTO `tbl_hr_module` VALUES(10, 'Leave Management', 'This is a leave management phase of the Human Resource module');
INSERT INTO `tbl_hr_module` VALUES(11, 'Performance Appraisal', 'This is where employees get evaluated.');
INSERT INTO `tbl_hr_module` VALUES(12, 'Demotion Management', 'This is where demotion tasks are handled.');
INSERT INTO `tbl_hr_module` VALUES(15, 'Continuation Plan Management', 'This module is used to maintain continuity plan information of international staffs.');
INSERT INTO `tbl_hr_module` VALUES(16, 'Absent Day Information for Payroll', 'This module is used to maintain absent day information to facilitate payroll processing for each employee....');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_international_employee_contract_type`
--

CREATE TABLE `tbl_international_employee_contract_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `contract_type` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_international_employee_contract_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_international_employee_type`
--

CREATE TABLE `tbl_international_employee_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `employment_type` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_international_employee_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_job`
--

CREATE TABLE `tbl_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(150) NOT NULL,
  `job_classification` varchar(255) NOT NULL,
  `job_classification_number` varchar(255) NOT NULL,
  `job_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_job`
--

INSERT INTO `tbl_job` VALUES(1, 'Accountant', 'Job Classification', '---', '---');
INSERT INTO `tbl_job` VALUES(2, 'Audit Trainee', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(3, 'Cheif Executive Officer', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(4, 'Chief Operating Officer', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(5, 'Controller', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(6, 'Finance Controller', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(7, 'Finance Manager', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(8, 'HR Admin', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(9, 'HR Manager', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(10, 'Industrial Engineer', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(11, 'IT Director', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(12, 'IT Manager', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(13, 'Pre-Sales Executive', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(14, 'Program Manager', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(15, 'Sales Director', '---', '---', '---');
INSERT INTO `tbl_job` VALUES(16, 'Sales Manager', '---', '---', '---');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kefele_ketema`
--

CREATE TABLE `tbl_kefele_ketema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kefele_ketema` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_kefele_ketema`
--

INSERT INTO `tbl_kefele_ketema` VALUES(1, 'Akaki Kaliti');
INSERT INTO `tbl_kefele_ketema` VALUES(2, 'Arada');
INSERT INTO `tbl_kefele_ketema` VALUES(3, 'Lideta');
INSERT INTO `tbl_kefele_ketema` VALUES(4, 'Kolfe Keranio');
INSERT INTO `tbl_kefele_ketema` VALUES(5, 'Nifassilk Lafto');
INSERT INTO `tbl_kefele_ketema` VALUES(6, 'Bole');
INSERT INTO `tbl_kefele_ketema` VALUES(7, 'Gulele');
INSERT INTO `tbl_kefele_ketema` VALUES(8, 'Yeka');
INSERT INTO `tbl_kefele_ketema` VALUES(9, 'Kirkos');
INSERT INTO `tbl_kefele_ketema` VALUES(10, 'Addis Ketema');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_label`
--

CREATE TABLE `tbl_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label_id` varchar(100) NOT NULL,
  `label_caption` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `tbl_label`
--

INSERT INTO `tbl_label` VALUES(158, 'lbljusticeprofessionalassociationemployeeinformationregistrationform', 'Justice Professional Association Employee Information Registration Form');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` VALUES(4, 'Amharic');
INSERT INTO `tbl_language` VALUES(13, 'Oromifa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language_setting`
--

CREATE TABLE `tbl_language_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `label_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `label_id` (`label_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `tbl_language_setting`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_request`
--

CREATE TABLE `tbl_leave_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `leave_request_date` date NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `number_of_days` float NOT NULL,
  `purpose` text NOT NULL,
  `date_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_to` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_leave_request`
--

INSERT INTO `tbl_leave_request` VALUES(1, 1, '2014-03-03', 13, 0.5, 'Wanted to take some rest and enjoy life a little bit. Rejovinate!!', '2014-03-04 00:12:03', '2014-03-03 20:12:10', 6, '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_type`
--

CREATE TABLE `tbl_leave_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_type_abbrivation` varchar(3) NOT NULL,
  `leave_type_name` varchar(70) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_leave_type`
--

INSERT INTO `tbl_leave_type` VALUES(9, 'SL', 'SICK LEAVE', '');
INSERT INTO `tbl_leave_type` VALUES(10, 'LL', 'LEGAL LEVAE', '');
INSERT INTO `tbl_leave_type` VALUES(11, 'MAL', 'MATHERNITY LEAVE', '');
INSERT INTO `tbl_leave_type` VALUES(12, 'MOL', 'MOURNING LEAVE', '');
INSERT INTO `tbl_leave_type` VALUES(13, 'UPL', 'UNPAID LEAVE', 'This is the <i><b>descrip</b></i><span style="color:rgb(204,0,0);"><i style="color: rgb(204, 0, 0);"><b style="color: rgb(204, 0, 0);">tion</b></i></span><br>');
INSERT INTO `tbl_leave_type` VALUES(14, 'FL', 'FORCED LEAVE', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locally_recruited_expat_payroll_sheet`
--

CREATE TABLE `tbl_locally_recruited_expat_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `basic_salary` float NOT NULL,
  `provident_fund` float NOT NULL,
  `transportation_allowance` float NOT NULL,
  `responsibility_allowance` float NOT NULL,
  `gross_salary` float NOT NULL,
  `income_tax_exp` float NOT NULL,
  `advance_and_loans` float NOT NULL,
  `other_deductions` float NOT NULL,
  `income_tax` float NOT NULL,
  `tel_and_fax` float NOT NULL,
  `retained_with_school` float NOT NULL,
  `total_deduction` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_locally_recruited_expat_payroll_sheet`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_local_teachers_payroll_sheet`
--

CREATE TABLE `tbl_local_teachers_payroll_sheet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `basic_salary` float NOT NULL,
  `overtime` float NOT NULL,
  `retirement_pf_er` float NOT NULL,
  `allowance_other` float NOT NULL,
  `gross_salary` float NOT NULL,
  `taxable_income` float NOT NULL,
  `income_tax` float NOT NULL,
  `retirement_pf_er_deduction` float NOT NULL,
  `retirement_pf_ee` float NOT NULL,
  `pension` float NOT NULL,
  `loan_pf_loan` float NOT NULL,
  `other` float NOT NULL,
  `credit_association` float NOT NULL,
  `labor_union` float NOT NULL,
  `total_deduction` float NOT NULL,
  `net_pay` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_local_teachers_payroll_sheet`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_marital_status`
--

CREATE TABLE `tbl_marital_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marital_status` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_marital_status`
--

INSERT INTO `tbl_marital_status` VALUES(1, 'Married');
INSERT INTO `tbl_marital_status` VALUES(2, 'Single');
INSERT INTO `tbl_marital_status` VALUES(3, 'Divorced');
INSERT INTO `tbl_marital_status` VALUES(5, 'Widowed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medical_examination_form`
--

CREATE TABLE `tbl_medical_examination_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `medical_exam_date` date NOT NULL,
  `weight` varchar(70) NOT NULL,
  `height` varchar(70) NOT NULL,
  `blood_pressure` varchar(70) NOT NULL,
  `pulse` varchar(70) NOT NULL,
  `temperature` varchar(70) NOT NULL,
  `skin` varchar(70) NOT NULL,
  `vision` varchar(70) NOT NULL,
  `hearing` varchar(70) NOT NULL,
  `teeth` varchar(70) NOT NULL,
  `chest` varchar(70) NOT NULL,
  `abdomen` varchar(70) NOT NULL,
  `general` varchar(70) NOT NULL,
  `ability_adjust_work_environment` text NOT NULL,
  `ability_sea_level` text NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `health_facility_address` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_medical_examination_form`
--

INSERT INTO `tbl_medical_examination_form` VALUES(2, 5, '2014-02-19', 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', 'skin', 'kjh', 'lhg', 'jhg', 'jhg', 'jhg', 'jhg', 'jkh', 'kjh', 'kjh', 'kjh', 6, '2014-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_national_employee_type`
--

CREATE TABLE `tbl_national_employee_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `employment_type` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_national_employee_type`
--

INSERT INTO `tbl_national_employee_type` VALUES(1, 5, 'Regular Employee', 6, '2014-02-12');
INSERT INTO `tbl_national_employee_type` VALUES(2, 6, 'Regular Employee', 6, '2014-05-05');
INSERT INTO `tbl_national_employee_type` VALUES(3, 7, 'Regular Employee', 6, '2014-03-04');
INSERT INTO `tbl_national_employee_type` VALUES(4, 11, 'Regular Employee', 6, '2014-04-10');
INSERT INTO `tbl_national_employee_type` VALUES(5, 12, 'Regular Employee', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_type` VALUES(6, 13, 'Regular Employee', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_type` VALUES(7, 14, 'Regular Employee', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_type` VALUES(8, 15, 'Regular Employee', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_type` VALUES(9, 18, 'Regular Employee', 6, '2014-04-13');
INSERT INTO `tbl_national_employee_type` VALUES(10, 19, 'Regular Employee', 6, '2014-04-13');
INSERT INTO `tbl_national_employee_type` VALUES(11, 21, 'Regular Employee', 6, '2014-04-16');
INSERT INTO `tbl_national_employee_type` VALUES(12, 23, 'Temporary Employee', 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_national_employee_work_position`
--

CREATE TABLE `tbl_national_employee_work_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `work_position` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_national_employee_work_position`
--

INSERT INTO `tbl_national_employee_work_position` VALUES(1, 5, 'Teaching', 6, '2014-02-12');
INSERT INTO `tbl_national_employee_work_position` VALUES(2, 6, 'Service Employee', 6, '2014-05-05');
INSERT INTO `tbl_national_employee_work_position` VALUES(3, 7, 'Service Employee', 6, '2014-03-04');
INSERT INTO `tbl_national_employee_work_position` VALUES(4, 11, 'Admin and General', 6, '2014-04-10');
INSERT INTO `tbl_national_employee_work_position` VALUES(5, 12, 'Admin and General', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_work_position` VALUES(6, 13, 'Admin and General', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_work_position` VALUES(7, 14, 'Admin and General', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_work_position` VALUES(8, 15, 'Teaching', 6, '2014-04-11');
INSERT INTO `tbl_national_employee_work_position` VALUES(9, 18, 'Admin and General', 6, '2014-04-13');
INSERT INTO `tbl_national_employee_work_position` VALUES(10, 19, 'Service Employee', 6, '2014-04-13');
INSERT INTO `tbl_national_employee_work_position` VALUES(11, 21, 'Admin and General', 6, '2014-04-16');
INSERT INTO `tbl_national_employee_work_position` VALUES(12, 23, 'Service Employee', 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_comment`
--

CREATE TABLE `tbl_other_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` mediumtext NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_other_comment`
--

INSERT INTO `tbl_other_comment` VALUES(1, 'No other comments', 1);
INSERT INTO `tbl_other_comment` VALUES(2, 'what comments do you want from me??', 2);
INSERT INTO `tbl_other_comment` VALUES(3, 'wondisho is a very nice person!!!', 2);
INSERT INTO `tbl_other_comment` VALUES(4, 'jhgjhg', 3);
INSERT INTO `tbl_other_comment` VALUES(5, 'no other comments', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_past_post`
--

CREATE TABLE `tbl_past_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `past_post_from` varchar(100) NOT NULL,
  `past_post_to` varchar(100) NOT NULL,
  `starting_salary` varchar(70) NOT NULL,
  `final_salary` varchar(70) NOT NULL,
  `exact_title_of_post` text NOT NULL,
  `name_of_employer` varchar(255) NOT NULL,
  `type_of_business` varchar(255) NOT NULL,
  `address_of_employer` text NOT NULL,
  `name_of_supervisor` varchar(140) NOT NULL,
  `reason_for_leaving` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `tbl_past_post`
--

INSERT INTO `tbl_past_post` VALUES(3, 2, 'May/2013', 'Jan/2014', '3000', '3000', 'Senior PHP Developer', 'Echo Origin', 'Computer Software Consultant', 'VA, USA', 'Cobb Ervin', 'Moved to Ethiopia', 6, '2014-02-04');
INSERT INTO `tbl_past_post` VALUES(4, 2, 'Oct/2004', 'Feb/2012', '1234', '4567', 'Lecturer', 'Addis Ababa University', 'Higher Education', 'Addis Ababa, Ethiopia', 'Dr. Solomon Teferra', 'Relocated to USA', 6, '2014-02-04');
INSERT INTO `tbl_past_post` VALUES(5, 3, 'May/2013', 'Jan/2014', '3000', '3000', 'Senior PHP Developer', 'Echo Origin', 'Computer Software Consultant', 'VA, USA', 'Cobb Ervin', 'Moved to Ethiopia', 6, '2014-02-04');
INSERT INTO `tbl_past_post` VALUES(6, 3, 'Oct/2004', 'Feb/2012', '1234', '4567', 'Lecturer', 'Addis Ababa University', 'Higher Education', 'Addis Ababa, Ethiopia', 'Dr. Solomon Teferra', 'Relocated to USA', 6, '2014-02-04');
INSERT INTO `tbl_past_post` VALUES(43, 5, 'past post from', 'past post to', 'starting salary', 'final salary', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-02-12');
INSERT INTO `tbl_past_post` VALUES(52, 8, 'from', 'to', 'starting salary', 'final salary', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-03-02');
INSERT INTO `tbl_past_post` VALUES(56, 7, 'past post from', 'past post to', 'past post starting salary', 'past post final salary', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-03-04');
INSERT INTO `tbl_past_post` VALUES(57, 1, 'May/2013', 'Jan/2014', '3000', '3000', 'Senior PHP Developer', 'Echo Origin', 'Computer Software Consultant', 'VA, USA', 'Cobb Ervin', 'Moved to Ethiopia. What the hell is wrong!', 6, '2014-03-04');
INSERT INTO `tbl_past_post` VALUES(58, 10, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-06');
INSERT INTO `tbl_past_post` VALUES(60, 11, 'sept/1997', 'jul/2000', '1234', '4567', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-04-10');
INSERT INTO `tbl_past_post` VALUES(63, 12, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(64, 13, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(65, 14, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(66, 15, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(67, 16, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(68, 17, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_past_post` VALUES(69, 18, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_past_post` VALUES(70, 19, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_past_post` VALUES(71, 20, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_past_post` VALUES(72, 21, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_past_post` VALUES(73, 22, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_past_post` VALUES(74, 23, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_past_post` VALUES(75, 24, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_past_post` VALUES(76, 25, '', '', '', '', '', '', '', '', '', '', 6, '2014-05-01');
INSERT INTO `tbl_past_post` VALUES(77, 4, 'May/2009', 'Feb/2011', '1234', '2345', 'Assistant Editor', 'Zoma Magazine', 'Private Organization', 'Bole, Addis Ababa Ethiopia', 'Abate Tezera', 'Behavioral Issues.', 6, '2014-05-05');
INSERT INTO `tbl_past_post` VALUES(78, 6, 'Sept/2006', 'Aug/2008', '1234', '2345', 'Junior Software Developer', 'Haleta Promotion', 'Promotion Agency', 'Addis Ababa Ethiopia', 'Ermias Gurmessa', 'Left for a better paying job!', 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payroll`
--

CREATE TABLE `tbl_payroll` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payroll_name` varchar(200) NOT NULL,
  `payroll_month` varchar(100) NOT NULL,
  `date_prepared` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_payroll`
--

INSERT INTO `tbl_payroll` VALUES(1, 'expatriate_teachers_usd_payroll_detail', '5', '2014-05-01', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payroll_emp_type`
--

CREATE TABLE `tbl_payroll_emp_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_type_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_payroll_emp_type`
--

INSERT INTO `tbl_payroll_emp_type` VALUES(1, 'Administrative Staff');
INSERT INTO `tbl_payroll_emp_type` VALUES(2, 'Local Teacher');
INSERT INTO `tbl_payroll_emp_type` VALUES(3, 'Locally Recruited Expatriate Parttime Teacher');
INSERT INTO `tbl_payroll_emp_type` VALUES(4, 'Expatriate Teacher');
INSERT INTO `tbl_payroll_emp_type` VALUES(5, 'General Service');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payroll_functionality`
--

CREATE TABLE `tbl_payroll_functionality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `functionality_name` varchar(50) NOT NULL,
  `description` mediumtext NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_payroll_functionality`
--

INSERT INTO `tbl_payroll_functionality` VALUES(20, 'adminFieldsManagement', 'This menu will let the system administrator to manage the different look up fields that will be used by other modules of the system.', 'Fields', 0);
INSERT INTO `tbl_payroll_functionality` VALUES(21, 'employeeAllowanceManagement', 'This module will help you maintain/manage allowance information for an employee(s)', 'Employee Allowance', 1);
INSERT INTO `tbl_payroll_functionality` VALUES(22, 'employeeDeductionManagement', 'This module is used to maintain employee deduction information.', 'Employee Deduction', 2);
INSERT INTO `tbl_payroll_functionality` VALUES(23, 'employeeOvertimeManagement', 'This module is used to manage the overtime information for employee.', 'Overtime', 3);
INSERT INTO `tbl_payroll_functionality` VALUES(24, 'payrollProcessManagement', 'This module is used to manage the payroll process.', 'Payroll', 6);
INSERT INTO `tbl_payroll_functionality` VALUES(25, 'advanceManagement', 'This module is used to maintain advance salary payment process for the employee.', 'Advance', 4);
INSERT INTO `tbl_payroll_functionality` VALUES(26, 'employeeLoanManagement', 'This module is used to manage the employee loan record in the database...', 'Employee Loan', 5);
INSERT INTO `tbl_payroll_functionality` VALUES(27, 'payslipManagement', 'This module is used to manage employee pay slip information.', 'Pay Slip', 7);
INSERT INTO `tbl_payroll_functionality` VALUES(28, 'accountManagement', 'This module is used to manage your account.', 'Account', 8);
INSERT INTO `tbl_payroll_functionality` VALUES(29, 'userManagement', 'This module is used by the system admin to manage system users.', 'User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_frequency`
--

CREATE TABLE `tbl_pay_frequency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frequency_name` varchar(70) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_pay_frequency`
--

INSERT INTO `tbl_pay_frequency` VALUES(6, 'Monthly', 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_grade`
--

CREATE TABLE `tbl_pay_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `minimum_salary` float NOT NULL,
  `maximum_salary` float NOT NULL,
  `step_increase` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_pay_grade`
--

INSERT INTO `tbl_pay_grade` VALUES(3, 'PAY001', 'First Pay Grade', 1000, 1500, 2, 6, '2014-03-30');
INSERT INTO `tbl_pay_grade` VALUES(4, 'PAY002', 'Second Pay Grade', 1501, 2000, 3, 6, '2014-03-30');
INSERT INTO `tbl_pay_grade` VALUES(5, 'PAY003', 'Third Pay Grade', 2001, 3000, 4, 6, '2014-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_performance_appraisal`
--

CREATE TABLE `tbl_performance_appraisal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `position_title` varchar(200) NOT NULL,
  `employment_date` date NOT NULL,
  `department_id` int(11) NOT NULL,
  `appraisal_date` date NOT NULL,
  `period_covered` varchar(255) NOT NULL,
  `last_appraisal_date` date NOT NULL,
  `summary_of_duities` text NOT NULL,
  `specific_goals_objectives` text NOT NULL,
  `dependability` varchar(100) NOT NULL,
  `quality` varchar(100) NOT NULL,
  `job_knowledge_skill` varchar(100) NOT NULL,
  `attendance_use_of_time` varchar(100) NOT NULL,
  `communication_ability` varchar(100) NOT NULL,
  `policies_and_guidelines` varchar(100) NOT NULL,
  `cooperation_understanding` varchar(100) NOT NULL,
  `responsibility` varchar(100) NOT NULL,
  `behavior_and_personality` varchar(100) NOT NULL,
  `initiative_and_resourcefulness` varchar(100) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_performance_appraisal`
--

INSERT INTO `tbl_performance_appraisal` VALUES(5, 5, 'Senior Accountant', '2005-02-09', 1, '2014-02-10', 'Jan 2014 - Feb 2014', '2013-02-28', 'summary of duties', 'specific goals and objectives', 'N/A', 'Unsatisfactory', 'Improvement', 'Satisfactory', 'Good', 'Very good', 'Good', 'Satisfactory', 'Improvement', 'N/A', 6, '2014-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permit`
--

CREATE TABLE `tbl_permit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `work_permit_number` varchar(70) NOT NULL,
  `work_permit_from` date NOT NULL,
  `work_permit_to` date NOT NULL,
  `residence_id_number` varchar(70) NOT NULL,
  `residence_permit_from` date NOT NULL,
  `residence_permit_to` date NOT NULL,
  `passport_number` varchar(70) NOT NULL,
  `passport_issue_date` date NOT NULL,
  `passport_expiry_date` date NOT NULL,
  `dependent` varchar(255) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_permit`
--

INSERT INTO `tbl_permit` VALUES(2, 4, 'EMR33115', '2013-07-07', '2014-07-07', 'TI0159175', '2013-07-07', '2014-07-07', 'C46YGLL0K', '2009-04-16', '2019-04-16', '4 children', 6, '2014-07-02');
INSERT INTO `tbl_permit` VALUES(3, 1, 'lsjkdfj', '2014-02-10', '2015-02-18', 'ksdfjk', '2014-02-10', '2016-02-11', 'sadf', '2014-02-10', '2014-11-21', 'sdf', 6, '2014-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permit_alert_lookup`
--

CREATE TABLE `tbl_permit_alert_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_permit_period` int(11) NOT NULL,
  `residence_permit_period` int(11) NOT NULL,
  `passport_expiry_period` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_permit_alert_lookup`
--

INSERT INTO `tbl_permit_alert_lookup` VALUES(1, 1, 3, 4, 6, '2014-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_present_post`
--

CREATE TABLE `tbl_present_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `present_post_from` varchar(100) NOT NULL,
  `present_post_to` varchar(100) NOT NULL,
  `starting_salary` varchar(70) NOT NULL,
  `final_salary` varchar(70) NOT NULL,
  `exact_title_of_post` text NOT NULL,
  `name_of_employer` varchar(255) NOT NULL,
  `type_of_business` varchar(255) NOT NULL,
  `address_of_employer` text NOT NULL,
  `name_of_supervisor` varchar(140) NOT NULL,
  `reason_for_leaving` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tbl_present_post`
--

INSERT INTO `tbl_present_post` VALUES(1, 1, 'May/2009', 'Feb/2012', '2500', '8679', 'Senior Software Developer', 'Signet IT Solutions', 'Computer Software Consultant', 'Meskel Flower, Addis Ababa Ethiopia', 'Fish', 'Still working', 6, '2014-03-04');
INSERT INTO `tbl_present_post` VALUES(2, 2, 'May/2009', 'Feb/2012', '2500', '5000', 'Senior Software Developer', 'Signet IT Solutions', 'Computer Software Consultant', 'Meskel Flower, Addis Ababa Ethiopia', 'Fish', 'Still working', 6, '2014-02-04');
INSERT INTO `tbl_present_post` VALUES(3, 3, 'May/2009', 'Feb/2012', '2500', '5000', 'Senior Software Developer', 'Signet IT Solutions', 'Computer Software Consultant', 'Meskel Flower, Addis Ababa Ethiopia', 'Fish', 'Still working', 6, '2014-02-04');
INSERT INTO `tbl_present_post` VALUES(4, 4, 'Jan/2014', 'Now', '9000', '9000', 'Communication Officer', 'Supervisor Name', 'NGO', 'Sar Bet', 'Canada Safty Net', 'Still <i>working</i>...', 6, '2014-05-05');
INSERT INTO `tbl_present_post` VALUES(5, 5, 'present post from', 'present post to', 'starting salary', 'final salary', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-02-12');
INSERT INTO `tbl_present_post` VALUES(6, 6, 'Sept/2009', 'Feb/2014', '3456', '5000', 'Senior software developer', 'Hailu Gulelat', 'Software development/consultancy', 'Addis ABaba Ethiopia', 'Zeru IT Solutions', 'Still working here...', 6, '2014-05-05');
INSERT INTO `tbl_present_post` VALUES(7, 7, 'present post from', 'present post to', 'present post starting salary', 'present post final salary', 'exact title of your post', 'name of supervisor', 'type of business', 'address of employer', 'name of employer', 'reason for leaving', 6, '2014-03-04');
INSERT INTO `tbl_present_post` VALUES(8, 8, 'present post from', 'present post to', 'present starting salary', 'present final salary', 'present exact title of your post', 'present post name of employer', 'type of business', 'address of employer', 'name of supervisor', 'reason for leaving', 6, '2014-03-02');
INSERT INTO `tbl_present_post` VALUES(9, 10, '01/2000', 'Now', '3000', '5000', 'exact title of your post', 'name of employer', 'type of business', 'address of employer', 'name of supervisor', 'Still working here...', 6, '2014-04-06');
INSERT INTO `tbl_present_post` VALUES(10, 11, 'sept/1998', 'now', '3000', '7000', 'exact title of your post', 'name of supervisor', 'type of business', 'address of employer', 'name of employer', 'reason for leaving', 6, '2014-04-10');
INSERT INTO `tbl_present_post` VALUES(11, 12, 'Oct/2008', 'Now', '2000', '8000', 'Bank auditor and accountant', 'CBE', 'Banking', 'Address of employer', 'name of supervisor', 'Still working in this organization', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(12, 13, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(13, 14, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(14, 15, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(15, 16, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(16, 17, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_present_post` VALUES(17, 18, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_present_post` VALUES(18, 19, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_present_post` VALUES(19, 20, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_present_post` VALUES(20, 21, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_present_post` VALUES(21, 22, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_present_post` VALUES(22, 23, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_present_post` VALUES(23, 24, '', '', '', '', '', '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_present_post` VALUES(24, 25, '', '', '', '', '', '', '', '', '', '', 6, '2014-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `from_department_id` int(11) NOT NULL,
  `to_department_id` int(11) NOT NULL,
  `promotion_detail` text NOT NULL,
  `promotion_date` datetime NOT NULL,
  `job_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_promotion`
--

INSERT INTO `tbl_promotion` VALUES(1, 1, 2, 8, 'He is moved from IT department to Finance because he is an out standing employee. this line is updated', '2014-03-04 00:00:00', 3, 6, '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recruitment_request`
--

CREATE TABLE `tbl_recruitment_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `requester_title` varchar(100) NOT NULL,
  `request_date` date NOT NULL,
  `desired_hire_date` date NOT NULL,
  `position_requested_replacement_for` varchar(100) DEFAULT NULL,
  `position_requested_new_position` varchar(100) DEFAULT NULL,
  `position_requested_administrative` varchar(70) DEFAULT NULL,
  `position_requested_managerial` varchar(70) NOT NULL,
  `position_requested_non_trades` varchar(70) NOT NULL,
  `position_requested_operations_support` varchar(70) NOT NULL,
  `position_requested_professional` varchar(70) NOT NULL,
  `position_requested_trades` varchar(70) NOT NULL,
  `position_requested_proposed_job_title` varchar(255) DEFAULT NULL,
  `position_requested_budgeted_rate` varchar(70) DEFAULT NULL,
  `temporary_worker_number_of_days` varchar(70) DEFAULT NULL,
  `temporary_worker_number_of_weeks` varchar(70) DEFAULT NULL,
  `temporary_worker_number_of_months` varchar(70) DEFAULT NULL,
  `temporary_worker_start_date` date DEFAULT NULL,
  `temporary_worker_end_date` date DEFAULT NULL,
  `temporary_worker_hourly_rate` varchar(50) DEFAULT NULL,
  `temporary_worker_how_many` varchar(20) DEFAULT NULL,
  `additional_information_required` text,
  `additional_information_desired` text,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_recruitment_request`
--

INSERT INTO `tbl_recruitment_request` VALUES(1, 2, 'Mahder Alemayehu', '2014-02-07', '2014-02-14', 'replacement for', 'New position', 'undefined', '', '', 'undefined', 'undefined', 'undefined', 'proposed job title', 'budgeted rate', '10', '11', '12', '2014-02-15', '2014-02-22', '12.34', '5', 'additional information required. What more additional information do you possibly require My brother?', 'additional information desired. This is update at first', 6, '2014-02-07');
INSERT INTO `tbl_recruitment_request` VALUES(2, 1, 'Lekbir Taffesse', '2014-02-07', '2014-02-28', 'replacement for', 'new position', 'undefined', '', 'undefined', 'undefined', 'undefined', '', 'proposed job title', 'budgeted rate', '11', '12', '13', '2014-02-14', '2014-02-27', '10', '12', 'required additional information', 'desired additional information', 6, '2014-02-07');
INSERT INTO `tbl_recruitment_request` VALUES(3, 1, 'Wondwossen Mulugeta', '2014-02-07', '2014-02-21', 'replacement for', 'new position', 'undefined', 'undefined', 'undefined', 'undefined', '', '', 'job title', 'budgeted rate', '12', '13', '14', '2014-02-21', '2014-02-27', '11', '12', 'required', 'desired', 6, '2014-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reference`
--

CREATE TABLE `tbl_reference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `full_name` varchar(140) NOT NULL,
  `full_address` text NOT NULL,
  `business_or_occupation` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=214 ;

--
-- Dumping data for table `tbl_reference`
--

INSERT INTO `tbl_reference` VALUES(106, 5, 'ref full name1', 'ref full address1', 'ref business or occupation1', 6, '2014-02-12');
INSERT INTO `tbl_reference` VALUES(107, 5, 'ref full name2', 'ref full address2', 'ref business or occupation2', 6, '2014-02-12');
INSERT INTO `tbl_reference` VALUES(108, 5, 'ref full name3', 'ref full address3', 'ref business or occupation3', 6, '2014-02-12');
INSERT INTO `tbl_reference` VALUES(133, 8, 'ref full name 1', 'ref full address 1', 'ref business or occupation 1', 6, '2014-03-02');
INSERT INTO `tbl_reference` VALUES(134, 8, 'ref full name 2', 'ref full address 2', 'ref business or occupation 2', 6, '2014-03-02');
INSERT INTO `tbl_reference` VALUES(135, 8, 'ref full name 3', 'ref full address 3', 'ref business or occupation 3', 6, '2014-03-02');
INSERT INTO `tbl_reference` VALUES(145, 7, 'Borede Alemu', 'Addis Ababa, Ethiopia', 'Consultant', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(146, 7, 'Mekoreni Tesema', 'Addis Ababa, Ethiopia', 'Cry cry baby', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(147, 7, 'Sara Ejigu', 'Addis Ababa, Ethiopia', 'kaka', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(148, 1, 'Cobb Ervin', 'Virginia, USA', 'CEO of Echo Origin', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(149, 1, 'Fisheha Wondimu', 'Kansas, USA', 'Data Encoder', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(150, 1, 'Wondwossen Mulugeta', 'Addis Ababa, Ethiopia', 'Lecturer at AAU', 6, '2014-03-04');
INSERT INTO `tbl_reference` VALUES(151, 10, 'full name 1', 'full address 1', 'business or occupation 1', 6, '2014-04-06');
INSERT INTO `tbl_reference` VALUES(152, 10, 'full name 2', 'full address 2', 'business or occupation 2', 6, '2014-04-06');
INSERT INTO `tbl_reference` VALUES(153, 10, 'full name 3', 'full address 3', 'business or occupation 3', 6, '2014-04-06');
INSERT INTO `tbl_reference` VALUES(157, 11, 'full name 1', 'full address 1', 'business or occupation 1', 6, '2014-04-10');
INSERT INTO `tbl_reference` VALUES(158, 11, 'full name 2', 'full address 2', 'business or occupation 2', 6, '2014-04-10');
INSERT INTO `tbl_reference` VALUES(159, 11, 'full name 3', 'full address 3', 'business or occupation 3', 6, '2014-04-10');
INSERT INTO `tbl_reference` VALUES(166, 12, 'full name 1', 'full address 1', 'business or occupation 1', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(167, 12, 'full name 2', 'full address 2', 'business or occupation 2', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(168, 12, 'full name 3', 'full address 3', 'business or occupation 3', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(169, 13, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(170, 13, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(171, 13, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(172, 14, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(173, 14, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(174, 14, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(175, 15, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(176, 15, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(177, 15, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(178, 16, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(179, 16, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(180, 16, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(181, 17, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(182, 17, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(183, 17, '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_reference` VALUES(184, 18, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(185, 18, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(186, 18, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(187, 19, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(188, 19, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(189, 19, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(190, 20, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(191, 20, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(192, 20, '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_reference` VALUES(193, 21, '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_reference` VALUES(194, 21, '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_reference` VALUES(195, 21, '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_reference` VALUES(196, 22, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(197, 22, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(198, 22, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(199, 23, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(200, 23, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(201, 23, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(202, 24, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(203, 24, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(204, 24, '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_reference` VALUES(205, 25, '', '', '', 6, '2014-05-01');
INSERT INTO `tbl_reference` VALUES(206, 25, '', '', '', 6, '2014-05-01');
INSERT INTO `tbl_reference` VALUES(207, 25, '', '', '', 6, '2014-05-01');
INSERT INTO `tbl_reference` VALUES(208, 4, 'Ekram Mohammed', 'Sarbet Addis Ababa', 'Lecturer at AAU', 6, '2014-05-05');
INSERT INTO `tbl_reference` VALUES(209, 4, 'undefined', 'undefined', 'undefined', 6, '2014-05-05');
INSERT INTO `tbl_reference` VALUES(210, 4, 'undefined', 'undefined', 'undefined', 6, '2014-05-05');
INSERT INTO `tbl_reference` VALUES(211, 6, 'Solomon Zeleke', 'Addis Ababa, Ethiopia', 'Consultant', 6, '2014-05-05');
INSERT INTO `tbl_reference` VALUES(212, 6, 'Yehenew Mamo', 'Addis Ababa, Ethiopia', 'Software Developer', 6, '2014-05-05');
INSERT INTO `tbl_reference` VALUES(213, 6, 'Yewelsew Asnake', 'Addis Ababa, Ethiopia', 'Hardware Vendor', 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_religion`
--

CREATE TABLE `tbl_religion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_religion`
--

INSERT INTO `tbl_religion` VALUES(2, 'Muslim');
INSERT INTO `tbl_religion` VALUES(3, 'Ortodox');
INSERT INTO `tbl_religion` VALUES(4, 'Catholic');
INSERT INTO `tbl_religion` VALUES(5, 'Protestant');
INSERT INTO `tbl_religion` VALUES(6, 'JW');
INSERT INTO `tbl_religion` VALUES(7, 'Bahai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resignation_letter`
--

CREATE TABLE `tbl_resignation_letter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `resignation_letter_date` date NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_resignation_letter`
--

INSERT INTO `tbl_resignation_letter` VALUES(2, 1, '2014-03-04', 'this is the description of the resignation letter', 6, '2014-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retained_with_school`
--

CREATE TABLE `tbl_retained_with_school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `percent_value` float NOT NULL,
  `balance` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_retained_with_school`
--

INSERT INTO `tbl_retained_with_school` VALUES(1, 4, 0.2, 0, 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `can_read` tinyint(1) NOT NULL,
  `can_write` tinyint(1) NOT NULL,
  `can_update` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `functionality_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `account_id` (`account_id`),
  KEY `functionality_id` (`functionality_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` VALUES(48, 6, 1, 1, 1, 1, 7);
INSERT INTO `tbl_role` VALUES(47, 6, 1, 1, 1, 1, 6);
INSERT INTO `tbl_role` VALUES(46, 6, 1, 1, 1, 1, 8);
INSERT INTO `tbl_role` VALUES(45, 6, 1, 1, 1, 1, 9);
INSERT INTO `tbl_role` VALUES(44, 6, 1, 1, 1, 1, 3);
INSERT INTO `tbl_role` VALUES(43, 6, 1, 1, 1, 1, 1);
INSERT INTO `tbl_role` VALUES(42, 6, 1, 1, 1, 1, 4);
INSERT INTO `tbl_role` VALUES(41, 6, 1, 1, 1, 1, 5);
INSERT INTO `tbl_role` VALUES(40, 6, 1, 1, 1, 1, 2);
INSERT INTO `tbl_role` VALUES(31, 5, 0, 0, 0, 0, 2);
INSERT INTO `tbl_role` VALUES(32, 5, 0, 0, 0, 0, 5);
INSERT INTO `tbl_role` VALUES(33, 5, 0, 0, 0, 0, 4);
INSERT INTO `tbl_role` VALUES(34, 5, 1, 1, 1, 0, 1);
INSERT INTO `tbl_role` VALUES(35, 5, 0, 0, 0, 0, 3);
INSERT INTO `tbl_role` VALUES(36, 5, 0, 0, 0, 0, 9);
INSERT INTO `tbl_role` VALUES(37, 5, 0, 0, 0, 0, 8);
INSERT INTO `tbl_role` VALUES(38, 5, 1, 0, 0, 0, 6);
INSERT INTO `tbl_role` VALUES(39, 5, 0, 0, 0, 0, 7);
INSERT INTO `tbl_role` VALUES(49, 7, 1, 1, 1, 1, 2);
INSERT INTO `tbl_role` VALUES(50, 7, 1, 1, 1, 1, 4);
INSERT INTO `tbl_role` VALUES(51, 7, 1, 1, 1, 1, 3);
INSERT INTO `tbl_role` VALUES(52, 7, 1, 0, 0, 0, 1);
INSERT INTO `tbl_role` VALUES(53, 7, 1, 1, 1, 1, 12);
INSERT INTO `tbl_role` VALUES(54, 7, 1, 1, 1, 1, 9);
INSERT INTO `tbl_role` VALUES(55, 7, 1, 1, 1, 1, 8);
INSERT INTO `tbl_role` VALUES(56, 7, 1, 1, 1, 1, 6);
INSERT INTO `tbl_role` VALUES(57, 7, 1, 1, 1, 1, 11);
INSERT INTO `tbl_role` VALUES(58, 7, 1, 1, 1, 1, 7);
INSERT INTO `tbl_role` VALUES(59, 8, 0, 1, 0, 0, 2);
INSERT INTO `tbl_role` VALUES(60, 8, 0, 0, 0, 0, 4);
INSERT INTO `tbl_role` VALUES(61, 8, 0, 0, 1, 0, 3);
INSERT INTO `tbl_role` VALUES(62, 8, 0, 0, 0, 0, 1);
INSERT INTO `tbl_role` VALUES(63, 8, 0, 0, 0, 0, 12);
INSERT INTO `tbl_role` VALUES(64, 8, 0, 0, 0, 0, 9);
INSERT INTO `tbl_role` VALUES(65, 8, 0, 0, 0, 0, 8);
INSERT INTO `tbl_role` VALUES(66, 8, 1, 0, 0, 0, 6);
INSERT INTO `tbl_role` VALUES(67, 8, 0, 0, 0, 0, 11);
INSERT INTO `tbl_role` VALUES(68, 8, 0, 0, 0, 0, 7);
INSERT INTO `tbl_role` VALUES(69, 9, 0, 0, 0, 0, 2);
INSERT INTO `tbl_role` VALUES(70, 9, 0, 0, 0, 0, 4);
INSERT INTO `tbl_role` VALUES(71, 9, 0, 0, 0, 0, 3);
INSERT INTO `tbl_role` VALUES(72, 9, 0, 0, 0, 0, 1);
INSERT INTO `tbl_role` VALUES(73, 9, 0, 0, 0, 0, 12);
INSERT INTO `tbl_role` VALUES(74, 9, 0, 0, 0, 0, 9);
INSERT INTO `tbl_role` VALUES(75, 9, 0, 0, 0, 0, 8);
INSERT INTO `tbl_role` VALUES(76, 9, 0, 0, 0, 0, 6);
INSERT INTO `tbl_role` VALUES(77, 9, 0, 0, 0, 0, 11);
INSERT INTO `tbl_role` VALUES(78, 9, 0, 0, 0, 0, 7);
INSERT INTO `tbl_role` VALUES(79, 10, 0, 0, 0, 0, 2);
INSERT INTO `tbl_role` VALUES(80, 10, 0, 0, 0, 0, 3);
INSERT INTO `tbl_role` VALUES(81, 10, 0, 0, 0, 0, 4);
INSERT INTO `tbl_role` VALUES(82, 10, 0, 0, 0, 0, 1);
INSERT INTO `tbl_role` VALUES(83, 10, 1, 1, 0, 0, 15);
INSERT INTO `tbl_role` VALUES(84, 10, 0, 0, 0, 0, 9);
INSERT INTO `tbl_role` VALUES(85, 10, 1, 1, 0, 0, 12);
INSERT INTO `tbl_role` VALUES(86, 10, 0, 0, 0, 0, 8);
INSERT INTO `tbl_role` VALUES(87, 10, 0, 0, 0, 0, 11);
INSERT INTO `tbl_role` VALUES(88, 10, 0, 0, 0, 0, 7);
INSERT INTO `tbl_role` VALUES(89, 10, 0, 0, 0, 0, 6);
INSERT INTO `tbl_role` VALUES(90, 10, 0, 0, 0, 0, 14);
INSERT INTO `tbl_role` VALUES(91, 11, 1, 1, 1, 1, 2);
INSERT INTO `tbl_role` VALUES(92, 11, 1, 1, 1, 1, 3);
INSERT INTO `tbl_role` VALUES(93, 11, 1, 1, 1, 1, 4);
INSERT INTO `tbl_role` VALUES(94, 11, 1, 1, 1, 1, 1);
INSERT INTO `tbl_role` VALUES(95, 11, 1, 1, 1, 1, 15);
INSERT INTO `tbl_role` VALUES(96, 11, 1, 1, 1, 1, 9);
INSERT INTO `tbl_role` VALUES(97, 11, 1, 1, 1, 1, 12);
INSERT INTO `tbl_role` VALUES(98, 11, 1, 1, 1, 1, 8);
INSERT INTO `tbl_role` VALUES(99, 11, 1, 1, 1, 1, 7);
INSERT INTO `tbl_role` VALUES(100, 11, 1, 1, 1, 1, 6);
INSERT INTO `tbl_role` VALUES(101, 11, 1, 1, 1, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_grade_id` int(11) NOT NULL,
  `pay_frequency_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `comments` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_grade_id` (`pay_grade_id`),
  KEY `pay_frequency_id` (`pay_frequency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_salary`
--

INSERT INTO `tbl_salary` VALUES(1, 4, 6, 14000, 'This is gross salary of Lekbir Taffesse. This line is updated!!!', 6, '2014-03-30');
INSERT INTO `tbl_salary` VALUES(2, 3, 6, 1234, 'This is the gross salary of Mulu Adane. That''s right.', 6, '2014-03-30');
INSERT INTO `tbl_salary` VALUES(3, 4, 6, 2345, 'this is the comment', 6, '2014-03-30');
INSERT INTO `tbl_salary` VALUES(4, 4, 6, 4941, 'this is the final comment I am entering right now.', 6, '2014-04-10');
INSERT INTO `tbl_salary` VALUES(5, 5, 6, 5678, 'This is my Gross salary amount.', 6, '2014-03-30');
INSERT INTO `tbl_salary` VALUES(6, 4, 6, 5870, 'This is a sample admin staff salary!', 6, '2014-04-10');
INSERT INTO `tbl_salary` VALUES(7, 5, 6, 8804, '---', 6, '2014-04-11');
INSERT INTO `tbl_salary` VALUES(8, 4, 6, 4106, '---', 6, '2014-04-11');
INSERT INTO `tbl_salary` VALUES(9, 3, 6, 2409, '---', 6, '2014-04-11');
INSERT INTO `tbl_salary` VALUES(10, 4, 6, 6846, '', 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_international`
--

CREATE TABLE `tbl_salary_international` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_grade_id` int(11) NOT NULL,
  `pay_frequency_id` int(11) NOT NULL,
  `etb_amount` float NOT NULL,
  `usd_amount` float NOT NULL,
  `comments` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_grade_id` (`pay_grade_id`),
  KEY `pay_frequency_id` (`pay_frequency_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_salary_international`
--

INSERT INTO `tbl_salary_international` VALUES(1, 4, 6, 8913, 5679, 'This is an international employee who gets paid in both currencies ETB and USD! This line is updated.', 6, '2014-04-06');
INSERT INTO `tbl_salary_international` VALUES(2, 3, 6, 1234, 5678, 'this is a comment', 6, '2014-04-06');
INSERT INTO `tbl_salary_international` VALUES(3, 4, 6, 6789, 1122, 'This comment was inserted using the Edit mode.', 6, '2014-04-06');
INSERT INTO `tbl_salary_international` VALUES(4, 5, 6, 26500, 0, '', 6, '2014-04-11');
INSERT INTO `tbl_salary_international` VALUES(5, 5, 6, 5758, 1941, '', 6, '2014-04-11');
INSERT INTO `tbl_salary_international` VALUES(6, 5, 6, 15563, 0, 'this is the salary comment for Robert Mugabe!', 6, '2014-04-25');
INSERT INTO `tbl_salary_international` VALUES(7, 5, 6, 0, 1881, 'this employee is paied in USD only', 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school_formal_trainings`
--

CREATE TABLE `tbl_school_formal_trainings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `name_place_country` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `attended_from` varchar(100) NOT NULL,
  `attended_to` varchar(100) NOT NULL,
  `certificate_diploma_obtained` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `tbl_school_formal_trainings`
--

INSERT INTO `tbl_school_formal_trainings` VALUES(3, 2, 'Abiyot Kirs, Ethiopia', 'High School', '1992', '1996', 'Highschool Certification', 6, '2014-02-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(4, 2, 'Asai Elementary School, Ethiopia', 'Elementary and Junior Highschool', '1985', '1991', 'Elementary Completion', 6, '2014-02-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(5, 3, 'Abiyot Kirs, Ethiopia', 'High School', '1992', '1996', 'Highschool Certification', 6, '2014-02-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(6, 3, 'Asai Elementary School, Ethiopia', 'Elementary and Junior Highschool', '1985', '1991', 'Elementary Completion', 6, '2014-02-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(67, 5, 'name place and country', 'type', 'attended from', 'attended to', 'certificate or diploma', 6, '2014-02-12');
INSERT INTO `tbl_school_formal_trainings` VALUES(78, 8, 'General Highschool, London England', 'Highschool', 'Sept/1995', 'Oct/1999', 'Highschool Certificate', 6, '2014-03-02');
INSERT INTO `tbl_school_formal_trainings` VALUES(85, 7, 'GCA, Addis Ababa Ethiopia', 'Highschool', 'Sept/1996', 'Aug/1999', 'Highschool completion certificate', 6, '2014-03-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(86, 1, 'Abiyot Kirs, Ethiopia', 'High School', '1992', '1996', 'Highschool Certification', 6, '2014-03-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(87, 1, 'Asai Elementary School, Ethiopia', 'Elementary and Junior Highschool', '1985', '1991', 'Elementary Completion', 6, '2014-03-04');
INSERT INTO `tbl_school_formal_trainings` VALUES(88, 10, 'Virginia, USA', 'Highschool', '01/1991', '09/1994', 'Highshcool Completion Certificate', 6, '2014-04-06');
INSERT INTO `tbl_school_formal_trainings` VALUES(90, 11, 'Higher 23 School', 'Highschool', 'Sept/1995', 'July/1999', 'Hightschool Certification', 6, '2014-04-10');
INSERT INTO `tbl_school_formal_trainings` VALUES(93, 12, 'TMS, Addis Ababa Ethiopia', 'Highschool', 'Sept/1998', 'August/2003', 'Highschool Completion Certificate', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(94, 13, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(95, 14, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(96, 15, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(97, 16, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(98, 17, '', '', '', '', '', 6, '2014-04-11');
INSERT INTO `tbl_school_formal_trainings` VALUES(99, 18, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_school_formal_trainings` VALUES(100, 19, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_school_formal_trainings` VALUES(101, 20, '', '', '', '', '', 6, '2014-04-13');
INSERT INTO `tbl_school_formal_trainings` VALUES(102, 21, '', '', '', '', '', 6, '2014-04-16');
INSERT INTO `tbl_school_formal_trainings` VALUES(103, 22, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_school_formal_trainings` VALUES(104, 23, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_school_formal_trainings` VALUES(105, 24, '', '', '', '', '', 6, '2014-04-25');
INSERT INTO `tbl_school_formal_trainings` VALUES(106, 25, '', '', '', '', '', 6, '2014-05-01');
INSERT INTO `tbl_school_formal_trainings` VALUES(107, 4, 'undefined', 'best type', 'undefined', 'undefined', 'undefined', 6, '2014-05-05');
INSERT INTO `tbl_school_formal_trainings` VALUES(108, 4, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 6, '2014-05-05');
INSERT INTO `tbl_school_formal_trainings` VALUES(109, 6, 'Nifassilk Highschool, Addis Ababa Ethiopia', 'Highschool', 'Sept/1997', 'Aug/1999', 'Highschool Completion Certificate/Diploma', 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rate`
--

CREATE TABLE `tbl_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lower_boundary` float NOT NULL,
  `upper_boundary` float NOT NULL,
  `tax_rate_percentage` float NOT NULL,
  `other_deduction` float NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_tax_rate`
--

INSERT INTO `tbl_tax_rate` VALUES(1, 1, 650, 0.1, 15, 6, '2014-03-31');
INSERT INTO `tbl_tax_rate` VALUES(2, 651, 1400, 0.15, 47.5, 6, '2014-03-31');
INSERT INTO `tbl_tax_rate` VALUES(3, 1401, 2350, 0.2, 117.5, 6, '2014-03-31');
INSERT INTO `tbl_tax_rate` VALUES(4, 2351, 3550, 0.25, 235, 6, '2014-03-31');
INSERT INTO `tbl_tax_rate` VALUES(5, 3551, 5000, 0.3, 412.5, 6, '2014-03-31');
INSERT INTO `tbl_tax_rate` VALUES(6, 5001, 300000, 0.35, 662.5, 6, '2014-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `training_date` datetime NOT NULL,
  `training_course` varchar(100) NOT NULL,
  `cost` float NOT NULL,
  `company` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_training`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_training_assigned_employees`
--

CREATE TABLE `tbl_training_assigned_employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `training_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_training_assigned_employees`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_training_information`
--

CREATE TABLE `tbl_training_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `training_taken` varchar(80) NOT NULL,
  `place_of_training` varchar(200) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `year_of_training` varchar(100) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_training_information`
--

INSERT INTO `tbl_training_information` VALUES(8, 'Spring Frame Work Programming', 'Hilco', '2 months', '2010', 4);
INSERT INTO `tbl_training_information` VALUES(7, 'Programming with PHP', 'AAU', '2 month', '4 years', 3);
INSERT INTO `tbl_training_information` VALUES(9, 'OXD', 'Uganda', '1 week', '2009', 4);
INSERT INTO `tbl_training_information` VALUES(10, '---', '---', '---', '---', 5);
INSERT INTO `tbl_training_information` VALUES(11, '---', '---', '---', '---', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer`
--

CREATE TABLE `tbl_transfer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `transfered_from_division_id` int(11) NOT NULL,
  `transfered_to_division_id` int(11) NOT NULL,
  `transfered_from_department_id` int(11) NOT NULL,
  `transfered_to_department_id` int(11) NOT NULL,
  `transfer_detail` text NOT NULL,
  `transfer_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_transfer`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_translation`
--

CREATE TABLE `tbl_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `label_value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `label_id` (`label_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=154 ;

--
-- Dumping data for table `tbl_translation`
--

INSERT INTO `tbl_translation` VALUES(153, 4, 158, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(60) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` VALUES(6, 'Mahder Alemayehu', 'Administrator');
INSERT INTO `tbl_user` VALUES(5, 'Berhanu Teka', 'Data Clerk');
INSERT INTO `tbl_user` VALUES(7, 'Bukuto', 'Administrator');
INSERT INTO `tbl_user` VALUES(8, 'leki', 'Administrator');
INSERT INTO `tbl_user` VALUES(10, 'Test User', 'Administrator');
INSERT INTO `tbl_user` VALUES(11, 'Wondwossen Mulugeta', 'Administrator');
INSERT INTO `tbl_user` VALUES(12, 'Wude', 'Data Clerk');
INSERT INTO `tbl_user` VALUES(13, 'Bekele', 'Data Clerk');
INSERT INTO `tbl_user` VALUES(14, 'Bukuto Abe', 'Data Clerk');
INSERT INTO `tbl_user` VALUES(15, 'Test Person', 'Data Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacancy`
--

CREATE TABLE `tbl_vacancy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `sub_unit` varchar(255) NOT NULL,
  `hiring_manager` varchar(255) NOT NULL,
  `number_of_positions` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_vacancy`
--

INSERT INTO `tbl_vacancy` VALUES(4, 'job title', 'vacancy name', 'location', 'sub unit', 'hiring manager', 'number of positions', 'description', 6, '2014-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_who_is_tax_payer`
--

CREATE TABLE `tbl_who_is_tax_payer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `tax_payer` varchar(10) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_who_is_tax_payer`
--

INSERT INTO `tbl_who_is_tax_payer` VALUES(1, 16, 'School', 6, '2014-04-25');
INSERT INTO `tbl_who_is_tax_payer` VALUES(3, 8, 'School', 6, '2014-04-16');
INSERT INTO `tbl_who_is_tax_payer` VALUES(4, 22, 'Employee', 6, '2014-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_works_at`
--

CREATE TABLE `tbl_works_at` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) NOT NULL,
  `college_id` int(11) DEFAULT NULL,
  `fis_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `employement_date` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modification_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `college_id` (`college_id`),
  KEY `fis_id` (`fis_id`),
  KEY `department_id` (`department_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_works_at`
--

INSERT INTO `tbl_works_at` VALUES(1, 6, 1, 1, 10, '2014-03-01', 6, '2014-05-05');
INSERT INTO `tbl_works_at` VALUES(2, 7, 1, 1, 14, '2014-03-01', 6, '2014-03-04');
INSERT INTO `tbl_works_at` VALUES(3, 8, 1, 1, 10, '2014-03-02', 6, '2014-03-05');
INSERT INTO `tbl_works_at` VALUES(4, 1, 1, 1, 8, '2010-03-03', 6, '2014-03-04');
INSERT INTO `tbl_works_at` VALUES(5, 4, 1, 1, 10, '2003-03-12', 6, '2014-05-05');
INSERT INTO `tbl_works_at` VALUES(6, 5, 1, 1, 10, '2013-03-04', 6, '2014-03-03');
INSERT INTO `tbl_works_at` VALUES(7, 10, 1, 1, 2, '2014-04-06', 6, '2014-04-06');
INSERT INTO `tbl_works_at` VALUES(8, 11, 1, 1, 1, '2014-04-10', 6, '2014-04-10');
INSERT INTO `tbl_works_at` VALUES(9, 12, 1, 1, 1, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(10, 13, 1, 1, 1, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(11, 14, 1, 1, 1, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(12, 15, 1, 1, 3, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(13, 16, 1, 1, 3, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(14, 17, 1, 1, 4, '2014-04-11', 6, '2014-04-11');
INSERT INTO `tbl_works_at` VALUES(15, 18, 1, 1, 12, '2014-04-13', 6, '2014-04-13');
INSERT INTO `tbl_works_at` VALUES(16, 19, 1, 1, 10, '2014-04-13', 6, '2014-04-13');
INSERT INTO `tbl_works_at` VALUES(17, 20, 1, 1, 8, '2014-04-13', 6, '2014-04-13');
INSERT INTO `tbl_works_at` VALUES(18, 21, 1, 1, 1, '2014-04-16', 6, '2014-04-16');
INSERT INTO `tbl_works_at` VALUES(19, 22, 1, 1, 8, '2014-04-25', 6, '2014-04-25');
INSERT INTO `tbl_works_at` VALUES(20, 23, 1, 1, 11, '2014-04-25', 6, '2014-04-25');
INSERT INTO `tbl_works_at` VALUES(21, 24, 1, 1, 5, '2014-04-25', 6, '2014-04-25');
INSERT INTO `tbl_works_at` VALUES(22, 25, 1, 1, 8, '2014-05-01', 6, '2014-05-01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD CONSTRAINT `tbl_salary_ibfk_1` FOREIGN KEY (`pay_grade_id`) REFERENCES `tbl_pay_grade` (`id`),
  ADD CONSTRAINT `tbl_salary_ibfk_2` FOREIGN KEY (`pay_frequency_id`) REFERENCES `tbl_pay_frequency` (`id`);
