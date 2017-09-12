--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.21
-- Dumped by pg_dump version 9.2.21
-- Started on 2017-08-31 23:04:08

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 170 (class 1259 OID 16424)
-- Name: Location; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Location" (
    name text NOT NULL,
    description text NOT NULL,
    parent_id integer,
    id integer NOT NULL
);


ALTER TABLE public."Location" OWNER TO postgres;

--
-- TOC entry 1930 (class 0 OID 16424)
-- Dependencies: 170
-- Data for Name: Location; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Location" VALUES ('Serwerownia', 'Glowny budynek czesci serwerowej', NULL, 1);
INSERT INTO "Location" VALUES ('I pietro', 'Pierwsze pietro budynku serwerowego', 1, 2);


--
-- TOC entry 1821 (class 2606 OID 16449)
-- Name: Location_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT "Location_id_key" UNIQUE (id);


--
-- TOC entry 1823 (class 2606 OID 16453)
-- Name: Location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Location"
    ADD CONSTRAINT "Location_pkey" PRIMARY KEY (id);


-- Completed on 2017-08-31 23:04:08

--
-- PostgreSQL database dump complete
--

