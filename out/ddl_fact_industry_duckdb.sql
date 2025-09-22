-- Recreate table
DROP TABLE IF EXISTS "public"."fact_industry";
CREATE TABLE "public"."fact_industry" (
    -- Keys
    year         INTEGER NOT NULL,
    geo_id       INTEGER NOT NULL,   -- FK -> dim_geo(geo_id)
    industry_id  INTEGER NOT NULL,   -- FK -> dim_industry(industry_key)

    -- Measure
    business_num INTEGER,

    -- Constraints
    PRIMARY KEY (year, geo_id, industry_id),

    -- Foreign Keys
    FOREIGN KEY (geo_id)      REFERENCES "public"."dim_geo"(geo_id),
    FOREIGN KEY (industry_id) REFERENCES "public"."dim_industry"(industry_key)
);
