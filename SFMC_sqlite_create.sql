CREATE TABLE _Subscribers (
	SubscriberID integer,
	SubscriberKey varchar,
	DateUndeliverable datetime,
	DateJoined datetime,
	DateUnsubscribed datetime,
	Domain varchar,
	EmailAddress varchar,
	BounceCount integer,
	SubscriberType varchar,
	Status varchar,
	Locale integer
);

CREATE TABLE _Job (
	JobID integer,
	EmailID integer,
	AccountID integer,
	AccountUserID integer,
	FromName varchar,
	FromEmail varchar,
	SchedTime datetime,
	PickupTime datetime,
	DeliveredTime datetime,
	EventID varchar,
	IsMultipart boolean,
	JobType varchar,
	JobStatus varchar,
	ModifiedBy integer,
	ModifiedDate datetime,
	EmailName varchar,
	EmailSubject varchar,
	IsWrapped boolean,
	TestEmailAddr varchar,
	Category varchar,
	BccEmail varchar,
	OriginalSchedTime datetime,
	CreatedDate datetime,
	CharacterSet varchar,
	IPAddress varchar,
	SalesForceTotalSubscriberCount integer,
	SalesForceErrorSubscriberCount integer,
	SendType varchar,
	DynamicEmailSubject varchar,
	SuppressTracking boolean,
	SendClassificationType varchar,
	SendClassification varchar,
	ResolveLinksWithCurrentData boolean,
	EmailSendDefinition varchar,
	DeduplicateByEmail boolean,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _Bounce (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar,
	BounceCategoryID integer,
	BounceCategory varchar,
	BounceSubcategoryID integer,
	BounceSubcategory varchar,
	BounceTypeID integer,
	BounceType varchar,
	SMTPBounceReason varchar,
	SMTPMessage varchar,
	SMTPCode integer,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _BusinessUnitUnsubscribes (
	BusinessUnitID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	UnsubDateUTC datetime,
	UnsubReason varchar
);

CREATE TABLE _Unsubscribe (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _Click (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar,
	URL varchar,
	LinkName varchar,
	LinkContent varchar,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _Complaint (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar
);

CREATE TABLE _Coupon (
	Name varchar,
	ExternalKey varchar,
	Description varchar,
	BeginDate datetime,
	ExpirationDate datetime
);

CREATE TABLE _EnterpriseAttribute (
	_SubscriberID integer
);

CREATE TABLE _FTAF (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	TransactionTime datetime,
	IsUnique boolean,
	Domain varchar,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _MobileLineAddressContactSubscriptionView (
	ChannelID varchar,
	ContactID integer,
	ContactKey varchar,
	AddressID varchar,
	IsActive boolean,
	CreatedDate datetime,
	ModifiedDate datetime
);

CREATE TABLE _MobileLineOrphanContactView (
	ContactID integer,
	ContactKey varchar,
	AddressID varchar,
	CreatedDate datetime
);

CREATE TABLE _Journey (
	VersionID varchar,
	JourneyID varchar,
	JourneyName varchar,
	VersionNumber integer,
	CreatedDate datetime,
	LastPublishedDate datetime,
	ModifiedDate datetime,
	JourneyStatus varchar
);

CREATE TABLE _JourneyActivity (
	VersionID varchar,
	ActivityID varchar,
	ActivityName varchar,
	ActivityExternalKey varchar,
	JourneyActivityObjectID varchar,
	ActivityType varchar
);

CREATE TABLE _ListSubscribers (
	AddedBy integer,
	AddMethod varchar,
	CreatedDate datetime,
	DateUnsubscribed datetime,
	EmailAddress varchar,
	ListID integer,
	ListName varchar,
	ListType varchar,
	Status varchar,
	SubscriberID integer,
	SubscriberKey varchar,
	SubscriberType varchar
);

CREATE TABLE _Open (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _Sent (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	Domain varchar,
	TriggererSendDefinitionObjectID varchar,
	TriggeredSendCustomerKey varchar
);

CREATE TABLE _SurveyResponse (
	AccountID integer,
	OYBAccountID integer,
	JobID integer,
	ListID integer,
	BatchID integer,
	SubscriberID integer,
	SubscriberKey varchar,
	EventDate datetime,
	IsUnique boolean,
	Domain varchar,
	SurveyID integer,
	SurveyName varchar,
	QuestionID integer,
	QuestionName varchar,
	Question varchar,
	AnswerID integer,
	AnswerName varchar,
	Answer varchar,
	AnswerData varchar
);

CREATE TABLE _SMSMessageTracking (
	MobileMessageTrackingID integer,
	EID integer,
	MID integer,
	Mobile varchar,
	MessageID integer,
	KeywordID varchar,
	CodeID varchar,
	ConversationID varchar,
	CampaignID integer,
	Sent boolean,
	Delivered boolean,
	Undelivered boolean,
	Outbound boolean,
	Inbound boolean,
	CreateDateTime datetime,
	ModifiedDateTime datetime,
	ActionDateTime datetime,
	MessageText varchar,
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
	SubscriberKey varchar,
	SMSStandardStatusCodeId integer,
	Description varchar,
	Name varchar,
	ShortCode varchar,
	SharedKeyword varchar,
	Ordinal integer,
	FromName varchar,
	JBActivityID varchar,
	JBDefinitionID varchar
);

CREATE TABLE _SMSSubscriptionLog (
	LogDate datetime,
	SubscriberKey varchar,
	MobileSubscriptionID integer,
	SubscriptionDefinitionID varchar,
	MobileNumber varchar,
	OptOutStatusID integer,
	OptOutMethodID integer,
	OptOutDate datetime,
	OptInStatusID integer,
	OptInMethodID integer,
	OptInDate datetime,
	Source integer,
	CreatedDate datetime,
	ModifiedDate datetime
);

CREATE TABLE _UndeliverableSms (
	MobileNumber varchar,
	Undeliverable boolean,
	BounceCount integer,
	FirstBounceDate datetime,
	HoldDate datetime
);

CREATE TABLE _SocialNetworkTracking (
	SubscriberID integer,
	SubscriberKey varchar,
	ListID integer,
	BatchID integer,
	SocialSharingSiteID integer,
	SiteName varchar,
	CountryCode varchar,
	PublishedSocialContentID varchar,
	RegionTitle varchar,
	RegionDescription varchar,
	RegionHTML varchar,
	ContentRegionID varchar,
	OYBMemberID integer,
	TransactionTime datetime,
	IsUnique boolean,
	Domain varchar,
	PublishedSocialContentStatusID varchar,
	ShortCode varchar,
	PublishTime datetime
);

CREATE TABLE _SocialNetworkImpressions (
	JobID integer,
	ListID integer,
	RegionTitle varchar,
	RegionDescription varchar,
	RegionHTML varchar,
	ContentRegionID varchar,
	SocialSharingSiteID integer,
	SiteName varchar,
	CountryCode varchar,
	PublishedSocialContentStatusID varchar,
	ShortCode varchar,
	PublishTime datetime,
	ReferringURL varchar,
	IPAddress varchar,
	TransactionTime datetime,
	PublishTime datetime
);

CREATE TABLE _MobileAddress (
	_ContactID integer,
	_MobileNumber varchar,
	_Status varchar,
	_Source varchar,
	_SourceObjectId varchar,
	_Priority varchar,
	_Channel varchar,
	_CarrierId varchar,
	_CountryCode varchar,
	_CreatedDate datetime,
	_CreatedBy varchar,
	_ModifiedDate datetime,
	_ModifiedBy varchar,
	_City varchar,
	_State varchar,
	_ZipCode varchar,
	_FirstName varchar,
	_LastName varchar,
	_UTCOffset decimal,
	_IsHonorDST boolean
);

CREATE TABLE _PushTag (
	_DeviceID text,
	_APID text,
	_Value text,
	_CreatedDate datetime,
	_CreatedBy varchar,
	_ModifiedDate datetime,
	_ModifiedBy varchar
);

CREATE TABLE _PushAddress (
	_ContactID integer,
	_DeviceID varchar,
	_APID varchar,
	_Status varchar,
	_Source varchar,
	_SourceObjectId varchar,
	_Platform varchar,
	_PlatformVersion varchar,
	_Alias varchar,
	_OptOutStatusID integer,
	_OptOutMethodID integer,
	_OptOutDate datetime,
	_OptInStatusID integer,
	_OptInMethodID varchar,
	_OptInDate datetime,
	_Channel varchar,
	_CreatedDate datetime,
	_CreatedBy varchar,
	_ModifiedDate datetime,
	_ModifiedBy varchar,
	_City varchar,
	_State varchar,
	_ZipCode varchar,
	_FirstName varchar,
	_LastName varchar,
	_UTCOffset decimal,
	_IsHonorDST boolean,
	_SystemToken varchar,
	_ProviderToken varchar,
	_Badge integer,
	_LocationEnabled boolean,
	_TimeZone varchar,
	_Device varchar,
	_HardwareId varchar,
	_DeviceType varchar
);



























