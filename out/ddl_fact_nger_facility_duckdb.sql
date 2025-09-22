-- Recreate table with strict column order
DROP TABLE IF EXISTS "public"."fact_nger_facility";
CREATE TABLE "public"."fact_nger_facility" (
    -- Keys (order matters)
    year                INTEGER      NOT NULL,
    geo_id              INTEGER      NOT NULL,   -- FK -> dim_geo(geo_id)
    corporation_id      INTEGER      NOT NULL,   -- FK -> dim_corporation(corporation_id)
    facility_id         INTEGER      NOT NULL,   -- FK -> dim_facility(facility_id)

    -- Measures
    electricity_gj        DECIMAL(18,3),
    electricity_mwh       DECIMAL(18,3),
    emissions_1           DECIMAL(18,3),
    emissions_2           DECIMAL(18,3),
    emissions_total       DECIMAL(18,3),
    emissions_intensity   DECIMAL(18,3),

    -- Attributes
    grid_connected      BOOLEAN,
    grid                VARCHAR(16),
    fuel_key            INTEGER,                 -- FK -> dim_fuel(fuel_key)

    -- Constraints
    PRIMARY KEY (year, facility_id),
    CHECK (grid IN ('NEM','SWIS','Off-grid','NWIS','Mt Isa','DKIS')),

    -- Foreign Keys (DuckDB supports simple FKs)
    FOREIGN KEY (geo_id)         REFERENCES "public"."dim_geo"(geo_id),
    FOREIGN KEY (corporation_id) REFERENCES "public"."dim_corporation"(corporation_id),
    FOREIGN KEY (facility_id)    REFERENCES "public"."dim_facility"(facility_id),
    FOREIGN KEY (fuel_key)       REFERENCES "public"."dim_fuel"(fuel_key)
);
