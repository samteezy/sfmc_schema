CREATE TABLE "public._Subscribers" (
	"SubscriberID" integer NOT NULL UNIQUE,
	"SubscriberKey" varchar(254) NOT NULL UNIQUE,
	"DateUndeliverable" DATETIME,
	"DateJoined" DATETIME,
	"DateUnsubscribed" DATETIME,
	"Domain" varchar(254),
	"EmailAddress" varchar(254) NOT NULL,
	"BounceCount" integer NOT NULL,
	"SubscriberType" varchar(100) NOT NULL,
	"Status" varchar(12),
	"Locale" integer,
	CONSTRAINT "_Subscribers_pk" PRIMARY KEY ("SubscriberKey")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Job" (
	"JobID" integer NOT NULL,
	"EmailID" integer,
	"AccountID" integer,
	"AccountUserID" integer,
	"FromName" varchar(130),
	"FromEmail" varchar(100),
	"SchedTime" DATETIME,
	"PickupTime" DATETIME,
	"DeliveredTime" DATETIME,
	"EventID" varchar(50),
	"IsMultipart" BOOLEAN NOT NULL,
	"JobType" varchar(50),
	"JobStatus" varchar(50),
	"ModifiedBy" integer,
	"ModifiedDate" DATETIME,
	"EmailName" varchar(100),
	"EmailSubject" varchar(200),
	"IsWrapped" BOOLEAN NOT NULL,
	"TestEmailAddr" varchar(128),
	"Category" varchar(100) NOT NULL,
	"BccEmail" varchar(100),
	"OriginalSchedTime" DATETIME,
	"CreatedDate" DATETIME NOT NULL,
	"CharacterSet" varchar(30),
	"IPAddress" varchar(50),
	"SalesForceTotalSubscriberCount" integer NOT NULL,
	"SalesForceErrorSubscriberCount" integer NOT NULL,
	"SendType" varchar(128) NOT NULL,
	"DynamicEmailSubject" varchar(max),
	"SuppressTracking" BOOLEAN NOT NULL,
	"SendClassificationType" varchar(32),
	"SendClassification" varchar(36),
	"ResolveLinksWithCurrentData" BOOLEAN NOT NULL,
	"EmailSendDefinition" varchar(36),
	"DeduplicateByEmail" BOOLEAN NOT NULL,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36),
	CONSTRAINT "_Job_pk" PRIMARY KEY ("JobID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Bounce" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"BounceCategoryID" integer NOT NULL,
	"BounceCategory" varchar(50),
	"BounceSubcategoryID" integer,
	"BounceSubcategory" varchar(50),
	"BounceTypeID" integer NOT NULL,
	"BounceType" varchar(50),
	"SMTPBounceReason" varchar(max),
	"SMTPMessage" varchar(max),
	"SMTPCode" integer,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._BusinessUnitUnsubscribes" (
	"BusinessUnitID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"UnsubDateUTC" DATETIME,
	"UnsubReason" varchar(100)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Unsubscribe" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Click" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"URL" varchar(900),
	"LinkName" varchar(1024),
	"LinkContent" varchar(max),
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Complaint" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Coupon" (
	"Name" varchar(128) NOT NULL,
	"ExternalKey" varchar(36) NOT NULL UNIQUE,
	"Description" varchar NOT NULL,
	"BeginDate" DATETIME NOT NULL,
	"ExpirationDate" DATETIME NOT NULL,
	CONSTRAINT "_Coupon_pk" PRIMARY KEY ("ExternalKey")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._EnterpriseAttribute" (
	"_SubscriberID" integer NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._FTAF" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"TransactionTime" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._MobileLineAddressContactSubscriptionView" (
	"ChannelID" varchar NOT NULL,
	"ContactID" integer NOT NULL,
	"ContactKey" varchar NOT NULL,
	"AddressID" varchar NOT NULL,
	"IsActive" BOOLEAN NOT NULL,
	"CreatedDate" DATETIME NOT NULL,
	"ModifiedDate" DATETIME
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._MobileLineOrphanContactView" (
	"ContactID" integer NOT NULL,
	"ContactKey" varchar NOT NULL,
	"AddressID" varchar NOT NULL,
	"CreatedDate" DATETIME NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Journey" (
	"VersionID" varchar(36) NOT NULL UNIQUE,
	"JourneyID" varchar(36) NOT NULL,
	"JourneyName" varchar(200) NOT NULL,
	"VersionNumber" integer NOT NULL,
	"CreatedDate" DATETIME NOT NULL,
	"LastPublishedDate" DATETIME,
	"ModifiedDate" DATETIME NOT NULL,
	"JourneyStatus" varchar(100) NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._JourneyActivity" (
	"VersionID" varchar(36) NOT NULL,
	"ActivityID" varchar(36) NOT NULL UNIQUE,
	"ActivityName" varchar(200),
	"ActivityExternalKey" varchar(200) NOT NULL UNIQUE,
	"JourneyActivityObjectID" varchar(36),
	"ActivityType" varchar(512),
	CONSTRAINT "_JourneyActivity_pk" PRIMARY KEY ("ActivityExternalKey")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._ListSubscribers" (
	"AddedBy" integer NOT NULL,
	"AddMethod" varchar(17) NOT NULL,
	"CreatedDate" DATETIME,
	"DateUnsubscribed" DATETIME,
	"EmailAddress" varchar(254),
	"ListID" integer,
	"ListName" varchar(50),
	"ListType" varchar(16) NOT NULL,
	"Status" varchar(12),
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"SubscriberType" varchar(100)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Open" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._Sent" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"TriggererSendDefinitionObjectID" varchar(36),
	"TriggeredSendCustomerKey" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._SurveyResponse" (
	"AccountID" integer NOT NULL,
	"OYBAccountID" integer,
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"EventDate" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar(128) NOT NULL,
	"SurveyID" integer NOT NULL,
	"SurveyName" varchar(100) NOT NULL,
	"QuestionID" integer NOT NULL,
	"QuestionName" varchar(50) NOT NULL,
	"Question" varchar(4000) NOT NULL,
	"AnswerID" integer NOT NULL,
	"AnswerName" varchar(4000),
	"Answer" varchar(4000),
	"AnswerData" varchar
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._SMSMessageTracking" (
	"MobileMessageTrackingID" integer NOT NULL UNIQUE,
	"EID" integer,
	"MID" integer,
	"Mobile" varchar(15) NOT NULL,
	"MessageID" integer NOT NULL,
	"KeywordID" varchar(36),
	"CodeID" varchar(36),
	"ConversationID" varchar(36),
	"CampaignID" integer,
	"Sent" BOOLEAN NOT NULL,
	"Delivered" BOOLEAN,
	"Undelivered" BOOLEAN,
	"Outbound" BOOLEAN,
	"Inbound" BOOLEAN,
	"CreateDateTime" DATETIME NOT NULL,
	"ModifiedDateTime" DATETIME NOT NULL,
	"ActionDateTime" DATETIME NOT NULL,
	"MessageText" varchar(160),
	"IsTest" BOOLEAN,
	"MobileMessageRecurrenceID" integer,
	"ResponseToMobileMessageTrackingID" integer,
	"IsValid" BOOLEAN,
	"InvalidationCode" integer,
	"SendID" integer,
	"SendSplitID" integer,
	"SendSegmentID" integer,
	"SendJobID" integer,
	"SendGroupID" integer,
	"SendPersonID" integer,
	"SubscriberID" integer,
	"SubscriberKey" varchar(254),
	"SMSStandardStatusCodeId" integer,
	"Description" varchar,
	"Name" varchar,
	"ShortCode" varchar,
	"SharedKeyword" varchar,
	"Ordinal" integer,
	"FromName" varchar(11),
	"JBActivityID" varchar(36),
	"JBDefinitionID" varchar(36)
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._SMSSubscriptionLog" (
	"LogDate" DATETIME,
	"SubscriberKey" varchar(254) NOT NULL,
	"MobileSubscriptionID" integer NOT NULL,
	"SubscriptionDefinitionID" varchar(36) NOT NULL,
	"MobileNumber" varchar(15) NOT NULL,
	"OptOutStatusID" integer,
	"OptOutMethodID" integer,
	"OptOutDate" DATETIME,
	"OptInStatusID" integer NOT NULL,
	"OptInMethodID" integer,
	"OptInDate" DATETIME,
	"Source" integer,
	"CreatedDate" DATETIME NOT NULL,
	"ModifiedDate" DATETIME NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._UndeliverableSms" (
	"MobileNumber" varchar(15) NOT NULL,
	"Undeliverable" BOOLEAN NOT NULL,
	"BounceCount" integer NOT NULL,
	"FirstBounceDate" DATETIME NOT NULL,
	"HoldDate" DATETIME
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._SocialNetworkTracking" (
	"SubscriberID" integer NOT NULL,
	"SubscriberKey" varchar(254) NOT NULL,
	"ListID" integer NOT NULL,
	"BatchID" integer NOT NULL,
	"SocialSharingSiteID" integer NOT NULL,
	"SiteName" varchar NOT NULL,
	"CountryCode" varchar NOT NULL,
	"PublishedSocialContentID" varchar NOT NULL,
	"RegionTitle" varchar NOT NULL,
	"RegionDescription" varchar,
	"RegionHTML" varchar,
	"ContentRegionID" varchar,
	"OYBMemberID" integer,
	"TransactionTime" DATETIME NOT NULL,
	"IsUnique" BOOLEAN NOT NULL,
	"Domain" varchar NOT NULL,
	"PublishedSocialContentStatusID" varchar NOT NULL,
	"ShortCode" varchar NOT NULL,
	"PublishTime" DATETIME NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._SocialNetworkImpressions" (
	"JobID" integer NOT NULL,
	"ListID" integer NOT NULL,
	"RegionTitle" varchar NOT NULL,
	"RegionDescription" varchar,
	"RegionHTML" varchar,
	"ContentRegionID" varchar,
	"SocialSharingSiteID" integer NOT NULL,
	"SiteName" varchar NOT NULL,
	"CountryCode" varchar NOT NULL,
	"PublishedSocialContentStatusID" varchar NOT NULL,
	"ShortCode" varchar NOT NULL,
	"PublishTime" DATETIME NOT NULL,
	"ReferringURL" varchar,
	"IPAddress" varchar(50),
	"TransactionTime" DATETIME NOT NULL,
	"PublishTime" DATETIME NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._MobileAddress" (
	"_ContactID" integer NOT NULL,
	"_MobileNumber" varchar(15) NOT NULL,
	"_Status" varchar,
	"_Source" varchar,
	"_SourceObjectId" varchar(200),
	"_Priority" varchar DEFAULT '1',
	"_Channel" varchar(20),
	"_CarrierId" varchar NOT NULL,
	"_CountryCode" varchar(2) NOT NULL,
	"_CreatedDate" DATETIME NOT NULL,
	"_CreatedBy" varchar,
	"_ModifiedDate" DATETIME NOT NULL,
	"_ModifiedBy" varchar,
	"_City" varchar(200),
	"_State" varchar(200),
	"_ZipCode" varchar(20),
	"_FirstName" varchar(100),
	"_LastName" varchar(100),
	"_UTCOffset" DECIMAL DEFAULT '0',
	"_IsHonorDST" BOOLEAN
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._PushTag" (
	"_DeviceID" TEXT(200) NOT NULL,
	"_APID" TEXT(38) NOT NULL,
	"_Value" TEXT(128),
	"_CreatedDate" DATETIME NOT NULL,
	"_CreatedBy" varchar,
	"_ModifiedDate" DATETIME NOT NULL,
	"_ModifiedBy" varchar
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public._PushAddress" (
	"_ContactID" integer NOT NULL,
	"_DeviceID" varchar(200) NOT NULL,
	"_APID" varchar(38) NOT NULL,
	"_Status" varchar,
	"_Source" varchar,
	"_SourceObjectId" varchar(200),
	"_Platform" varchar(100),
	"_PlatformVersion" varchar(100),
	"_Alias" varchar(100),
	"_OptOutStatusID" integer,
	"_OptOutMethodID" integer,
	"_OptOutDate" DATETIME,
	"_OptInStatusID" integer NOT NULL,
	"_OptInMethodID" varchar,
	"_OptInDate" DATETIME,
	"_Channel" varchar(20),
	"_CreatedDate" DATETIME NOT NULL,
	"_CreatedBy" varchar,
	"_ModifiedDate" DATETIME NOT NULL,
	"_ModifiedBy" varchar,
	"_City" varchar(200),
	"_State" varchar(200),
	"_ZipCode" varchar(200),
	"_FirstName" varchar(200),
	"_LastName" varchar(200),
	"_UTCOffset" DECIMAL DEFAULT '0',
	"_IsHonorDST" BOOLEAN,
	"_SystemToken" varchar(4000),
	"_ProviderToken" varchar(200),
	"_Badge" integer,
	"_LocationEnabled" BOOLEAN,
	"_TimeZone" varchar(50),
	"_Device" varchar(100),
	"_HardwareId" varchar(100),
	"_DeviceType" varchar(20)
) WITH (
  OIDS=FALSE
);





ALTER TABLE "_Bounce" ADD CONSTRAINT "_Bounce_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Bounce" ADD CONSTRAINT "_Bounce_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Bounce" ADD CONSTRAINT "_Bounce_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_BusinessUnitUnsubscribes" ADD CONSTRAINT "_BusinessUnitUnsubscribes_fk0" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_BusinessUnitUnsubscribes" ADD CONSTRAINT "_BusinessUnitUnsubscribes_fk1" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_Unsubscribe" ADD CONSTRAINT "_Unsubscribe_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Unsubscribe" ADD CONSTRAINT "_Unsubscribe_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Unsubscribe" ADD CONSTRAINT "_Unsubscribe_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_Click" ADD CONSTRAINT "_Click_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Click" ADD CONSTRAINT "_Click_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Click" ADD CONSTRAINT "_Click_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_Complaint" ADD CONSTRAINT "_Complaint_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Complaint" ADD CONSTRAINT "_Complaint_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Complaint" ADD CONSTRAINT "_Complaint_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");


ALTER TABLE "_EnterpriseAttribute" ADD CONSTRAINT "_EnterpriseAttribute_fk0" FOREIGN KEY ("_SubscriberID") REFERENCES "_Subscribers"("SubscriberID");

ALTER TABLE "_FTAF" ADD CONSTRAINT "_FTAF_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_FTAF" ADD CONSTRAINT "_FTAF_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_FTAF" ADD CONSTRAINT "_FTAF_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");




ALTER TABLE "_JourneyActivity" ADD CONSTRAINT "_JourneyActivity_fk0" FOREIGN KEY ("VersionID") REFERENCES "_Journey"("VersionID");

ALTER TABLE "_ListSubscribers" ADD CONSTRAINT "_ListSubscribers_fk0" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_ListSubscribers" ADD CONSTRAINT "_ListSubscribers_fk1" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_Open" ADD CONSTRAINT "_Open_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Open" ADD CONSTRAINT "_Open_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Open" ADD CONSTRAINT "_Open_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_Sent" ADD CONSTRAINT "_Sent_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_Sent" ADD CONSTRAINT "_Sent_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_Sent" ADD CONSTRAINT "_Sent_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_SurveyResponse" ADD CONSTRAINT "_SurveyResponse_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");
ALTER TABLE "_SurveyResponse" ADD CONSTRAINT "_SurveyResponse_fk1" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_SurveyResponse" ADD CONSTRAINT "_SurveyResponse_fk2" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_SMSMessageTracking" ADD CONSTRAINT "_SMSMessageTracking_fk0" FOREIGN KEY ("Mobile") REFERENCES "_MobileAddress"("_MobileNumber");



ALTER TABLE "_SocialNetworkTracking" ADD CONSTRAINT "_SocialNetworkTracking_fk0" FOREIGN KEY ("SubscriberID") REFERENCES "_Subscribers"("SubscriberID");
ALTER TABLE "_SocialNetworkTracking" ADD CONSTRAINT "_SocialNetworkTracking_fk1" FOREIGN KEY ("SubscriberKey") REFERENCES "_Subscribers"("SubscriberKey");

ALTER TABLE "_SocialNetworkImpressions" ADD CONSTRAINT "_SocialNetworkImpressions_fk0" FOREIGN KEY ("JobID") REFERENCES "_Job"("JobID");


ALTER TABLE "_PushTag" ADD CONSTRAINT "_PushTag_fk0" FOREIGN KEY ("_DeviceID") REFERENCES "_PushAddress"("_DeviceID");




























