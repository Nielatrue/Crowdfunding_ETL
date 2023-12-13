-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Folder Name with tables is Resources

DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;

CREATE TABLE "category" (
    "category_id" VARCHAR(30)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
	PRIMARY KEY (category_id)
    --CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(30)   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
	PRIMARY KEY (subcategory_id)
    --CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    --CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
	PRIMARY KEY (contact_id)
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(255)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(30)   NOT NULL,
    "subcategory_id" VARCHAR(30)   NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id"),
	FOREIGN KEY("category_id") REFERENCES "category" ("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
    --CONSTRAINT "pk_campaign" PRIMARY KEY  ("cf_id")
);

-- 6.	Verify the table creation by running a SELECT statement for each table.
SELECT*
FROM category;

SELECT*
FROM subcategory;

SELECT*
FROM contacts;

SELECT*
FROM campaign;

-- NOTE: Import CSV file into a table using pgAdmin
-- NOTE: At the moment I don't have contacts table created, so it is not added to the DB. Persi will add it when he 
-- has it ready. Also campaign table can't be imported at the moment due to PK FK dependency. 

-- 8.	Verify that each table has the correct data by running a SELECT statement for each.
SELECT*
FROM category;

SELECT*
FROM subcategory;

SELECT*
FROM contacts;

SELECT*
FROM campaign;



