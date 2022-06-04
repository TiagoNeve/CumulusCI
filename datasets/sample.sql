BEGIN TRANSACTION;
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Description__c" VARCHAR(255), 
	"DjFoodBankId__c" VARCHAR(255), 
	"Storage_Requirements__c" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'A coisa','01','10','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"DjFoodBankId__c" VARCHAR(255), 
	"Notes__c" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'01','Aree','2022-06-10','OK');
COMMIT;
