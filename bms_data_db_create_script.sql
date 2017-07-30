-- Database: bms_metadata

-- DROP DATABASE bms_metadata;

CREATE DATABASE bms_metadata
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	

-- Table: public."Device"

-- DROP TABLE public."Device";

CREATE TABLE public."Device"
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    location_id integer,
    CONSTRAINT "Device_pkey" PRIMARY KEY (id),
    CONSTRAINT location_id_to_device FOREIGN KEY (location_id)
        REFERENCES public."Location" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Device"
    OWNER to postgres;

-- Index: fki_location_id_too_device

-- DROP INDEX public.fki_location_id_too_device;

CREATE INDEX fki_location_id_too_device
    ON public."Device" USING btree
    (location_id)
    TABLESPACE pg_default;
	

-- Table: public."Location"

-- DROP TABLE public."Location";

CREATE TABLE public."Location"
(
    name text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default" NOT NULL,
    higher_location_id integer,
    id integer NOT NULL,
    CONSTRAINT "Location_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Location"
    OWNER to postgres;
	
	
-- Table: public."Parameter"

-- DROP TABLE public."Parameter";

CREATE TABLE public."Parameter"
(
    id integer NOT NULL,
    device_id integer,
    name text COLLATE pg_catalog."default",
    unit_id integer,
    CONSTRAINT "Parameter_pkey" PRIMARY KEY (id),
    CONSTRAINT paramater_id_to_device FOREIGN KEY (device_id)
        REFERENCES public."Device" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT unit_id_to_unit FOREIGN KEY (unit_id)
        REFERENCES public."Unit" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Parameter"
    OWNER to postgres;

-- Index: fki_paramater_id_to_device

-- DROP INDEX public.fki_paramater_id_to_device;

CREATE INDEX fki_paramater_id_to_device
    ON public."Parameter" USING btree
    (device_id)
    TABLESPACE pg_default;

-- Index: fki_unit_id_to_unit

-- DROP INDEX public.fki_unit_id_to_unit;

CREATE INDEX fki_unit_id_to_unit
    ON public."Parameter" USING btree
    (unit_id)
    TABLESPACE pg_default;
	
	
-- Table: public."Unit"

-- DROP TABLE public."Unit";

CREATE TABLE public."Unit"
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default" NOT NULL,
    symbol text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Unit_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Unit"
    OWNER to postgres;