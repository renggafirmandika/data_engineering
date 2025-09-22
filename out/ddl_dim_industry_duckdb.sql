-- Sequence for auto-increment key (compatible across DuckDB versions)
DROP SEQUENCE IF EXISTS "public".seq_industry_key;
CREATE SEQUENCE "public".seq_industry_key START 1;

-- Recreate table with strict column order
DROP TABLE IF EXISTS "public"."dim_industry";
CREATE TABLE "public"."dim_industry" (
    industry_key  INTEGER NOT NULL
        DEFAULT nextval('public.seq_industry_key')
        PRIMARY KEY,
    industry_name TEXT    NOT NULL,

    -- Business rule: each industry name must be unique
    UNIQUE (industry_name)
);
