-- Table: amplitude_analytics

-- DROP TABLE amplitude_analytics;

CREATE TABLE amplitude_analytics
(
    server_received_time timestamp without time zone NOT NULL,
    app integer,
    device_carrier text COLLATE pg_catalog."default",
    city text COLLATE pg_catalog."default",
    user_id text COLLATE pg_catalog."default",
    uuid uuid NOT NULL,
    event_time timestamp without time zone,
    platform text COLLATE pg_catalog."default",
    os_version text COLLATE pg_catalog."default",
    amplitude_id bigint,
    processed_time timestamp without time zone,
    user_creation_time timestamp without time zone,
    version_name text COLLATE pg_catalog."default",
    ip_address text COLLATE pg_catalog."default",
    paying boolean,
    dma text COLLATE pg_catalog."default",
    group_properties jsonb,
    user_properties jsonb,
    client_upload_time timestamp without time zone,
    event_type text COLLATE pg_catalog."default",
    library text COLLATE pg_catalog."default",
    amplitude_attribution_ids text COLLATE pg_catalog."default",
    device_type text COLLATE pg_catalog."default",
    device_manufacturer text COLLATE pg_catalog."default",
    start_version text COLLATE pg_catalog."default",
    location_lng double precision,
    server_upload_time timestamp without time zone,
    event_id integer,
    location_lat double precision,
    os_name text COLLATE pg_catalog."default",
    amplitude_event_type text COLLATE pg_catalog."default",
    device_brand text COLLATE pg_catalog."default",
    groups jsonb,
    event_properties jsonb,
    data jsonb,
    device_id text COLLATE pg_catalog."default",
    language text COLLATE pg_catalog."default",
    device_model text COLLATE pg_catalog."default",
    country text COLLATE pg_catalog."default",
    region text COLLATE pg_catalog."default",
    is_attribution_event boolean,
    adid text COLLATE pg_catalog."default",
    session_id bigint,
    device_family text COLLATE pg_catalog."default",
    idfa text COLLATE pg_catalog."default",
    client_event_time timestamp without time zone,
    CONSTRAINT amplitude_analytics_uuid_key UNIQUE (uuid)

)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE amplitude_analytics
    OWNER to root;