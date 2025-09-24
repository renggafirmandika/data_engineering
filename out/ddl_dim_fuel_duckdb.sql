CREATE SEQUENCE IF NOT EXISTS "public".seq_fuel_key START 1;

CREATE TABLE "public"."dim_fuel" (
    fuel_key        INTEGER NOT NULL DEFAULT nextval('public.seq_fuel_key'),
    fuel_type       TEXT    NOT NULL,
    fuel_category   TEXT    NOT NULL,
    is_renewable    BOOLEAN NOT NULL,
    PRIMARY KEY (fuel_key),
    UNIQUE (fuel_type),
    CHECK (is_renewable IN (TRUE, FALSE))
);
