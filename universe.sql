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
    name character varying(100) NOT NULL,
    galaxy_type character varying(50),
    distance_from_earth numeric,
    description text,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_id_seq OWNED BY public.galaxy.star_id;


--
-- Name: galaxy_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_stars (
    name character varying(100) NOT NULL,
    description text,
    galaxy_stars_id integer NOT NULL
);


ALTER TABLE public.galaxy_stars OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_stars_galaxy_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_stars_galaxy_stars_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_stars_galaxy_stars_id_seq OWNED BY public.galaxy_stars.galaxy_stars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(100) NOT NULL,
    light character varying(50),
    days integer,
    description text,
    moon_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    has_life boolean,
    distance_from_sun numeric,
    description text,
    planet_id integer NOT NULL,
    planet_number integer
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
    name character varying(100) NOT NULL,
    distance numeric,
    brightness boolean,
    description text,
    star_id integer NOT NULL,
    apparent_magnitude integer
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
-- Name: galaxy star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_id SET DEFAULT nextval('public.galaxy_star_id_seq'::regclass);


--
-- Name: galaxy_stars galaxy_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars ALTER COLUMN galaxy_stars_id SET DEFAULT nextval('public.galaxy_stars_galaxy_stars_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 'spiral', 2.537, NULL, 1, 1);
INSERT INTO public.galaxy VALUES ('antennae', 'interacting', 62.000, NULL, 2, 2);
INSERT INTO public.galaxy VALUES ('milky way', 'spiral', 950.000, NULL, 3, 3);
INSERT INTO public.galaxy VALUES ('black Eye', 'spiral', 24.01, NULL, 4, 4);
INSERT INTO public.galaxy VALUES ('cartwheel', 'ring', 489.2, NULL, 5, 5);
INSERT INTO public.galaxy VALUES ('Cigar', 'starbust', 20.87, NULL, 6, 6);


--
-- Data for Name: galaxy_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_stars VALUES ('alpheratz_andromeda', NULL, 1);
INSERT INTO public.galaxy_stars VALUES ('UY scuti_milk way', NULL, 2);
INSERT INTO public.galaxy_stars VALUES ('sirius milk way', NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('warning crescent 1', '33.6%', 24, NULL, 1);
INSERT INTO public.moon VALUES ('warning crescent 2', '23.1%', 25, NULL, 2);
INSERT INTO public.moon VALUES ('warning crescent 3', '41.1%', 26, NULL, 3);
INSERT INTO public.moon VALUES ('warning cresent 4', '6.9%', 27, NULL, 4);
INSERT INTO public.moon VALUES ('warning cresent 5', '2.2%', 28, NULL, 5);
INSERT INTO public.moon VALUES ('new moon', '0%', 0, NULL, 6);
INSERT INTO public.moon VALUES ('waxing cresent 1', '0.7%', 1, NULL, 7);
INSERT INTO public.moon VALUES ('waxing cresent 2', '3.7%', 2, NULL, 8);
INSERT INTO public.moon VALUES ('waxing cresent 3', '8.7%', 3, NULL, 9);
INSERT INTO public.moon VALUES ('waxing crescent 4', '15.5%', 4, NULL, 10);
INSERT INTO public.moon VALUES ('waxing crescent 11', '23.4%', 5, NULL, 11);
INSERT INTO public.moon VALUES ('waxing crescent 12', '23.2%', 6, NULL, 12);
INSERT INTO public.moon VALUES ('waxing crescent 13', '41.5%', 7, NULL, 13);
INSERT INTO public.moon VALUES ('first quarter', '0%', 8, NULL, 14);
INSERT INTO public.moon VALUES ('waxing gibbouus', '60.3%', 9, NULL, 15);
INSERT INTO public.moon VALUES ('waxing gibbous 2', '69.3%', 10, NULL, 16);
INSERT INTO public.moon VALUES ('waxing gibbous 3', '77.6%', 11, NULL, 17);
INSERT INTO public.moon VALUES ('waxing gibbous 4', '85.1%', 12, NULL, 18);
INSERT INTO public.moon VALUES ('waxing gibbous 5', '91.4%', 13, NULL, 19);
INSERT INTO public.moon VALUES ('full moon', '100%', 16, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mars', false, 212.54, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Jupiter', false, 741.75, NULL, 2, NULL);
INSERT INTO public.planet VALUES ('Venus', false, 107.5, 'Venus is the second planet from the sun and the closest neighboring planet to the Earth', 4, NULL);
INSERT INTO public.planet VALUES ('Earth', true, 149.6, 'Earth, third planet from the Sun and the fifth largest planet in the solar system in term of size and mass', 5, NULL);
INSERT INTO public.planet VALUES ('saturn', false, 1.4739, NULL, 6, NULL);
INSERT INTO public.planet VALUES ('uranus', false, 2.9445, NULL, 7, NULL);
INSERT INTO public.planet VALUES ('Neptune', false, 4.474, NULL, 8, NULL);
INSERT INTO public.planet VALUES ('Pluto', false, 3.7, NULL, 9, NULL);
INSERT INTO public.planet VALUES ('planet nine', false, 56, NULL, 10, NULL);
INSERT INTO public.planet VALUES ('CorRoT-7b', false, 1.6, NULL, 11, NULL);
INSERT INTO public.planet VALUES ('Gliese 581', false, 20.22, NULL, 12, NULL);
INSERT INTO public.planet VALUES ('Mercury', false, 69.571, NULL, 3, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('mirach', 199, true, NULL, 2, NULL);
INSERT INTO public.star VALUES ('UY scuti', 5.219, true, NULL, 3, NULL);
INSERT INTO public.star VALUES ('Sun', 151.14, true, NULL, 4, NULL);
INSERT INTO public.star VALUES ('Sirius', 8.611, true, NULL, 5, NULL);
INSERT INTO public.star VALUES ('vega', 25.05, true, NULL, 6, NULL);
INSERT INTO public.star VALUES ('alpheratz', 96.87, true, NULL, 1, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_id_seq', 6, true);


--
-- Name: galaxy_stars_galaxy_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_stars_galaxy_stars_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


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
-- Name: galaxy_stars galaxy_stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_name_key UNIQUE (name);


--
-- Name: galaxy_stars galaxy_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_stars
    ADD CONSTRAINT galaxy_stars_pkey PRIMARY KEY (galaxy_stars_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);



--
-- Name: galaxy galaxy_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

