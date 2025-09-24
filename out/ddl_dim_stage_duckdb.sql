CREATE TABLE "public"."dim_stage" (
    stage_key   INTEGER NOT NULL PRIMARY KEY,
    stage_name  TEXT    NOT NULL,
    UNIQUE(stage_name),
    CHECK (stage_key IN (1, 2, 3))
    -- Optional strict domain for names:
    -- CHECK (LOWER(stage_name) IN ('approved','committed','probable'))
);
