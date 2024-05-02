--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio integer NOT NULL,
    edad integer,
    gravedad numeric,
    material text,
    col7 boolean,
    col8 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio integer NOT NULL,
    edad integer,
    gravedad numeric,
    material text,
    col7 boolean,
    col8 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    info_id integer NOT NULL,
    texto text,
    col3 numeric,
    col4 integer NOT NULL,
    col5 integer NOT NULL,
    col6 boolean,
    col7 boolean
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_info_id_seq OWNED BY public.more_info.info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio integer NOT NULL,
    edad integer,
    gravedad numeric,
    material text,
    col7 boolean,
    col8 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radio integer NOT NULL,
    edad integer,
    gravedad numeric,
    material text,
    col7 boolean,
    col8 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN info_id SET DEFAULT nextval('public.more_info_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 10, 20, 30, 'texto material', true, false);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 10, 20, 30, 'texto material2', true, false);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 10, 20, 30, 'texto material3', false, true);
INSERT INTO public.galaxy VALUES (4, 'gal4', 10, 20, 30, 'txt mat4', true, false);
INSERT INTO public.galaxy VALUES (5, 'gal5', 10, 20, 30, 'txt mat5', true, false);
INSERT INTO public.galaxy VALUES (6, 'g6', 10, 20, 30, 'txt mat6', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 20, 40, 60, 'txt m1', true, false, 1);
INSERT INTO public.moon VALUES (2, 'm2', 20, 40, 60, 'txt m2', true, false, 2);
INSERT INTO public.moon VALUES (3, 'm3', 20, 40, 60, 'txt m3', true, false, 3);
INSERT INTO public.moon VALUES (4, 'm4', 20, 40, 60, 'txt m4', true, false, 4);
INSERT INTO public.moon VALUES (5, 'm5', 20, 40, 60, 'txt m4', true, false, 5);
INSERT INTO public.moon VALUES (6, 'm6', 20, 40, 60, 'txt m6', true, false, 6);
INSERT INTO public.moon VALUES (7, 'm7', 20, 40, 60, 'txt m7', true, false, 7);
INSERT INTO public.moon VALUES (8, 'm8', 20, 40, 60, 'txt m8', true, false, 8);
INSERT INTO public.moon VALUES (9, 'm9', 20, 40, 60, 'txt m9', true, false, 9);
INSERT INTO public.moon VALUES (10, 'm10', 20, 40, 60, 'txt m10', true, false, 10);
INSERT INTO public.moon VALUES (11, 'm11', 20, 40, 60, 'txt m11', true, false, 11);
INSERT INTO public.moon VALUES (12, 'm12', 20, 40, 60, 'txt m12', true, false, 12);
INSERT INTO public.moon VALUES (13, 'm13', 20, 40, 60, 'txt m13', true, false, 1);
INSERT INTO public.moon VALUES (14, 'm14', 20, 40, 60, 'txt m14', true, false, 2);
INSERT INTO public.moon VALUES (15, 'm15', 20, 40, 60, 'txt m15', true, false, 3);
INSERT INTO public.moon VALUES (16, 'm16', 20, 40, 60, 'txt m16', true, false, 4);
INSERT INTO public.moon VALUES (17, 'm17', 20, 40, 60, 'txt m17', true, false, 5);
INSERT INTO public.moon VALUES (18, 'm18', 20, 40, 60, 'txt m18', true, false, 6);
INSERT INTO public.moon VALUES (19, 'm19', 20, 40, 60, 'txt m19', true, false, 7);
INSERT INTO public.moon VALUES (20, 'm20', 20, 40, 60, 'txt m20', true, false, 8);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'txt1', 1, 2, 3, true, false);
INSERT INTO public.more_info VALUES (2, 'txt2', 1, 2, 3, true, false);
INSERT INTO public.more_info VALUES (3, 'txt3', 1, 2, 3, true, false);
INSERT INTO public.more_info VALUES (4, 'txt4', 1, 2, 3, true, false);
INSERT INTO public.more_info VALUES (5, 'txt5', 1, 2, 3, true, false);
INSERT INTO public.more_info VALUES (6, 'txt6', 1, 2, 3, true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pl1', 70, 80, 90, 'txt pl1', false, true, 1);
INSERT INTO public.planet VALUES (2, 'pl2', 70, 80, 90, 'txt pl1', false, true, 1);
INSERT INTO public.planet VALUES (3, 'pl3', 70, 80, 90, 'txt pl1', false, true, 2);
INSERT INTO public.planet VALUES (4, 'pl4', 70, 80, 90, 'txt pl4', false, true, 2);
INSERT INTO public.planet VALUES (5, 'pl5', 70, 80, 90, 'txt pl5', false, true, 3);
INSERT INTO public.planet VALUES (6, 'pl6', 70, 80, 90, 'txt pl6', false, true, 3);
INSERT INTO public.planet VALUES (7, 'pl7', 70, 80, 90, 'txt pl7', false, true, 4);
INSERT INTO public.planet VALUES (8, 'pl8', 70, 80, 90, 'txt pl8', false, true, 4);
INSERT INTO public.planet VALUES (9, 'pl9', 70, 80, 90, 'txt pl9', false, true, 5);
INSERT INTO public.planet VALUES (10, 'pl10', 70, 80, 90, 'txt pl10', false, true, 5);
INSERT INTO public.planet VALUES (11, 'pl11', 70, 80, 90, 'txt pl11', false, true, 6);
INSERT INTO public.planet VALUES (12, 'pl12', 70, 80, 90, 'txt pl12', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'st1', 40, 50, 60, 'txt st1', true, false, 1);
INSERT INTO public.star VALUES (2, 'st2', 40, 50, 60, 'txt st2', true, false, 2);
INSERT INTO public.star VALUES (3, 'st3', 40, 50, 60, 'txt st3', true, false, 3);
INSERT INTO public.star VALUES (4, 'st4', 40, 50, 60, 'txt st4', true, false, 4);
INSERT INTO public.star VALUES (5, 'st5', 40, 50, 60, 'txt st5', true, false, 5);
INSERT INTO public.star VALUES (6, 'st6', 40, 50, 60, 'txt st6', true, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_info_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (info_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

