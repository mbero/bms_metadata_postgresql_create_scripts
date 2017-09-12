--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.21
-- Dumped by pg_dump version 9.2.21
-- Started on 2017-08-31 22:57:37

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 172 (class 1259 OID 16436)
-- Name: Unit; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Unit" (
    id integer NOT NULL,
    name text NOT NULL,
    symbol text NOT NULL
);


ALTER TABLE public."Unit" OWNER TO postgres;

--
-- TOC entry 1928 (class 0 OID 16436)
-- Dependencies: 172
-- Data for Name: Unit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Unit" VALUES (1, 'Celsius', '°C');
INSERT INTO "Unit" VALUES (2, 'Percent', '%');
INSERT INTO "Unit" VALUES (3, 'Liters per minute', 'l/min');
INSERT INTO "Unit" VALUES (5, 'Reps per minute', 'RPM');
INSERT INTO "Unit" VALUES (4, 'Kilowatt-hour', 'kWh');
INSERT INTO "Unit" VALUES (6, 'Kilowatt', 'kW');
INSERT INTO "Unit" VALUES (7, 'Amper', 'A');
INSERT INTO "Unit" VALUES (8, 'Kilo War', 'kvar');
INSERT INTO "Unit" VALUES (9, 'Volt-ampere', 'kVA');
INSERT INTO "Unit" VALUES (10, 'Kilo War per hour', 'kvarh');
INSERT INTO "Unit" VALUES (11, 'Volts', 'V');
INSERT INTO "Unit" VALUES (12, 'MVAh', 'MVAh');
INSERT INTO "Unit" VALUES (13, 'Mega Watt per hour', 'MWh');
INSERT INTO "Unit" VALUES (14, 'Mili Ampere', 'mA');
INSERT INTO "Unit" VALUES (15, 'Herz', 'Hz');
INSERT INTO "Unit" VALUES (16, 'Bar', 'bar');
INSERT INTO "Unit" VALUES (17, 'Meter per second', 'm/s');
INSERT INTO "Unit" VALUES (18, 'NO UNIT', 'NO UNIT');
INSERT INTO "Unit" VALUES (19, 'Kilo Pascal', 'kPa');
INSERT INTO "Unit" VALUES (20, 'Seconds', 's');
INSERT INTO "Unit" VALUES (21, 'Minutes', 'min');
INSERT INTO "Unit" VALUES (22, 'Watt per hours', 'Wh');
INSERT INTO "Unit" VALUES (23, 'mvarh', 'mvarh');
INSERT INTO "Unit" VALUES (24, 'Hour', 'h');
INSERT INTO "Unit" VALUES (25, 'Liters', 'l');
INSERT INTO "Unit" VALUES (26, 'm³/h', 'm³/h');
INSERT INTO "Unit" VALUES (27, 'm³', 'm³');
INSERT INTO "Unit" VALUES (28, 'GJ', 'GJ');


--
-- TOC entry 1821 (class 2606 OID 16457)
-- Name: Unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Unit"
    ADD CONSTRAINT "Unit_pkey" PRIMARY KEY (id);


-- Completed on 2017-08-31 22:57:37

--
-- PostgreSQL database dump complete
--

