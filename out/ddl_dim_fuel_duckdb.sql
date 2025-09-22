-- Sequence for auto-increment key (compatible across DuckDB versions)
DROP SEQUENCE IF EXISTS "public".seq_fuel_key;
CREATE SEQUENCE "public".seq_fuel_key START 1;

-- Recreate table with strict column order
DROP TABLE IF EXISTS "public"."dim_fuel";
CREATE TABLE "public"."dim_fuel" (
    fuel_key      INTEGER NOT NULL
        DEFAULT nextval('public.seq_fuel_key')
        PRIMARY KEY,
    fuel_type     TEXT    NOT NULL,
    fuel_category TEXT    NOT NULL,
    is_renewable  BOOLEAN NOT NULL,

    -- Business rules
    UNIQUE (fuel_type),
    CHECK (is_renewable IN (TRUE, FALSE))
    -- Optional strict domain for categories (uncomment to enforce)
    -- , CHECK (fuel_category IN ('SOLAR','WIND','HYDRO','BIO','GAS','LIQUID','COAL','HYBRID','STORAGE','OTHER'))
);
