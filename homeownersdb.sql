-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2025 at 05:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeownersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `Id` int(11) NOT NULL,
  `Title` longtext NOT NULL,
  `Content` longtext NOT NULL,
  `PostedDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`Id`, `Title`, `Content`, `PostedDate`) VALUES
(1, 'I don\'t Know', 'Wako kabalo', '2025-02-26 18:49:52.706047');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetroles`
--

INSERT INTO `aspnetroles` (`Id`, `Name`, `NormalizedName`, `ConcurrencyStamp`) VALUES
('657a9d08-5df5-42d1-93a9-579dfe979652', 'Admin', 'ADMIN', NULL),
('9509cee1-cd51-4b58-b8d8-fce8cf4ab72d', 'Homeowner', 'HOMEOWNER', NULL),
('b2a28699-6abc-47c8-84e6-66abffa7bb23', 'Staff', 'STAFF', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetuserroles`
--

INSERT INTO `aspnetuserroles` (`UserId`, `RoleId`) VALUES
('0a44de8c-0966-45f4-ae4d-dc345dbfd4c8', '9509cee1-cd51-4b58-b8d8-fce8cf4ab72d'),
('aac5ca4e-fa31-4796-bb3d-44af634a3584', '9509cee1-cd51-4b58-b8d8-fce8cf4ab72d');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` varchar(255) NOT NULL,
  `FullName` longtext NOT NULL,
  `Address` longtext NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `BlockAndLotNumber` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspnetusers`
--

INSERT INTO `aspnetusers` (`Id`, `FullName`, `Address`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`, `BlockAndLotNumber`) VALUES
('0a44de8c-0966-45f4-ae4d-dc345dbfd4c8', 'AMBOTLANG', 'skina japan', 'ambot@gmail.com', 'AMBOT@GMAIL.COM', 'ambot@gmail.com', 'AMBOT@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEKxFdzkQhg+BAXbWieob28FUwOuhPKgPPZiHg901Ib2RMg9NFP9QkJ0o8FmiN0LCcA==', 'RUHDGPUVXYWWQ7ROGKR6X6S2D3SI7TUU', '20a84299-c884-47ed-b28f-ba62d98faec9', NULL, 0, 0, NULL, 1, 0, ''),
('22e7c9c7-352b-4645-bde2-7dcce0d12ea9', 'Christopher Kyle Balberos', 'Tipolo, Mandaue City', 'Christopherkyle@gmail.com', 'CHRISTOPHERKYLE@GMAIL.COM', 'Christopherkyle@gmail.com', 'CHRISTOPHERKYLE@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEEHUMTNk5spRuaEKaH+RPcTBSbxYQUJAYaMg1mhuS54p5xRFOf0tHTcdM8MFAzCkOw==', '7MESS4CQA2XMTFHD2TYPRY7EJ4ELDTKR', '5443e7ab-0501-4ca7-95f8-e4caac0bd52b', NULL, 0, 0, NULL, 1, 0, ''),
('3aba0cdd-42d1-4c01-a21f-69f617ef2c2e', 'Admin', 'Subdivision Office', 'admin@subdivision.com', 'ADMIN@SUBDIVISION.COM', 'admin@subdivision.com', 'ADMIN@SUBDIVISION.COM', 0, 'AQAAAAIAAYagAAAAEHFCbQHrbZ6U8yqQlkSOWTjKm0gXi5ajuCqx3IrkeQ7EGNi1u0/s9+mEY61qMCKZtQ==', 'ZO7IYVDDCDETLRBINXTCFACHHYMSVQWH', '675639c6-0866-4363-af72-aab9509ae1f5', NULL, 0, 0, NULL, 1, 0, ''),
('886376ca-e6bd-40a5-b095-06dafec081ec', 'Staff Member', 'Subdivision Office', 'staff@subdivision.com', 'STAFF@SUBDIVISION.COM', 'staff@subdivision.com', 'STAFF@SUBDIVISION.COM', 0, 'AQAAAAIAAYagAAAAEHSnjSBa6emH+fww46JZw72JO2C87OveCnIvWXLkjd396Zzls4DhKxZwR43GO10lDA==', 'CLGVOC3YD3T5B2CCBIMG2WZ35ROMXRNE', 'fe3c6a3a-9533-461b-8ee0-a5312bf1aaef', NULL, 0, 0, NULL, 1, 0, ''),
('aac5ca4e-fa31-4796-bb3d-44af634a3584', 'William Marababol Balberos', 'Jayme Compound, Tipolo Mandaue City', 'balberosyam@gmail.com', 'BALBEROSYAM@GMAIL.COM', 'balberosyam@gmail.com', 'BALBEROSYAM@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAENkkmd1zrLp9GgX6zDjLG4IxUdQnfb9YsQL1tsEYHoISZ0eDr7/oqcJSd7K6tGhC1g==', 'CQTZJ5FO5DHNZQRDFAMTTVXGWAFCJHPE', 'e7f69718-4e2f-42ac-9468-98fb34ca0444', NULL, 0, 0, NULL, 1, 0, 'block 7 lot 23'),
('c24a15b4-b355-4d27-9304-8f32fca50479', 'Andrian Balberos', 'Tipolo, Mandaue City', 'balberos09123@gmail.com', 'BALBEROS09123@GMAIL.COM', 'balberos09123@gmail.com', 'BALBEROS09123@GMAIL.COM', 0, 'AQAAAAIAAYagAAAAEA+sFbHlfdQJPHJgtTfW9SZffKoGt9Je0GTSeYerz0DNquEFzIg9EZaJmX0kmIBNZQ==', '2REID6ZDIWME7CPXRPMMMGZLXFCMT3BK', '11cc8a2c-76d6-469d-95fd-5ea99ccad025', NULL, 0, 0, NULL, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20250225132008_InitialCreate', '9.0.2'),
('20250225140311_AddAnnouncementsTable', '9.0.2'),
('20250225142912_CreateAnnouncementsTable', '9.0.2'),
('20250226111807_RemoveRoleColumn', '9.0.2'),
('20250226131220_UpdateSchema', '9.0.2'),
('20250226133120_FixAspNetUsers', '9.0.2'),
('20250226133943_InitialCreate', '9.0.2'),
('20250226135212_AddRoleColumn', '9.0.2'),
('20250226140555_AddRoleColumnToUsers', '9.0.2'),
('20250226144152_AddRoleToApplicationUser', '9.0.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
