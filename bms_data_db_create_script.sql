--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Device; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Device" (
    id integer NOT NULL,
    name text NOT NULL,
    description text,
    location_id integer,
    parent_id integer
);


ALTER TABLE "Device" OWNER TO postgres;

--
-- Name: Location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Location" (
    name text NOT NULL,
    description text NOT NULL,
    parent_id integer,
    id integer NOT NULL
);


ALTER TABLE "Location" OWNER TO postgres;

--
-- Name: Parameter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Parameter" (
    id integer NOT NULL,
    device_id integer,
    name text,
    unit_id integer
);


ALTER TABLE "Parameter" OWNER TO postgres;

--
-- Name: Unit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Unit" (
    id integer NOT NULL,
    name text NOT NULL,
    symbol text NOT NULL
);


ALTER TABLE "Unit" OWNER TO postgres;

--
-- Data for Name: Device; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Device" (id, name, description, location_id, parent_id) FROM stdin;
\.


--
-- Data for Name: Location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Location" (name, description, parent_id, id) FROM stdin;
\.


--
-- Data for Name: Parameter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Parameter" (id, device_id, name, unit_id) FROM stdin;
\.


--
-- Data for Name: Unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Unit" (id, name, symbol) FROM stdin;
\.


--
-- Name: Device Device_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Device"
    ADD CONSTRAINT "Device_id_key" UNIQUE (id);


--
-- Name: Device Device_parent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Device"
    ADD CONSTRAINT "Device_parent_id_key" UNIQUE (parent_id);


--
-- Name: Device Device_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Device"
    ADD CONSTRAINT "Device_pkey" PRIMARY KEY (id);


--
-- Name: Location Location_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT "Location_id_key" UNIQUE (id);


--
-- Name: Location Location_parent_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT "Location_parent_id_key" UNIQUE (parent_id);


--
-- Name: Location Location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY (id);


--
-- Name: Parameter Parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Parameter"
    ADD CONSTRAINT "Parameter_pkey" PRIMARY KEY (id);


--
-- Name: Unit Unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Unit"
    ADD CONSTRAINT "Unit_pkey" PRIMARY KEY (id);


--
-- Name: fki_location_id_too_device; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_location_id_too_device ON "Device" USING btree (location_id);


--
-- Name: fki_paramater_id_to_device; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_paramater_id_to_device ON "Parameter" USING btree (device_id);


--
-- Name: fki_unit_id_to_unit; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_unit_id_to_unit ON "Parameter" USING btree (unit_id);


--
-- Name: Device device_parent_id_to_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Device"
    ADD CONSTRAINT device_parent_id_to_id FOREIGN KEY (id) REFERENCES "Device"(parent_id);


--
-- Name: Device location_id_to_device; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Device"
    ADD CONSTRAINT location_id_to_device FOREIGN KEY (location_id) REFERENCES "Location"(id);


--
-- Name: Location location_parent_id_to_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT location_parent_id_to_id FOREIGN KEY (id) REFERENCES "Location"(parent_id);


--
-- Name: Parameter paramater_id_to_device; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Parameter"
    ADD CONSTRAINT paramater_id_to_device FOREIGN KEY (device_id) REFERENCES "Device"(id);


--
-- Name: Parameter unit_id_to_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Parameter"
    ADD CONSTRAINT unit_id_to_unit FOREIGN KEY (unit_id) REFERENCES "Unit"(id);


--
-- PostgreSQL database dump complete
--

