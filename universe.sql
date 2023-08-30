--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    name character varying(40) NOT NULL,
    age_in_years integer,
    description text,
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
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_years integer,
    hours_for_one_day numeric(8,2),
    description text,
    been_visited boolean,
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
    name character varying(40) NOT NULL,
    age_in_years integer,
    hours_for_one_day numeric(8,2),
    description text,
    has_life boolean,
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
-- Name: rocketship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocketship (
    rocketship_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_it_fast boolean
);


ALTER TABLE public.rocketship OWNER TO freecodecamp;

--
-- Name: rocketship_rocketship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocketship_rocketship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocketship_rocketship_id_seq OWNER TO freecodecamp;

--
-- Name: rocketship_rocketship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocketship_rocketship_id_seq OWNED BY public.rocketship.rocketship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_years integer,
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
-- Name: starship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starship (
    starship_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_it_fast boolean
);


ALTER TABLE public.starship OWNER TO freecodecamp;

--
-- Name: starship_starship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starship_starship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starship_starship_id_seq OWNER TO freecodecamp;

--
-- Name: starship_starship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starship_starship_id_seq OWNED BY public.starship.starship_id;


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
-- Name: rocketship rocketship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocketship ALTER COLUMN rocketship_id SET DEFAULT nextval('public.rocketship_rocketship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: starship starship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship ALTER COLUMN starship_id SET DEFAULT nextval('public.starship_starship_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 222, 'Super Galaxy 1 is one of the best', NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 332, 'Super Galaxy 2 is one of the best', NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 442, 'Super Galaxy 3 is one of the best', NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 111, 'Galaxy 4 er de bedste!', NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 4', 111, 'Galaxy 4 er de bedste!', NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 4', 111, 'Galaxy 4 er de bedste!', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON 1', 111, 0.50, 'Moon 1 is weird and small', true, 1);
INSERT INTO public.moon VALUES (2, 'MOON 2', 222, 0.35, 'Moon 2 is weird and small', true, 2);
INSERT INTO public.moon VALUES (3, 'MOON 3', 333, 10.35, 'Moon 3 is weird and small', true, 3);
INSERT INTO public.moon VALUES (4, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (5, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (6, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (7, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (8, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (9, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (10, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (11, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (12, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (13, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (14, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (15, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (16, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (17, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (18, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (19, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (20, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (21, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (22, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (23, 'Moon', 21, 33.40, 'Moon da beste', false, 3);
INSERT INTO public.moon VALUES (24, 'Moon', 21, 33.40, 'Moon da beste', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 111, 12.20, 'Planet 1 is mine!', true, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 222, 132.20, 'Planet 2 is mine!', true, 2);
INSERT INTO public.planet VALUES (3, 'Planet 2', 222, 132.20, 'Planet 2 is mine!', true, 3);
INSERT INTO public.planet VALUES (4, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (5, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (6, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (7, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (8, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (9, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (10, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (11, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (12, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (13, 'Planet', 233, 32.30, 'Planet est gut', true, 2);
INSERT INTO public.planet VALUES (14, 'Planet', 233, 32.30, 'Planet est gut', true, 2);


--
-- Data for Name: rocketship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocketship VALUES (1, 'Rocket 1', NULL);
INSERT INTO public.rocketship VALUES (2, 'ROcket 2', NULL);
INSERT INTO public.rocketship VALUES (3, 'ROcket 3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 111, 'Star 1 is cool !', 1);
INSERT INTO public.star VALUES (2, 'Star 2', 222, 'Star 2 is cool !', 2);
INSERT INTO public.star VALUES (3, 'Star 3', 333, 'Star 3 is cool !', 3);
INSERT INTO public.star VALUES (4, 'Star', 112, 'Cool Star', 4);
INSERT INTO public.star VALUES (5, 'Star', 112, 'Cool Star', 4);
INSERT INTO public.star VALUES (6, 'Star', 112, 'Cool Star', 4);


--
-- Data for Name: starship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starship VALUES (1, 'Starship 1', NULL);
INSERT INTO public.starship VALUES (2, 'Startship 2', NULL);
INSERT INTO public.starship VALUES (3, 'Starship 3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: rocketship_rocketship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocketship_rocketship_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starship_starship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starship_starship_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: rocketship rocketship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocketship
    ADD CONSTRAINT rocketship_pkey PRIMARY KEY (rocketship_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: starship starship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_pkey PRIMARY KEY (starship_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_id2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id2 UNIQUE (moon_id);


--
-- Name: planet unique_idp; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_idp UNIQUE (planet_id);


--
-- Name: rocketship unique_idr; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocketship
    ADD CONSTRAINT unique_idr UNIQUE (rocketship_id);


--
-- Name: star unique_ids; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_ids UNIQUE (star_id);


--
-- Name: starship unique_idss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT unique_idss UNIQUE (starship_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

