CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    PRIMARY KEY ("contact_id")
);

SELECT * FROM "Contacts";

CREATE TABLE "Category" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    PRIMARY KEY ("category_id")
);

SELECT * FROM "Category";

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    PRIMARY KEY ("subcategory_id")
);

SELECT * FROM "Subcategory";

CREATE TABLE "Campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES "Contacts" (contact_id),
	FOREIGN KEY (category_id) REFERENCES "Category" (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES "Subcategory" (subcategory_id)
);

SELECT * FROM "Campaign";