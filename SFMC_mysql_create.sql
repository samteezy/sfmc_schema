CREATE TABLE `_Subscribers` (
	`SubscriberID` INT NOT NULL UNIQUE,
	`SubscriberKey` varchar(254) NOT NULL UNIQUE,
	`DateUndeliverable` DATETIME,
	`DateJoined` DATETIME,
	`DateUnsubscribed` DATETIME,
	`Domain` varchar(254),
	`EmailAddress` varchar(254) NOT NULL,
	`BounceCount` INT(254) NOT NULL,
	`SubscriberType` varchar(100) NOT NULL,
	`Status` varchar(12),
	`Locale` INT,
	PRIMARY KEY (`SubscriberKey`)
);

CREATE TABLE `_Job` (
	`JobID` INT NOT NULL,
	`EmailID` INT,
	`AccountID` INT,
	`AccountUserID` INT,
	`FromName` varchar(130),
	`FromEmail` varchar(100),
	`SchedTime` DATETIME,
	`PickupTime` DATETIME,
	`DeliveredTime` DATETIME,
	`EventID` varchar(50),
	`IsMultipart` BOOLEAN NOT NULL,
	`JobType` varchar(50),
	`JobStatus` varchar(50),
	`ModifiedBy` INT,
	`ModifiedDate` DATETIME,
	`EmailName` varchar(100),
	`EmailSubject` varchar(200),
	`IsWrapped` BOOLEAN NOT NULL,
	`TestEmailAddr` varchar(128),
	`Category` varchar(100) NOT NULL,
	`BccEmail` varchar(100),
	`OriginalSchedTime` DATETIME,
	`CreatedDate` DATETIME NOT NULL,
	`CharacterSet` varchar(30),
	`IPAddress` varchar(50),
	`SalesForceTotalSubscriberCount` INT NOT NULL,
	`SalesForceErrorSubscriberCount` INT NOT NULL,
	`SendType` varchar(128) NOT NULL,
	`DynamicEmailSubject` varchar(max),
	`SuppressTracking` BOOLEAN NOT NULL,
	`SendClassificationType` varchar(32),
	`SendClassification` varchar(36),
	`ResolveLinksWithCurrentData` BOOLEAN NOT NULL,
	`EmailSendDefinition` varchar(36),
	`DeduplicateByEmail` BOOLEAN NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36),
	PRIMARY KEY (`JobID`)
);

CREATE TABLE `_Bounce` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`BounceCategoryID` INT NOT NULL,
	`BounceCategory` varchar(50),
	`BounceSubcategoryID` INT,
	`BounceSubcategory` varchar(50),
	`BounceTypeID` INT NOT NULL,
	`BounceType` varchar(50),
	`SMTPBounceReason` varchar(max),
	`SMTPMessage` varchar(max),
	`SMTPCode` INT,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_BusinessUnitUnsubscribes` (
	`BusinessUnitID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` varchar(254) NOT NULL,
	`UnsubDateUTC` DATETIME,
	`UnsubReason` varchar(100)
);

CREATE TABLE `_Unsubscribe` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_Click` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`URL` varchar(900),
	`LinkName` varchar(1024),
	`LinkContent` varchar(max),
	`IsUnique` BOOLEAN NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_Complaint` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL
);

CREATE TABLE `_Coupon` (
	`Name` varchar(128) NOT NULL,
	`ExternalKey` varchar(36) NOT NULL UNIQUE,
	`Description` varchar NOT NULL,
	`BeginDate` DATETIME NOT NULL,
	`ExpirationDate` DATETIME NOT NULL,
	PRIMARY KEY (`ExternalKey`)
);

CREATE TABLE `_EnterpriseAttribute` (
	`_SubscriberID` INT NOT NULL
);

CREATE TABLE `_FTAF` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`TransactionTime` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_MobileLineAddressContactSubscriptionView` (
	`ChannelID` varchar NOT NULL,
	`ContactID` INT NOT NULL,
	`ContactKey` varchar NOT NULL,
	`AddressID` varchar NOT NULL,
	`IsActive` BOOLEAN NOT NULL,
	`CreatedDate` DATETIME NOT NULL,
	`ModifiedDate` DATETIME
);

CREATE TABLE `_MobileLineOrphanContactView` (
	`ContactID` INT NOT NULL,
	`ContactKey` varchar NOT NULL,
	`AddressID` varchar NOT NULL,
	`CreatedDate` DATETIME NOT NULL
);

CREATE TABLE `_Journey` (
	`VersionID` varchar(36) NOT NULL UNIQUE,
	`JourneyID` varchar(36) NOT NULL,
	`JourneyName` varchar(200) NOT NULL,
	`VersionNumber` INT NOT NULL,
	`CreatedDate` DATETIME NOT NULL,
	`LastPublishedDate` DATETIME,
	`ModifiedDate` DATETIME NOT NULL,
	`JourneyStatus` varchar(100) NOT NULL
);

CREATE TABLE `_JourneyActivity` (
	`VersionID` varchar(36) NOT NULL,
	`ActivityID` varchar(36) NOT NULL UNIQUE,
	`ActivityName` varchar(200),
	`ActivityExternalKey` varchar(200) NOT NULL UNIQUE,
	`JourneyActivityObjectID` varchar(36),
	`ActivityType` varchar(512),
	PRIMARY KEY (`ActivityExternalKey`)
);

CREATE TABLE `_ListSubscribers` (
	`AddedBy` INT NOT NULL,
	`AddMethod` varchar(17) NOT NULL,
	`CreatedDate` DATETIME,
	`DateUnsubscribed` DATETIME,
	`EmailAddress` varchar(254),
	`ListID` INT,
	`ListName` varchar(50),
	`ListType` varchar(16) NOT NULL,
	`Status` varchar(12),
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` varchar(254) NOT NULL,
	`SubscriberType` varchar(100)
);

CREATE TABLE `_Open` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_Sent` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`TriggererSendDefinitionObjectID` varchar(36),
	`TriggeredSendCustomerKey` varchar(36)
);

CREATE TABLE `_SurveyResponse` (
	`AccountID` INT NOT NULL,
	`OYBAccountID` INT,
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` INT NOT NULL,
	`EventDate` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar(128) NOT NULL,
	`SurveyID` INT NOT NULL,
	`SurveyName` varchar(100) NOT NULL,
	`QuestionID` INT NOT NULL,
	`QuestionName` varchar(50) NOT NULL,
	`Question` varchar(4000) NOT NULL,
	`AnswerID` INT NOT NULL,
	`AnswerName` varchar(4000),
	`Answer` varchar(4000),
	`AnswerData` varchar
);

CREATE TABLE `_SMSMessageTracking` (
	`MobileMessageTrackingID` INT NOT NULL UNIQUE,
	`EID` INT,
	`MID` INT,
	`Mobile` varchar(15) NOT NULL,
	`MessageID` INT NOT NULL,
	`KeywordID` varchar(36),
	`CodeID` varchar(36),
	`ConversationID` varchar(36),
	`CampaignID` INT,
	`Sent` BOOLEAN NOT NULL,
	`Delivered` BOOLEAN,
	`Undelivered` BOOLEAN,
	`Outbound` BOOLEAN,
	`Inbound` BOOLEAN,
	`CreateDateTime` DATETIME NOT NULL,
	`ModifiedDateTime` DATETIME NOT NULL,
	`ActionDateTime` DATETIME NOT NULL,
	`MessageText` varchar(160),
	`IsTest` BOOLEAN,
	`MobileMessageRecurrenceID` INT,
	`ResponseToMobileMessageTrackingID` INT,
	`IsValid` BOOLEAN,
	`InvalidationCode` INT,
	`SendID` INT,
	`SendSplitID` INT,
	`SendSegmentID` INT,
	`SendJobID` INT,
	`SendGroupID` INT,
	`SendPersonID` INT,
	`SubscriberID` INT,
	`SubscriberKey` varchar(254),
	`SMSStandardStatusCodeId` INT,
	`Description` varchar,
	`Name` varchar,
	`ShortCode` varchar,
	`SharedKeyword` varchar,
	`Ordinal` INT,
	`FromName` varchar(11),
	`JBActivityID` varchar(36),
	`JBDefinitionID` varchar(36)
);

CREATE TABLE `_SMSSubscriptionLog` (
	`LogDate` DATETIME,
	`SubscriberKey` varchar(254) NOT NULL,
	`MobileSubscriptionID` INT NOT NULL,
	`SubscriptionDefinitionID` varchar(36) NOT NULL,
	`MobileNumber` varchar(15) NOT NULL,
	`OptOutStatusID` INT,
	`OptOutMethodID` INT,
	`OptOutDate` DATETIME,
	`OptInStatusID` INT NOT NULL,
	`OptInMethodID` INT,
	`OptInDate` DATETIME,
	`Source` INT,
	`CreatedDate` DATETIME NOT NULL,
	`ModifiedDate` DATETIME NOT NULL
);

CREATE TABLE `_UndeliverableSms` (
	`MobileNumber` varchar(15) NOT NULL,
	`Undeliverable` BOOLEAN NOT NULL,
	`BounceCount` INT NOT NULL,
	`FirstBounceDate` DATETIME NOT NULL,
	`HoldDate` DATETIME
);

CREATE TABLE `_SocialNetworkTracking` (
	`SubscriberID` INT NOT NULL,
	`SubscriberKey` varchar(254) NOT NULL,
	`ListID` INT NOT NULL,
	`BatchID` INT NOT NULL,
	`SocialSharingSiteID` INT NOT NULL,
	`SiteName` varchar NOT NULL,
	`CountryCode` varchar NOT NULL,
	`PublishedSocialContentID` varchar NOT NULL,
	`RegionTitle` varchar NOT NULL,
	`RegionDescription` varchar,
	`RegionHTML` varchar,
	`ContentRegionID` varchar,
	`OYBMemberID` INT,
	`TransactionTime` DATETIME NOT NULL,
	`IsUnique` BOOLEAN NOT NULL,
	`Domain` varchar NOT NULL,
	`PublishedSocialContentStatusID` varchar NOT NULL,
	`ShortCode` varchar NOT NULL,
	`PublishTime` DATETIME NOT NULL
);

CREATE TABLE `_SocialNetworkImpressions` (
	`JobID` INT NOT NULL,
	`ListID` INT NOT NULL,
	`RegionTitle` varchar NOT NULL,
	`RegionDescription` varchar,
	`RegionHTML` varchar,
	`ContentRegionID` varchar,
	`SocialSharingSiteID` INT NOT NULL,
	`SiteName` varchar NOT NULL,
	`CountryCode` varchar NOT NULL,
	`PublishedSocialContentStatusID` varchar NOT NULL,
	`ShortCode` varchar NOT NULL,
	`PublishTime` DATETIME NOT NULL,
	`ReferringURL` varchar,
	`IPAddress` varchar(50),
	`TransactionTime` DATETIME NOT NULL,
	`PublishTime` DATETIME NOT NULL
);

CREATE TABLE `_MobileAddress` (
	`_ContactID` INT NOT NULL,
	`_MobileNumber` varchar(15) NOT NULL,
	`_Status` varchar,
	`_Source` varchar,
	`_SourceObjectId` varchar(200),
	`_Priority` varchar DEFAULT '1',
	`_Channel` varchar(20),
	`_CarrierId` varchar NOT NULL,
	`_CountryCode` varchar(2) NOT NULL,
	`_CreatedDate` DATETIME NOT NULL,
	`_CreatedBy` varchar,
	`_ModifiedDate` DATETIME NOT NULL,
	`_ModifiedBy` varchar,
	`_City` varchar(200),
	`_State` varchar(200),
	`_ZipCode` varchar(20),
	`_FirstName` varchar(100),
	`_LastName` varchar(100),
	`_UTCOffset` DECIMAL DEFAULT '0',
	`_IsHonorDST` BOOLEAN
);

CREATE TABLE `_PushTag` (
	`_DeviceID` TEXT(200) NOT NULL,
	`_APID` TEXT(38) NOT NULL,
	`_Value` TEXT(128),
	`_CreatedDate` DATETIME NOT NULL,
	`_CreatedBy` varchar,
	`_ModifiedDate` DATETIME NOT NULL,
	`_ModifiedBy` varchar
);

CREATE TABLE `_PushAddress` (
	`_ContactID` INT NOT NULL,
	`_DeviceID` varchar(200) NOT NULL,
	`_APID` varchar(38) NOT NULL,
	`_Status` varchar,
	`_Source` varchar,
	`_SourceObjectId` varchar(200),
	`_Platform` varchar(100),
	`_PlatformVersion` varchar(100),
	`_Alias` varchar(100),
	`_OptOutStatusID` INT,
	`_OptOutMethodID` INT,
	`_OptOutDate` DATETIME,
	`_OptInStatusID` INT NOT NULL,
	`_OptInMethodID` varchar,
	`_OptInDate` DATETIME,
	`_Channel` varchar(20),
	`_CreatedDate` DATETIME NOT NULL,
	`_CreatedBy` varchar,
	`_ModifiedDate` DATETIME NOT NULL,
	`_ModifiedBy` varchar,
	`_City` varchar(200),
	`_State` varchar(200),
	`_ZipCode` varchar(200),
	`_FirstName` varchar(200),
	`_LastName` varchar(200),
	`_UTCOffset` DECIMAL DEFAULT '0',
	`_IsHonorDST` BOOLEAN,
	`_SystemToken` varchar(4000),
	`_ProviderToken` varchar(200),
	`_Badge` INT,
	`_LocationEnabled` BOOLEAN,
	`_TimeZone` varchar(50),
	`_Device` varchar(100),
	`_HardwareId` varchar(100),
	`_DeviceType` varchar(20)
);

ALTER TABLE `_Bounce` ADD CONSTRAINT `_Bounce_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Bounce` ADD CONSTRAINT `_Bounce_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Bounce` ADD CONSTRAINT `_Bounce_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_BusinessUnitUnsubscribes` ADD CONSTRAINT `_BusinessUnitUnsubscribes_fk0` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_BusinessUnitUnsubscribes` ADD CONSTRAINT `_BusinessUnitUnsubscribes_fk1` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_Unsubscribe` ADD CONSTRAINT `_Unsubscribe_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Unsubscribe` ADD CONSTRAINT `_Unsubscribe_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Unsubscribe` ADD CONSTRAINT `_Unsubscribe_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_Click` ADD CONSTRAINT `_Click_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Click` ADD CONSTRAINT `_Click_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Click` ADD CONSTRAINT `_Click_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_Complaint` ADD CONSTRAINT `_Complaint_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Complaint` ADD CONSTRAINT `_Complaint_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Complaint` ADD CONSTRAINT `_Complaint_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_EnterpriseAttribute` ADD CONSTRAINT `_EnterpriseAttribute_fk0` FOREIGN KEY (`_SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_FTAF` ADD CONSTRAINT `_FTAF_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_FTAF` ADD CONSTRAINT `_FTAF_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_FTAF` ADD CONSTRAINT `_FTAF_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_JourneyActivity` ADD CONSTRAINT `_JourneyActivity_fk0` FOREIGN KEY (`VersionID`) REFERENCES `_Journey`(`VersionID`);

ALTER TABLE `_ListSubscribers` ADD CONSTRAINT `_ListSubscribers_fk0` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_ListSubscribers` ADD CONSTRAINT `_ListSubscribers_fk1` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_Open` ADD CONSTRAINT `_Open_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Open` ADD CONSTRAINT `_Open_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Open` ADD CONSTRAINT `_Open_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_Sent` ADD CONSTRAINT `_Sent_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_Sent` ADD CONSTRAINT `_Sent_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_Sent` ADD CONSTRAINT `_Sent_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_SurveyResponse` ADD CONSTRAINT `_SurveyResponse_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_SurveyResponse` ADD CONSTRAINT `_SurveyResponse_fk1` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_SurveyResponse` ADD CONSTRAINT `_SurveyResponse_fk2` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_SMSMessageTracking` ADD CONSTRAINT `_SMSMessageTracking_fk0` FOREIGN KEY (`Mobile`) REFERENCES `_MobileAddress`(`_MobileNumber`);

ALTER TABLE `_SocialNetworkTracking` ADD CONSTRAINT `_SocialNetworkTracking_fk0` FOREIGN KEY (`SubscriberID`) REFERENCES `_Subscribers`(`SubscriberID`);

ALTER TABLE `_SocialNetworkTracking` ADD CONSTRAINT `_SocialNetworkTracking_fk1` FOREIGN KEY (`SubscriberKey`) REFERENCES `_Subscribers`(`SubscriberKey`);

ALTER TABLE `_SocialNetworkImpressions` ADD CONSTRAINT `_SocialNetworkImpressions_fk0` FOREIGN KEY (`JobID`) REFERENCES `_Job`(`JobID`);

ALTER TABLE `_PushTag` ADD CONSTRAINT `_PushTag_fk0` FOREIGN KEY (`_DeviceID`) REFERENCES `_PushAddress`(`_DeviceID`);



























