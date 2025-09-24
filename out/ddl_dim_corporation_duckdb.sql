CREATE SEQUENCE IF NOT EXISTS "public".seq_corporation_id START 1;

CREATE TABLE "public"."dim_corporation" (
    corporation_id   INTEGER NOT NULL DEFAULT nextval('public.seq_corporation_id'),
    corporation_name TEXT    NOT NULL,
    PRIMARY KEY (corporation_id)
);
