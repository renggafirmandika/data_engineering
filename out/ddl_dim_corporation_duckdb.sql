-- Create a sequence for auto-increment
DROP SEQUENCE IF EXISTS "public".seq_corporation_id;
CREATE SEQUENCE "public".seq_corporation_id START 1;

-- Recreate the table
DROP TABLE IF EXISTS "public"."dim_corporation";
CREATE TABLE "public"."dim_corporation" (
    corporation_id   INTEGER NOT NULL
        DEFAULT nextval('public.seq_corporation_id')
        PRIMARY KEY,
    corporation_name TEXT    NOT NULL
);
