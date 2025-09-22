-- Sequence for auto-increment (compatible across DuckDB versions)
DROP SEQUENCE IF EXISTS "public".seq_facility_id;
CREATE SEQUENCE "public".seq_facility_id START 1;

-- Recreate table with strict column order
DROP TABLE IF EXISTS "public"."dim_facility";
CREATE TABLE "public"."dim_facility" (
    facility_id   INTEGER NOT NULL
        DEFAULT nextval('public.seq_facility_id')
        PRIMARY KEY,
    facility_name TEXT    NOT NULL
);
