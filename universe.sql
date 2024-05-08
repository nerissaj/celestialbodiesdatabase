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
    name character varying(30),
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
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
    name character varying(30),
    moon_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
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
    name character varying(30),
    planet_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
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
    name character varying(30),
    star_id integer NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    name character varying(30),
    universe_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years numeric(4,1),
    is_spherical boolean,
    has_life boolean,
    planet_types integer,
    galaxy_types integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Nordic', 1, 'Lord of the Rings World', true, false);
INSERT INTO public.galaxy VALUES ('Suzy', 2, 'Brown', false, true);
INSERT INTO public.galaxy VALUES ('Bubba', 3, 'Green', false, true);
INSERT INTO public.galaxy VALUES ('Sammy', 4, 'Yellow haze', false, true);
INSERT INTO public.galaxy VALUES ('Fred', 5, 'SpongeBob World', false, false);
INSERT INTO public.galaxy VALUES ('Michael', 6, 'Bozarro World', false, false);
INSERT INTO public.galaxy VALUES ('Eight', 7, 'Chocolate Fountain World', true, false);
INSERT INTO public.galaxy VALUES ('Nine', 8, 'Pink', false, true);
INSERT INTO public.galaxy VALUES ('Ten', 9, 'Harry Potter World', false, false);
INSERT INTO public.galaxy VALUES ('Pam', 29, 'Rings Planet', true, false);
INSERT INTO public.galaxy VALUES ('ELeven', 30, 'Cookie World', true, true);
INSERT INTO public.galaxy VALUES ('Twelve', 31, 'Pink Panther', true, false);
INSERT INTO public.galaxy VALUES ('Thirteen', 32, 'Black Panthers World', true, true);
INSERT INTO public.galaxy VALUES ('Fourteen', 33, 'Bs', false, true);
INSERT INTO public.galaxy VALUES ('Fifteen', 34, 'Body Butter Lux', true, true);
INSERT INTO public.galaxy VALUES ('Sixteen', 35, 'ShoeBox Alley', true, false);
INSERT INTO public.galaxy VALUES ('Seventeen', 36, 'Beauty Bot World', false, true);
INSERT INTO public.galaxy VALUES ('Eighteen', 37, 'Horse Country', false, false);
INSERT INTO public.galaxy VALUES ('Nineteen', 38, 'Liveable Planet', true, true);
INSERT INTO public.galaxy VALUES ('Twenty', 39, 'Popcorn Alley', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Apple', 21, 'Lord of the Rings World', true, false);
INSERT INTO public.moon VALUES ('Banana', 22, 'Brown', false, true);
INSERT INTO public.moon VALUES ('Candy', 23, 'Green', false, true);
INSERT INTO public.moon VALUES ('Johnny', 24, 'Yellow haze', false, true);
INSERT INTO public.moon VALUES ('Paul', 25, 'SpongeBob World', true, true);
INSERT INTO public.moon VALUES ('Cop', 26, 'Bozarro World', false, false);
INSERT INTO public.moon VALUES ('Fire', 27, 'Chocolate Fountain World', false, true);
INSERT INTO public.moon VALUES ('Lilly', 28, 'Pink', true, true);
INSERT INTO public.moon VALUES ('Harry', 29, 'Harry Potter World', false, true);
INSERT INTO public.moon VALUES ('Lawrence', 30, 'Horse Country', true, false);
INSERT INTO public.moon VALUES ('Bettie', 31, 'Beauty Bot World', false, true);
INSERT INTO public.moon VALUES ('Jason', 32, 'Liveable Planet', true, true);
INSERT INTO public.moon VALUES ('Kassidy', 33, 'Popcorn Alley', false, true);
INSERT INTO public.moon VALUES ('Girly', 34, 'Pink Panther', false, false);
INSERT INTO public.moon VALUES ('Ringo', 35, 'Rings Planet', false, false);
INSERT INTO public.moon VALUES ('Cookie', 36, 'Cookie World', true, true);
INSERT INTO public.moon VALUES ('Ferris', 37, 'Black Panthers World', false, true);
INSERT INTO public.moon VALUES ('Bull', 38, 'Bs', false, true);
INSERT INTO public.moon VALUES ('Baby', 39, 'Body Butter Lux', true, true);
INSERT INTO public.moon VALUES ('Nike', 40, 'ShoeBox Alley', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('A', 1, 'Lord of the Rings World', true, false);
INSERT INTO public.planet VALUES ('B', 2, 'Brown', true, false);
INSERT INTO public.planet VALUES ('C', 3, 'Green', false, true);
INSERT INTO public.planet VALUES ('D', 4, 'Yellow haze', true, true);
INSERT INTO public.planet VALUES ('E', 5, 'SpongeBob World', true, true);
INSERT INTO public.planet VALUES ('F', 6, 'Bozarro World', true, false);
INSERT INTO public.planet VALUES ('G', 7, 'Chocolate Fountain World', true, false);
INSERT INTO public.planet VALUES ('H', 8, 'Pink', true, false);
INSERT INTO public.planet VALUES ('I', 9, 'Harry Potter World', false, false);
INSERT INTO public.planet VALUES ('J', 10, 'Horse Country', true, false);
INSERT INTO public.planet VALUES ('K', 11, 'Beauty Bot World', false, true);
INSERT INTO public.planet VALUES ('L', 12, 'Liveable Planet', true, false);
INSERT INTO public.planet VALUES ('M', 13, 'ShoeBox Alley', false, false);
INSERT INTO public.planet VALUES ('N', 14, 'Bs', true, true);
INSERT INTO public.planet VALUES ('O', 15, 'Body Butter Lux', false, true);
INSERT INTO public.planet VALUES ('P', 16, 'Black Panthers World', true, false);
INSERT INTO public.planet VALUES ('Q', 17, 'Popcorn Alley', true, false);
INSERT INTO public.planet VALUES ('R', 18, 'Cookie World', true, false);
INSERT INTO public.planet VALUES ('S', 19, 'Pink Panther', true, true);
INSERT INTO public.planet VALUES ('T', 20, 'Rings Planet', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Pam', 1, 'Brown', true, false);
INSERT INTO public.star VALUES ('George', 2, 'Green', false, false);
INSERT INTO public.star VALUES ('Sam', 3, 'Yellow haze', false, true);
INSERT INTO public.star VALUES ('Sheila', 4, 'SpongeBob World', false, true);
INSERT INTO public.star VALUES ('David', 5, 'Bozarro World', false, true);
INSERT INTO public.star VALUES ('Jack', 6, 'Chocolate Fountain World', false, false);
INSERT INTO public.star VALUES ('Pinky', 14, 'Pink', true, true);
INSERT INTO public.star VALUES ('Yes', 15, 'Harry Potter World', false, false);
INSERT INTO public.star VALUES ('Clark', 16, 'Horse Country', true, true);
INSERT INTO public.star VALUES ('Manny', 17, 'Beauty Bot World', true, true);
INSERT INTO public.star VALUES ('Lily', 18, 'Liveable Planet', false, false);
INSERT INTO public.star VALUES ('Harrison', 19, 'Cookie World', true, false);
INSERT INTO public.star VALUES ('Tomato', 20, 'Pink Panther', true, false);
INSERT INTO public.star VALUES ('Jobby', 21, 'Rings Planet', true, false);
INSERT INTO public.star VALUES ('Johnny', 22, 'Black Panthers World', true, true);
INSERT INTO public.star VALUES ('Peter', 23, 'Bs', false, false);
INSERT INTO public.star VALUES ('Harry', 24, 'Body Butter Lux', true, false);
INSERT INTO public.star VALUES ('Sandy', 25, 'ShoeBox Alley', false, true);
INSERT INTO public.star VALUES ('Poppy', 26, 'Popcorn Alley', true, true);
INSERT INTO public.star VALUES ('Jason', 27, 'Lord of the Rings World', true, true);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES ('Ham', 1, 'Pink', 65.4, true, false, 2, 4);
INSERT INTO public.universe VALUES ('Burger', 2, 'Brown', 877.4, false, false, 34, 1);
INSERT INTO public.universe VALUES ('Eggs', 3, 'Yellow', 222.2, false, true, 88, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 39, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 27, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_description_key UNIQUE (description);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon moon_description_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_fkey FOREIGN KEY (description) REFERENCES public.planet(description);


--
-- Name: planet planet_description_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_fkey FOREIGN KEY (description) REFERENCES public.star(description);


--
-- Name: star star_description_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_fkey FOREIGN KEY (description) REFERENCES public.galaxy(description);


--
-- PostgreSQL database dump complete
--

