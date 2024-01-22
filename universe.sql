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
    galaxy_id integer NOT NULL,
    age numeric,
    description text,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30) NOT NULL
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
    satellite integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
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
    material text,
    name character varying(30) NOT NULL,
    distance_from_earth_in_miles numeric NOT NULL,
    more_info_id integer NOT NULL,
    is_spherical boolean
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    satellite integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
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
    age numeric,
    description text,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 13.8, 'Our home galaxy', 'Milky Way', 'Spiral');
INSERT INTO public.galaxy VALUES (2, 10.2, 'Closest galaxy to Milky Way', 'Andromeda', 'Spiral');
INSERT INTO public.galaxy VALUES (3, 8.5, 'Irregular galaxy', 'Small Magellanic Cloud', 'Irregular');
INSERT INTO public.galaxy VALUES (4, 11.3, 'Elliptical galaxy', 'Messier 87', 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 14.0, 'Dwarf galaxy', 'NGC 6822', 'Irregular');
INSERT INTO public.galaxy VALUES (6, 12.6, 'Barred spiral galaxy', 'NGC 1300', 'Barred Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 3.2, 'Earth’s only natural satellite', false, false, 'Moon', 1);
INSERT INTO public.moon VALUES (2, 1, 2.5, 'Largest moon of Jupiter', false, false, 'Ganeemede', 5);
INSERT INTO public.moon VALUES (3, 2, 4.8, 'Second-largest moon of Saturn', false, false, 'Titan', 3);
INSERT INTO public.moon VALUES (4, 1, 6.1, 'Closest moon to Neptune', false, false, 'Triton', 11);
INSERT INTO public.moon VALUES (5, 1, 5.4, 'Largest moon of Mars', false, false, 'Phonees', 4);
INSERT INTO public.moon VALUES (6, 1, 4.3, 'Mars moon with unique grooved surface', false, false, 'Phobos', 4);
INSERT INTO public.moon VALUES (7, 2, 3.8, 'Mars moon with a reddish appearance', false, false, 'Deimus', 4);
INSERT INTO public.moon VALUES (8, 1, 1.5, 'Largest moon of Saturn', false, false, 'Rhea', 3);
INSERT INTO public.moon VALUES (9, 2, 2.9, 'Saturn moon with a prominent equatorial ridge', false, false, 'Laepetus', 3);
INSERT INTO public.moon VALUES (10, 1, 3.1, 'Jupiter moon with extensive surface grooves', false, false, 'Callisto', 5);
INSERT INTO public.moon VALUES (11, 1, 2.6, 'Saturn moon with an atmosphere', false, false, 'Titen', 3);
INSERT INTO public.moon VALUES (12, 1, 4.1, 'Jupiter moon with active volcanoes', false, false, 'Loo', 5);
INSERT INTO public.moon VALUES (13, 2, 3.3, 'Mars moon with a smooth surface', false, false, 'Phebes', 4);
INSERT INTO public.moon VALUES (14, 1, 5.7, 'Mars moon with an irregular shape', false, false, 'Deimos', 4);
INSERT INTO public.moon VALUES (15, 1, 2.8, 'Jupiter moon with a subsurface ocean', false, false, 'Europa', 5);
INSERT INTO public.moon VALUES (16, 2, 4.5, 'Saturn moon with a distinctive two-toned appearance', false, false, 'Lapetus', 3);
INSERT INTO public.moon VALUES (17, 1, 3.9, 'Uranus moon with a retrograde orbit', false, false, 'Minda', 6);
INSERT INTO public.moon VALUES (18, 1, 6.2, 'Neptune moon with geysers', false, false, 'Triteon', 11);
INSERT INTO public.moon VALUES (19, 2, 5.1, 'Neptune moon with a dark equatorial region', false, false, 'Proteus', 11);
INSERT INTO public.moon VALUES (20, 1, 4.8, 'Jupiter moon with a thin atmosphere', false, false, 'Ganymede', 5);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES ('Rock', 'Moon', 238900, 1, true);
INSERT INTO public.more_info VALUES ('Gas', 'Jupiter', 484, 2, false);
INSERT INTO public.more_info VALUES ('Ice', 'Titan', 886, 3, true);
INSERT INTO public.more_info VALUES ('Ice', 'Neptune', 2.7, 4, true);
INSERT INTO public.more_info VALUES ('Rock', 'Mars', 225, 5, true);
INSERT INTO public.more_info VALUES ('Rock', 'Phobos', 9, 6, true);
INSERT INTO public.more_info VALUES ('Rock', 'Deimos', 12, 7, true);
INSERT INTO public.more_info VALUES ('Ice', 'Rhea', 1.2, 8, true);
INSERT INTO public.more_info VALUES ('Ice', 'Iapetus', 2.2, 9, true);
INSERT INTO public.more_info VALUES ('Ice', 'Callisto', 628, 10, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 4.0, 'Third planet from the sun', true, true, 'Earth', 1);
INSERT INTO public.planet VALUES (2, 2, 1.8, 'Closest planet to the sun', false, false, 'Mercury', 1);
INSERT INTO public.planet VALUES (3, 1, 6.2, 'Known for its ring system', false, false, 'Saturn', 2);
INSERT INTO public.planet VALUES (4, 1, 4.5, 'Red planet', false, false, 'Mars', 1);
INSERT INTO public.planet VALUES (5, 2, 8.1, 'Gas giant with a prominent storm', false, false, 'Jupiter', 3);
INSERT INTO public.planet VALUES (6, 1, 5.5, 'Ice giant with rings', false, false, 'Uranus', 3);
INSERT INTO public.planet VALUES (7, 1, 3.3, 'Dwarf planet in the Kuiper Belt', false, false, 'Pluto', 1);
INSERT INTO public.planet VALUES (8, 1, 2.7, 'Closest known exoplanet to Earth', false, false, 'Proxima Centauri b', 4);
INSERT INTO public.planet VALUES (9, 1, 7.6, 'Hot Jupiter with extreme temperatures', false, false, 'WASP-121b', 5);
INSERT INTO public.planet VALUES (10, 1, 6.8, 'Exoplanet with potential habitability', false, false, 'Kepler-186f', 6);
INSERT INTO public.planet VALUES (11, 1, 4.1, 'Ice giant with faint rings', false, false, 'Neptune', 3);
INSERT INTO public.planet VALUES (12, 1, 5.9, 'Exoplanet with a dense atmosphere', false, false, 'HD 209458b', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4.5, 'Our sun', 'Sun', 1);
INSERT INTO public.star VALUES (2, 7.2, 'Brightest star in the night sky', 'Sirius', 1);
INSERT INTO public.star VALUES (3, 5.8, 'Red giant star', 'Betelgeuse', 2);
INSERT INTO public.star VALUES (4, 8.9, 'Binary star system', 'Alpha Centauri', 2);
INSERT INTO public.star VALUES (5, 3.2, 'Blue supergiant star', 'Rigel', 3);
INSERT INTO public.star VALUES (6, 6.4, 'Binary star system', 'Antares', 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: more_info more_info_distance_from_earth_in_miles_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_distance_from_earth_in_miles_key UNIQUE (distance_from_earth_in_miles);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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

