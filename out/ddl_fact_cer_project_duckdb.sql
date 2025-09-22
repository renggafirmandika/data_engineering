-- Sequence for auto-increment project_id
DROP SEQUENCE IF EXISTS "public".seq_project_id;
CREATE SEQUENCE "public".seq_project_id START 1;

-- Recreate table
DROP TABLE IF EXISTS "public"."fact_cer_project";
CREATE TABLE "public"."fact_cer_project" (
    -- Order
    stage_date          DATE         NOT NULL,
    year                INTEGER      NOT NULL,  -- derived from stage_date by ETL (DDL keeps it as INT)
    geo_id              INTEGER      NOT NULL,  -- FK -> dim_geo(geo_id)
    project_id          INTEGER      NOT NULL
        DEFAULT nextval('public.seq_project_id')
        PRIMARY KEY,
    project_name        TEXT         NOT NULL,
    stage_key           INTEGER      NOT NULL,  -- FK -> dim_stage(stage_key)
    fuel_key            INTEGER,                -- FK -> dim_fuel(fuel_key)
    capacity_mw         DECIMAL(12,3),
    accreditation_code  TEXT,
    accreditation_date  DATE,

    -- Foreign keys
    FOREIGN KEY (geo_id)    REFERENCES "public"."dim_geo"(geo_id),
    FOREIGN KEY (stage_key) REFERENCES "public"."dim_stage"(stage_key),
    FOREIGN KEY (fuel_key)  REFERENCES "public"."dim_fuel"(fuel_key)
);
