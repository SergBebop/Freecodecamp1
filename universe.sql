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
-- Name: cumulus; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cumulus (
    cumulus_id integer NOT NULL,
    name character varying(30) NOT NULL,
    cumulu_types character varying(30),
    description text
);


ALTER TABLE public.cumulus OWNER TO freecodecamp;

--
-- Name: cumulus_cumulus_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cumulus_cumulus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cumulus_cumulus_id_seq OWNER TO freecodecamp;

--
-- Name: cumulus_cumulus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cumulus_cumulus_id_seq OWNED BY public.cumulus.cumulus_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10) NOT NULL,
    galaxy_types character varying(20),
    age_in_millions_of_years integer,
    description text,
    cumulus_id integer
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
    name character varying(15) NOT NULL,
    is_spherical boolean,
    radius numeric,
    description text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(15) NOT NULL,
    age_in_milliones_of_years integer,
    radius numeric,
    has_life boolean,
    description text,
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
    name character varying(10) NOT NULL,
    temperature_in_celcius integer,
    color character varying(10),
    gravity numeric,
    description text,
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
-- Name: cumulus cumulus_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cumulus ALTER COLUMN cumulus_id SET DEFAULT nextval('public.cumulus_cumulus_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cumulus; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cumulus VALUES (1, 'Omega Centauri', NULL, NULL);
INSERT INTO public.cumulus VALUES (2, 'Ptolomeo', NULL, NULL);
INSERT INTO public.cumulus VALUES (3, 'Omicron', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'NGC 428', 'Spíral', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier', 'Spíral', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC 1427A', 'Irregular', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magallanes', 'Irregular', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus', 'Elliptical', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 1361, 'Solar sytems is here', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Fobos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Deimos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (21, 'Io', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (22, 'Europa', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (23, 'Ganimedes', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (24, 'Calisto', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (25, 'Mimas', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (26, 'Encelado', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (27, 'Tetis', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (28, 'Dione', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (29, 'Rea', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (30, 'Titan', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (31, 'Hiperion', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (32, 'Lapeto', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (33, 'Foebe', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (34, 'Titania', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (35, 'Oberon', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (36, 'Proteo', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (37, 'Caronte', NULL, NULL, NULL, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Jupier', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Urano', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Haumea', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Aldebaran', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Betelgues', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Antares', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', NULL, NULL, NULL, NULL, 1);


--
-- Name: cumulus_cumulus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cumulus_cumulus_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 37, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cumulus cumulus_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cumulus
    ADD CONSTRAINT cumulus_name_key UNIQUE (name);


--
-- Name: cumulus cumulus_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cumulus
    ADD CONSTRAINT cumulus_pkey PRIMARY KEY (cumulus_id);


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
-- Name: galaxy galaxy_cumulus_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cumulus_id_fkey FOREIGN KEY (cumulus_id) REFERENCES public.cumulus(cumulus_id);


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

