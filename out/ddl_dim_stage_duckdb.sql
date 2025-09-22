-- Recreate table with strict column order (no auto-increment)
DROP TABLE IF EXISTS "public"."dim_stage";
CREATE TABLE "public"."dim_stage" (
    stage_key   INTEGER NOT NULL
        PRIMARY KEY,
    stage_name  TEXT    NOT NULL,

    -- Business rules
    UNIQUE (stage_name),
    CHECK (stage_key IN (1, 2, 3))
    -- Optional strict domain for names (uncomment if you want to enforce)
    -- , CHECK (LOWER(stage_name) IN ('approved','committed','probable'))
);
