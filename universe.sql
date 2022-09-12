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
-- Name: authors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.authors (
    authors_id integer NOT NULL,
    name character varying(30),
    username character varying(30) NOT NULL,
    age integer NOT NULL,
    gender integer NOT NULL
);


ALTER TABLE public.authors OWNER TO freecodecamp;

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_author_id_seq OWNER TO freecodecamp;

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.authors_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    is_spiral boolean NOT NULL,
    has_planets_with_life boolean NOT NULL,
    number_1 integer NOT NULL,
    number_2 integer NOT NULL
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
-- Name: galaxy_number_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_number_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_number_1_seq OWNER TO freecodecamp;

--
-- Name: galaxy_number_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_number_1_seq OWNED BY public.galaxy.number_1;


--
-- Name: galaxy_number_2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_number_2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_number_2_seq OWNER TO freecodecamp;

--
-- Name: galaxy_number_2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_number_2_seq OWNED BY public.galaxy.number_2;


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
    planet_id integer NOT NULL,
    number_1 integer NOT NULL,
    number_2 integer NOT NULL
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
-- Name: moon_number_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_number_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_number_1_seq OWNER TO freecodecamp;

--
-- Name: moon_number_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_number_1_seq OWNED BY public.moon.number_1;


--
-- Name: moon_number_2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_number_2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_number_2_seq OWNER TO freecodecamp;

--
-- Name: moon_number_2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_number_2_seq OWNED BY public.moon.number_2;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_id integer NOT NULL,
    description text,
    distance_from_earth numeric(4,1),
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    number_1 integer NOT NULL,
    number_2 integer NOT NULL
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
-- Name: planet_number_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_number_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_number_1_seq OWNER TO freecodecamp;

--
-- Name: planet_number_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_number_1_seq OWNED BY public.planet.number_1;


--
-- Name: planet_number_2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_number_2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_number_2_seq OWNER TO freecodecamp;

--
-- Name: planet_number_2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_number_2_seq OWNED BY public.planet.number_2;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    star_id integer NOT NULL,
    description text,
    star_size numeric(4,1),
    moves_towards_earth boolean NOT NULL,
    luminous boolean NOT NULL,
    number_1 integer NOT NULL,
    number_2 integer NOT NULL
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
-- Name: star_number_1_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_number_1_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_number_1_seq OWNER TO freecodecamp;

--
-- Name: star_number_1_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_number_1_seq OWNED BY public.star.number_1;


--
-- Name: star_number_2_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_number_2_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_number_2_seq OWNER TO freecodecamp;

--
-- Name: star_number_2_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_number_2_seq OWNED BY public.star.number_2;


--
-- Name: authors authors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors ALTER COLUMN authors_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy number_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN number_1 SET DEFAULT nextval('public.galaxy_number_1_seq'::regclass);


--
-- Name: galaxy number_2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN number_2 SET DEFAULT nextval('public.galaxy_number_2_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: moon number_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN number_1 SET DEFAULT nextval('public.moon_number_1_seq'::regclass);


--
-- Name: moon number_2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN number_2 SET DEFAULT nextval('public.moon_number_2_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: planet number_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN number_1 SET DEFAULT nextval('public.planet_number_1_seq'::regclass);


--
-- Name: planet number_2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN number_2 SET DEFAULT nextval('public.planet_number_2_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: star number_1; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN number_1 SET DEFAULT nextval('public.star_number_1_seq'::regclass);


--
-- Name: star number_2; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN number_2 SET DEFAULT nextval('public.star_number_2_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.authors VALUES (1, 'Peter', 'petermaara2', 23, 1);
INSERT INTO public.authors VALUES (2, 'mwass', 'mwass', 24, 0);
INSERT INTO public.authors VALUES (3, 'wendua', 'wendua', 33, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', 1, 'Our galaxy', 13.6, true, true, 1, 1);
INSERT INTO public.galaxy VALUES ('Mayalls object', 2, 'Mayall galaxy', 56.1, false, false, 2, 2);
INSERT INTO public.galaxy VALUES ('Eye of Sauron', 3, 'Eye of Saulon', 15.6, false, false, 3, 3);
INSERT INTO public.galaxy VALUES ('Aye', 4, 'Aye', 78.0, true, false, 4, 4);
INSERT INTO public.galaxy VALUES ('Aye', 5, 'Aye', 78.0, true, false, 5, 5);
INSERT INTO public.galaxy VALUES ('Aye', 6, 'Aye', 78.0, true, false, 6, 6);
INSERT INTO public.galaxy VALUES ('Aye', 7, 'Aye', 78.0, true, false, 7, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 'Our moon', 3.5, true, false, 1, 1, 1);
INSERT INTO public.moon VALUES ('Deimos', 2, 'Mars biggest', 23.5, true, false, 2, 2, 2);
INSERT INTO public.moon VALUES ('Phobos', 3, 'Mars smallest', 9.3, true, true, 2, 3, 3);
INSERT INTO public.moon VALUES ('Adrastea', 4, 'Jupiter moon', 129.0, true, false, 3, 4, 4);
INSERT INTO public.moon VALUES ('Amalthea', 5, 'Jupiter moon', 181.3, true, false, 3, 5, 5);
INSERT INTO public.moon VALUES ('Europa', 6, 'Jupiter moon', 670.9, true, true, 3, 6, 6);
INSERT INTO public.moon VALUES ('Adrastea', 7, 'Jupiter moon', 129.0, true, false, 3, 7, 7);
INSERT INTO public.moon VALUES ('Amalthea', 8, 'Jupiter moon', 181.3, true, false, 3, 8, 8);
INSERT INTO public.moon VALUES ('Europa', 9, 'Jupiter moon', 670.9, true, true, 3, 9, 9);
INSERT INTO public.moon VALUES ('Adrastea', 10, 'Jupiter moon', 129.0, true, false, 3, 10, 10);
INSERT INTO public.moon VALUES ('Amalthea', 11, 'Jupiter moon', 181.3, true, false, 3, 11, 11);
INSERT INTO public.moon VALUES ('Europa', 12, 'Jupiter moon', 670.9, true, true, 3, 12, 12);
INSERT INTO public.moon VALUES ('Adrastea', 13, 'Jupiter moon', 129.0, true, false, 3, 13, 13);
INSERT INTO public.moon VALUES ('Amalthea', 14, 'Jupiter moon', 181.3, true, false, 3, 14, 14);
INSERT INTO public.moon VALUES ('Europa', 15, 'Jupiter moon', 670.9, true, true, 3, 15, 15);
INSERT INTO public.moon VALUES ('Adrastea', 16, 'Jupiter moon', 129.0, true, false, 3, 16, 16);
INSERT INTO public.moon VALUES ('Amalthea', 17, 'Jupiter moon', 181.3, true, false, 3, 17, 17);
INSERT INTO public.moon VALUES ('Europa', 18, 'Jupiter moon', 670.9, true, true, 3, 18, 18);
INSERT INTO public.moon VALUES ('Adrastea', 19, 'Jupiter moon', 129.0, true, false, 3, 19, 19);
INSERT INTO public.moon VALUES ('Amalthea', 20, 'Jupiter moon', 181.3, true, false, 3, 20, 20);
INSERT INTO public.moon VALUES ('Europa', 21, 'Jupiter moon', 670.9, true, true, 3, 21, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 'Planet earth, where we are', 0.0, true, true, 1, 1);
INSERT INTO public.planet VALUES ('Mars', 2, 'Planet mars', 140.0, true, true, 2, 2);
INSERT INTO public.planet VALUES ('Jupiter', 3, 'Planet Jupiter', 715.0, true, true, 3, 3);
INSERT INTO public.planet VALUES ('mercury', 4, 'Planet mercury', 45.0, true, true, 4, 4);
INSERT INTO public.planet VALUES ('venus', 5, 'Planet venus', 34.0, true, true, 5, 5);
INSERT INTO public.planet VALUES ('mercury', 6, 'Planet mercury', 45.0, true, true, 6, 6);
INSERT INTO public.planet VALUES ('venus', 7, 'Planet venus', 34.0, true, true, 7, 7);
INSERT INTO public.planet VALUES ('mercury', 8, 'Planet mercury', 45.0, true, true, 8, 8);
INSERT INTO public.planet VALUES ('venus', 9, 'Planet venus', 34.0, true, true, 9, 9);
INSERT INTO public.planet VALUES ('mercury', 108, 'Planet mercury', 45.0, true, true, 10, 10);
INSERT INTO public.planet VALUES ('venus', 11, 'Planet venus', 34.0, true, true, 11, 11);
INSERT INTO public.planet VALUES ('mercury', 12, 'Planet mercury', 45.0, true, true, 12, 12);
INSERT INTO public.planet VALUES ('venus', 13, 'Planet venus', 34.0, true, true, 13, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 'Our sun', 45.6, false, true, 1, 1);
INSERT INTO public.star VALUES ('Python', 2, 'Python sun', 45.6, false, false, 2, 2);
INSERT INTO public.star VALUES ('Java', 3, 'Java sun', 45.8, false, false, 3, 3);
INSERT INTO public.star VALUES ('scala', 4, 'Scala sun', 585.0, false, true, 4, 4);
INSERT INTO public.star VALUES ('R', 5, 'Scala sun', 585.0, false, true, 5, 5);
INSERT INTO public.star VALUES ('Calculus', 6, 'Scala sun', 585.0, false, true, 6, 6);
INSERT INTO public.star VALUES ('Algebra', 7, 'Scala sun', 585.0, false, true, 7, 7);


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: galaxy_number_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_number_1_seq', 7, true);


--
-- Name: galaxy_number_2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_number_2_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: moon_number_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_number_1_seq', 21, true);


--
-- Name: moon_number_2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_number_2_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: planet_number_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_number_1_seq', 13, true);


--
-- Name: planet_number_2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_number_2_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: star_number_1_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_number_1_seq', 7, true);


--
-- Name: star_number_2_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_number_2_seq', 7, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (authors_id);


--
-- Name: authors authors_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_username_key UNIQUE (username);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

