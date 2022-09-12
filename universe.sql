--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    is_spiral boolean NOT NULL,
    has_planets_with_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    moon_id integer NOT NULL,
    description text,
    moon_size numeric(4,1),
    is_bright boolean NOT NULL,
    is_blue boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_in_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_in_planet (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon_in_planet OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    description text,
    star_size numeric(4,1),
    moves_towards_earth boolean NOT NULL,
    luminous boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', 1, 'Our galaxy', 13.6, true, true);
INSERT INTO public.galaxy VALUES ('Mayalls object', 2, 'Mayall galaxy', 56.1, false, false);
INSERT INTO public.galaxy VALUES ('Eye of Sauron', 3, 'Eye of Saulon', 15.6, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 'Our moon', 3.5, true, false, 1);
INSERT INTO public.moon VALUES ('Deimos', 2, 'Mars biggest', 23.5, true, false, 2);
INSERT INTO public.moon VALUES ('Phobos', 3, 'Mars smallest', 9.3, true, true, 2);
INSERT INTO public.moon VALUES ('Adrastea', 4, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 5, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 6, 'Jupiter moon', 670.9, true, true, 3);
INSERT INTO public.moon VALUES ('Adrastea', 7, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 8, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 9, 'Jupiter moon', 670.9, true, true, 3);
INSERT INTO public.moon VALUES ('Adrastea', 10, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 11, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 12, 'Jupiter moon', 670.9, true, true, 3);
INSERT INTO public.moon VALUES ('Adrastea', 13, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 14, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 15, 'Jupiter moon', 670.9, true, true, 3);
INSERT INTO public.moon VALUES ('Adrastea', 16, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 17, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 18, 'Jupiter moon', 670.9, true, true, 3);
INSERT INTO public.moon VALUES ('Adrastea', 19, 'Jupiter moon', 129.0, true, false, 3);
INSERT INTO public.moon VALUES ('Amalthea', 20, 'Jupiter moon', 181.3, true, false, 3);
INSERT INTO public.moon VALUES ('Europa', 21, 'Jupiter moon', 670.9, true, true, 3);


--
-- Data for Name: moon_in_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_in_planet VALUES (1, 1);
INSERT INTO public.moon_in_planet VALUES (2, 2);
INSERT INTO public.moon_in_planet VALUES (3, 2);
INSERT INTO public.moon_in_planet VALUES (4, 3);
INSERT INTO public.moon_in_planet VALUES (5, 3);
INSERT INTO public.moon_in_planet VALUES (6, 3);
INSERT INTO public.moon_in_planet VALUES (7, 3);
INSERT INTO public.moon_in_planet VALUES (8, 3);
INSERT INTO public.moon_in_planet VALUES (9, 3);
INSERT INTO public.moon_in_planet VALUES (10, 3);
INSERT INTO public.moon_in_planet VALUES (11, 3);
INSERT INTO public.moon_in_planet VALUES (12, 3);
INSERT INTO public.moon_in_planet VALUES (13, 3);
INSERT INTO public.moon_in_planet VALUES (14, 3);
INSERT INTO public.moon_in_planet VALUES (15, 3);
INSERT INTO public.moon_in_planet VALUES (16, 3);
INSERT INTO public.moon_in_planet VALUES (17, 3);
INSERT INTO public.moon_in_planet VALUES (18, 3);
INSERT INTO public.moon_in_planet VALUES (19, 3);
INSERT INTO public.moon_in_planet VALUES (20, 3);
INSERT INTO public.moon_in_planet VALUES (21, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 'Planet earth, where we are', 0.0, true, true);
INSERT INTO public.planet VALUES ('Mars', 2, 'Planet mars', 140.0, true, true);
INSERT INTO public.planet VALUES ('Jupiter', 3, 'Planet Jupiter', 715.0, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 'Our sun', 45.6, false, true);
INSERT INTO public.star VALUES ('Python', 2, 'Python sun', 45.6, false, false);
INSERT INTO public.star VALUES ('Java', 3, 'Java sun', 45.8, false, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon_in_planet moon_in_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_in_planet
    ADD CONSTRAINT moon_in_planet_pkey PRIMARY KEY (moon_id, planet_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon_in_planet moon_in_planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_in_planet
    ADD CONSTRAINT moon_in_planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon_in_planet moon_in_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_in_planet
    ADD CONSTRAINT moon_in_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

