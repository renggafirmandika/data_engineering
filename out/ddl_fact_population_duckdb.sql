-- Recreate table
DROP TABLE IF EXISTS "public"."fact_population";
CREATE TABLE "public"."fact_population" (
    -- Keys
    year               INTEGER NOT NULL,
    geo_id             INTEGER NOT NULL,   -- FK -> dim_geo(geo_id)

    -- Measures
    population_males   INTEGER,
    population_females INTEGER,

    -- Constraints
    PRIMARY KEY (year, geo_id),

    -- Foreign Keys
    FOREIGN KEY (geo_id) REFERENCES "public"."dim_geo"(geo_id)
);
