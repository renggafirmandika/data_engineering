CREATE TABLE "public"."dim_industry" (
    industry_key   INTEGER NOT NULL PRIMARY KEY,
    industry_name  TEXT    NOT NULL,
    UNIQUE(industry_name)
);
