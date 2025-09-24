CREATE SEQUENCE IF NOT EXISTS "public".seq_facility_id START 1;

CREATE TABLE "public"."dim_facility" (
    facility_id    INTEGER NOT NULL DEFAULT nextval('public.seq_facility_id'),
    facility_name  TEXT    NOT NULL,
    PRIMARY KEY (facility_id)
);
