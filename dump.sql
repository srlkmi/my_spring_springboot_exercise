


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";






INSERT INTO `available_fields` (`ID`, `FIELD_NAME`, `FEED_TYPE_ID`, `DESCRIPTION`) VALUES
(1, 'Insurance Number', 3, 'Policy/Insurance Number'),
(2, 'Member First Name', 3, 'First Name of Member'),
(3, 'Member Middle Name', 3, 'Middle Name of Member\r\n'),
(4, 'Member Last Name', 3, 'Last Name of Member'),
(5, 'Member Name Suffix', 3, 'Name Suffix of Member such as Jr, Sr, I, II etc\r\n'),
(6, 'Member Birth Date', 3, 'Birth Date of Member - format YYYYMMDD'),
(7, 'Member Gender', 3, 'Gender of Member'),
(8, 'Member SSN', 3, 'Social Security Number of Member'),
(9, 'Member Benefit Plan', 3, 'Member\'s Medical/Benefit Plan'),
(10, 'Address Line 1', 3, 'First Line of Member Address'),
(11, 'Address Line 2', 3, 'Second Line of Member Address'),
(12, 'City', 3, 'City in which Member Lives'),
(13, 'State', 3, 'State in which Member Lives'),
(14, 'Zip Code', 3, 'Zip Code of Area in which Member Lives'),
(15, 'Phone Number', 3, 'Telephone number of Member'),
(16, 'Coverage start date', 3, 'Start date of Coverage - Date when Insurance became effective for the member -  format YYYYMMDD'),
(17, 'Coverage end date', 3, 'End date of Coverage - Date when Insurance ended for the member -  format YYYYMMDD'),
(18, 'Provider Identifier', 3, 'Provider Identifier - Provided associated to this member'),
(19, 'Member first insurance number', 3, 'First insurance number that Member had'),
(20, 'Member first insurance policy number', 3, 'First insurance policy number that Member had'),
(21, 'Member county', 3, 'County in which Member Lives\r\n');




INSERT INTO `feed_type` (`ID`, `TYPE_NAME`) VALUES
(1, 'General'),
(2, 'Claim'),
(3, 'Eligibility');
