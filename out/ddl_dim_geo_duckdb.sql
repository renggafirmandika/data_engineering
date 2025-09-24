CREATE TABLE "public"."dim_geo" (
    geo_id           INTEGER  NOT NULL PRIMARY KEY,
    latitude         DOUBLE   NOT NULL,
    longitude        DOUBLE   NOT NULL,
    state_code       TEXT     NOT NULL,
    display_name     TEXT     NOT NULL,
    postcode         TEXT,
    min_latitude     DOUBLE   NOT NULL,
    max_latitude     DOUBLE   NOT NULL,
    min_longitude    DOUBLE   NOT NULL,
    max_longitude    DOUBLE   NOT NULL,
    osm_type         TEXT     NOT NULL,
    geocoder         TEXT     NOT NULL,
    geo_resolution   TEXT     NOT NULL
);
