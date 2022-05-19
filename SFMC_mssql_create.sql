CREATE TABLE [_Subscribers] (
	SubscriberID integer NOT NULL UNIQUE,
	SubscriberKey varchar(254) NOT NULL UNIQUE,
	DateUndeliverable datetime,
	DateJoined datetime,
	DateUnsubscribed datetime,
	Domain varchar(254),
	EmailAddress varchar(254) NOT NULL,
	BounceCount integer NOT NULL,
	SubscriberType varchar(100) NOT NULL,
	Status varchar(12),
	Locale integer,
  CONSTRAINT [PK__SUBSCRIBERS] PRIMARY KEY CLUSTERED
  (
  [SubscriberKey] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [_Job] (
	JobID integer NOT NULL,
	EmailID integer,
	AccountID integer,
	AccountUserID integer,
	FromName varchar(130),
	FromEmail varchar(100),
	SchedTime datetime,
	PickupTime datetime,
	DeliveredTime datetime,
	EventID varchar(50),
	IsMultipart boolean NOT NULL,
	JobType varchar(50),
	JobStatus varchar(50),
	ModifiedBy integer,
	ModifiedDate datetime,
	EmailName varchar(100),
	EmailSubject varchar(200),
	IsWrapped boolean NOT NULL,
	TestEmailAddr varchar(128),
	Category varchar(100) NOT NULL,
	BccEmail varchar(100),
	OriginalSchedTime datetime,
	CreatedDate datetime NOT NULL,
	CharacterSet varchar(30),
	IPAddress varchar(50),
	SalesForceTotalSubscriberCount integer NOT NULL,
	SalesForceErrorSubscriberCount integer NOT NULL,
	SendType varchar(128) NOT NULL,
	DynamicEmailSubject varchar(max),
	SuppressTracking boolean NOT NULL,
	SendClassificationType varchar(32),
	SendClassification varchar(36),
	ResolveLinksWithCurrentData boolean NOT NULL,
	EmailSendDefinition varchar(36),
	DeduplicateByEmail boolean NOT NULL,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36),
  CONSTRAINT [PK__JOB] PRIMARY KEY CLUSTERED
  (
  [JobID] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [_Bounce] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	BounceCategoryID integer NOT NULL,
	BounceCategory varchar(50),
	BounceSubcategoryID integer,
	BounceSubcategory varchar(50),
	BounceTypeID integer NOT NULL,
	BounceType varchar(50),
	SMTPBounceReason varchar(max),
	SMTPMessage varchar(max),
	SMTPCode integer,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_BusinessUnitUnsubscribes] (
	BusinessUnitID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	UnsubDateUTC datetime,
	UnsubReason varchar(100)
)
GO
CREATE TABLE [_Unsubscribe] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_Click] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	URL varchar(900),
	LinkName varchar(1024),
	LinkContent varchar(max),
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_Complaint] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL
)
GO
CREATE TABLE [_Coupon] (
	Name varchar(128) NOT NULL,
	ExternalKey varchar(36) NOT NULL UNIQUE,
	Description varchar NOT NULL,
	BeginDate datetime NOT NULL,
	ExpirationDate datetime NOT NULL,
  CONSTRAINT [PK__COUPON] PRIMARY KEY CLUSTERED
  (
  [ExternalKey] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [_EnterpriseAttribute] (
	_SubscriberID integer NOT NULL
)
GO
CREATE TABLE [_FTAF] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	TransactionTime datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_MobileLineAddressContactSubscriptionView] (
	ChannelID varchar NOT NULL,
	ContactID integer NOT NULL,
	ContactKey varchar NOT NULL,
	AddressID varchar NOT NULL,
	IsActive boolean NOT NULL,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime
)
GO
CREATE TABLE [_MobileLineOrphanContactView] (
	ContactID integer NOT NULL,
	ContactKey varchar NOT NULL,
	AddressID varchar NOT NULL,
	CreatedDate datetime NOT NULL
)
GO
CREATE TABLE [_Journey] (
	VersionID varchar(36) NOT NULL UNIQUE,
	JourneyID varchar(36) NOT NULL,
	JourneyName varchar(200) NOT NULL,
	VersionNumber integer NOT NULL,
	CreatedDate datetime NOT NULL,
	LastPublishedDate datetime,
	ModifiedDate datetime NOT NULL,
	JourneyStatus varchar(100) NOT NULL
)
GO
CREATE TABLE [_JourneyActivity] (
	VersionID varchar(36) NOT NULL,
	ActivityID varchar(36) NOT NULL UNIQUE,
	ActivityName varchar(200),
	ActivityExternalKey varchar(200) NOT NULL UNIQUE,
	JourneyActivityObjectID varchar(36),
	ActivityType varchar(512),
  CONSTRAINT [PK__JOURNEYACTIVITY] PRIMARY KEY CLUSTERED
  (
  [ActivityExternalKey] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [_ListSubscribers] (
	AddedBy integer NOT NULL,
	AddMethod varchar(17) NOT NULL,
	CreatedDate datetime,
	DateUnsubscribed datetime,
	EmailAddress varchar(254),
	ListID integer,
	ListName varchar(50),
	ListType varchar(16) NOT NULL,
	Status varchar(12),
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	SubscriberType varchar(100)
)
GO
CREATE TABLE [_Open] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_Sent] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	Domain varchar(128) NOT NULL,
	TriggererSendDefinitionObjectID varchar(36),
	TriggeredSendCustomerKey varchar(36)
)
GO
CREATE TABLE [_SurveyResponse] (
	AccountID integer NOT NULL,
	OYBAccountID integer,
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	EventDate datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar(128) NOT NULL,
	SurveyID integer NOT NULL,
	SurveyName varchar(100) NOT NULL,
	QuestionID integer NOT NULL,
	QuestionName varchar(50) NOT NULL,
	Question varchar(4000) NOT NULL,
	AnswerID integer NOT NULL,
	AnswerName varchar(4000),
	Answer varchar(4000),
	AnswerData varchar
)
GO
CREATE TABLE [_SMSMessageTracking] (
	MobileMessageTrackingID integer NOT NULL UNIQUE,
	EID integer,
	MID integer,
	Mobile varchar(15) NOT NULL,
	MessageID integer NOT NULL,
	KeywordID varchar(36),
	CodeID varchar(36),
	ConversationID varchar(36),
	CampaignID integer,
	Sent boolean NOT NULL,
	Delivered boolean,
	Undelivered boolean,
	Outbound boolean,
	Inbound boolean,
	CreateDateTime datetime NOT NULL,
	ModifiedDateTime datetime NOT NULL,
	ActionDateTime datetime NOT NULL,
	MessageText varchar(160),
	IsTest boolean,
	MobileMessageRecurrenceID integer,
	ResponseToMobileMessageTrackingID integer,
	IsValid boolean,
	InvalidationCode integer,
	SendID integer,
	SendSplitID integer,
	SendSegmentID integer,
	SendJobID integer,
	SendGroupID integer,
	SendPersonID integer,
	SubscriberID integer,
	SubscriberKey varchar(254),
	SMSStandardStatusCodeId integer,
	Description varchar,
	Name varchar,
	ShortCode varchar,
	SharedKeyword varchar,
	Ordinal integer,
	FromName varchar(11),
	JBActivityID varchar(36),
	JBDefinitionID varchar(36)
)
GO
CREATE TABLE [_SMSSubscriptionLog] (
	LogDate datetime,
	SubscriberKey varchar(254) NOT NULL,
	MobileSubscriptionID integer NOT NULL,
	SubscriptionDefinitionID varchar(36) NOT NULL,
	MobileNumber varchar(15) NOT NULL,
	OptOutStatusID integer,
	OptOutMethodID integer,
	OptOutDate datetime,
	OptInStatusID integer NOT NULL,
	OptInMethodID integer,
	OptInDate datetime,
	Source integer,
	CreatedDate datetime NOT NULL,
	ModifiedDate datetime NOT NULL
)
GO
CREATE TABLE [_UndeliverableSms] (
	MobileNumber varchar(15) NOT NULL,
	Undeliverable boolean NOT NULL,
	BounceCount integer NOT NULL,
	FirstBounceDate datetime NOT NULL,
	HoldDate datetime
)
GO
CREATE TABLE [_SocialNetworkTracking] (
	SubscriberID integer NOT NULL,
	SubscriberKey varchar(254) NOT NULL,
	ListID integer NOT NULL,
	BatchID integer NOT NULL,
	SocialSharingSiteID integer NOT NULL,
	SiteName varchar NOT NULL,
	CountryCode varchar NOT NULL,
	PublishedSocialContentID varchar NOT NULL,
	RegionTitle varchar NOT NULL,
	RegionDescription varchar,
	RegionHTML varchar,
	ContentRegionID varchar,
	OYBMemberID integer,
	TransactionTime datetime NOT NULL,
	IsUnique boolean NOT NULL,
	Domain varchar NOT NULL,
	PublishedSocialContentStatusID varchar NOT NULL,
	ShortCode varchar NOT NULL,
	PublishTime datetime NOT NULL
)
GO
CREATE TABLE [_SocialNetworkImpressions] (
	JobID integer NOT NULL,
	ListID integer NOT NULL,
	RegionTitle varchar NOT NULL,
	RegionDescription varchar,
	RegionHTML varchar,
	ContentRegionID varchar,
	SocialSharingSiteID integer NOT NULL,
	SiteName varchar NOT NULL,
	CountryCode varchar NOT NULL,
	PublishedSocialContentStatusID varchar NOT NULL,
	ShortCode varchar NOT NULL,
	PublishTime datetime NOT NULL,
	ReferringURL varchar,
	IPAddress varchar(50),
	TransactionTime datetime NOT NULL,
	PublishTime datetime NOT NULL
)
GO
CREATE TABLE [_MobileAddress] (
	_ContactID integer NOT NULL,
	_MobileNumber varchar(15) NOT NULL,
	_Status varchar,
	_Source varchar,
	_SourceObjectId varchar(200),
	_Priority varchar DEFAULT '1',
	_Channel varchar(20),
	_CarrierId varchar NOT NULL,
	_CountryCode varchar(2) NOT NULL,
	_CreatedDate datetime NOT NULL,
	_CreatedBy varchar,
	_ModifiedDate datetime NOT NULL,
	_ModifiedBy varchar,
	_City varchar(200),
	_State varchar(200),
	_ZipCode varchar(20),
	_FirstName varchar(100),
	_LastName varchar(100),
	_UTCOffset decimal DEFAULT '0',
	_IsHonorDST boolean
)
GO
CREATE TABLE [_PushTag] (
	_DeviceID text(200) NOT NULL,
	_APID text(38) NOT NULL,
	_Value text(128),
	_CreatedDate datetime NOT NULL,
	_CreatedBy varchar,
	_ModifiedDate datetime NOT NULL,
	_ModifiedBy varchar
)
GO
CREATE TABLE [_PushAddress] (
	_ContactID integer NOT NULL,
	_DeviceID varchar(200) NOT NULL,
	_APID varchar(38) NOT NULL,
	_Status varchar,
	_Source varchar,
	_SourceObjectId varchar(200),
	_Platform varchar(100),
	_PlatformVersion varchar(100),
	_Alias varchar(100),
	_OptOutStatusID integer,
	_OptOutMethodID integer,
	_OptOutDate datetime,
	_OptInStatusID integer NOT NULL,
	_OptInMethodID varchar,
	_OptInDate datetime,
	_Channel varchar(20),
	_CreatedDate datetime NOT NULL,
	_CreatedBy varchar,
	_ModifiedDate datetime NOT NULL,
	_ModifiedBy varchar,
	_City varchar(200),
	_State varchar(200),
	_ZipCode varchar(200),
	_FirstName varchar(200),
	_LastName varchar(200),
	_UTCOffset decimal DEFAULT '0',
	_IsHonorDST boolean,
	_SystemToken varchar(4000),
	_ProviderToken varchar(200),
	_Badge integer,
	_LocationEnabled boolean,
	_TimeZone varchar(50),
	_Device varchar(100),
	_HardwareId varchar(100),
	_DeviceType varchar(20)
)
GO


ALTER TABLE [_Bounce] WITH CHECK ADD CONSTRAINT [_Bounce_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Bounce] CHECK CONSTRAINT [_Bounce_fk0]
GO
ALTER TABLE [_Bounce] WITH CHECK ADD CONSTRAINT [_Bounce_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Bounce] CHECK CONSTRAINT [_Bounce_fk1]
GO
ALTER TABLE [_Bounce] WITH CHECK ADD CONSTRAINT [_Bounce_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Bounce] CHECK CONSTRAINT [_Bounce_fk2]
GO

ALTER TABLE [_BusinessUnitUnsubscribes] WITH CHECK ADD CONSTRAINT [_BusinessUnitUnsubscribes_fk0] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_BusinessUnitUnsubscribes] CHECK CONSTRAINT [_BusinessUnitUnsubscribes_fk0]
GO
ALTER TABLE [_BusinessUnitUnsubscribes] WITH CHECK ADD CONSTRAINT [_BusinessUnitUnsubscribes_fk1] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_BusinessUnitUnsubscribes] CHECK CONSTRAINT [_BusinessUnitUnsubscribes_fk1]
GO

ALTER TABLE [_Unsubscribe] WITH CHECK ADD CONSTRAINT [_Unsubscribe_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Unsubscribe] CHECK CONSTRAINT [_Unsubscribe_fk0]
GO
ALTER TABLE [_Unsubscribe] WITH CHECK ADD CONSTRAINT [_Unsubscribe_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Unsubscribe] CHECK CONSTRAINT [_Unsubscribe_fk1]
GO
ALTER TABLE [_Unsubscribe] WITH CHECK ADD CONSTRAINT [_Unsubscribe_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Unsubscribe] CHECK CONSTRAINT [_Unsubscribe_fk2]
GO

ALTER TABLE [_Click] WITH CHECK ADD CONSTRAINT [_Click_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Click] CHECK CONSTRAINT [_Click_fk0]
GO
ALTER TABLE [_Click] WITH CHECK ADD CONSTRAINT [_Click_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Click] CHECK CONSTRAINT [_Click_fk1]
GO
ALTER TABLE [_Click] WITH CHECK ADD CONSTRAINT [_Click_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Click] CHECK CONSTRAINT [_Click_fk2]
GO

ALTER TABLE [_Complaint] WITH CHECK ADD CONSTRAINT [_Complaint_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Complaint] CHECK CONSTRAINT [_Complaint_fk0]
GO
ALTER TABLE [_Complaint] WITH CHECK ADD CONSTRAINT [_Complaint_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Complaint] CHECK CONSTRAINT [_Complaint_fk1]
GO
ALTER TABLE [_Complaint] WITH CHECK ADD CONSTRAINT [_Complaint_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Complaint] CHECK CONSTRAINT [_Complaint_fk2]
GO


ALTER TABLE [_EnterpriseAttribute] WITH CHECK ADD CONSTRAINT [_EnterpriseAttribute_fk0] FOREIGN KEY ([_SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_EnterpriseAttribute] CHECK CONSTRAINT [_EnterpriseAttribute_fk0]
GO

ALTER TABLE [_FTAF] WITH CHECK ADD CONSTRAINT [_FTAF_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_FTAF] CHECK CONSTRAINT [_FTAF_fk0]
GO
ALTER TABLE [_FTAF] WITH CHECK ADD CONSTRAINT [_FTAF_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_FTAF] CHECK CONSTRAINT [_FTAF_fk1]
GO
ALTER TABLE [_FTAF] WITH CHECK ADD CONSTRAINT [_FTAF_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_FTAF] CHECK CONSTRAINT [_FTAF_fk2]
GO




ALTER TABLE [_JourneyActivity] WITH CHECK ADD CONSTRAINT [_JourneyActivity_fk0] FOREIGN KEY ([VersionID]) REFERENCES [_Journey]([VersionID])
ON UPDATE CASCADE
GO
ALTER TABLE [_JourneyActivity] CHECK CONSTRAINT [_JourneyActivity_fk0]
GO

ALTER TABLE [_ListSubscribers] WITH CHECK ADD CONSTRAINT [_ListSubscribers_fk0] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_ListSubscribers] CHECK CONSTRAINT [_ListSubscribers_fk0]
GO
ALTER TABLE [_ListSubscribers] WITH CHECK ADD CONSTRAINT [_ListSubscribers_fk1] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_ListSubscribers] CHECK CONSTRAINT [_ListSubscribers_fk1]
GO

ALTER TABLE [_Open] WITH CHECK ADD CONSTRAINT [_Open_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Open] CHECK CONSTRAINT [_Open_fk0]
GO
ALTER TABLE [_Open] WITH CHECK ADD CONSTRAINT [_Open_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Open] CHECK CONSTRAINT [_Open_fk1]
GO
ALTER TABLE [_Open] WITH CHECK ADD CONSTRAINT [_Open_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Open] CHECK CONSTRAINT [_Open_fk2]
GO

ALTER TABLE [_Sent] WITH CHECK ADD CONSTRAINT [_Sent_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Sent] CHECK CONSTRAINT [_Sent_fk0]
GO
ALTER TABLE [_Sent] WITH CHECK ADD CONSTRAINT [_Sent_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_Sent] CHECK CONSTRAINT [_Sent_fk1]
GO
ALTER TABLE [_Sent] WITH CHECK ADD CONSTRAINT [_Sent_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_Sent] CHECK CONSTRAINT [_Sent_fk2]
GO

ALTER TABLE [_SurveyResponse] WITH CHECK ADD CONSTRAINT [_SurveyResponse_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_SurveyResponse] CHECK CONSTRAINT [_SurveyResponse_fk0]
GO
ALTER TABLE [_SurveyResponse] WITH CHECK ADD CONSTRAINT [_SurveyResponse_fk1] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_SurveyResponse] CHECK CONSTRAINT [_SurveyResponse_fk1]
GO
ALTER TABLE [_SurveyResponse] WITH CHECK ADD CONSTRAINT [_SurveyResponse_fk2] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_SurveyResponse] CHECK CONSTRAINT [_SurveyResponse_fk2]
GO

ALTER TABLE [_SMSMessageTracking] WITH CHECK ADD CONSTRAINT [_SMSMessageTracking_fk0] FOREIGN KEY ([Mobile]) REFERENCES [_MobileAddress]([_MobileNumber])
ON UPDATE CASCADE
GO
ALTER TABLE [_SMSMessageTracking] CHECK CONSTRAINT [_SMSMessageTracking_fk0]
GO



ALTER TABLE [_SocialNetworkTracking] WITH CHECK ADD CONSTRAINT [_SocialNetworkTracking_fk0] FOREIGN KEY ([SubscriberID]) REFERENCES [_Subscribers]([SubscriberID])
ON UPDATE CASCADE
GO
ALTER TABLE [_SocialNetworkTracking] CHECK CONSTRAINT [_SocialNetworkTracking_fk0]
GO
ALTER TABLE [_SocialNetworkTracking] WITH CHECK ADD CONSTRAINT [_SocialNetworkTracking_fk1] FOREIGN KEY ([SubscriberKey]) REFERENCES [_Subscribers]([SubscriberKey])
ON UPDATE CASCADE
GO
ALTER TABLE [_SocialNetworkTracking] CHECK CONSTRAINT [_SocialNetworkTracking_fk1]
GO

ALTER TABLE [_SocialNetworkImpressions] WITH CHECK ADD CONSTRAINT [_SocialNetworkImpressions_fk0] FOREIGN KEY ([JobID]) REFERENCES [_Job]([JobID])
ON UPDATE CASCADE
GO
ALTER TABLE [_SocialNetworkImpressions] CHECK CONSTRAINT [_SocialNetworkImpressions_fk0]
GO


ALTER TABLE [_PushTag] WITH CHECK ADD CONSTRAINT [_PushTag_fk0] FOREIGN KEY ([_DeviceID]) REFERENCES [_PushAddress]([_DeviceID])
ON UPDATE CASCADE
GO
ALTER TABLE [_PushTag] CHECK CONSTRAINT [_PushTag_fk0]
GO


