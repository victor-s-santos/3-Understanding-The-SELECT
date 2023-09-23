--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-2.pgdg110+2)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    summary text,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp with time zone
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_seq OWNER TO postgres;

--
-- Name: company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;


--
-- Name: fast_food_nutrition_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fast_food_nutrition_menu (
    id integer NOT NULL,
    "Company" text NOT NULL,
    "Item" text NOT NULL,
    "Calories" integer,
    "CaloriesFromFat" integer,
    "TotalFat(g)" double precision,
    "SaturatedFat(g)" double precision,
    "TransFat(g)" double precision,
    "Cholesterol(mg)" integer,
    "Sodium(mg)" integer,
    "Carbs(g)" double precision,
    "Fiber(g)" double precision,
    "Sugars(g)" double precision,
    "Protein(g)" double precision,
    "WeightWatchersPnts" double precision
);


ALTER TABLE public.fast_food_nutrition_menu OWNER TO postgres;

--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fast_food_nutrition_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fast_food_nutrition_menu_id_seq OWNER TO postgres;

--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fast_food_nutrition_menu_id_seq OWNED BY public.fast_food_nutrition_menu.id;


--
-- Name: fastfoodnutritionmenu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fastfoodnutritionmenu (
    id integer NOT NULL,
    "Company" text,
    "Item" text,
    "Calories" integer,
    "CaloriesFromFat" integer,
    "TotalFat(g)" double precision,
    "SaturatedFat(g)" double precision,
    "TransFat(g)" double precision,
    "Cholesterol(mg)" integer,
    "Sodium(mg)" integer,
    "Carbs(g)" double precision,
    "Fiber(g)" double precision,
    "Sugars(g)" double precision,
    "Protein(g)" double precision,
    "WeightWatchersPnts" double precision
);


ALTER TABLE public.fastfoodnutritionmenu OWNER TO postgres;

--
-- Name: nutritional_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nutritional_info (
    id integer NOT NULL,
    snack_name character varying(100),
    id_snack integer NOT NULL,
    company_name character varying(100),
    id_company integer NOT NULL,
    "Calories" integer,
    "CaloriesFromFat" integer,
    "TotalFat(g)" double precision,
    "SaturatedFat(g)" double precision,
    "TransFat(g)" double precision,
    "Cholesterol(mg)" integer,
    "Sodium(mg)" integer,
    "Carbs(g)" double precision,
    "Fiber(g)" double precision,
    "Sugars(g)" double precision,
    "Protein(g)" double precision,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp with time zone
);


ALTER TABLE public.nutritional_info OWNER TO postgres;

--
-- Name: nutritional_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nutritional_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nutritional_info_id_seq OWNER TO postgres;

--
-- Name: nutritional_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nutritional_info_id_seq OWNED BY public.nutritional_info.id;


--
-- Name: snack; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.snack (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    company_name character varying(100) NOT NULL,
    summary text,
    id_company integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp with time zone
);


ALTER TABLE public.snack OWNER TO postgres;

--
-- Name: snack_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.snack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snack_id_seq OWNER TO postgres;

--
-- Name: snack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.snack_id_seq OWNED BY public.snack.id;


--
-- Name: company id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);


--
-- Name: fast_food_nutrition_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fast_food_nutrition_menu ALTER COLUMN id SET DEFAULT nextval('public.fast_food_nutrition_menu_id_seq'::regclass);


--
-- Name: nutritional_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutritional_info ALTER COLUMN id SET DEFAULT nextval('public.nutritional_info_id_seq'::regclass);


--
-- Name: snack id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snack ALTER COLUMN id SET DEFAULT nextval('public.snack_id_seq'::regclass);


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id, name, summary, "createdAt", "updatedAt") FROM stdin;
1	McDonald’s	\N	2023-09-18 16:29:08.70455-03	\N
2	Wendy’s	\N	2023-09-18 16:29:08.70455-03	\N
3	Pizza Hut	\N	2023-09-18 16:29:08.70455-03	\N
4	Taco Bell	\N	2023-09-18 16:29:08.70455-03	\N
5	KFC	\N	2023-09-18 16:29:08.70455-03	\N
6	Burger King	\N	2023-09-18 16:29:08.70455-03	\N
\.


--
-- Data for Name: fast_food_nutrition_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fast_food_nutrition_menu (id, "Company", "Item", "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)", "Protein(g)", "WeightWatchersPnts") FROM stdin;
93	McDonald’s	Hotcakes	350	80	9	2	0	20	590	60	3	14	8	358
458	Burger King	16 fl oz	0	0	0	0	0	0	70	0	0	0	0	0
987	Taco Bell	Water	0	0	0	0	0	0	0	0	0	0	0	\N
1066	Taco Bell	 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1068	Taco Bell	7-Up (30 fl oz)	350	\N	\N	\N	\N	125	87	\N	\N	87	\N	\N
1	McDonald’s	Hamburger	250	80	9	3.5	0.5	25	520	31	2	6	12	247.5
2	McDonald’s	Cheeseburger	300	110	12	6	0.5	40	750	33	2	6	15	297
3	McDonald’s	Double Cheeseburger	440	210	23	11	1.5	80	1150	34	2	7	25	433
4	McDonald’s	McDouble	390	170	19	8	1	65	920	33	2	7	22	383
5	McDonald’s	 Quarter Pounder® with Cheese	510	230	26	12	1.5	90	1190	40	3	9	29	502
6	McDonald’s	Double Quarter Pounder® with Cheese	740	380	42	19	2.5	155	1380	40	3	9	48	720
7	McDonald’s	Big Mac®	540	260	29	10	1.5	75	1040	45	3	9	25	534
8	McDonald’s	Big N’ Tasty®	460	220	24	8	1.5	70	720	37	3	8	24	452
9	McDonald’s	Big N’ Tasty® with Cheese	510	250	28	11	1.5	85	960	38	3	8	27	502
10	McDonald’s	Angus Bacon & Cheese	790	350	39	17	2	145	2070	63	4	13	45	775
11	McDonald’s	Angus Deluxe	750	350	39	16	2	135	1700	61	4	10	40	736
12	McDonald’s	Angus Mushroom & Swiss	770	360	40	17	2	135	1170	59	4	8	44	751
13	McDonald’s	Filet-O-Fish®	380	170	18	3.5	0	40	640	38	2	5	15	373.5
14	McDonald’s	McChicken ®	360	150	16	3	0	35	830	40	2	5	14	354
15	McDonald’s	McRib ®	500	240	26	10	0	70	980	44	3	11	22	499
16	McDonald’s	Premium Grilled Chicken Classic Sandwich	360	80	9	2	0	65	820	41	4	8	27	343
788	KFC	Milk 1%	90	2	1.5	0	10	105	10	0	10	7	94.5	\N
478	Burger King	16 fl oz	220	0	0	0	0	0	55	61	0	61	0	281
21	McDonald’s	Premium Crispy Chicken Ranch BLT Sandwich	540	210	23	4.5	0	55	1160	56	3	11	27	528.5
22	McDonald’s	Southern Style Crispy Chicken Sandwich	400	150	17	3	0	45	1030	39	1	6	24	385
23	McDonald’s	Ranch Snack Wrap® (Crispy)	340	150	17	4.5	0	30	810	33	1	2	14	332.5
24	McDonald’s	Ranch Snack Wrap® (Grilled)	270	90	10	4	0	45	830	26	1	2	18	258
25	McDonald’s	Honey Mustard Snack Wrap® (Crispy)	330	140	16	4.5	0	30	780	34	1	4	14	324.5
26	McDonald’s	Honey Mustard Snack Wrap® (Grilled)	260	80	9	3.5	0	45	800	27	1	4	18	249.5
27	McDonald’s	Chipotle BBQ Snack Wrap® (Crispy)	330	140	15	4.5	0	30	810	35	1	4	14	324.5
28	McDonald’s	Chipotle BBQ Snack Wrap® (Grilled)	260	80	9	3.5	0	45	830	28	1	5	18	250.5
29	McDonald’s	Angus Bacon & Cheese Snack Wrap	390	190	21	9	1	75	1080	28	1	4	21	382
30	McDonald’s	Angus Chipotle BBQ Bacon	800	350	39	18	2	145	2020	66	4	16	45	789
31	McDonald’s	Angus Chipotle BBQ Bacon Snack Wrap	400	190	22	10	1	75	1060	30	1	6	21	395
32	McDonald’s	Angus Deluxe Snack Wrap	410	220	25	10	1.5	75	990	27	2	3	20	403
33	McDonald’s	Angus Mushroom & Swiss Snack Wrap	430	230	26	10	1.5	75	730	27	2	2	22	420
34	McDonald’s	Mac Snack Wrap	330	170	19	7	1	45	690	26	1	3	15	325
699	KFC	Drumstick	190	14	2.5	0	40	510	6	1	0	9	183.5	\N
1051	Taco Bell	Diet Dr Pepper® (20 fl oz)	0	\N	\N	\N	\N	120	0	\N	\N	0	\N	\N
1043	Taco Bell	Pepsi® (16 fl oz)	200	\N	\N	\N	\N	45	55	\N	\N	55	\N	\N
48	McDonald’s	Chicken Selects® Premium Breast Strips (5 pc)	660	360	40	6	0	85	1680	39	0	0	38	628
49	McDonald’s	Spicy Buffalo Sauce	60	50	6	1	0	0	800	1	1	0	0	61
50	McDonald’s	Creamy Ranch Sauce	170	160	18	3	0	10	270	2	0	1	0	174
51	McDonald’s	Tangy Honey Mustard Sauce	60	20	2	0	0	5	140	10	0	8	0	68
52	McDonald’s	Southwestern Chipotle Barbeque Sauce	60	0	0	0	0	0	210	15	1	11	0	71
53	McDonald’s	Premium Southwest Salad with Grilled Chicken	320	80	9	3	0	70	960	30	6	11	30	304
54	McDonald’s	Premium Southwest Salad with Crispy Chicken	430	180	20	4	0	55	920	38	6	12	26	420
55	McDonald’s	Premium Southwest Salad (without chicken)	140	40	4.5	2	0	10	150	20	6	6	6	142
56	McDonald’s	Premium Bacon Ranch Salad with Grilled Chicken	260	90	9	4	0	90	1010	12	3	5	33	236
65	McDonald’s	Salad Dressings	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
698	KFC	Breast	540	40	7	0	100	1390	14	2	1	31	517	\N
690	KFC	Chicken Breast	770	60	10	0	105	1530	21	1	1	35	746	\N
965	Taco Bell	Black Beans & Rice (V)	170	30	3.5	0	0	0	320	31	4	0	4	\N
41	McDonald’s	Chicken McNuggets® (6 piece)	280	160	18	3	0	40	540	18	1	0	13	270
42	McDonald’s	Chicken McNuggets® (10 piece)	470	270	30	5	0	65	900	30	2	0	22	453
43	McDonald’s	Barbeque Sauce	50	0	0	0	0	0	260	12	0	10	0	60
44	McDonald’s	Honey	50	0	0	0	0	0	0	12	0	11	0	61
45	McDonald’s	Hot Mustard Sauce	60	20	2.5	0	0	5	250	9	2	6	1	65
46	McDonald’s	Sweet ‘N Sour Sauce	50	0	0	0	0	0	150	12	0	10	0	60
47	McDonald’s	Chicken Selects® Premium Breast Strips (3 pc)	400	210	24	3.5	0	50	1010	23	0	0	23	380.5
451	Burger King	SOFT DRINKS BY CUP SIZE (*no ice)	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
516	Burger King	Iced Coffees	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	McDonald’s	Premium Grilled Chicken Club Sandwich	460	150	17	6	0	90	1040	43	4	9	35	440
19	McDonald’s	Premium Crispy Chicken Club Sandwich	620	260	29	7	0	70	1200	57	3	11	31	607
20	McDonald’s	Premium Grilled Chicken Ranch BLT Sandwich	380	90	10	3	0	75	1000	41	4	9	31	361
66	McDonald’s	Newman’s Own® Creamy Southwest Dressing	100	50	6	1	0	20	340	11	0	3	1	103
67	McDonald’s	Newman’s Own® Creamy Caesar Dressing	190	170	18	3.5	0	20	500	4	0	2	2	193.5
68	McDonald’s	Newman’s Own® Low Fat Balsamic Vinaigrette	40	25	3	0	0	0	730	4	0	3	0	43
69	McDonald’s	Newman’s Own® Low Fat Family Recipe Italian Dressing	60	20	2.5	0	0	0	730	8	0	1	1	60
70	McDonald’s	Newman’s Own® Ranch Dressing	170	130	15	2.5	0	20	530	9	0	4	1	175.5
72	McDonald’s	Sausage McMuffin®	370	200	22	8	0	45	850	29	2	2	14	366
73	McDonald’s	Sausage McMuffin® with Egg	450	250	27	10	0	285	920	30	2	2	21	441
74	McDonald’s	English Muffin	160	30	3	0.5	0	0	280	27	2	2	5	157.5
75	McDonald’s	Bacon, Egg & Cheese Biscuit (Regular Size Biscuit)	420	210	23	12	0	235	1160	37	2	3	15	420
76	McDonald’s	Bacon, Egg & Cheese Biscuit (Large Size Biscuit)	480	240	27	12	0	235	1270	43	3	4	15	481
77	McDonald’s	Sausage Biscuit with Egg (Regular Size Biscuit)	510	290	33	14	0	250	1170	36	2	2	18	508
78	McDonald’s	Sausage Biscuit with Egg (Large Size Biscuit)	570	330	37	15	0	250	1280	42	3	3	18	570
1052	Taco Bell	Diet Mtn Dew® (20 fl oz)	10	\N	\N	\N	\N	90	1	\N	\N	1	\N	\N
1053	Taco Bell	Diet Pepsi® (20 fl oz)	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	\N
1054	Taco Bell	Dr Pepper® (20 fl oz)	240	\N	\N	\N	\N	75	65	\N	\N	64	\N	\N
1055	Taco Bell	G2 – Fruit Punch (20 fl oz)	35	\N	\N	\N	\N	180	9	\N	\N	8	\N	\N
1056	Taco Bell	Mtn Dew® (20 fl oz)	270	\N	\N	\N	\N	85	73	\N	\N	73	\N	\N
1057	Taco Bell	Mtn Dew® Baja Blast™ (20 fl oz)	280	\N	\N	\N	\N	80	74	\N	\N	73	\N	\N
1058	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (20 fl oz)	10	\N	\N	\N	\N	85	0	\N	\N	0	\N	\N
1059	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (20 fl oz)	90	\N	\N	\N	\N	90	23	\N	\N	22	\N	\N
1060	Taco Bell	Mug® Root Beer (20 fl oz)	240	\N	\N	\N	\N	75	65	\N	\N	65	\N	\N
392	Burger King	Side Items	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
462	Burger King	Sprite®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	McDonald’s	Medium French Fries	380	170	19	2.5	0	0	270	48	5	0	4	378.5
37	McDonald’s	Large French Fries	500	220	25	3.5	0	0	350	63	6	0	6	497.5
38	McDonald’s	Ketchup Packet	15	0	0	0	0	0	110	3	0	2	0	17
39	McDonald’s	Salt Packet	0	0	0	0	0	0	270	0	0	0	0	0
40	McDonald’s	Chicken McNuggets® (4 piece)	190	110	12	2	0	25	360	12	1	0	9	183
57	McDonald’s	Premium Bacon Ranch Salad with Crispy Chicken	370	180	20	6	0	75	970	20	3	6	29	353
1061	Taco Bell	Pepsi® (20 fl oz)	250	\N	\N	\N	\N	55	69	\N	\N	69	\N	\N
1062	Taco Bell	Pepsi® Wild Cherry (20 fl oz)	260	\N	\N	\N	\N	50	70	\N	\N	70	\N	\N
1063	Taco Bell	Pepsi® Zero Sugar (20 fl oz)	0	\N	\N	\N	\N	105	0	\N	\N	0	\N	\N
1064	Taco Bell	Sierra Mist® (20 fl oz)	260	\N	\N	\N	\N	55	68	\N	\N	68	\N	\N
1065	Taco Bell	Tropicana® Pink Lemonade (20 fl oz)	260	\N	\N	\N	\N	260	67	\N	\N	67	\N	\N
1067	Taco Bell	FOUNTAIN BEVERAGES (30 OZ)	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1069	Taco Bell	Brisk® Mango Iced Tea (30 fl oz)	180	\N	\N	\N	\N	90	48	\N	\N	48	\N	\N
1070	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0	\N	\N	\N	\N	115	0	\N	\N	0	\N	\N
1071	Taco Bell	Diet Dr Pepper® (30 fl oz)	0	\N	\N	\N	\N	180	1	\N	\N	0	\N	\N
1072	Taco Bell	Diet Mtn Dew® (30 fl oz)	10	\N	\N	\N	\N	140	1	\N	\N	1	\N	\N
260	McDonald’s	McCafe Coffees – Whole Milk	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
339	Burger King	Flame Broiled Burgers	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
394	Burger King	Beverage	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
901	KFC	KFC® Gizzards	300	16	2	0	210	770	18	\N	0	20	282	\N
496	Burger King	38 fl oz	20	0	0	0	0	0	135	7	0	0	0	0
58	McDonald’s	Premium Bacon Ranch Salad (without chicken)	140	70	7	3.5	0	25	300	10	3	4	9	138.5
59	McDonald’s	Premium Caesar Salad with Grilled Chicken	220	60	6	3	0	75	890	12	3	5	30	198
60	McDonald’s	Premium Caesar Salad with Crispy Chicken	330	150	17	4.5	0	60	840	20	3	6	26	314.5
61	McDonald’s	Premium Caesar Salad (without chicken)	90	35	4	2.5	0	10	180	9	3	4	7	89.5
62	McDonald’s	Side Salad	20	0	0	0	0	0	10	4	1	2	1	21
63	McDonald’s	Butter Garlic Croutons	60	15	1.5	0	0	0	140	10	1	0	2	58
64	McDonald’s	Snack Size Fruit & Walnut Salad	210	70	8	1.5	0	5	60	31	2	25	4	232.5
71	McDonald’s	Egg McMuffin®	300	110	12	5	0	260	820	30	2	3	18	290
95	McDonald’s	Hotcake Syrup	180	0	0	0	0	0	20	45	0	32	0	212
1073	Taco Bell	Diet Pepsi® (30 fl oz)	0	\N	\N	\N	\N	140	0	\N	\N	0	\N	\N
1074	Taco Bell	Dr Pepper® (30 fl oz)	360	\N	\N	\N	\N	110	98	\N	\N	96	\N	\N
1075	Taco Bell	G2 – Fruit Punch (30 fl oz)	50	\N	\N	\N	\N	270	13	\N	\N	12	\N	\N
1076	Taco Bell	Mtn Dew® (30 fl oz)	410	\N	\N	\N	\N	125	110	\N	\N	109	\N	\N
1077	Taco Bell	Mtn Dew® Baja Blast™ (30 fl oz)	420	\N	\N	\N	\N	120	110	\N	\N	110	\N	\N
1078	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (30 fl oz)	15	\N	\N	\N	\N	125	0	\N	\N	0	\N	\N
1079	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (30 fl oz)	130	\N	\N	\N	\N	140	34	\N	\N	33	\N	\N
1080	Taco Bell	Mug® Root Beer (30 fl oz)	360	\N	\N	\N	\N	110	98	\N	\N	98	\N	\N
1081	Taco Bell	Pepsi® (30 fl oz)	380	\N	\N	\N	\N	80	104	\N	\N	103	\N	\N
1082	Taco Bell	Pepsi® Wild Cherry (30 fl oz)	390	\N	\N	\N	\N	80	105	\N	\N	105	\N	\N
1083	Taco Bell	Pepsi® Zero Sugar (30 fl oz)	0	\N	\N	\N	\N	160	\N	\N	\N	0	\N	\N
1084	Taco Bell	Sierra Mist® (30 fl oz)	380	\N	\N	\N	\N	80	101	\N	\N	101	\N	\N
1085	Taco Bell	Tropicana® Pink Lemonade (30 fl oz)	390	\N	\N	\N	\N	390	100	\N	\N	100	\N	\N
1086	Pizza Hut	Detroit Double Cheesy Pizza Slice	280	12	6	0	30	560	31	2	2	13	\N	\N
1087	Pizza Hut	Detroit Double Pepperoni Pizza Slice	330	17	7	0	40	720	30	2	2	14	\N	\N
1088	Pizza Hut	Detroit Meaty Pizza Slice	320	16	6	0	35	640	31	2	2	14	\N	\N
1089	Pizza Hut	Detroit Supremo Pizza Slice	290	13	6	0	30	570	31	2	2	13	\N	\N
1090	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Personal Pan	180	6	2	0	15	370	25	1	8	8	\N	\N
452	Burger King	Coca Cola classic®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
508	Burger King	BK® Café	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1030	Taco Bell	7-Up (16 fl oz)	190	\N	\N	\N	\N	70	46	\N	\N	46	\N	\N
1092	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Large	380	16	6	0	35	650	43	2	7	16	\N	\N
1093	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Medium	240	10	4.5	0	15	470	29	2	1	10	\N	\N
1094	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Large	350	16	6	0	25	680	38	3	2	14	\N	\N
1095	Pizza Hut	Pan Pizza Slices Buffalo Chicken Personal Pan	160	5	2	0	15	570	22	1	2	7	\N	\N
1096	Pizza Hut	Pan Pizza Slices Buffalo Chicken Medium	240	9	3.5	0	20	680	31	2	2	11	\N	\N
1097	Pizza Hut	Pan Pizza Slices Buffalo Chicken Large	350	14	5	0	30	850	40	2	2	15	\N	\N
1098	Pizza Hut	Pan Pizza Slices Cheese Personal Pan	150	6	2.5	0	15	310	17	1	2	7	\N	\N
1099	Pizza Hut	Pan Pizza Slices Cheese Medium	250	10	4.5	0	25	450	28	2	1	11	\N	\N
1100	Pizza Hut	Pan Pizza Slices Cheese Large	360	17	7	0	35	660	37	2	2	16	\N	\N
1101	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Personal Pan	180	8	3	0	20	350	17	1	2	9	\N	\N
1102	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Medium	270	13	4.5	0	30	470	27	2	1	12	\N	\N
1103	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Large	390	20	7	0	40	680	35	2	2	18	\N	\N
1104	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Personal Pan	150	5	2	0	15	330	18	1	3	8	\N	\N
1105	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Medium	240	9	3.5	0	20	480	29	2	2	12	\N	\N
1106	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Large	350	15	5	0	30	690	38	2	3	17	\N	\N
1107	Pizza Hut	Pan Pizza Slices Meat Lover’s® Personal Pan	210	12	4.5	0	25	460	18	1	2	9	\N	\N
1108	Pizza Hut	Pan Pizza Slices Meat Lover’s® Medium	320	17	6	0	35	640	28	2	1	13	\N	\N
1109	Pizza Hut	Pan Pizza Slices Meat Lover’s® Large	470	27	10	0	50	940	37	2	2	19	\N	\N
523	Burger King	Frappes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
457	Burger King	Diet Coke®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
984	Taco Bell	Orange Juice	140	0	0	0	0	0	20	33	\N	28	2	\N
726	KFC	Green Beans	25	0	0	0	0	300	5	3	1	1	25	\N
727	KFC	KFC® Cornbread Muffin	210	9	1.5	0	35	240	28	\N	11	3	219.5	\N
728	KFC	Macaroni & Cheese	140	6	1.5	0	\N	590	17	1	2	5	138.5	\N
729	KFC	Macaroni Salad	140	8	1	0	15	290	14	0	9	1	149	\N
730	KFC	Mashed Potatoes	110	\N	0.5	0	0	330	17	1	0	2	108.5	\N
731	KFC	Mashed Potatoes With Gravy	130	\N	1	0	0	520	20	1	0	3	128	\N
732	KFC	Potato Salad	340	28	4.5	0	25	290	19	2	3	2	345.5	\N
733	KFC	Secret Recipe Fries	320	15	2	0	0	1100	41	3	0	5	317	\N
734	KFC	Sweet Kernel Corn	70	\N	0	0	0	0	16	2	2	2	70	\N
735	KFC	BBQ Baked Beans (Family)	830	5	1	0	0	2810	148	31	63	47	847	\N
736	KFC	Coleslaw (Family)	640	46	7	0	15	670	54	14	37	4	680	\N
737	KFC	Corn on the Cob (Family)	280	2	0	0	0	15	67	8	11	9	282	\N
738	KFC	Green Beans (Family)	80	0	0	0	0	930	15	9	3	4	79	\N
739	KFC	Macaroni & Cheese (Family)	540	23	6	0	10	2220	66	5	8	18	536	\N
740	KFC	Macaroni Salad (Family)	480	28	3.5	0	55	990	50	0	30	3	510.5	\N
741	KFC	Mashed Potatoes (Family)	460	15	3	0	0	1410	72	6	0	9	454	\N
742	KFC	Mashed Potatoes With Gravy (Family)	590	21	5	0	0	2590	88	6	1	12	584	\N
743	KFC	Potato Salad (Family)	1200	98	16	0	80	1010	65	8	12	8	1220	\N
744	KFC	Secret Recipe Fries (Family)	840	40	5	0	0	2890	108	9	0	13	832	\N
745	KFC	Sweet Kernel Corn (Family)	280	\N	0	0	0	10	67	7	8	10	278	\N
746	KFC	Chicken Littles	300	15	2.5	0	30	620	27	1	3	14	291.5	\N
747	KFC	Chicken Littles – Buffalo	310	17	2.5	0	30	790	27	1	3	14	301.5	\N
748	KFC	Chicken Littles – Honey BBQ	320	15	2.5	0	30	680	31	1	7	14	315.5	\N
749	KFC	Chicken Littles – Nashville Hot	340	19	3	0	30	680	27	1	3	14	332	\N
750	KFC	Classic Chicken Sandwich	650	35	4.5	0	90	1260	49	1	6	34	626.5	\N
751	KFC	Crispy Colonel’s Sandwich	470	24	3.5	0	60	1170	39	\N	4	24	453.5	\N
752	KFC	Crispy Colonel’s Sandwich – Buffalo	500	27	4	0	60	1500	39	\N	4	24	484	\N
753	KFC	Crispy Colonel’s Sandwich – Honey BBQ	510	25	3.5	0	60	1290	48	\N	12	24	501.5	\N
754	KFC	Crispy Colonel’s Sandwich – Nashville Hot	540	32	4.5	0	60	1290	40	\N	5	24	525.5	\N
755	KFC	Crispy Twister®	630	34	7	0	70	1260	53	4	3	28	612	\N
756	KFC	Honey BBQ Sandwich	350	\N	0.5	0	55	1350	55	2	22	24	348.5	\N
757	KFC	Spicy Chicken Sandwich	620	33	4	0	85	2140	49	1	6	34	596	\N
758	KFC	Chicken Pot Pie	720	41	25	0	80	1750	60	7	5	26	724	\N
759	KFC	KFC® Famous Bowl	740	35	6	0	45	2350	81	6	2	26	722	\N
760	KFC	KFC® Famous Bowl – Snack Size	270	14	3.5	0	20	850	27	2	1	11	263.5	\N
761	KFC	Caesar Side Salad	40	2	1	0	5	90	2	1	1	3	39	\N
762	KFC	House Side Salad	15	0	0	0	0	10	3	2	2	1	16	\N
763	KFC	Heinz Buttermilk Dressing	160	17	2	0	10	220	1	0	1	0	163	\N
764	KFC	Hidden Valley The Original Ranch Fat Free Dressing	35	0	0	0	0	410	8	0	2	1	36	\N
765	KFC	KFC® Creamy Parmesan Caesar Dressing	260	26	5	0	15	540	4	0	2	2	265	\N
766	KFC	Marzetti Light Italian Dressing	15	\N	0	0	0	510	2	0	1	0	16	\N
767	KFC	Parmesan Garlic Croutons	60	3	0	0	0	135	8	\N	0	2	58	\N
768	KFC	Apple Turnover	230	10	2.5	0	0	140	32	\N	12	2	242.5	\N
769	KFC	Café Valley Chocolate Chip Cake (1 Slice)	300	15	3	0	50	260	39	1	27	4	326	\N
770	KFC	Café Valley Lemon Cake (1 Slice)	220	10	2	0	30	170	30	0	20	2	240	\N
771	KFC	Café Valley Mini Chocolate Chip Cake	300	12	2.5	0	40	190	49	1	35	3	334.5	\N
772	KFC	Café Valley Mini Lemon Cake	300	13	2.5	0	50	230	43	0	31	3	330.5	\N
773	KFC	Chocolate Chip Cookie	120	6	3	0	\N	70	18	1	12	1	134	\N
774	KFC	Oreo Cookies and Crème Pie	270	13	8	0	\N	210	35	1	24	3	299	\N
775	KFC	Reese’s Peanut Butter Pie	300	17	9	0	\N	270	33	1	22	5	326	\N
776	KFC	BBQ – Dipping Sauce Cup	45	0	0	0	0	150	11	0	11	0	56	\N
777	KFC	Colonel’s Buttery Spread	35	4	1.5	0	0	35	0	0	0	0	36.5	\N
778	KFC	Grape Jelly Packet	35	0	0	0	0	10	9	0	7	0	42	\N
1026	Taco Bell	Hash Brown (V)	160	100	12	1	0	0	270	13	2	0	1	\N
79	McDonald’s	Sausage Biscuit (Regular Size Biscuit)	430	240	27	12	0	30	1080	34	2	2	11	433
1091	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Medium	270	10	4	0	25	450	33	2	6	11	\N	\N
502	Burger King	20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
1110	Pizza Hut	Pan Pizza Slices Pepperoni Personal Pan	150	7	2.5	0	15	310	17	1	2	6	\N	\N
1111	Pizza Hut	Pan Pizza Slices Pepperoni Medium	250	11	4.5	0	25	470	28	2	1	10	\N	\N
1112	Pizza Hut	Pan Pizza Slices Pepperoni Large	370	18	6	0	35	680	36	2	2	15	\N	\N
80	McDonald’s	Sausage Biscuit (Large Size Biscuit)	480	280	31	13	0	30	1190	39	3	3	11	485
81	McDonald’s	Southern Style Chicken Biscuit (Regular Size Biscuit)	410	180	20	8	0	30	1180	41	2	3	17	404
82	McDonald’s	Southern Style Chicken Biscuit (Large Size Biscuit)	470	220	24	9	0	30	1290	46	3	4	17	466
83	McDonald’s	Steak, Egg & Cheese Bagel	660	300	33	12	1	300	1580	56	3	7	33	646
84	McDonald’s	Bacon, Egg & Cheese McGriddles®	420	160	18	8	0	240	1110	48	2	15	15	428
85	McDonald’s	Sausage, Egg & Cheese McGriddles®	560	290	32	12	0	265	1360	48	2	15	20	567
86	McDonald’s	Sausage McGriddles®	420	200	22	8	0	35	1030	44	2	15	11	432
87	McDonald’s	Big Breakfast® (Regular Size Biscuit)	740	430	48	17	0	555	1560	51	3	3	28	732
88	McDonald’s	Big Breakfast® (Large Size Biscuit)	800	470	52	18	0	555	1680	56	4	3	28	793
89	McDonald’s	Big Breakfast with Hotcakes (Regular Size Biscuit)	1090	510	56	19	0	575	2150	111	6	17	36	1090
90	McDonald’s	Big Breakfast with Hotcakes (Large Size Biscuit)	1150	540	60	20	0	575	2260	116	7	17	36	1151
91	McDonald’s	Sausage Burrito	300	140	16	7	0	115	830	26	1	2	12	297
92	McDonald’s	McSkillet™ Burrito with Sausage	610	320	36	14	0.5	410	1390	44	3	4	27	601
574	Wendy’s	Chili, Small	170	5	2	0	35	780	16	4	6	15	163	\N
902	KFC	KFC® Livers	230	13	2.5	0	285	750	12	0	0	17	215.5	\N
17	McDonald’s	Premium Crispy Chicken Classic Sandwich	510	200	22	3.5	0	45	990	56	3	10	24	499.5
35	McDonald’s	Small French Fries	230	100	11	1.5	0	0	160	29	3	0	3	228.5
94	McDonald’s	Hotcakes and Sausage	520	210	24	7	0	50	930	61	3	14	15	526
96	McDonald’s	Whipped Margarine (1 pat)	40	40	4.5	1.5	0	0	55	0	0	0	0	41.5
97	McDonald’s	Hash Brown	150	80	9	1.5	0	0	310	15	2	0	1	150.5
98	McDonald’s	Grape Jam	35	0	0	0	0	0	0	9	0	9	0	44
99	McDonald’s	Strawberry Preserves	35	0	0	0	0	0	0	9	0	9	0	44
100	McDonald’s	Bacon, Egg & Cheese Bagel	560	240	27	9	0.5	260	1300	56	3	7	24	552
101	McDonald’s	Fruit & Maple Oatmeal	290	40	4.5	2	0	10	160	57	5	32	5	319
102	McDonald’s	Fruit & Maple Oatmeal without Brown Sugar	260	40	4.5	2	0	10	115	48	5	18	5	275
103	McDonald’s	Hamburger Happy Meal	475	\N	16	\N	0	40	690	62	2	20	22	\N
1145	Pizza Hut	Hand Tossed Slices Pepperoni Small	130	5	2	0	10	260	16	1	\N	6	\N	\N
104	McDonald’s	4 Piece Chicken McNuggets Happy Meal	395	\N	17	3.5	0	35	510	41	1	14	19	\N
105	McDonald’s	6 Piece Chicken McNuggets® Happy Meal	475	\N	22	4.5	0	50	680	46	2	14	24	\N
106	McDonald’s	Fruit ‘n Yogurt Parfait (7 oz)	160	20	2	1	0	5	85	31	1	21	4	178
107	McDonald’s	Low Fat Caramel Dip	70	5	0.5	0	0	5	35	15	0	9	0	79
108	McDonald’s	Vanilla Reduced Fat Ice Cream Cone	150	35	3.5	2	0	15	60	24	0	18	4	166
109	McDonald’s	Kiddie Cone	45	10	1	0.5	0	5	20	8	0	6	1	50.5
110	McDonald’s	Strawberry Sundae	280	60	6	4	0	25	95	49	1	45	6	323
111	McDonald’s	Hot Caramel Sundae	340	70	8	5	0	30	160	60	1	44	7	382
112	McDonald’s	Hot Fudge Sundae	330	90	10	7	0	25	180	54	2	48	8	377
503	Burger King	29 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
113	McDonald’s	Peanuts (for Sundaes)	45	30	3.5	0.5	0	0	0	2	1	0	2	43.5
114	McDonald’s	McFlurry® with M&M’S® Candies (12 fl oz cup)	710	230	25	16	1	60	220	105	4	97	15	808
115	McDonald’s	McFlurry® with OREO® Cookies (12 fl oz cup)	580	170	19	10	1	50	320	89	3	73	13	650
116	McDonald’s	Baked Hot Apple Pie	250	110	13	7	0	0	170	32	4	13	2	268
117	McDonald’s	Cinnamon Melts	460	170	19	9	0	15	370	66	3	32	6	495
118	McDonald’s	McDonaldland® Cookies	260	70	8	2.5	0	0	300	43	1	13	4	271.5
119	McDonald’s	Chocolate Chip Cookie	160	70	8	3.5	0	10	90	21	1	15	2	176.5
120	McDonald’s	Oatmeal Raisin Cookie	150	50	6	2.5	0	10	135	22	1	13	2	163.5
121	McDonald’s	Sugar Cookie	160	60	7	3	0	5	120	21	0	11	2	172
122	McDonald’s	Apple Dippers with Low Fat Caramel Dip	100	5	0.5	0	0	5	35	23	0	15	0	115
123	McDonald’s	Chocolate McCafé® Shake (12 fl oz cup)	580	150	17	10	1	50	240	94	1	77	11	656
124	McDonald’s	Chocolate McCafé® Shake (16 fl oz cup)	720	180	20	12	1	60	300	119	1	98	15	815
125	McDonald’s	Chocolate McCafé® Shake (22 fl oz cup)	880	220	24	15	1.5	75	370	147	1	121	18	998
126	McDonald’s	Chocolate Triple Thick® Shake (12 fl oz cup)	440	90	10	6	0.5	40	190	76	1	63	10	499
127	McDonald’s	Chocolate Triple Thick® Shake (16 fl oz cup)	580	120	14	8	1	50	250	102	1	84	13	659
128	McDonald’s	Chocolate Triple Thick® Shake (21 fl oz cup)	770	160	18	11	1	70	330	134	1	111	18	874
129	McDonald’s	Chocolate Triple Thick® Shake (32 fl oz cup)	1160	240	27	16	2	100	510	203	2	168	27	1317
130	McDonald’s	Snack Size McFlurry® with M&M’S® Candies	430	140	16	10	0.5	35	130	64	2	59	9	490
131	McDonald’s	Snack Size McFlurry® with OREO® Cookies	340	100	12	6	0	30	200	53	2	43	8	381
132	McDonald’s	Strawberry McCafé® Shake (12 fl oz cup)	570	150	17	10	1	50	170	92	0	79	11	648
133	McDonald’s	Strawberry McCafé® Shake (16 fl oz cup)	710	180	20	12	1	65	210	116	0	100	14	808
134	McDonald’s	Strawberry McCafé® Shake (22 fl oz cup)	860	220	24	15	1.5	75	260	144	0	124	18	981
135	McDonald’s	Strawberry Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	130	73	0	63	10	479
136	McDonald’s	Strawberry Triple Thick® Shake (16 fl oz cup)	560	120	13	8	1	50	170	97	0	84	13	639
137	McDonald’s	Strawberry Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	230	128	0	111	17	845
138	McDonald’s	Strawberry Triple Thick® Shake (32 fl oz cup)	1110	240	26	16	2	100	350	194	0	168	25	1269
139	McDonald’s	Vanilla McCafé® Shake (12 fl oz cup)	540	150	16	10	1	45	170	88	0	64	10	604
140	McDonald’s	Vanilla McCafé® Shake (16 fl oz cup)	680	180	20	12	1	60	220	111	0	82	14	760
141	McDonald’s	Vanilla McCafé® Shake (22 fl oz cup)	830	210	24	14	1.5	75	270	138	0	103	17	930
142	McDonald’s	Vanilla Triple Thick Shake® (32 fl oz cup)	1110	240	26	16	2	100	370	193	0	145	25	1246
143	McDonald’s	Vanilla Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	140	72	0	54	9	471
144	McDonald’s	Vanilla Triple Thick® Shake (16 fl oz cup)	550	120	13	8	1	50	190	96	0	72	13	617
145	McDonald’s	Vanilla Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	250	128	0	96	17	830
146	McDonald’s	1% Low Fat Milk Jug	100	20	2.5	1.5	0	10	125	12	0	12	8	105.5
147	McDonald’s	1% Low Fat Chocolate Milk Jug	170	25	3	1.5	0	5	150	26	1	25	9	187.5
148	McDonald’s	Minute Maid® 100% Apple Juice Box	100	0	0	0	0	0	15	23	0	22	0	122
149	McDonald’s	Dasani® Water	0	0	0	0	0	0	0	0	0	0	0	0
150	McDonald’s	Minute Maid® Orange Juice (Small)	150	0	0	0	0	0	0	30	0	30	2	178
151	McDonald’s	Minute Maid® Orange Juice (Medium)	190	0	0	0	0	0	0	39	0	39	3	226
152	McDonald’s	Minute Maid® Orange Juice (Large)	280	0	0	0	0	0	5	58	0	58	4	334
153	McDonald’s	Coca-Cola® Classic (Child)	110	0	0	0	0	0	5	29	0	29	0	139
154	McDonald’s	Coca-Cola® Classic (Small)	150	0	0	0	0	0	10	40	0	40	0	190
155	McDonald’s	Coca-Cola® Classic (Medium)	210	0	0	0	0	0	15	58	0	58	0	268
156	McDonald’s	Coca-Cola® Classic (Large)	310	0	0	0	0	0	20	86	0	86	0	396
157	McDonald’s	Diet Coke® (Child)	0	0	0	0	0	0	15	0	0	0	0	0
158	McDonald’s	Diet Coke® (Small)	0	0	0	0	0	0	20	0	0	0	0	0
159	McDonald’s	Diet Coke® (Medium)	0	0	0	0	0	0	30	0	0	0	0	0
160	McDonald’s	Diet Coke® (Large)	0	0	0	0	0	0	45	0	0	0	0	0
161	McDonald’s	Sprite® (Child)	110	0	0	0	0	0	30	28	0	28	0	138
162	McDonald’s	Sprite® (Small)	150	0	0	0	0	0	40	39	0	39	0	189
163	McDonald’s	Sprite® (Medium)	210	0	0	0	0	0	55	56	0	56	0	266
164	McDonald’s	Sprite® (Large)	310	0	0	0	0	0	80	83	0	83	0	393
165	McDonald’s	Hi-C® Orange Lavaburst (Child)	120	0	0	0	0	0	0	32	0	32	0	152
166	McDonald’s	Hi-C® Orange Lavaburst (Small)	160	0	0	0	0	0	5	44	0	44	0	204
167	McDonald’s	Hi-C® Orange Lavaburst (Medium)	240	0	0	0	0	0	10	64	0	64	0	304
168	McDonald’s	Hi-C® Orange Lavaburst (Large)	350	0	0	0	0	0	10	94	0	94	0	444
169	McDonald’s	POWERade® Mountain Blast (Child)	70	0	0	0	0	0	65	20	0	16	0	86
170	McDonald’s	POWERade® Mountain Blast (Small)	100	0	0	0	0	0	85	27	0	21	0	121
171	McDonald’s	POWERade® Mountain Blast (Medium)	150	0	0	0	0	0	130	39	0	31	0	181
399	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
172	McDonald’s	POWERade® Mountain Blast (Large)	220	0	0	0	0	0	190	58	0	46	0	266
173	McDonald’s	Iced Tea (Child)	0	0	0	0	0	0	5	0	0	0	0	0
174	McDonald’s	Iced Tea (Small)	0	0	0	0	0	0	10	0	0	0	0	0
175	McDonald’s	Iced Tea (Medium)	0	0	0	0	0	0	15	0	0	0	0	0
176	McDonald’s	Iced Tea (Large)	0	0	0	0	0	0	20	1	0	0	0	0
177	McDonald’s	Coffee (Small)	0	0	0	0	0	0	0	0	0	0	0	0
178	McDonald’s	Coffee (Large)	0	0	0	0	0	0	0	0	0	0	0	0
179	McDonald’s	Coffee Cream	20	20	2	1.5	0	10	15	0	0	0	0	21.5
180	McDonald’s	Sugar Packet	15	0	0	0	0	0	0	4	0	4	0	19
181	McDonald’s	EQUAL® 0\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
463	Burger King	16 fl oz	210	0	0	0	0	0	95	56	0	56	0	266
182	McDonald’s	SPLENDA® No\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
183	McDonald’s	Iced Coffee– Caramel (Small)	130	50	5	3.5	0	20	80	21	0	20	1	152.5
184	McDonald’s	Iced Coffee– Caramel (Medium)	190	70	8	5	0	30	115	27	0	27	2	220
185	McDonald’s	Iced Coffee– Caramel (Large)	270	100	11	7	0	40	160	41	0	41	2	316
186	McDonald’s	Iced Coffee– Hazelnut (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
187	McDonald’s	Iced Coffee– Hazelnut (Medium)	190	70	8	5	0	30	60	29	0	29	2	222
188	McDonald’s	Iced Coffee– Hazelnut (Large)	270	100	11	7	0	40	85	43	0	43	2	318
189	McDonald’s	Iced Coffee– Regular (Small)	140	50	5	3.5	0	20	40	22	0	22	1	164.5
190	McDonald’s	Iced Coffee– Regular (Medium)	200	70	8	5	0	30	60	30	0	30	2	233
191	McDonald’s	Iced Coffee– Regular (Large)	280	100	11	7	0	40	85	45	0	45	2	330
192	McDonald’s	Iced Coffee– Vanilla (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
193	McDonald’s	Iced Coffee– Vanilla (Medium)	190	70	8	5	0	30	60	29	0	28	2	221
194	McDonald’s	Iced Coffee– Vanilla (Large)	270	100	11	7	0	40	80	43	0	43	2	318
195	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Small)	60	50	5	3.5	0	20	70	8	0	1	1	63.5
196	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Medium)	90	70	8	5	0	30	100	11	0	2	2	95
197	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Large)	120	100	11	7	0	40	140	16	0	2	2	127
198	McDonald’s	Sweet Tea (Child)	110	0	0	0	0	0	5	27	0	27	0	137
199	McDonald’s	Sweet Tea (Large)	280	0	0	0	0	0	15	69	0	69	1	348
200	McDonald’s	Sweet Tea (Medium)	180	0	0	0	0	0	10	45	0	45	1	224
201	McDonald’s	Sweet Tea (Small)	150	0	0	0	0	0	10	36	0	36	1	185
202	McDonald’s	Nonfat Cappuccino (Small)	60	0	0	0	0	5	85	9	0	9	6	63
203	McDonald’s	Nonfat Cappuccino (Medium)	80	0	0	0	0	5	110	12	0	12	8	84
204	McDonald’s	Nonfat Cappuccino (Large)	90	0	0	0	0	5	130	13	0	13	9	94
205	McDonald’s	Nonfat Latte (Small)	90	0	0	0	0	5	115	13	0	13	9	94
206	McDonald’s	Nonfat Latte (Medium)	110	0	0	0	0	5	140	15	0	15	10	115
207	McDonald’s	Nonfat Latte (Large)	120	0	0	0	0	5	160	18	0	18	12	126
208	McDonald’s	Nonfat Caramel Cappuccino (Small)	150	0	0	0	0	5	120	33	0	32	5	177
209	McDonald’s	Nonfat Caramel Cappuccino (Medium)	190	0	0	0	0	5	150	41	0	41	6	225
210	McDonald’s	Nonfat Caramel Cappuccino (Large)	230	0	0	0	0	5	180	49	0	49	7	272
211	McDonald’s	Nonfat Caramel Latte (Small)	170	0	0	0	0	5	150	36	0	36	7	199
212	McDonald’s	Nonfat Caramel Latte (Medium)	220	0	0	0	0	5	180	45	0	45	9	256
213	McDonald’s	Nonfat Caramel Latte (Large)	260	0	0	0	0	5	220	53	0	53	10	303
214	McDonald’s	Nonfat Hazelnut Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
215	McDonald’s	Nonfat Hazelnut Cappuccino (Medium)	190	0	0	0	0	5	90	43	0	43	6	227
216	McDonald’s	Nonfat Hazelnut Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
217	McDonald’s	Nonfat Hazelnut Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
218	McDonald’s	Nonfat Hazelnut Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
219	McDonald’s	Nonfat Hazelnut Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
220	McDonald’s	Nonfat Vanilla Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
221	McDonald’s	Nonfat Vanilla Cappuccino (Medium)	190	0	0	0	0	5	90	42	0	42	6	226
222	McDonald’s	Nonfat Vanilla Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
223	McDonald’s	Nonfat Vanilla Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
224	McDonald’s	Nonfat Vanilla Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
225	McDonald’s	Nonfat Vanilla Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
226	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Small)	50	0	0	0	0	5	100	15	0	8	5	53
227	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Medium)	70	0	0	0	0	5	130	19	0	10	7	73
400	Burger King	Dutch Apple Pie	340	130	14	6	0	0	310	51	1	25	3	368
228	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Large)	80	0	0	0	0	5	150	22	0	11	8	83
229	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Small)	80	0	0	0	0	5	130	18	0	11	7	84
230	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	90	0	0	0	0	5	160	22	0	13	9	94
231	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Large)	110	0	0	0	0	5	190	27	0	15	11	114
232	McDonald’s	Mocha with Nonfat Milk (Small)	240	45	5	3	0	5	130	41	0	34	7	270
233	McDonald’s	Mocha with Nonfat Milk (Medium)	280	50	6	3.5	0	10	160	50	0	42	8	317.5
464	Burger King	20 fl oz	260	0	0	0	0	0	120	70	0	70	0	330
234	McDonald’s	Mocha with Nonfat Milk (Large)	330	50	6	3.5	0	10	190	58	0	50	10	373.5
235	McDonald’s	Hot Chocolate with Nonfat Milk (Small)	250	45	5	3	0	10	140	43	0	37	8	282
236	McDonald’s	Hot Chocolate with Nonfat Milk (Medium)	310	50	6	3.5	0	10	190	55	0	47	11	349.5
237	McDonald’s	Hot Chocolate with Nonfat Milk (Large)	390	50	6	3.5	0	10	250	68	0	59	16	436.5
238	McDonald’s	Iced Nonfat Latte (Small)	50	0	0	0	0	5	70	7	0	7	5	52
239	McDonald’s	Iced Nonfat Latte (Medium)	60	0	0	0	0	5	90	9	0	9	6	63
240	McDonald’s	Iced Nonfat Latte (Large)	70	0	0	0	0	5	105	11	0	11	7	74
241	McDonald’s	Iced Nonfat Caramel Latte (Small)	140	0	0	0	0	0	105	30	0	30	3	167
242	McDonald’s	Iced Nonfat Caramel Latte (Medium)	150	0	0	0	0	5	120	32	0	32	5	177
243	McDonald’s	Iced Nonfat Caramel Latte (Large)	190	0	0	0	0	5	150	40	0	40	6	224
244	McDonald’s	Iced Nonfat Hazelnut Latte (Small)	140	0	0	0	0	0	50	32	0	32	3	169
245	McDonald’s	Iced Nonfat Hazelnut Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
246	McDonald’s	Iced Nonfat Hazelnut Latte (Large)	190	0	0	0	0	5	80	42	0	42	6	226
247	McDonald’s	Iced Nonfat Vanilla Latte (Small)	140	0	0	0	0	0	50	31	0	31	3	168
248	McDonald’s	Iced Nonfat Vanilla Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
249	McDonald’s	Iced Nonfat Vanilla Latte (Large)	190	0	0	0	0	5	85	41	0	41	6	225
250	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Small)	40	0	0	0	0	0	85	13	0	5	4	41
251	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	50	0	0	0	0	5	100	14	0	6	5	51
252	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Large)	60	0	0	0	0	5	130	19	0	8	6	62
253	McDonald’s	Iced Mocha with Nonfat Milk (Medium)	270	70	8	4.5	0	10	140	43	0	35	7	302.5
254	McDonald’s	Iced Nonfat Caramel Mocha (Large)	300	60	6	4	0	10	230	49	0	45	11	338
255	McDonald’s	Iced Nonfat Caramel Mocha (Medium)	240	60	6	4	0	10	190	37	0	34	9	269
256	McDonald’s	Iced Nonfat Caramel Mocha (Small)	200	50	6	4	0	10	140	29	0	26	6	224
257	McDonald’s	Nonfat Caramel Mocha (Large)	280	35	4	2.5	0	10	260	49	0	46	12	316.5
258	McDonald’s	Nonfat Caramel Mocha (Medium)	240	35	4	2.5	0	5	200	41	0	38	9	271.5
259	McDonald’s	Nonfat Caramel Mocha (Small)	200	35	4	2.5	0	5	170	34	0	31	8	225.5
261	McDonald’s	Cappuccino (Small)	120	60	7	4	0	20	85	9	0	9	6	127
262	McDonald’s	Cappuccino (Medium)	140	70	8	4.5	0	25	105	11	0	11	8	147.5
263	McDonald’s	Cappuccino (Large)	180	90	10	6	0	30	130	13	0	13	9	190
264	McDonald’s	Latte (Small) 	150	70	8	4.5	0	25	105	11	0	11	8	157.5
265	McDonald’s	Latte (Medium)	180	90	10	6	0	30	130	13	0	13	10	189
266	McDonald’s	Latte (Large)	210	100	11	7	0	35	150	16	0	16	11	222
504	Burger King	40 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
267	McDonald’s	Caramel Cappuccino (Small)	200	45	5	3	0	15	125	32	0	32	5	230
268	McDonald’s	Caramel Cappuccino (Medium)	240	50	6	3.5	0	20	150	41	0	40	6	277.5
269	McDonald’s	Caramel Cappuccino (Large)	290	70	8	4.5	0	25	190	49	0	49	8	335.5
270	McDonald’s	Caramel Latte (Small)	230	60	7	4	0	20	140	35	0	35	7	262
271	McDonald’s	Caramel Latte (Medium)	280	70	8	4.5	0	25	170	43	0	43	8	319.5
272	McDonald’s	Caramel Latte (Large)	330	80	9	5	0	30	210	52	0	51	9	377
273	McDonald’s	Hazelnut Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
274	McDonald’s	Hazelnut Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
275	McDonald’s	Hazelnut Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
276	McDonald’s	Hazelnut Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
277	McDonald’s	Hazelnut Latte (Medium)	280	70	8	4.5	0	25	110	45	0	45	8	321.5
278	McDonald’s	Hazelnut Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
279	McDonald’s	Vanilla Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
280	McDonald’s	Vanilla Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
281	McDonald’s	Vanilla Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
282	McDonald’s	Vanilla Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
283	McDonald’s	Vanilla Latte (Medium)	280	70	8	4.5	0	25	110	44	0	44	8	320.5
284	McDonald’s	Vanilla Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
285	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Small)	100	50	5	3	0	15	105	15	0	7	5	105
286	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Medium)	120	60	6	3.5	0	20	130	18	0	9	6	126.5
287	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Large)	150	70	8	4.5	0	25	160	22	0	11	8	157.5
288	McDonald’s	Latte with Sugar Free Vanilla Syrup (Small)	130	60	7	4	0	20	125	17	0	10	7	137
909	Taco Bell	Nacho Fries	320	160	18	1.5	0	\N	630	35	4	2	4	\N
289	McDonald’s	Latte with Sugar Free Vanilla Syrup (Medium)	160	70	8	5	0	25	150	21	0	11	8	168
290	McDonald’s	Latte with Sugar Free Vanilla Syrup (Large)	180	90	10	6	0	30	180	25	0	13	10	189
291	McDonald’s	Mocha (Small)	280	100	11	6	0	20	125	40	0	33	6	313
292	McDonald’s	Mocha (Medium)	330	110	12	7	0	25	150	48	0	41	7	371
293	McDonald’s	Mocha (Large)	400	130	14	8	0.5	30	190	58	0	49	10	447
294	McDonald’s	Hot Chocolate (Small)	300	110	12	7	0	25	135	41	0	35	8	334
295	McDonald’s	Hot Chocolate (Medium)	380	130	15	9	0.5	30	170	53	0	45	10	424
296	McDonald’s	Hot Chocolate (Large)	460	160	18	10	0.5	40	220	63	0	54	13	511
297	McDonald’s	Iced Latte (Small)	80	40	4.5	2.5	0	15	65	6	0	6	4	84.5
298	McDonald’s	Iced Latte (Medium)	100	50	6	3.5	0	15	80	8	0	8	6	105.5
299	McDonald’s	Iced Latte (Large)	140	70	8	4.5	0	25	105	10	0	10	7	147.5
300	McDonald’s	Iced Caramel Latte (Small)	160	25	3	1.5	0	10	100	29	0	29	3	187.5
301	McDonald’s	Iced Caramel Latte (Medium)	180	40	4.5	2.5	0	15	120	31	0	31	4	209.5
302	McDonald’s	Iced Caramel Latte (Large)	230	50	6	3.5	0	15	150	40	0	40	6	267.5
303	McDonald’s	Iced Hazelnut Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
304	McDonald’s	Iced Hazelnut Latte (Medium)	180	40	4.5	2.5	0	15	65	33	0	33	4	211.5
305	McDonald’s	Iced Hazelnut Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
306	McDonald’s	Iced Vanilla Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
307	McDonald’s	Iced Vanilla Latte (Medium)	190	40	4.5	2.5	0	15	70	33	0	33	5	220.5
308	McDonald’s	Iced Vanilla Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
309	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Small)	60	30	3	2	0	10	80	12	0	4	3	63
310	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Medium)	90	40	5	3	0	15	105	14	0	6	5	94
311	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Large)	110	50	6	3.5	0	15	130	19	0	8	6	115.5
312	McDonald’s	Iced Mocha (Medium)	310	120	13	8	0	25	140	42	0	35	7	346
313	McDonald’s	Caramel Mocha (Large)	360	130	14	8	0.5	35	220	47	0	46	10	404
314	McDonald’s	Caramel Mocha (Medium)	290	100	12	7	0	25	180	39	0	38	8	327
315	McDonald’s	Caramel Mocha (Small)	250	90	11	6	0	25	150	33	0	31	7	280
316	McDonald’s	Iced Caramel Mocha (Large)	380	140	16	9	0.5	35	210	48	0	46	10	425
317	McDonald’s	Iced Caramel Mocha (Medium)	300	120	14	8	0	30	160	36	0	33	8	333
318	McDonald’s	Iced Caramel Mocha (Small)	240	100	12	7	0	25	130	29	0	26	6	267
319	McDonald’s	Frappe Caramel (Small)	450	180	20	13	1	55	135	61	0	57	6	514
320	McDonald’s	Frappe Caramel (Medium)	550	220	24	15	1	70	160	76	0	71	8	628
321	McDonald’s	Frappe Caramel (Large)	680	260	29	18	1.5	85	200	94	0	88	10	776
322	McDonald’s	Frappe Mocha (Small)	450	180	20	13	1	55	130	62	1	56	7	512
323	McDonald’s	Frappe Mocha (Medium)	560	210	24	15	1	65	160	78	1	70	8	637
324	McDonald’s	Frappe Mocha (Large)	680	250	28	18	1	80	200	96	1	87	10	775
325	McDonald’s	Strawberry Banana Smoothie (Large)	330	10	1	0.5	0	5	55	77	4	70	3	397.5
326	McDonald’s	Strawberry Banana Smoothie (Medium)	260	5	1	0	0	5	40	60	3	54	2	312
327	McDonald’s	Strawberry Banana Smoothie (Small)	210	5	0.5	0	0	5	35	49	2	44	2	252
328	McDonald’s	Wild Berry Smoothie (Large)	320	10	1	0.5	0	5	45	75	4	69	3	386.5
329	McDonald’s	Wild Berry Smoothie (Medium)	260	5	1	0	0	5	35	60	4	55	3	312
330	McDonald’s	Wild Berry Smoothie (Small)	210	5	0.5	0	0	5	30	48	3	44	2	252
331	Burger King	Whopper® Sandwich	660	360	40	12	1.5	90	980	49	2	11	28	655
332	Burger King	Whopper® Sandwich with Cheese	740	420	46	16	2	115	1340	50	2	11	32	735
333	Burger King	Bacon & Cheese Whopper® Sandwich	790	460	51	17	2	125	1560	50	2	11	35	783
334	Burger King	Double Whopper® Sandwich	900	520	58	20	3	175	1050	49	2	11	48	883
335	Burger King	Double Whopper® Sandwich with Cheese	980	580	64	24	3	195	1410	50	2	11	52	963
336	Burger King	Triple Whopper® Sandwich	1130	680	75	28	4	255	1120	49	2	11	67	1102
337	Burger King	Triple Whopper® Sandwich with Cheese	1220	740	82	32	4.5	280	1470	50	2	11	71	1192
338	Burger King	Whopper JR.® Sandwich	310	160	18	5	0.5	40	390	27	1	7	13	309
340	Burger King	Bacon King Sandwich	1150	710	79	31	3.5	240	2150	49	2	10	61	1130
341	Burger King	Cheddar Bacon King Sandwich	1190	750	84	33	3.5	235	1930	50	2	11	64	1170
342	Burger King	Single Quarter Pound King Sandwich	580	260	29	13	1.5	105	1310	49	2	10	32	571
343	Burger King	Double Quarter Pound King Sandwich	900	480	54	25	3	210	1740	50	2	11	56	880
344	Burger King	Single Stacker King	700	380	42	16	2	125	1360	48	1	10	35	691
345	Burger King	Double Stacker King	1050	610	68	28	3.5	235	1870	49	1	11	61	1028
346	Burger King	IMPOSSIBLE Whopper® Sandwich	630	310	34	11	0	10	1080	58	4	12	25	628
347	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
348	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
349	Burger King	Double Hamburger	350	160	18	7	1	70	410	26	1	6	21	342
350	Burger King	Double Cheeseburger	390	190	21	9	1.5	85	590	27	1	7	23	383
351	Burger King	Extra Long Cheeseburger	630	330	37	14	1.5	100	1050	45	2	9	29	624
352	Burger King	Bacon Cheeseburger	320	140	16	7	0.5	55	710	27	1	7	17	317
353	Burger King	Bacon Double Cheeseburger	420	210	24	10	1.5	90	740	27	1	7	25	412
354	Burger King	Crispy Chicken Sandwich	670	370	41	7	0	60	1080	54	2	8	23	662
355	Burger King	Spicy Crispy Chicken Sandwich	700	370	42	7	0	65	1140	57	3	8	25	690
356	Burger King	Original Chicken Sandwich	660	360	40	7	0	75	1170	48	2	5	28	644
357	Burger King	Bacon & Cheese Crispy Chicken Sandwich	800	460	52	13	1	95	1650	55	2	8	30	791
358	Burger King	BBQ Bacon Crispy Chicken Sandwich	790	440	49	10	0.5	80	1630	60	2	13	28	785
359	Burger King	Crispy Chicken Jr.	450	270	30	5	0	30	780	34	2	5	12	448
360	Burger King	Spicy Crispy Chicken Jr.	390	190	21	3.5	0	30	740	37	2	6	12	388
361	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
362	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
363	Burger King	Chicken Nuggets- 10pc	430	240	27	4.5	0	55	780	27	2	0	20	415
364	Burger King	Chicken Nuggets- 20pc	860	490	54	9	0	115	1570	53	3	1	39	831
365	Burger King	Spicy Chicken Nuggets- 4pc	210	130	15	3	0	20	570	11	2	0	8	205
366	Burger King	Spicy Chicken Nuggets- 6pc	320	200	22	4.5	0	35	850	17	3	0	12	313
367	Burger King	Spicy Chicken Nuggets- 10 pc	530	330	37	7	0	55	1420	28	4	1	20	518
368	Burger King	Spicy Chicken Nuggets- 20 pc	1050	670	74	15	0	110	2840	56	9	1	40	1026
369	Burger King	Chicken Fries – 9 pc.	280	150	17	2.5	0	35	850	20	1	1	13	271
370	Burger King	Crispy Taco	170	80	9	3	0	10	410	19	2	1	5	169
371	Burger King	BIG FISH Sandwich	510	250	28	4.5	0	30	1180	51	2	7	16	506
372	Burger King	Garden Chicken Salad with Crispy Chicken – no dressing	440	220	25	7	0	75	930	31	3	4	25	426
373	Burger King	Club Salad with Crispy Chicken – no dressing	540	300	33	10	0	95	1380	31	3	5	31	524
374	Burger King	Garden Side Salad – w/o dressing	60	35	4	2.5	0	10	95	3	1	2	4	61
375	Burger King	Ken’s Ranch Dressing	260	250	28	4	0	10	240	2	0	2	1	265
376	Burger King	Ken’s Golden Italian Dressing	160	150	17	2.5	0	0	380	4	0	3	0	166
435	Burger King	Mayonnaise (Packet)	80	80	9	0.5	0	10	75	1	0	0	0	81
377	Burger King	Ken’s Lite Honey Balsamic Vinaigrette	120	70	8	1	0	0	220	14	0	11	0	132
378	Burger King	Buttery Garlic Croutons- Packet	60	20	2.5	0	0	10	180	9	0	1	1	60
379	Burger King	Onion Rings – value	150	70	8	1.5	0	0	400	19	1	2	1	153
380	Burger King	Onion Rings – small	320	150	16	3	0	0	840	41	3	4	3	324
381	Burger King	Onion Rings – medium	410	190	21	3.5	0	0	1080	53	4	5	4	415
382	Burger King	Onion Rings – large	500	230	25	4.5	0	0	1310	64	5	7	5	507
383	Burger King	French Fries – value (unsalted)	220	80	9	1.5	0	0	210	34	3	1	2	221
384	Burger King	French Fries – small	320	120	13	2	0	0	300	49	5	1	4	319
385	Burger King	French Fries – medium	380	140	16	2	0	0	360	58	6	1	4	379
386	Burger King	French Fries – large	430	160	18	2.5	0	0	410	66	7	2	5	430
387	Burger King	Kids Oatmeal	170	30	3	1.5	0	5	260	32	3	12	4	180
388	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
389	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
390	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
391	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
393	Burger King	Mott’s® Natural Applesauce	50	0	0	0	0	0	0	13	1	11	0	61
395	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
396	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
397	Burger King	Capri Sun® 100% Apple Juice (6 fl oz)	80	0	0	0	0	0	25	20	0	20	0	100
398	Burger King	PB&J Jamwich	300	140	16	3	0	0	290	33	4	11	11	303
401	Burger King	HERSHEY®’S Sundae Pie	310	170	19	12	0	10	220	32	1	22	3	341
402	Burger King	Pie made with TWIX®	370	180	20	13	0	10	330	45	1	30	4	409
403	Burger King	OREO® Cookie Cheesecake	350	170	18	8	0	35	310	41	1	25	6	377
404	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
405	Burger King	Soft Serve Cup	170	40	4.5	3	0	20	150	28	0	24	5	192
406	Burger King	HERSHEY®’s Chocolate Sundae	260	45	5	3	0	20	160	49	1	43	5	301
407	Burger King	Caramel Sundae	240	50	5	3.5	0	20	210	42	0	33	5	272
408	Burger King	Chocolate Chip Cookies (each)	160	70	8	4	0	10	125	24	1	15	2	177
409	Burger King	CROISSAN’WICH® Egg & Cheese	340	170	18	8	0	160	610	29	1	4	12	340
410	Burger King	CROISSAN’WICH® Sausage, Egg & Cheese	500	300	33	13	0	195	930	30	1	4	19	498
411	Burger King	CROISSAN’WICH® Ham, Egg & Cheese	370	170	19	8	0	175	1030	30	1	5	17	366
412	Burger King	CROISSAN’WICH® Bacon, Egg & Cheese	370	190	21	9	0	170	760	30	1	4	14	369
413	Burger King	Fully Loaded CROISSAN’WICH®	610	360	40	17	0.5	225	1680	31	1	5	28	604
414	Burger King	Double CROISSAN’WICH® with Sausage & Bacon	580	340	40	16	0.5	215	1260	31	1	5	23	578
415	Burger King	Double CROISSAN’WICH® with Sausage	710	470	52	20	0.5	240	1420	31	1	5	29	706
416	Burger King	Double CROISSAN’WICH® with Ham & Sausage	580	340	38	16	0.5	220	1530	31	1	5	27	574
417	Burger King	Fully Loaded Biscuit	640	400	45	20	0	225	2190	31	1	4	28	636
418	Burger King	Ham, Egg, & Cheese Biscuit	400	210	24	12	0	175	1550	29	1	3	17	398
419	Burger King	Sausage, Egg, & Cheese Biscuit	530	340	38	17	0	195	1440	29	1	3	19	531
420	Burger King	Bacon, Egg & Cheese Biscuit	400	230	26	13	0	170	1270	29	1	3	13	403
421	Burger King	Sausage Biscuit	420	250	28	6	0	35	1050	28	1	2	12	416
422	Burger King	Breakfast Burrito Jr.	370	210	23	8	0	150	930	27	3	2	15	365
423	Burger King	EGG-NORMOUS BURRITOΡ	780	380	42	15	0	355	1960	68	3	4	32	767
424	Burger King	BK™ Ultimate Breakfast Platter	930	390	44	11	0	390	2230	110	4	40	24	957
425	Burger King	NY Ultimate Platter (Regional menu item)	900	420	46	12	0	380	1760	95	5	31	25	918
426	Burger King	Pancake and Sausage platter	610	280	31	9	0	80	1010	72	1	30	12	637
427	Burger King	Hash Browns – small	250	150	16	3.5	0	0	580	24	3	0	2	252
428	Burger King	Hash Browns – medium	500	290	33	7	0	0	1140	48	7	0	4	503
429	Burger King	Hash Browns – large	670	390	44	9	0	0	1530	65	9	0	5	674
430	Burger King	French Toast Sticks (3 piece)	230	100	11	2	0	0	260	29	1	8	3	237
431	Burger King	French Toast Sticks (5 piece)	380	160	18	3	0	0	430	49	2	13	5	391
432	Burger King	Additional Options	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
433	Burger King	American Cheese (slice)	40	30	3.5	2	0	10	180	1	0	0	2	40
434	Burger King	Ketchup (Packet)	10	0	0	0	0	0	125	3	0	2	0	12
436	Burger King	Strawberry or Grape Jam (packet)	30	0	0	0	0	0	0	7	0	6	0	36
437	Burger King	Breakfast Syrup (1 oz)	120	0	0	0	0	0	15	30	0	18	0	138
438	Burger King	Barbecue Dipping Sauce (1 oz)	40	0	0	0	0	0	310	11	0	10	0	50
439	Burger King	Ranch Dipping Sauce (1 oz)	140	140	15	2.5	0	10	85	1	0	1	1	143
440	Burger King	Buffalo Dipping Sauce (1 oz)	80	70	8	1.5	0	5	360	2	0	1	0	83
512	Burger King	BK® Café Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
441	Burger King	Zesty Onion Ring Dipping Sauce (1 oz)	150	140	15	2.5	0	20	240	3	0	0	0	153
442	Burger King	Honey Mustard Dipping Sauce (1oz)	90	60	6	1	0	10	180	8	0	7	0	98
443	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
444	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
445	Burger King	Smoothie: Strawberry Banana 16 fl oz	310	10	1	0	0	0	55	71	3	50	4	356
446	Burger King	Oreo® Shake	720	180	20	12	0.5	65	540	118	1	98	16	814
447	Burger King	Chocolate Oreo® Shake	740	190	22	13	0.5	70	680	121	1	101	17	837
448	Burger King	Vanilla Milk Shake	580	140	15	10	0	60	420	98	0	85	14	661
449	Burger King	HERSHEY®’S Chocolate Milk Shake	610	140	16	10	0	60	500	103	1	88	14	694
450	Burger King	Strawberry Milk Shake	640	140	15	10	0	60	440	113	0	99	14	735
453	Burger King	16 fl oz	210	0	0	0	0	0	50	58	0	58	0	268
454	Burger King	20 fl oz	270	0	0	0	0	0	60	73	0	73	0	343
455	Burger King	29 fl oz	290	0	0	0	0	0	85	105	0	105	0	395
456	Burger King	38 fl oz	510	0	0	0	0	0	115	138	0	138	0	648
459	Burger King	20 fl oz	0	0	0	0	0	0	85	0	0	0	0	0
460	Burger King	29 fl oz	0	0	0	0	0	0	120	0	0	0	0	0
461	Burger King	38 fl oz	0	0	0	0	0	0	160	0	0	0	0	0
465	Burger King	29 fl oz	380	0	0	0	0	0	170	102	0	102	0	482
466	Burger King	38 fl oz	500	0	0	0	0	0	230	133	0	133	0	633
467	Burger King	Dr. Pepper®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
468	Burger King	16 fl oz	190	0	0	0	0	0	60	52	0	51	0	241
469	Burger King	20 fl oz	240	0	0	0	0	0	75	65	0	64	0	304
470	Burger King	29 fl oz	350	0	0	0	0	0	105	94	0	93	0	443
471	Burger King	38 fl oz	450	0	0	0	0	0	140	124	0	121	0	571
472	Burger King	Barq’s® Root Beer‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
473	Burger King	16 fl oz	240	0	0	0	0	0	100	65	0	65	0	305
474	Burger King	20 fl oz	300	0	0	0	0	0	120	81	0	81	0	381
475	Burger King	29 fl oz	350	0	0	0	0	0	180	118	0	118	0	468
476	Burger King	38 fl oz	450	0	0	0	0	0	230	155	0	155	0	605
477	Burger King	Cherry Coke®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
479	Burger King	20 fl oz	280	0	0	0	0	0	70	76	0	76	0	356
480	Burger King	29 fl oz	410	0	0	0	0	0	100	110	0	110	0	520
481	Burger King	38 fl oz	450	0	0	0	0	0	130	145	0	145	0	595
482	Burger King	Fanta® Orange‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
483	Burger King	16 fl oz	230	0	0	0	0	0	60	62	0	61	0	291
484	Burger King	20 fl oz	280	0	0	0	0	0	70	78	0	77	0	357
485	Burger King	29 fl oz	410	0	0	0	0	0	105	113	0	111	0	521
486	Burger King	38 fl oz	530	0	0	0	0	0	135	148	0	146	0	676
487	Burger King	Hi-C® Fruit Punch‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
488	Burger King	16 fl oz	220	0	0	0	0	0	75	62	0	60	0	280
489	Burger King	20 fl oz	280	0	0	0	0	0	95	77	0	75	0	355
490	Burger King	29 fl oz	410	0	0	0	0	0	135	111	0	109	0	519
491	Burger King	38 fl oz	450	0	0	0	0	0	180	146	0	143	0	593
492	Burger King	MINUTE MAID® Light Lemonade	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
493	Burger King	16 fl oz	10	0	0	0	0	0	60	3	0	0	0	0
494	Burger King	20 fl oz	10	0	0	0	0	0	70	4	0	0	0	0
495	Burger King	29 fl oz	15	0	0	0	0	0	105	5	0	0	0	0
497	Burger King	Sweet Tea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
498	Burger King	20 fl oz	120	0	0	0	0	0	0	35	0	35	0	155
499	Burger King	29 fl oz	160	0	0	0	0	0	0	49	0	49	0	209
500	Burger King	40 fl oz	240	0	0	0	0	0	0	71	0	71	0	311
501	Burger King	Unsweetened Tea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
505	Burger King	Capri Sun® 100% Apple Juice	80	0	0	0	0	0	25	20	0	20	0	100
506	Burger King	Minute Maid® Orange Juice	140	0	0	0	0	0	20	33	0	30	2	168
507	Burger King	Frozen Coke® – 16 oz	130	0	0	0	0	0	50	35	0	35	0	165
509	Burger King	Hot Coffees	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
510	Burger King	BK® Café Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
511	Burger King	BK® Café Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
513	Burger King	BK® Café Decaf Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
514	Burger King	BK® Café Decaf Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
515	Burger King	BK® Café Decaf Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
517	Burger King	BK® Café Iced Vanilla Coffee- 12 fl oz	150	70	8	4	0	25	30	21	0	21	1	174
518	Burger King	BK® Café Iced Vanilla Coffee- 16 fl oz	200	90	10	5	0	30	40	27	0	27	2	230
519	Burger King	BK® Café Iced Vanilla Coffee- 20 fl oz	260	110	13	7	0	40	50	34	0	34	2	299
520	Burger King	BK® Café Iced Mocha Coffee- 12 fl oz	180	70	8	4	0	25	40	27	1	25	2	207
521	Burger King	BK® Café Iced Mocha Coffee- 16 fl oz	240	90	10	6	0	30	55	35	1	32	2	276
522	Burger King	BK® Café Iced Mocha Coffee- 20 fl oz	300	120	13	7	0	40	70	45	2	41	3	345
524	Burger King	BK® Café Mocha Frappe- 12 fl oz	300	80	8	5	0	30	200	50	1	41	7	339
525	Burger King	BK® Café Mocha Frappe- 16 fl oz	400	90	10	7	0	40	270	68	1	58	9	456
526	Burger King	BK® Café Mocha Frappe- 20 fl oz	510	110	13	8	0	50	350	87	1	71	12	577
527	Burger King	BK® Café Caramel Frappe- 12 fl oz	300	80	8	5	0	35	210	50	0	41	7	339
528	Burger King	BK® Café Caramel Frappe- 16 fl oz	400	90	10	7	0	40	280	68	0	56	9	454
529	Burger King	BK® Café Caramel Frappe- 20 fl oz	500	110	12	8	0	50	350	86	0	71	11	568
530	Wendy’s	Baconator	950	62	24	3	205	1630	40	2	8	59	923	\N
531	Wendy’s	Dave’s Double	810	51	20	3	175	1280	41	3	8	49	789	\N
532	Wendy’s	Dave’s Single	570	34	13	1.5	100	1110	40	3	9	30	562	\N
533	Wendy’s	Dave’s Triple	1090	72	30	4	260	1650	43	3	9	71	1058	\N
534	Wendy’s	Double Stack	390	21	9	1.5	90	740	26	1	6	25	380	\N
535	Wendy’s	Jr. Bacon Cheeseburger	380	22	8	1	65	680	25	1	5	19	374	\N
536	Wendy’s	Jr. Cheeseburger	280	13	6	1	50	660	26	1	6	16	276	\N
537	Wendy’s	Jr. Cheeseburger Deluxe	340	19	7	1	55	660	27	2	7	16	338	\N
538	Wendy’s	Son of Baconator	630	39	15	1.5	125	1280	37	2	7	34	618	\N
539	Wendy’s	3 Piece Chicken Tenders	330	16	2.5	0	75	1010	22	0	0	24	309	\N
540	Wendy’s	4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	\N
541	Wendy’s	4 Piece Chicken Tenders	430	21	3.5	0	100	1350	29	0	1	32	403	\N
542	Wendy’s	6 Picece Chicken Nuggets	250	16	3.5	0	50	510	14	1	0	13	241	\N
543	Wendy’s	6 Piece Chicken Tenders	650	32	5	0	150	2020	43	0	1	48	608	\N
544	Wendy’s	10 Piece Chicken Nuggets	420	27	5	0	80	850	24	1	0	22	403	\N
545	Wendy’s	Crispy Chicken BLT	420	23	6	0	50	950	35	2	5	20	411	\N
546	Wendy’s	Crispy Chicken Sandwich	330	16	3	0	30	600	33	2	4	14	323	\N
547	Wendy’s	Grilled Asiago Ranch Club	530	23	7	0	120	1220	36	3	6	43	500	\N
548	Wendy’s	Grilled Chicken Sandwich	370	10	2	0	90	830	38	3	8	34	346	\N
549	Wendy’s	Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	\N
781	KFC	Ketchup	30	0	0	0	0	250	8	0	6	0	36	\N
550	Wendy’s	Homestyle Asiago Ranch Chicken Club	660	34	9	0	100	1650	52	3	7	38	638	\N
551	Wendy’s	Homestyle Chicken Sandwich	510	22	4	0	70	1150	51	3	6	28	492	\N
552	Wendy’s	S’Awesome Sauce	120	12	2	0	0	170	4	1	3	1	124	\N
553	Wendy’s	Spicy Asiago Ranch Club	670	32	9	0	100	1530	55	4	6	38	647	\N
554	Wendy’s	Spicy Chicken Sandwich	510	20	3.5	0	65	1030	54	4	6	29	491	\N
555	Wendy’s	Spicy Chicken Wrap	370	20	5	0	50	850	30	2	2	18	359	\N
556	Wendy’s	Apple Pecan Chicken Salad, Full Size	560	24	7	0	115	1020	52	7	40	38	569	\N
557	Wendy’s	Apple Pecan Chicken Salad, Half Size	340	17	4	0	55	550	29	4	22	20	346	\N
558	Wendy’s	Berry Burst Chicken Salad, Full Size	460	17	4.5	0	105	1090	41	7	29	41	453	\N
559	Wendy’s	Berry Burst Chicken Salad, Half Size	290	13	2.5	0	50	570	23	5	15	23	285	\N
560	Wendy’s	Caesar Side Salad	240	15	4	0	30	500	19	3	4	8	240	\N
561	Wendy’s	Garden Side Salad	250	18	4	0	20	460	18	2	4	7	251	\N
562	Wendy’s	Southwest Avocado Chicken Salad, Full Size	600	41	11	0	135	1220	18	7	7	42	576	\N
563	Wendy’s	Southwest Avocado Chicken Salad, Half Size	300	20	6	0	70	620	10	4	4	21	289	\N
810	KFC	Diet Mountain Dew® (20 fl oz)	10	0	0	0	0	90	1	0	1	0	11	\N
564	Wendy’s	Spicy Caesar Chicken Salad, Full Size	720	42	12	1	150	1680	44	8	6	42	696	\N
565	Wendy’s	Spicy Caesar Chicken Salad, Half Size	410	23	6	0.5	75	930	30	5	4	23	397	\N
566	Wendy’s	Taco Salad, Full Size	660	32	13	1	85	1820	63	10	18	32	659	\N
567	Wendy’s	Taco Salad, Half Size	470	23	8	0.5	45	1320	49	7	12	19	471	\N
568	Wendy’s	Apple Bites	35	0	0	0	0	0	9	2	7	0	42	\N
569	Wendy’s	Baconator Fries	490	28	9	0	35	550	45	4	2	14	487	\N
570	Wendy’s	Bacon Cheese Baked Potato	440	14	6	0	35	550	64	7	4	17	433	\N
571	Wendy’s	Cheese Baked Potato	430	13	7	0	30	560	65	7	5	14	428	\N
572	Wendy’s	Chili & Cheese Baked Potato	460	11	5	0	35	710	71	8	7	19	453	\N
573	Wendy’s	Chili, Large	250	7	3	0.5	50	1170	23	5	9	23	239	\N
575	Wendy’s	Chili Cheese Fries	500	25	8	0.5	35	710	53	6	4	16	496	\N
576	Wendy’s	Natural-Cut Fries, Junior	230	10	2	0	0	15	30	3	0	3	229	\N
577	Wendy’s	Natural-Cut Fries, Large	530	24	4.5	0	0	520	70	6	0	7	528	\N
578	Wendy’s	Natural-Cut Fries, Medium	420	19	3.5	0	0	420	56	5	0	6	418	\N
579	Wendy’s	Natural-Cut Fries, Small	320	15	2.5	0	0	320	43	4	0	5	318	\N
580	Wendy’s	Plain Baked Potato	270	0	0	0	0	25	61	7	3	7	266	\N
581	Wendy’s	Sour Cream and Chive Baked Potato	310	\N	2.5	0	10	35	63	7	4	8	309	\N
582	Wendy’s	Summer Berry Burst Fruit Cup	20	0	0	0	0	0	5	1	3	0	23	\N
583	Wendy’s	1% Chocolate Milk	150	\N	1.5	0	10	170	26	0	23	7	168	\N
584	Wendy’s	1% White Milk	90	2	1.5	0	10	105	10	0	10	7	95	\N
585	Wendy’s	All-Natural Lemonade, Large	380	0	0	0	0	0	100	0	93	0	473	\N
586	Wendy’s	All-Natural Lemonade, Medium	330	0	0	0	0	0	86	0	81	0	411	\N
587	Wendy’s	All-Natural Lemonade, Small	190	0	0	0	0	0	50	0	47	0	237	\N
588	Wendy’s	Apple Kiwi Fruit Tea, Large	330	0	0	0	0	60	83	0	80	0	410	\N
589	Wendy’s	Apple Kiwi Fruit Tea, Medium	300	0	0	0	0	50	76	0	73	0	373	\N
590	Wendy’s	Apple Kiwi Fruit Tea, Small	170	0	0	0	0	30	44	0	42	0	212	\N
591	Wendy’s	Barq’s Root Beer, Large	450	0	0	0	0	180	122	0	122	0	572	\N
592	Wendy’s	Barq’s Root Beer, Medium	360	0	0	0	0	150	98	0	98	0	458	\N
593	Wendy’s	Barq’s Root Beer, Small	220	0	0	0	0	90	61	0	61	0	281	\N
594	Wendy’s	Brewed Unsweetened Iced Tea, Large	5	0	0	0	0	25	2	0	0	0	5	\N
595	Wendy’s	Brewed Unsweetened Iced Tea, Medium	0	0	0	0	0	15	1	0	0	0	0	\N
596	Wendy’s	Brewed Unsweetened Iced Tea, Small	0	0	0	0	0	10	1	0	0	0	0	\N
597	Wendy’s	Caramel Iced Coffee, Medium	240	8	5	0	25	45	40	0	36	3	278	\N
598	Wendy’s	Caramel Iced Coffee, Small	160	6	3.5	0	20	30	26	0	24	2	186	\N
599	Wendy’s	Coca-Cola, Large	400	0	0	0	0	90	109	0	109	0	509	\N
600	Wendy’s	Coca-Cola, Medium	320	0	0	0	0	70	87	0	87	0	407	\N
601	Wendy’s	Coca-Cola, Small	200	0	0	0	0	45	54	0	54	0	254	\N
602	Wendy’s	Coca-Cola Zero Sugar, Large	0	0	0	0	0	100	1	0	0	0	0	\N
603	Wendy’s	Coca-Cola Zero Sugar, Medium	0	0	0	0	0	80	1	0	0	0	0	\N
604	Wendy’s	Coca-Cola Zero Sugar, Small	0	0	0	0	0	50	0	0	0	0	0	\N
605	Wendy’s	Diet Coke, Large	0	0	0	0	0	125	1	0	0	0	0	\N
606	Wendy’s	Diet Coke, Medium	0	0	0	0	0	100	1	0	0	0	0	\N
607	Wendy’s	Diet Coke, Small	0	0	0	0	0	45	0	0	0	0	0	\N
608	Wendy’s	Dr Pepper, Large	240	0	0	0	0	70	66	0	64	0	304	\N
609	Wendy’s	Dr Pepper, Medium	190	0	0	0	0	55	53	0	51	0	241	\N
610	Wendy’s	Dr Pepper, Small	120	0	0	0	0	35	33	0	32	0	152	\N
611	Wendy’s	Fanta Orange, Large	430	0	0	0	0	110	117	0	115	0	545	\N
612	Wendy’s	Fanta Orange, Medium	340	0	0	0	0	85	94	0	92	0	432	\N
613	Wendy’s	Fanta Orange, Small	210	0	0	0	0	55	59	0	58	0	268	\N
614	Wendy’s	Hi-C Flashin’ Fruit Punch, Large	420	0	0	0	0	140	115	0	113	0	533	\N
615	Wendy’s	Hi-C Flashin’ Fruit Punch, Medium	340	0	0	0	0	115	92	0	90	0	430	\N
616	Wendy’s	Hi-C Flashin’ Fruit Punch, Small	210	0	0	0	0	70	58	0	56	0	266	\N
617	Wendy’s	Honest Tropical Green Tea, Large	110	0	0	0	0	55	29	0	29	0	139	\N
618	Wendy’s	Honest Tropical Green Tea, Medium	90	0	0	0	0	40	22	0	22	0	112	\N
619	Wendy’s	Honest Tropical Green Tea, Small	60	0	0	0	0	25	14	0	14	0	74	\N
620	Wendy’s	Hot Tea	0	0	0	0	0	0	1	0	0	0	0	\N
621	Wendy’s	Limeade, Large	460	0	0	0	0	55	117	0	111	0	571	\N
622	Wendy’s	Limeade, Medium	380	0	0	0	0	45	98	0	93	0	473	\N
623	Wendy’s	Limeade, Small	230	0	0	0	0	30	59	0	56	0	286	\N
624	Wendy’s	Minute Maid Light Lemonade, Large	15	0	0	0	0	10	2	0	0	0	15	\N
625	Wendy’s	Minute Maid Light Lemonade, Medium	10	0	0	0	0	10	1	0	0	0	10	\N
626	Wendy’s	Minute Maid Light Lemonade, Small	5	0	0	0	0	5	1	0	0	0	5	\N
627	Wendy’s	Mocha Iced Coffee, Medium	210	8	5	0	25	40	32	0	28	3	240	\N
628	Wendy’s	Mocha Iced Coffee, Small	170	6	3.5	0	20	30	28	0	25	2	197	\N
629	Wendy’s	Pear Berry Fruit Tea, Large	320	0	0	0	0	60	82	0	76	0	396	\N
630	Wendy’s	Pear Berry Fruit Tea, Medium	300	0	0	0	0	50	76	0	70	0	370	\N
631	Wendy’s	Pear Berry Fruit Tea, Small	170	0	0	0	0	30	44	0	40	0	210	\N
632	Wendy’s	Skinny Vanilla Iced Coffee, Medium	100	8	5	0	25	45	14	0	0	3	102	\N
633	Wendy’s	Skinny Vanilla Iced Coffee, Small	70	5	3.5	0	15	30	6	0	0	2	72	\N
634	Wendy’s	Small Sprite, Small	200	0	0	0	0	90	53	0	53	0	253	\N
635	Wendy’s	Sprite, Large	390	0	0	0	0	180	105	0	105	0	495	\N
636	Wendy’s	Sprite, Medium	310	0	0	0	0	140	84	0	84	0	394	\N
637	Wendy’s	Strawberry Lemonade, Large	480	0	0	0	0	55	121	0	114	0	594	\N
638	Wendy’s	Strawberry Lemonade, Medium	380	0	0	0	0	45	98	0	92	0	472	\N
639	Wendy’s	Strawberry Lemonade, Small	230	0	0	0	0	30	58	0	54	0	284	\N
640	Wendy’s	Strawberry Sweet Tea, Large	270	0	0	0	0	15	69	0	67	0	337	\N
641	Wendy’s	Strawberry Sweet Tea, Medium	240	0	0	0	0	15	60	0	59	0	299	\N
642	Wendy’s	Strawberry Sweet Tea, Small	140	0	0	0	0	10	36	0	35	0	175	\N
643	Wendy’s	Strawberry Tea, Large	90	0	0	0	0	20	22	0	20	0	110	\N
644	Wendy’s	Strawberry Tea, Medium	60	0	0	0	0	15	16	0	14	0	74	\N
645	Wendy’s	Strawberry Tea, Small	45	0	0	0	0	10	11	0	10	0	55	\N
646	Wendy’s	Sweetened Iced Tea, Large	300	0	0	0	0	25	77	0	75	0	375	\N
647	Wendy’s	Sweetened Iced Tea, Medium	220	0	0	0	0	20	58	0	56	0	276	\N
648	Wendy’s	Sweetened Iced Tea, Small	160	0	0	0	0	10	41	0	40	0	200	\N
649	Wendy’s	Vanilla Iced Coffee, Medium	250	8	5	0	25	40	42	0	39	3	291	\N
650	Wendy’s	Vanilla Iced Coffee, Small	170	6	3.5	0	20	30	28	0	26	2	198	\N
651	Wendy’s	Classic Chocolate Frosty, Junior	200	5	3	0	20	90	33	0	27	6	224	\N
652	Wendy’s	Classic Chocolate Frosty, Large	590	15	10	0.5	60	260	99	0	81	17	664	\N
653	Wendy’s	Classic Chocolate Frosty, Medium	470	12	8	0.5	50	210	79	0	65	13	530	\N
654	Wendy’s	Classic Chocolate Frosty, Small	350	9	6	0	35	150	58	0	47	10	393	\N
655	Wendy’s	Vanilla Frosty, Junior	190	5	3.5	0	25	90	32	0	27	5	216	\N
656	Wendy’s	Vanilla Frosty, Large	570	15	10	0.5	70	260	94	0	78	15	643	\N
657	Wendy’s	Vanilla Frosty, Medium	450	12	8	0.5	55	210	75	0	63	12	509	\N
658	Wendy’s	Vanilla Frosty, Small	340	9	6	0	45	160	56	0	47	9	384	\N
659	Wendy’s	Chocolate Chunk Cookie	310	16	8	0	20	210	40	2	24	3	339	\N
660	Wendy’s	Double Chocolate Chunk Cookie	290	14	7	0	20	230	39	4	21	4	314	\N
661	Wendy’s	Sugar Cookie	330	16	8	0	25	300	43	1	24	3	359	\N
662	Wendy’s	Wendy’s Kids’ Meal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
663	Wendy’s	Kids 2 Piece Chicken Tenders	200	10	1.5	0	45	620	13	0	0	15	187	\N
664	Wendy’s	Kids 4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	\N
665	Wendy’s	Kids Cheeseburger	280	13	6	0.5	50	540	25	1	5	15	276	\N
666	Wendy’s	Kids Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	\N
667	Wendy’s	Kids Hamburger	240	9	3.5	0.5	40	350	24	1	5	13	236	\N
668	Wendy’s	Artisan Egg Sandwich with Bacon	320	17	8	0	245	750	25	1	4	18	314	\N
669	Wendy’s	Artisan Egg Sandwich with Sausage	480	33	13	0	275	980	27	1	4	21	476	\N
670	Wendy’s	Bacon Breakfast Bowl	510	28	9	0	245	1390	44	4	2	19	502	\N
671	Wendy’s	Biggie Breakfast Sandwich	610	40	15	0	290	1400	37	2	7	27	605	\N
672	Wendy’s	Fresh-Baked Biscuit with Applewood Smoked Bacon	410	24	13	0	235	970	34	1	5	15	413	\N
673	Wendy’s	Fresh Baked Biscuit with Natural Sausage	590	41	19	0	270	1270	36	1	6	20	595	\N
674	Wendy’s	Gravy and Sausage Bowl	450	22	6	0	220	1260	50	4	2	12	446	\N
675	Wendy’s	Honey Butter Chicken Biscuit	500	26	12	0	50	1120	48	1	9	19	502	\N
676	Wendy’s	Sausage and Egg Burrito	360	20	8	0	210	920	29	1	2	17	353	\N
677	Wendy’s	Sausage and Gravy Biscuit	490	29	14	0	20	1400	49	2	6	8	502	\N
678	Wendy’s	Sausage Biscuit	480	33	15	0	50	1010	35	1	5	12	488	\N
679	Wendy’s	Sausage Breakfast Bowl	640	42	14	0	270	1540	46	4	3	21	636	\N
680	Wendy’s	Seasoned Home-Style Potatoes, Large	360	13	2.5	0	0	1080	57	6	1	5	359	\N
681	Wendy’s	Seasoned Home-Style Potatoes, Medium	250	9	1.5	0	0	750	39	4	1	4	249	\N
682	Wendy’s	Seasoned Home-Style Potatoes, Small	230	8	1.5	0	0	680	35	4	0	3	229	\N
683	Wendy’s	Two Sausage and Egg Burritos	720	41	16	0	420	1830	59	2	5	34	707	\N
684	Wendy’s	Two Sausage Biscuits	960	65	31	0	95	2020	70	3	10	23	978	\N
685	KFC	Limited Time Cinnabon Dessert  Biscuits	290	13	7	0	\N	580	40	2	17	4	310	\N
686	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Breast	390	21	4	0	120	1190	11	2	0	39	355	\N
687	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Limited Time Drumstick	130	8	1.5	0	55	430	4	1	0	12	119.5	\N
688	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Thigh	280	19	4.5	0	100	910	8	1	0	19	265.5	\N
689	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Whole Wing	130	8	2	0	55	380	3	0	0	10	122	\N
691	KFC	Chicken Drumstick	250	21	3.5	0	50	530	6	1	0	11	242.5	\N
692	KFC	Chicken Thigh	500	40	7	0	100	970	11	1	1	22	486	\N
693	KFC	Chicken Whole Wing	290	25	4	0	45	520	6	1	1	10	285	\N
694	KFC	Breast	260	12	3	0	130	790	1	0	0	38	225	\N
695	KFC	Drumstick	100	6	1.5	0	55	260	0	0	0	11	90.5	\N
696	KFC	Thigh	180	12	3.5	0	90	470	0	0	0	17	166.5	\N
697	KFC	Whole Wing	90	6	1.5	0	45	210	1	0	0	9	82.5	\N
700	KFC	Thigh	390	32	6	0	65	900	12	2	1	13	384	\N
701	KFC	Whole Wing	180	15	2.5	0	35	450	5	1	0	8	174.5	\N
702	KFC	EXTRA CRISPY  Chicken Breast	530	35	6	0	105	1150	18	0	0	35	501	\N
703	KFC	EXTRA CRISPY  Chicken Drumstick	170	12	2	0	50	390	5	0	0	10	162	\N
704	KFC	EXTRA CRISPY  Chicken Thigh	330	23	4.5	0	100	700	9	0	0	22	312.5	\N
705	KFC	EXTRA CRISPY  Chicken Whole Wing	170	13	2	0	45	340	5	0	0	10	162	\N
706	KFC	KENTUCKY GRILLED CHICKEN Breast	210	7	2	0	130	710	0	0	0	38	174	\N
707	KFC	KENTUCKY GRILLED CHICKEN Drumstick	80	4	1	0	55	220	0	0	0	11	70	\N
708	KFC	KENTUCKY GRILLED CHICKEN Thigh	150	9	3	0	90	420	0	0	0	17	136	\N
709	KFC	KENTUCKY GRILLED CHICKEN Whole Wing	70	3	1	0	45	180	0	0	0	9	62	\N
710	KFC	SPICY CRISPY CHICKEN Breast	350	20	3.5	0	100	1100	11	1	0	30	323.5	\N
711	KFC	SPICY CRISPY CHICKEN Drumstick	130	8	1.5	0	40	420	5	1	0	9	122.5	\N
712	KFC	SPICY CRISPY CHICKEN Thigh	270	20	3.5	0	65	720	10	1	0	13	260.5	\N
713	KFC	SPICY CRISPY CHICKEN Whole Wing	120	8	1.5	0	35	350	5	0	0	7	114.5	\N
714	KFC	EXTRA CRISPY  Tender (each)	260	14	2	0	50	610	15	\N	0	19	243	\N
715	KFC	EXTRA CRISPY  Tender (each)	220	16	2.5	0	25	460	9	\N	0	10	212.5	\N
716	KFC	KENTUCKY FRIED WINGS Buffalo	100	7	1.5	0	20	310	3	0	0	5	96.5	\N
717	KFC	KENTUCKY FRIED WINGS Honey BBQ	100	6	1	0	20	210	8	0	4	5	100	\N
718	KFC	KENTUCKY FRIED WINGS Nashville Hot	130	11	2	0	20	230	4	0	0	5	127	\N
719	KFC	KENTUCKY FRIED WINGS Unsauced	80	6	1	0	20	150	3	0	0	5	76	\N
720	KFC	POPCORN NUGGETS Kids	290	19	2.5	0	30	870	19	1	0	13	279.5	\N
721	KFC	POPCORN NUGGETS Large	620	39	5	0	65	1820	39	2	0	27	598	\N
722	KFC	BBQ Baked Beans	190	1	0	0	0	650	34	7	15	11	194	\N
723	KFC	Biscuit	180	8	4.5	0	0	520	22	1	1	4	181.5	\N
724	KFC	Coleslaw	170	12	2	0	\N	180	14	4	10	1	181	\N
725	KFC	Corn on the Cob	70	\N	0	0	0	0	17	2	3	2	71	\N
779	KFC	Honey Mustard – Dipping Sauce Cup	110	9	1.5	0	\N	120	6	0	6	0	117.5	\N
780	KFC	Honey Sauce Packet	30	0	0	0	0	0	8	0	5	0	35	\N
782	KFC	KFC Sauce – Dipping Sauce Cup	90	8	1.5	0	10	170	5	0	5	0	96.5	\N
783	KFC	Lemon Juice Packet	5	0	0	0	0	20	1	0	0	0	5	\N
784	KFC	Ranch – Dipping Sauce Cup	130	14	2.5	0	10	240	2	0	1	0	133.5	\N
785	KFC	Strawberry Jam Packet	35	0	0	0	0	0	9	0	6	0	41	\N
786	KFC	Capri Sun® 100% Juice Fruit Punch	80	0	0	0	0	25	21	0	20	0	100	\N
787	KFC	Chocolate Milk 1%	150	\N	1.5	0	10	170	26	0	23	7	167.5	\N
789	KFC	Musselman’s™ Applesauce	45	0	0	0	0	0	12	1	8	0	53	\N
790	KFC	7UP® (12 fl oz)	140	0	0	0	0	50	35	0	35	0	175	\N
791	KFC	7UP® (16 fl oz)	190	0	0	0	0	70	46	0	46	0	236	\N
792	KFC	7UP® (20 fl oz)	240	0	0	0	0	85	58	0	58	0	298	\N
793	KFC	7UP® (30 fl oz)	350	0	0	0	0	125	87	0	87	0	437	\N
794	KFC	Classic Lemonade (1/2 Gallon)	880	0	0	0	0	780	234	0	228	0	1108	\N
795	KFC	Classic Lemonade (20 fl oz)	140	0	0	0	0	130	39	0	38	0	178	\N
796	KFC	Code Red Mountain Dew® (12 fl oz)	170	0	0	0	0	50	46	0	46	0	216	\N
797	KFC	Code Red Mountain Dew® (16 fl oz)	230	0	0	0	0	65	62	0	62	0	292	\N
798	KFC	Code Red Mountain Dew® (20 fl oz)	290	0	0	0	0	85	77	0	77	0	367	\N
799	KFC	Code Red Mountain Dew® (30 fl oz)	430	0	0	0	0	125	116	0	115	0	545	\N
800	KFC	Diet Dr Pepper® (12 fl oz)	0	0	0	0	0	70	0	0	0	0	0	\N
801	KFC	Diet Dr Pepper® (16 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
802	KFC	Diet Dr Pepper® (20 fl oz)	0	0	0	0	0	120	0	0	0	0	0	\N
803	KFC	Diet Dr Pepper® (30 fl oz)	0	0	0	0	0	180	0	0	0	0	0	\N
804	KFC	Diet Mist Twst® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
805	KFC	Diet Mist Twst® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
806	KFC	Diet Mist Twst® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
807	KFC	Diet Mist Twst® (30 fl oz)	5	0	0	0	0	95	0	0	0	0	5	\N
808	KFC	Diet Mountain Dew® (12 fl oz)	0	0	0	0	0	55	1	0	0	0	0	\N
809	KFC	Diet Mountain Dew® (16 fl oz)	5	0	0	0	0	75	1	0	0	0	5	\N
811	KFC	Diet Mountain Dew® (30 fl oz)	10	0	0	0	0	140	1	0	1	0	11	\N
812	KFC	Diet Pepsi® (12 fl oz)	0	0	0	0	0	55	0	0	0	0	0	\N
813	KFC	Diet Pepsi® (16 fl oz)	0	0	0	0	0	75	0	0	0	0	0	\N
814	KFC	Diet Pepsi® (20 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
815	KFC	Diet Pepsi® (30 fl oz)	0	0	0	0	0	140	0	0	0	0	0	\N
816	KFC	Diet Pepsi® Wild Cherry Pepsi® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
817	KFC	Diet Pepsi® Wild Cherry Pepsi® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
818	KFC	Diet Pepsi® Wild Cherry Pepsi® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
819	KFC	Diet Pepsi® Wild Cherry Pepsi® (30 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
820	KFC	Dr Pepper® (12 fl oz)	140	0	0	0	0	45	39	0	38	0	178	\N
821	KFC	Dr Pepper® (16 fl oz)	190	0	0	0	0	60	52	0	51	0	241	\N
822	KFC	Dr Pepper® (20 fl oz)	240	0	0	0	0	75	65	0	64	0	304	\N
823	KFC	Dr Pepper® (30 fl oz)	360	0	0	0	0	110	98	0	96	0	456	\N
824	KFC	Lipton® Brisk® Lemon Tea (12 fl oz)	80	0	0	0	0	40	22	0	22	0	102	\N
825	KFC	Lipton® Brisk® Lemon Tea (16 fl oz)	110	0	0	0	0	55	29	0	29	0	139	\N
826	KFC	Lipton® Brisk® Lemon Tea (20 fl oz)	140	0	0	0	0	70	36	0	36	0	176	\N
827	KFC	Lipton® Brisk® Lemon Tea (30 fl oz)	210	0	0	0	0	105	55	0	54	0	264	\N
828	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (12 fl oz)	0	0	0	0	0	105	0	0	0	0	0	\N
829	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (16 fl oz)	0	0	0	0	0	140	0	0	0	0	0	\N
830	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (20 fl oz)	5	0	0	0	0	180	0	0	0	0	5	\N
831	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (30 fl oz)	10	0	0	0	0	270	0	0	0	0	10	\N
832	KFC	Lipton® Brisk® Raspberry Tea (12 fl oz)	80	0	0	0	0	45	20	0	20	0	100	\N
833	KFC	Lipton® Brisk® Raspberry Tea (16 fl oz)	100	0	0	0	0	55	26	0	26	0	126	\N
834	KFC	Lipton® Brisk® Raspberry Tea (20 fl oz)	130	0	0	0	0	70	33	0	33	0	163	\N
835	KFC	Lipton® Brisk® Raspberry Tea (30 fl oz)	190	0	0	0	0	110	49	0	49	0	239	\N
836	KFC	Lipton® Brisk® Sweet Iced Tea (12 fl oz)	80	0	0	0	0	45	22	0	21	0	101	\N
837	KFC	Lipton® Brisk® Sweet Iced Tea (16 fl oz)	110	0	0	0	0	65	29	0	29	0	139	\N
838	KFC	Lipton® Brisk® Sweet Iced Tea (20 fl oz)	130	0	0	0	0	80	36	0	36	0	166	\N
839	KFC	Lipton® Brisk® Sweet Iced Tea (30 fl oz)	200	0	0	0	0	120	54	0	54	0	254	\N
840	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	\N
841	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
842	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0	0	0	0	0	75	0	0	0	0	0	\N
843	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0	0	0	0	0	115	0	0	0	0	0	\N
844	KFC	Manzanita Sol® (12 fl oz)	160	0	0	0	0	35	42	0	42	0	202	\N
845	KFC	Manzanita Sol® (16 fl oz)	210	0	0	0	0	45	57	0	57	0	267	\N
846	KFC	Manzanita Sol® (20 fl oz)	260	0	0	0	0	55	71	0	71	0	331	\N
847	KFC	Manzanita Sol® (30 fl oz)	400	0	0	0	0	80	106	0	106	0	506	\N
848	KFC	Miranda® Strawberry (12 fl oz)	160	0	0	0	0	70	44	0	44	0	204	\N
849	KFC	Miranda® Strawberry (16 fl oz)	220	0	0	0	0	95	58	0	58	0	278	\N
850	KFC	Miranda® Strawberry (20 fl oz)	270	0	0	0	0	120	73	0	73	0	343	\N
851	KFC	Miranda® Strawberry (30 fl oz)	410	0	0	0	0	180	109	0	109	0	519	\N
852	KFC	Mist Twst® (12 fl oz)	150	0	0	0	0	35	41	0	41	0	191	\N
853	KFC	Mist Twst® (16 fl oz)	200	0	0	0	0	45	54	0	54	0	254	\N
854	KFC	Mist Twst® (20 fl oz)	260	0	0	0	0	55	68	0	68	0	328	\N
855	KFC	Mist Twst® (30 fl oz)	380	0	0	0	0	80	101	0	101	0	481	\N
856	KFC	MNT DEW Sweet Lightning (20 fl oz)	120	0	0	0	0	190	32	0	25	0	145	\N
857	KFC	Mountain Dew® (12 fl oz)	160	0	0	0	0	50	44	0	44	0	204	\N
858	KFC	Mountain Dew® (16 fl oz)	220	0	0	0	0	70	59	0	58	0	278	\N
859	KFC	Mountain Dew® (20 fl oz)	270	0	0	0	0	85	73	0	73	0	343	\N
860	KFC	Mountain Dew® (30 fl oz)	410	0	0	0	0	125	110	0	109	0	519	\N
861	KFC	Mug Root Beer® (12 fl oz)	140	0	0	0	0	45	39	0	39	0	179	\N
862	KFC	Mug Root Beer® (16 fl oz)	190	0	0	0	0	60	52	0	52	0	242	\N
863	KFC	Mug Root Beer® (20 fl oz)	240	0	0	0	0	75	65	0	65	0	305	\N
864	KFC	Mug Root Beer® (30 fl oz)	360	0	0	0	0	110	98	0	98	0	458	\N
865	KFC	Pepsi Zero Sugar® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
866	KFC	Pepsi Zero Sugar® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
867	KFC	Pepsi Zero Sugar® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
868	KFC	Pepsi Zero Sugar® (30 fl oz)	0	0	0	0	0	95	1	0	0	0	0	\N
869	KFC	Pepsi® (12 fl oz)	150	0	0	0	0	30	41	0	41	0	191	\N
870	KFC	Pepsi® (16 fl oz)	200	0	0	0	0	45	55	0	55	0	255	\N
871	KFC	Pepsi® (20 fl oz)	250	0	0	0	0	55	69	0	69	0	319	\N
872	KFC	Pepsi® (30 fl oz)	380	0	0	0	0	80	104	0	103	0	483	\N
873	KFC	Sobe Lifewater Yumberry Pomegranate (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	\N
874	KFC	Sobe Lifewater Yumberry Pomegranate (16 fl oz)	0	0	0	0	0	65	0	0	0	0	0	\N
875	KFC	Sobe Lifewater Yumberry Pomegranate (20 fl oz)	0	0	0	0	0	80	0	0	0	0	0	\N
876	KFC	Sobe Lifewater Yumberry Pomegranate (30 fl oz)	5	0	0	0	0	120	1	0	0	0	5	\N
877	KFC	Strawberry Lemonade (1/2 Gallon)	950	0	0	0	0	790	270	0	264	0	1214	\N
878	KFC	Strawberry Lemonade (20 fl oz)	170	0	0	0	0	130	45	0	44	0	214	\N
879	KFC	Tropicana® Fruit Punch (12 fl oz)	170	0	0	0	0	35	45	0	45	0	215	\N
880	KFC	Tropicana® Fruit Punch (16 fl oz)	230	0	0	0	0	45	60	0	60	0	290	\N
881	KFC	Tropicana® Fruit Punch (20 fl oz)	280	0	0	0	0	60	75	0	75	0	355	\N
882	KFC	Tropicana® Fruit Punch (30 fl oz)	420	0	0	0	0	90	113	0	112	0	532	\N
883	KFC	Tropicana® Light Lemonade (12 fl oz)	5	0	0	0	0	140	0	0	0	0	5	\N
884	KFC	Tropicana® Light Lemonade (16 fl oz)	10	0	0	0	0	190	0	0	0	0	10	\N
885	KFC	Tropicana® Light Lemonade (20 fl oz)	10	0	0	0	0	240	0	0	0	0	10	\N
886	KFC	Tropicana® Light Lemonade (30 fl oz)	15	0	0	0	0	350	1	0	0	0	15	\N
887	KFC	Tropicana® Pink Lemonade (12 fl oz)	150	0	0	0	0	160	40	0	40	0	190	\N
1011	Taco Bell	Power Menu Bowl – Chicken	470	170	19	6	0	70	1200	50	7	2	26	\N
888	KFC	Tropicana® Pink Lemonade (16 fl oz)	210	0	0	0	0	210	53	0	53	0	263	\N
889	KFC	Tropicana® Pink Lemonade (20 fl oz)	260	0	0	0	0	260	67	0	67	0	327	\N
890	KFC	Tropicana® Pink Lemonade (30 fl oz)	390	0	0	0	0	390	100	0	100	0	490	\N
891	KFC	Tropicana® Twister® Orange (12 fl oz)	170	0	0	0	0	35	46	0	46	0	216	\N
892	KFC	Tropicana® Twister® Orange (16 fl oz)	230	0	0	0	0	50	61	0	61	0	291	\N
893	KFC	Tropicana® Twister® Orange (20 fl oz)	290	0	0	0	0	60	76	0	76	0	366	\N
894	KFC	Tropicana® Twister® Orange (30 fl oz)	430	0	0	0	0	90	115	0	114	0	544	\N
895	KFC	Wild Cherry Pepsi® (12 fl oz)	160	0	0	0	0	30	42	0	42	0	202	\N
896	KFC	Wild Cherry Pepsi® (16 fl oz)	210	0	0	0	0	40	56	0	56	0	266	\N
897	KFC	Wild Cherry Pepsi® (20 fl oz)	260	0	0	0	0	50	70	0	70	0	330	\N
898	KFC	Wild Cherry Pepsi® (30 fl oz)	390	0	0	0	0	80	105	0	105	0	495	\N
899	KFC	Country Fried Steak without Peppered White Gravy	360	24	7	1	35	750	22	2	0	13	354	\N
900	KFC	Country Fried Steak with Peppered White Gravy	390	26	7	1	35	910	26	2	0	13	384	\N
903	Taco Bell	Bacon Club Chalupa	440	240	27	5	0	50	840	31	2	3	20	\N
904	Taco Bell	Blue Raspberry Freeze™ (16 oz)	120	0	0	0	0	0	35	30	0	30	0	\N
905	Taco Bell	Blue Raspberry Freeze™ (20 oz)	150	0	0	0	0	0	40	38	0	38	0	\N
906	Taco Bell	Loaded Nacho Taco	250	110	12	4.5	0	25	610	24	3	2	10	\N
907	Taco Bell	Midnight Berry Freeze™ (16 oz)	140	0	0	0	0	0	35	35	0	34	0	\N
908	Taco Bell	Midnight Berry Freeze™ (20 oz)	170	0	0	0	0	0	40	43	0	42	0	\N
910	Taco Bell	Nacho Fries BellGrande®	710	360	40	6	0	30	1440	73	10	4	13	\N
911	Taco Bell	Black Bean Chalupa – Online Exclusive	330	140	15	3	0	10	430	39	5	3	10	\N
912	Taco Bell	Black Bean Quesarito – Online Exclusive	630	270	29	10	0	35	1260	73	7	5	19	\N
913	Taco Bell	Quesarito – Online Exclusive	650	300	33	12	0.5	55	1390	67	6	5	22	\N
914	Taco Bell	Chalupa Supreme® – Beef	350	170	18	5	0	25	560	33	4	3	13	\N
915	Taco Bell	Chalupa Supreme® – Chicken	330	140	15	3.5	0	35	560	31	2	3	16	\N
916	Taco Bell	Chalupa Supreme® – Steak	330	140	16	4	0	30	530	32	2	3	15	\N
917	Taco Bell	Cheesy Gordita Crunch	500	250	28	10	0.5	55	850	41	5	4	20	\N
918	Taco Bell	Crunchy Taco	170	80	9	3.5	0	25	310	13	3	\N	8	\N
919	Taco Bell	Crunchy Taco Supreme®	190	100	11	4.5	0	25	340	15	3	2	8	\N
920	Taco Bell	Loaded Nacho Taco (New)	250	110	12	4.5	0	25	610	24	3	2	10	\N
921	Taco Bell	Nacho Cheese Doritos® Locos Taco	170	80	9	3.5	0	25	360	13	3	\N	8	\N
922	Taco Bell	Nacho Cheese Doritos® Locos Taco Supreme®	190	100	11	4.5	0	30	380	15	3	2	8	\N
923	Taco Bell	Soft Taco – Beef	180	80	9	4	0	25	500	17	3	1	9	\N
924	Taco Bell	Soft Taco – Chicken	160	50	5	2.5	0	30	500	16	1	1	12	\N
925	Taco Bell	Soft Taco Supreme®	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
926	Taco Bell	Soft Taco – Beef	210	90	10	5	0	25	520	20	3	2	10	\N
927	Taco Bell	Soft Taco – Chicken	180	60	7	3.5	0	35	520	18	2	2	13	\N
928	Taco Bell	Bean Burrito (V)	350	80	9	3.5	0	5	1000	54	11	3	13	\N
929	Taco Bell	Beefy 5-Layer Burrito	490	160	18	7	0	30	1250	63	9	5	18	\N
930	Taco Bell	Burrito Supreme® – Beef	390	130	14	6	0	25	1110	51	9	4	16	\N
931	Taco Bell	Burrito Supreme® – Chicken	370	100	11	4.5	0	35	1110	49	8	4	19	\N
932	Taco Bell	Burrito Supreme® – Steak	370	110	12	5	0	30	1090	49	7	4	18	\N
933	Taco Bell	Chili Cheese Burrito (regional)	370	150	17	8	0	35	970	40	4	2	16	\N
934	Taco Bell	Quesarito – Beef	650	300	33	12	0.5	55	1390	67	6	5	22	\N
935	Taco Bell	Quesarito – Chicken	620	270	29	11	0	65	1390	66	4	4	25	\N
936	Taco Bell	Quesarito – Steak	630	270	30	11	0	60	1370	66	4	4	24	\N
937	Taco Bell	Chips and Nacho Cheese Sauce (V)	220	120	13	1.5	0	\N	250	24	2	2	2	\N
938	Taco Bell	Nacho Fries (V) (New)	320	160	18	1.5	0	\N	630	35	4	2	4	\N
939	Taco Bell	Nacho Fries BellGrande® (New)	710	360	40	6	0	30	1440	73	10	4	13	\N
940	Taco Bell	Nachos BellGrande® – Beef	740	340	38	7	0	25	1050	82	15	5	16	\N
941	Taco Bell	Nachos BellGrande® – Chicken	720	310	35	6	0	35	1050	81	14	5	20	\N
942	Taco Bell	Nachos BellGrande® – Steak	720	320	36	6	0	30	1030	81	14	5	19	\N
943	Taco Bell	Beef Quesarito	650	300	33	12	0.5	55	1390	67	6	5	22	\N
944	Taco Bell	Black Bean Quesarito (V)	630	270	29	10	0	35	1260	73	7	5	19	\N
945	Taco Bell	Quesadilla – Cheese (V)	470	230	25	12	0.5	50	990	37	4	2	19	\N
946	Taco Bell	Quesadilla – Chicken	510	240	26	12	0.5	75	1250	38	4	2	27	\N
947	Taco Bell	Quesadilla – Steak	520	240	27	12	0.5	70	1230	38	4	2	27	\N
948	Taco Bell	Bacon Club Chalupa – Specialties	440	240	27	5	0	50	840	31	2	3	20	\N
949	Taco Bell	Black Bean Chalupa – Specialties	330	140	15	3	0	10	430	39	5	3	10	\N
950	Taco Bell	Black Bean Crunchwrap Supreme – Specialties	510	160	17	4.5	0	5	1080	77	8	6	13	\N
951	Taco Bell	Black Bean Quesarito – Specialties	630	270	29	10	0	35	1260	73	7	5	19	\N
952	Taco Bell	Chalupa Supreme® – Specialties	350	170	18	5	0	25	560	33	4	3	13	\N
953	Taco Bell	Cheesy Gordita Crunch – Specialties	500	250	28	10	0.5	55	850	41	5	4	20	\N
954	Taco Bell	Cheesy Roll Up – Specialties	180	80	9	5	0	20	430	15	2	\N	9	\N
955	Taco Bell	Crunchwrap Supreme® – Specialties	530	190	21	6	0	25	1200	71	6	6	16	\N
956	Taco Bell	Crunchy Taco – Specialties	170	80	9	3.5	0	25	310	13	3	\N	8	\N
957	Taco Bell	Nacho Cheese Doritos® Locos Taco – Specialties	170	80	9	3.5	0	25	360	13	3	\N	8	\N
958	Taco Bell	Nachos BellGrande® – Specialties	740	340	38	7	0	25	1050	82	15	5	16	\N
959	Taco Bell	Power Menu Bowl – Specialties	470	170	19	6	0	70	1200	50	7	2	26	\N
960	Taco Bell	Quesadilla – Specialties	510	240	26	12	0.5	75	1250	38	4	2	27	\N
961	Taco Bell	Quesarito – Specialties	650	300	33	12	0.5	55	1390	67	6	5	22	\N
962	Taco Bell	Soft Taco – Specialties	180	80	9	4	0	25	500	17	3	1	9	\N
963	Taco Bell	Soft Taco Supreme – Specialties	210	90	10	5	0	25	520	20	3	2	10	\N
964	Taco Bell	Veggie Power Menu Bowl – Specialties	430	160	17	5	0	20	810	57	10	2	12	\N
966	Taco Bell	Black Beans (V)	50	10	1	0	0	0	135	8	3	0	2	\N
967	Taco Bell	Cinnabon® Delights™ (2 Pk) (V)	160	80	9	2	0	5	80	17	0	10	2	\N
968	Taco Bell	Cinnabon® Delights™ (12 Pk – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	\N
969	Taco Bell	Cinnamon Twists (V)	170	50	6	0	0	0	210	27	\N	13	1	\N
970	Taco Bell	Diablo Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	\N
971	Taco Bell	Fire Sauce Packet (V)	0	0	0	0	0	0	55	0	0	0	0	\N
972	Taco Bell	Hot Sauce Packet (V)	0	0	0	0	0	0	45	0	0	0	0	\N
973	Taco Bell	Mild Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	\N
974	Taco Bell	Blue Raspberry Freeze™ (16 oz) (New)	120	0	0	0	0	0	35	30	0	30	0	\N
975	Taco Bell	Blue Raspberry Freeze™ (20 oz) (New)	150	0	0	0	0	0	40	38	0	38	0	\N
976	Taco Bell	Dragon Fruit Freeze (16 oz)	190	0	0	0	0	0	50	49	0	47	0	\N
977	Taco Bell	Dragon Fruit Freeze (20 oz)	230	0	0	0	0	0	60	59	0	57	0	\N
978	Taco Bell	Lowfat Milk – CA (Regional)	100	20	2	1.5	0	10	130	13	0	12	9	\N
979	Taco Bell	Lowfat Milk – Federal (Regional)	80	20	2	1.5	0	10	100	10	0	9	7	\N
980	Taco Bell	Midnight Berry Freeze™ (16 oz) (New)	140	0	0	0	0	0	35	35	0	34	0	\N
981	Taco Bell	Midnight Berry Freeze™ (20 oz) (New)	170	0	0	0	0	0	40	43	0	42	0	\N
982	Taco Bell	Mtn Dew® Baja Blast Freeze™ (16 oz)	150	0	0	0	0	0	45	41	0	41	0	\N
983	Taco Bell	Mtn Dew® Baja Blast Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	\N
985	Taco Bell	Premium Hot Coffee	10	0	0	0	0	0	0	0	0	0	2	\N
986	Taco Bell	Regular Iced Coffee	10	0	0	0	0	0	0	0	0	0	2	\N
988	Taco Bell	Wild Strawberry Freeze™ (16 oz)	150	0	0	0	0	0	40	41	0	41	0	\N
989	Taco Bell	Wild Strawberry Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	\N
990	Taco Bell	Beef Burrito – Value Menu	430	170	19	5	0	20	970	51	4	3	12	\N
991	Taco Bell	Cheesy Bean & Rice Burrito – Value Menu	420	140	16	4	0	\N	880	56	7	3	10	\N
992	Taco Bell	Cheesy Roll Up – Value Menu	180	80	9	5	0	20	430	15	2	\N	9	\N
993	Taco Bell	Chicken Chipotle Melt – Value Menu	190	80	9	3	0	35	530	15	1	\N	12	\N
994	Taco Bell	Chips and Nacho Cheese Sauce – Value Menu	220	120	13	1.5	0	\N	250	24	2	2	2	\N
995	Taco Bell	Cinnamon Twists – Value Menu	170	50	6	0	0	0	210	27	\N	13	1	\N
996	Taco Bell	Loaded Nacho Taco – Value Menu	250	110	12	4.5	0	25	610	24	3	2	10	\N
997	Taco Bell	Bean Burrito	350	80	9	3.5	0	5	1000	54	11	3	13	\N
998	Taco Bell	Black Bean Chalupa	330	140	15	3	0	10	430	39	5	3	10	\N
999	Taco Bell	Black Bean Crunchwrap Supreme	510	160	17	4.5	0	5	1080	77	8	6	13	\N
1000	Taco Bell	Black Bean Quesarito	630	270	29	10	0	35	1260	73	7	5	19	\N
1001	Taco Bell	Black Beans & Rice	170	30	3.5	0	0	0	320	31	4	0	4	\N
1002	Taco Bell	Cheese Quesadilla	470	230	25	12	0.5	50	990	37	4	2	19	\N
1003	Taco Bell	Cheesy Bean & Rice Burrito	420	140	16	4	0	\N	880	56	7	3	10	\N
1004	Taco Bell	Cheesy Roll Up	180	80	9	5	0	20	430	15	2	\N	9	\N
1005	Taco Bell	Chips and Nacho Cheese Sauce	220	120	13	1.5	0	\N	250	24	2	2	2	\N
1006	Taco Bell	Cinnabon® Delights™ (2 Pack)	160	80	9	2	0	5	80	17	0	10	2	\N
1007	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4)	930	480	53	13	2	40	480	104	3	59	9	\N
1008	Taco Bell	Cinnamon Twists	170	50	6	0	0	0	210	27	\N	13	1	\N
1009	Taco Bell	Hash Brown	160	100	12	1	0	0	270	13	2	0	1	\N
1010	Taco Bell	Power Menu Bowl – Veggie	430	160	17	5	0	20	810	57	10	2	12	\N
1012	Taco Bell	Power Menu Bowl – Steak	480	180	20	7	0	60	1150	51	7	2	25	\N
1013	Taco Bell	Power Menu Bowl – Veggie (V)	430	160	17	5	0	20	810	57	10	2	12	\N
1014	Taco Bell	Breakfast Crunchwrap – Bacon	670	370	41	12	0	140	1270	50	4	3	21	\N
1015	Taco Bell	Breakfast Crunchwrap – Sausage	720	430	47	15	0	145	1210	51	4	3	21	\N
1016	Taco Bell	Breakfast Crunchwrap – Steak	660	350	38	12	0	145	1300	51	4	3	24	\N
1017	Taco Bell	Breakfast Salsa Packet (V)	0	0	0	0	0	0	50	\N	0	0	0	\N
1018	Taco Bell	Cheesy Toasted Breakfast Burrito – Bacon	350	150	16	4.5	0	115	870	36	2	3	13	\N
1019	Taco Bell	Cheesy Toasted Breakfast Burrito – Fiesta Potato (V)	340	130	14	3.5	0	100	750	43	3	3	10	\N
1020	Taco Bell	Cheesy Toasted Breakfast Burrito – Sausage	340	160	17	5	0	110	730	36	2	3	11	\N
1021	Taco Bell	Cinnabon® Delights™ (2 Pack) (V)	160	80	9	2	0	5	80	17	0	10	2	\N
1022	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	\N
1023	Taco Bell	Grande Toasted Breakfast Burrito – Bacon	560	270	30	10	0	230	1290	49	4	3	24	\N
1024	Taco Bell	Grande Toasted Breakfast Burrito – Sausage	560	280	31	10	0	230	1150	49	4	3	22	\N
1025	Taco Bell	Grande Toasted Breakfast Burrito – Steak	560	250	28	9	0	240	1310	50	4	3	27	\N
1027	Taco Bell	Hash Brown Toasted Breakfast Burrito – Bacon	570	300	33	10	0	135	1270	49	4	2	21	\N
1028	Taco Bell	Hash Brown Toasted Breakfast Burrito – Sausage	570	300	34	10	0	130	1130	49	4	2	18	\N
1029	Taco Bell	Hash Brown Toasted Breakfast Burrito – Steak	570	270	30	9	0	140	1290	50	4	2	24	\N
1031	Taco Bell	Brisk® Mango Iced Tea (16 fl oz)	100	\N	\N	\N	\N	50	26	\N	\N	26	\N	\N
1032	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0	\N	\N	\N	\N	60	0	\N	\N	0	\N	\N
1033	Taco Bell	Diet Dr Pepper® (16 fl oz)	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	\N
1034	Taco Bell	Diet Mtn Dew® (16 fl oz)	5	\N	\N	\N	\N	75	1	\N	\N	1	\N	\N
1035	Taco Bell	Diet Pepsi® (16 fl oz)	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	\N
1036	Taco Bell	Dr Pepper® (16 fl oz)	190	\N	\N	\N	\N	60	52	\N	\N	51	\N	\N
1037	Taco Bell	G2 – Fruit Punch (16 fl oz)	30	\N	\N	\N	\N	140	7	\N	\N	6	\N	\N
1038	Taco Bell	Mtn Dew® (16 fl oz)	220	\N	\N	\N	\N	70	59	\N	\N	58	\N	\N
1039	Taco Bell	Mtn Dew® Baja Blast™ (16 fl oz)	220	\N	\N	\N	\N	65	59	\N	\N	59	\N	\N
1040	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (16 fl oz)	5	\N	\N	\N	\N	70	0	\N	\N	0	\N	\N
1041	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (16 fl oz)	70	\N	\N	\N	\N	75	18	\N	\N	18	\N	\N
1042	Taco Bell	Mug® Root Beer (16 fl oz)	190	\N	\N	\N	\N	60	52	\N	\N	52	\N	\N
1044	Taco Bell	Pepsi® Wild Cherry (16 fl oz)	210	\N	\N	\N	\N	40	56	\N	\N	56	\N	\N
1045	Taco Bell	Pepsi® Zero Sugar (16 fl oz)	0	\N	\N	\N	\N	85	0	\N	\N	0	\N	\N
1046	Taco Bell	Sierra Mist® (16 fl oz)	200	\N	\N	\N	\N	45	54	\N	\N	54	\N	\N
1047	Taco Bell	Tropicana® Pink Lemonade (16 fl oz)	210	\N	\N	\N	\N	210	53	\N	\N	53	\N	\N
1048	Taco Bell	7-Up (20 fl oz)	240	\N	\N	\N	\N	85	58	\N	\N	58	\N	\N
1049	Taco Bell	Brisk® Mango Iced Tea (20 fl oz)	120	\N	\N	\N	\N	60	32	\N	\N	32	\N	\N
1050	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	\N
1113	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Personal Pan	180	9	3.5	0	20	370	17	1	2	8	\N	\N
1114	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Medium	300	15	6	0	35	580	28	2	1	13	\N	\N
1115	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Large	440	24	9	0.5	50	850	37	3	2	19	\N	\N
1116	Pizza Hut	Pan Pizza Slices Supreme Personal Pan	170	8	3	0	15	360	18	1	2	7	\N	\N
1117	Pizza Hut	Pan Pizza Slices Supreme Medium	270	13	5	0	25	500	29	2	2	11	\N	\N
1118	Pizza Hut	Pan Pizza Slices Supreme Large	390	20	7	0	40	740	37	2	2	16	\N	\N
1119	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Personal Pan	170	8	3.5	0	15	330	17	1	2	8	\N	\N
1120	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Medium	270	13	5	0	25	470	27	2	1	12	\N	\N
1121	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Large	390	20	8	0	40	670	36	2	2	17	\N	\N
1122	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Personal Pan	140	5	2	0	10	290	18	1	2	6	\N	\N
1123	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Medium	230	9	3.5	0	15	420	29	2	2	9	\N	\N
1124	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Large	330	15	5	0	25	620	38	3	3	14	\N	\N
1125	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Small	140	4	2	0	15	250	20	1	4	6	\N	\N
1126	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Medium	220	7	3	0	20	390	31	2	6	10	\N	\N
1127	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Large	300	10	4.5	0	30	530	40	2	7	14	\N	\N
1128	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Medium	200	7	3.5	0	15	410	26	2	1	9	\N	\N
1129	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Large	280	10	5	0	20	560	35	3	2	12	\N	\N
1130	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Small	130	\N	1.5	0	10	380	19	\N	\N	6	\N	\N
1131	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Medium	200	5	2.5	0	20	560	28	2	1	9	\N	\N
1132	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Large	270	8	4	0	30	740	37	2	2	13	\N	\N
1133	Pizza Hut	Hand Tossed Slices Cheese Small	130	\N	2	0	10	250	17	1	\N	6	\N	\N
1134	Pizza Hut	Hand Tossed Slices Cheese Medium	210	8	3.5	0	20	390	26	2	1	10	\N	\N
1135	Pizza Hut	Hand Tossed Slices Cheese Large	290	10	5	0	30	540	34	3	2	13	\N	\N
1136	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Small	150	6	2.5	0	15	270	16	1	\N	7	\N	\N
1137	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Medium	230	9	4	0	25	410	25	2	1	11	\N	\N
1138	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Large	310	13	5	0	35	560	33	2	1	16	\N	\N
1139	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Small	130	4	1.5	0	10	270	17	1	1	7	\N	\N
1140	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Medium	210	6	3	0	20	420	27	2	2	10	\N	\N
1141	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Large	280	9	4	0	30	580	36	3	3	15	\N	\N
1142	Pizza Hut	Hand Tossed Slices Meat Lover’s® Small	180	9	3.5	0	20	370	17	1	\N	7	\N	\N
1143	Pizza Hut	Hand Tossed Slices Meat Lover’s® Medium	290	15	6	0	30	590	26	2	1	12	\N	\N
1144	Pizza Hut	Hand Tossed Slices Meat Lover’s® Large	390	21	8	0	45	830	34	3	2	17	\N	\N
1146	Pizza Hut	Hand Tossed Slices Pepperoni Medium	220	9	4	0	20	420	25	2	1	9	\N	\N
1147	Pizza Hut	Hand Tossed Slices Pepperoni Large	300	13	6	0	30	590	34	3	2	13	\N	\N
1148	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Small	160	7	3	0	20	310	17	1	\N	7	\N	\N
1149	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Medium	270	13	6	0	35	530	26	2	1	12	\N	\N
1150	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Large	370	18	8	0	50	740	35	3	2	17	\N	\N
1151	Pizza Hut	Hand Tossed Slices Supreme Small	150	6	2.5	0	15	280	17	1	1	6	\N	\N
1152	Pizza Hut	Hand Tossed Slices Supreme Medium	240	10	4	0	25	450	26	2	2	10	\N	\N
1153	Pizza Hut	Hand Tossed Slices Supreme Large	320	14	6	0	35	630	35	3	2	14	\N	\N
1154	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Small	150	6	2.5	0	15	250	16	1	\N	6	\N	\N
1155	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Medium	230	10	4.5	0	25	390	25	2	1	11	\N	\N
1156	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Large	310	13	6	0	35	540	33	2	1	15	\N	\N
1157	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Small	120	4	1.5	0	10	230	17	1	1	5	\N	\N
1158	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Medium	200	6	2.5	0	15	370	27	2	2	8	\N	\N
1159	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Large	260	9	4	0	20	510	36	3	3	11	\N	\N
\.


--
-- Data for Name: fastfoodnutritionmenu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fastfoodnutritionmenu (id, "Company", "Item", "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)", "Protein(g)", "WeightWatchersPnts") FROM stdin;
93	McDonald’s	Hotcakes	350	80	9	2	0	20	590	60	3	14	8	358
458	Burger King	16 fl oz	0	0	0	0	0	0	70	0	0	0	0	0
987	Taco Bell	Water	0	0	0	0	0	0	0	0	0	0	0	\N
1066	Taco Bell	 	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1068	Taco Bell	7-Up (30 fl oz)	350	\N	\N	\N	\N	125	87	\N	\N	87	\N	\N
1	McDonald’s	Hamburger	250	80	9	3.5	0.5	25	520	31	2	6	12	247.5
2	McDonald’s	Cheeseburger	300	110	12	6	0.5	40	750	33	2	6	15	297
3	McDonald’s	Double Cheeseburger	440	210	23	11	1.5	80	1150	34	2	7	25	433
4	McDonald’s	McDouble	390	170	19	8	1	65	920	33	2	7	22	383
5	McDonald’s	 Quarter Pounder® with Cheese	510	230	26	12	1.5	90	1190	40	3	9	29	502
6	McDonald’s	Double Quarter Pounder® with Cheese	740	380	42	19	2.5	155	1380	40	3	9	48	720
7	McDonald’s	Big Mac®	540	260	29	10	1.5	75	1040	45	3	9	25	534
8	McDonald’s	Big N’ Tasty®	460	220	24	8	1.5	70	720	37	3	8	24	452
9	McDonald’s	Big N’ Tasty® with Cheese	510	250	28	11	1.5	85	960	38	3	8	27	502
10	McDonald’s	Angus Bacon & Cheese	790	350	39	17	2	145	2070	63	4	13	45	775
11	McDonald’s	Angus Deluxe	750	350	39	16	2	135	1700	61	4	10	40	736
12	McDonald’s	Angus Mushroom & Swiss	770	360	40	17	2	135	1170	59	4	8	44	751
13	McDonald’s	Filet-O-Fish®	380	170	18	3.5	0	40	640	38	2	5	15	373.5
14	McDonald’s	McChicken ®	360	150	16	3	0	35	830	40	2	5	14	354
15	McDonald’s	McRib ®	500	240	26	10	0	70	980	44	3	11	22	499
16	McDonald’s	Premium Grilled Chicken Classic Sandwich	360	80	9	2	0	65	820	41	4	8	27	343
788	KFC	Milk 1%	90	2	1.5	0	10	105	10	0	10	7	94.5	\N
478	Burger King	16 fl oz	220	0	0	0	0	0	55	61	0	61	0	281
21	McDonald’s	Premium Crispy Chicken Ranch BLT Sandwich	540	210	23	4.5	0	55	1160	56	3	11	27	528.5
22	McDonald’s	Southern Style Crispy Chicken Sandwich	400	150	17	3	0	45	1030	39	1	6	24	385
23	McDonald’s	Ranch Snack Wrap® (Crispy)	340	150	17	4.5	0	30	810	33	1	2	14	332.5
24	McDonald’s	Ranch Snack Wrap® (Grilled)	270	90	10	4	0	45	830	26	1	2	18	258
25	McDonald’s	Honey Mustard Snack Wrap® (Crispy)	330	140	16	4.5	0	30	780	34	1	4	14	324.5
26	McDonald’s	Honey Mustard Snack Wrap® (Grilled)	260	80	9	3.5	0	45	800	27	1	4	18	249.5
27	McDonald’s	Chipotle BBQ Snack Wrap® (Crispy)	330	140	15	4.5	0	30	810	35	1	4	14	324.5
28	McDonald’s	Chipotle BBQ Snack Wrap® (Grilled)	260	80	9	3.5	0	45	830	28	1	5	18	250.5
29	McDonald’s	Angus Bacon & Cheese Snack Wrap	390	190	21	9	1	75	1080	28	1	4	21	382
30	McDonald’s	Angus Chipotle BBQ Bacon	800	350	39	18	2	145	2020	66	4	16	45	789
31	McDonald’s	Angus Chipotle BBQ Bacon Snack Wrap	400	190	22	10	1	75	1060	30	1	6	21	395
32	McDonald’s	Angus Deluxe Snack Wrap	410	220	25	10	1.5	75	990	27	2	3	20	403
33	McDonald’s	Angus Mushroom & Swiss Snack Wrap	430	230	26	10	1.5	75	730	27	2	2	22	420
34	McDonald’s	Mac Snack Wrap	330	170	19	7	1	45	690	26	1	3	15	325
699	KFC	Drumstick	190	14	2.5	0	40	510	6	1	0	9	183.5	\N
1051	Taco Bell	Diet Dr Pepper® (20 fl oz)	0	\N	\N	\N	\N	120	0	\N	\N	0	\N	\N
1043	Taco Bell	Pepsi® (16 fl oz)	200	\N	\N	\N	\N	45	55	\N	\N	55	\N	\N
48	McDonald’s	Chicken Selects® Premium Breast Strips (5 pc)	660	360	40	6	0	85	1680	39	0	0	38	628
49	McDonald’s	Spicy Buffalo Sauce	60	50	6	1	0	0	800	1	1	0	0	61
50	McDonald’s	Creamy Ranch Sauce	170	160	18	3	0	10	270	2	0	1	0	174
51	McDonald’s	Tangy Honey Mustard Sauce	60	20	2	0	0	5	140	10	0	8	0	68
52	McDonald’s	Southwestern Chipotle Barbeque Sauce	60	0	0	0	0	0	210	15	1	11	0	71
53	McDonald’s	Premium Southwest Salad with Grilled Chicken	320	80	9	3	0	70	960	30	6	11	30	304
54	McDonald’s	Premium Southwest Salad with Crispy Chicken	430	180	20	4	0	55	920	38	6	12	26	420
55	McDonald’s	Premium Southwest Salad (without chicken)	140	40	4.5	2	0	10	150	20	6	6	6	142
56	McDonald’s	Premium Bacon Ranch Salad with Grilled Chicken	260	90	9	4	0	90	1010	12	3	5	33	236
65	McDonald’s	Salad Dressings	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
698	KFC	Breast	540	40	7	0	100	1390	14	2	1	31	517	\N
690	KFC	Chicken Breast	770	60	10	0	105	1530	21	1	1	35	746	\N
965	Taco Bell	Black Beans & Rice (V)	170	30	3.5	0	0	0	320	31	4	0	4	\N
41	McDonald’s	Chicken McNuggets® (6 piece)	280	160	18	3	0	40	540	18	1	0	13	270
42	McDonald’s	Chicken McNuggets® (10 piece)	470	270	30	5	0	65	900	30	2	0	22	453
43	McDonald’s	Barbeque Sauce	50	0	0	0	0	0	260	12	0	10	0	60
44	McDonald’s	Honey	50	0	0	0	0	0	0	12	0	11	0	61
45	McDonald’s	Hot Mustard Sauce	60	20	2.5	0	0	5	250	9	2	6	1	65
46	McDonald’s	Sweet ‘N Sour Sauce	50	0	0	0	0	0	150	12	0	10	0	60
47	McDonald’s	Chicken Selects® Premium Breast Strips (3 pc)	400	210	24	3.5	0	50	1010	23	0	0	23	380.5
451	Burger King	SOFT DRINKS BY CUP SIZE (*no ice)	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
516	Burger King	Iced Coffees	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
18	McDonald’s	Premium Grilled Chicken Club Sandwich	460	150	17	6	0	90	1040	43	4	9	35	440
19	McDonald’s	Premium Crispy Chicken Club Sandwich	620	260	29	7	0	70	1200	57	3	11	31	607
20	McDonald’s	Premium Grilled Chicken Ranch BLT Sandwich	380	90	10	3	0	75	1000	41	4	9	31	361
66	McDonald’s	Newman’s Own® Creamy Southwest Dressing	100	50	6	1	0	20	340	11	0	3	1	103
67	McDonald’s	Newman’s Own® Creamy Caesar Dressing	190	170	18	3.5	0	20	500	4	0	2	2	193.5
68	McDonald’s	Newman’s Own® Low Fat Balsamic Vinaigrette	40	25	3	0	0	0	730	4	0	3	0	43
69	McDonald’s	Newman’s Own® Low Fat Family Recipe Italian Dressing	60	20	2.5	0	0	0	730	8	0	1	1	60
70	McDonald’s	Newman’s Own® Ranch Dressing	170	130	15	2.5	0	20	530	9	0	4	1	175.5
72	McDonald’s	Sausage McMuffin®	370	200	22	8	0	45	850	29	2	2	14	366
73	McDonald’s	Sausage McMuffin® with Egg	450	250	27	10	0	285	920	30	2	2	21	441
74	McDonald’s	English Muffin	160	30	3	0.5	0	0	280	27	2	2	5	157.5
75	McDonald’s	Bacon, Egg & Cheese Biscuit (Regular Size Biscuit)	420	210	23	12	0	235	1160	37	2	3	15	420
76	McDonald’s	Bacon, Egg & Cheese Biscuit (Large Size Biscuit)	480	240	27	12	0	235	1270	43	3	4	15	481
77	McDonald’s	Sausage Biscuit with Egg (Regular Size Biscuit)	510	290	33	14	0	250	1170	36	2	2	18	508
78	McDonald’s	Sausage Biscuit with Egg (Large Size Biscuit)	570	330	37	15	0	250	1280	42	3	3	18	570
1052	Taco Bell	Diet Mtn Dew® (20 fl oz)	10	\N	\N	\N	\N	90	1	\N	\N	1	\N	\N
1053	Taco Bell	Diet Pepsi® (20 fl oz)	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	\N
1054	Taco Bell	Dr Pepper® (20 fl oz)	240	\N	\N	\N	\N	75	65	\N	\N	64	\N	\N
1055	Taco Bell	G2 – Fruit Punch (20 fl oz)	35	\N	\N	\N	\N	180	9	\N	\N	8	\N	\N
1056	Taco Bell	Mtn Dew® (20 fl oz)	270	\N	\N	\N	\N	85	73	\N	\N	73	\N	\N
1057	Taco Bell	Mtn Dew® Baja Blast™ (20 fl oz)	280	\N	\N	\N	\N	80	74	\N	\N	73	\N	\N
1058	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (20 fl oz)	10	\N	\N	\N	\N	85	0	\N	\N	0	\N	\N
1059	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (20 fl oz)	90	\N	\N	\N	\N	90	23	\N	\N	22	\N	\N
1060	Taco Bell	Mug® Root Beer (20 fl oz)	240	\N	\N	\N	\N	75	65	\N	\N	65	\N	\N
392	Burger King	Side Items	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
462	Burger King	Sprite®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	McDonald’s	Medium French Fries	380	170	19	2.5	0	0	270	48	5	0	4	378.5
37	McDonald’s	Large French Fries	500	220	25	3.5	0	0	350	63	6	0	6	497.5
38	McDonald’s	Ketchup Packet	15	0	0	0	0	0	110	3	0	2	0	17
39	McDonald’s	Salt Packet	0	0	0	0	0	0	270	0	0	0	0	0
40	McDonald’s	Chicken McNuggets® (4 piece)	190	110	12	2	0	25	360	12	1	0	9	183
57	McDonald’s	Premium Bacon Ranch Salad with Crispy Chicken	370	180	20	6	0	75	970	20	3	6	29	353
1061	Taco Bell	Pepsi® (20 fl oz)	250	\N	\N	\N	\N	55	69	\N	\N	69	\N	\N
1062	Taco Bell	Pepsi® Wild Cherry (20 fl oz)	260	\N	\N	\N	\N	50	70	\N	\N	70	\N	\N
1063	Taco Bell	Pepsi® Zero Sugar (20 fl oz)	0	\N	\N	\N	\N	105	0	\N	\N	0	\N	\N
1064	Taco Bell	Sierra Mist® (20 fl oz)	260	\N	\N	\N	\N	55	68	\N	\N	68	\N	\N
1065	Taco Bell	Tropicana® Pink Lemonade (20 fl oz)	260	\N	\N	\N	\N	260	67	\N	\N	67	\N	\N
1067	Taco Bell	FOUNTAIN BEVERAGES (30 OZ)	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1069	Taco Bell	Brisk® Mango Iced Tea (30 fl oz)	180	\N	\N	\N	\N	90	48	\N	\N	48	\N	\N
1070	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0	\N	\N	\N	\N	115	0	\N	\N	0	\N	\N
1071	Taco Bell	Diet Dr Pepper® (30 fl oz)	0	\N	\N	\N	\N	180	1	\N	\N	0	\N	\N
1072	Taco Bell	Diet Mtn Dew® (30 fl oz)	10	\N	\N	\N	\N	140	1	\N	\N	1	\N	\N
260	McDonald’s	McCafe Coffees – Whole Milk	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
339	Burger King	Flame Broiled Burgers	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
394	Burger King	Beverage	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
901	KFC	KFC® Gizzards	300	16	2	0	210	770	18	\N	0	20	282	\N
496	Burger King	38 fl oz	20	0	0	0	0	0	135	7	0	0	0	0
58	McDonald’s	Premium Bacon Ranch Salad (without chicken)	140	70	7	3.5	0	25	300	10	3	4	9	138.5
59	McDonald’s	Premium Caesar Salad with Grilled Chicken	220	60	6	3	0	75	890	12	3	5	30	198
60	McDonald’s	Premium Caesar Salad with Crispy Chicken	330	150	17	4.5	0	60	840	20	3	6	26	314.5
61	McDonald’s	Premium Caesar Salad (without chicken)	90	35	4	2.5	0	10	180	9	3	4	7	89.5
62	McDonald’s	Side Salad	20	0	0	0	0	0	10	4	1	2	1	21
63	McDonald’s	Butter Garlic Croutons	60	15	1.5	0	0	0	140	10	1	0	2	58
64	McDonald’s	Snack Size Fruit & Walnut Salad	210	70	8	1.5	0	5	60	31	2	25	4	232.5
71	McDonald’s	Egg McMuffin®	300	110	12	5	0	260	820	30	2	3	18	290
95	McDonald’s	Hotcake Syrup	180	0	0	0	0	0	20	45	0	32	0	212
1073	Taco Bell	Diet Pepsi® (30 fl oz)	0	\N	\N	\N	\N	140	0	\N	\N	0	\N	\N
1074	Taco Bell	Dr Pepper® (30 fl oz)	360	\N	\N	\N	\N	110	98	\N	\N	96	\N	\N
1075	Taco Bell	G2 – Fruit Punch (30 fl oz)	50	\N	\N	\N	\N	270	13	\N	\N	12	\N	\N
1076	Taco Bell	Mtn Dew® (30 fl oz)	410	\N	\N	\N	\N	125	110	\N	\N	109	\N	\N
1077	Taco Bell	Mtn Dew® Baja Blast™ (30 fl oz)	420	\N	\N	\N	\N	120	110	\N	\N	110	\N	\N
1078	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (30 fl oz)	15	\N	\N	\N	\N	125	0	\N	\N	0	\N	\N
1079	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (30 fl oz)	130	\N	\N	\N	\N	140	34	\N	\N	33	\N	\N
1080	Taco Bell	Mug® Root Beer (30 fl oz)	360	\N	\N	\N	\N	110	98	\N	\N	98	\N	\N
1081	Taco Bell	Pepsi® (30 fl oz)	380	\N	\N	\N	\N	80	104	\N	\N	103	\N	\N
1082	Taco Bell	Pepsi® Wild Cherry (30 fl oz)	390	\N	\N	\N	\N	80	105	\N	\N	105	\N	\N
1083	Taco Bell	Pepsi® Zero Sugar (30 fl oz)	0	\N	\N	\N	\N	160	\N	\N	\N	0	\N	\N
1084	Taco Bell	Sierra Mist® (30 fl oz)	380	\N	\N	\N	\N	80	101	\N	\N	101	\N	\N
1085	Taco Bell	Tropicana® Pink Lemonade (30 fl oz)	390	\N	\N	\N	\N	390	100	\N	\N	100	\N	\N
1086	Pizza Hut	Detroit Double Cheesy Pizza Slice	280	12	6	0	30	560	31	2	2	13	\N	\N
1087	Pizza Hut	Detroit Double Pepperoni Pizza Slice	330	17	7	0	40	720	30	2	2	14	\N	\N
1088	Pizza Hut	Detroit Meaty Pizza Slice	320	16	6	0	35	640	31	2	2	14	\N	\N
1089	Pizza Hut	Detroit Supremo Pizza Slice	290	13	6	0	30	570	31	2	2	13	\N	\N
1090	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Personal Pan	180	6	2	0	15	370	25	1	8	8	\N	\N
452	Burger King	Coca Cola classic®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
508	Burger King	BK® Café	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
1030	Taco Bell	7-Up (16 fl oz)	190	\N	\N	\N	\N	70	46	\N	\N	46	\N	\N
1092	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Large	380	16	6	0	35	650	43	2	7	16	\N	\N
1093	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Medium	240	10	4.5	0	15	470	29	2	1	10	\N	\N
1094	Pizza Hut	Pan Pizza Slices Beyond Meat® Pepperoni Large	350	16	6	0	25	680	38	3	2	14	\N	\N
1095	Pizza Hut	Pan Pizza Slices Buffalo Chicken Personal Pan	160	5	2	0	15	570	22	1	2	7	\N	\N
1096	Pizza Hut	Pan Pizza Slices Buffalo Chicken Medium	240	9	3.5	0	20	680	31	2	2	11	\N	\N
1097	Pizza Hut	Pan Pizza Slices Buffalo Chicken Large	350	14	5	0	30	850	40	2	2	15	\N	\N
1098	Pizza Hut	Pan Pizza Slices Cheese Personal Pan	150	6	2.5	0	15	310	17	1	2	7	\N	\N
1099	Pizza Hut	Pan Pizza Slices Cheese Medium	250	10	4.5	0	25	450	28	2	1	11	\N	\N
1100	Pizza Hut	Pan Pizza Slices Cheese Large	360	17	7	0	35	660	37	2	2	16	\N	\N
1101	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Personal Pan	180	8	3	0	20	350	17	1	2	9	\N	\N
1102	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Medium	270	13	4.5	0	30	470	27	2	1	12	\N	\N
1103	Pizza Hut	Pan Pizza Slices Chicken Bacon Parmesan Large	390	20	7	0	40	680	35	2	2	18	\N	\N
1104	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Personal Pan	150	5	2	0	15	330	18	1	3	8	\N	\N
1105	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Medium	240	9	3.5	0	20	480	29	2	2	12	\N	\N
1106	Pizza Hut	Pan Pizza Slices Hawaiian Chicken Large	350	15	5	0	30	690	38	2	3	17	\N	\N
1107	Pizza Hut	Pan Pizza Slices Meat Lover’s® Personal Pan	210	12	4.5	0	25	460	18	1	2	9	\N	\N
1108	Pizza Hut	Pan Pizza Slices Meat Lover’s® Medium	320	17	6	0	35	640	28	2	1	13	\N	\N
1109	Pizza Hut	Pan Pizza Slices Meat Lover’s® Large	470	27	10	0	50	940	37	2	2	19	\N	\N
523	Burger King	Frappes	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
457	Burger King	Diet Coke®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
984	Taco Bell	Orange Juice	140	0	0	0	0	0	20	33	\N	28	2	\N
726	KFC	Green Beans	25	0	0	0	0	300	5	3	1	1	25	\N
727	KFC	KFC® Cornbread Muffin	210	9	1.5	0	35	240	28	\N	11	3	219.5	\N
728	KFC	Macaroni & Cheese	140	6	1.5	0	\N	590	17	1	2	5	138.5	\N
729	KFC	Macaroni Salad	140	8	1	0	15	290	14	0	9	1	149	\N
730	KFC	Mashed Potatoes	110	\N	0.5	0	0	330	17	1	0	2	108.5	\N
731	KFC	Mashed Potatoes With Gravy	130	\N	1	0	0	520	20	1	0	3	128	\N
732	KFC	Potato Salad	340	28	4.5	0	25	290	19	2	3	2	345.5	\N
733	KFC	Secret Recipe Fries	320	15	2	0	0	1100	41	3	0	5	317	\N
734	KFC	Sweet Kernel Corn	70	\N	0	0	0	0	16	2	2	2	70	\N
735	KFC	BBQ Baked Beans (Family)	830	5	1	0	0	2810	148	31	63	47	847	\N
736	KFC	Coleslaw (Family)	640	46	7	0	15	670	54	14	37	4	680	\N
737	KFC	Corn on the Cob (Family)	280	2	0	0	0	15	67	8	11	9	282	\N
738	KFC	Green Beans (Family)	80	0	0	0	0	930	15	9	3	4	79	\N
739	KFC	Macaroni & Cheese (Family)	540	23	6	0	10	2220	66	5	8	18	536	\N
740	KFC	Macaroni Salad (Family)	480	28	3.5	0	55	990	50	0	30	3	510.5	\N
741	KFC	Mashed Potatoes (Family)	460	15	3	0	0	1410	72	6	0	9	454	\N
742	KFC	Mashed Potatoes With Gravy (Family)	590	21	5	0	0	2590	88	6	1	12	584	\N
743	KFC	Potato Salad (Family)	1200	98	16	0	80	1010	65	8	12	8	1220	\N
744	KFC	Secret Recipe Fries (Family)	840	40	5	0	0	2890	108	9	0	13	832	\N
745	KFC	Sweet Kernel Corn (Family)	280	\N	0	0	0	10	67	7	8	10	278	\N
746	KFC	Chicken Littles	300	15	2.5	0	30	620	27	1	3	14	291.5	\N
747	KFC	Chicken Littles – Buffalo	310	17	2.5	0	30	790	27	1	3	14	301.5	\N
748	KFC	Chicken Littles – Honey BBQ	320	15	2.5	0	30	680	31	1	7	14	315.5	\N
749	KFC	Chicken Littles – Nashville Hot	340	19	3	0	30	680	27	1	3	14	332	\N
750	KFC	Classic Chicken Sandwich	650	35	4.5	0	90	1260	49	1	6	34	626.5	\N
751	KFC	Crispy Colonel’s Sandwich	470	24	3.5	0	60	1170	39	\N	4	24	453.5	\N
752	KFC	Crispy Colonel’s Sandwich – Buffalo	500	27	4	0	60	1500	39	\N	4	24	484	\N
753	KFC	Crispy Colonel’s Sandwich – Honey BBQ	510	25	3.5	0	60	1290	48	\N	12	24	501.5	\N
754	KFC	Crispy Colonel’s Sandwich – Nashville Hot	540	32	4.5	0	60	1290	40	\N	5	24	525.5	\N
755	KFC	Crispy Twister®	630	34	7	0	70	1260	53	4	3	28	612	\N
756	KFC	Honey BBQ Sandwich	350	\N	0.5	0	55	1350	55	2	22	24	348.5	\N
757	KFC	Spicy Chicken Sandwich	620	33	4	0	85	2140	49	1	6	34	596	\N
758	KFC	Chicken Pot Pie	720	41	25	0	80	1750	60	7	5	26	724	\N
759	KFC	KFC® Famous Bowl	740	35	6	0	45	2350	81	6	2	26	722	\N
760	KFC	KFC® Famous Bowl – Snack Size	270	14	3.5	0	20	850	27	2	1	11	263.5	\N
761	KFC	Caesar Side Salad	40	2	1	0	5	90	2	1	1	3	39	\N
762	KFC	House Side Salad	15	0	0	0	0	10	3	2	2	1	16	\N
763	KFC	Heinz Buttermilk Dressing	160	17	2	0	10	220	1	0	1	0	163	\N
764	KFC	Hidden Valley The Original Ranch Fat Free Dressing	35	0	0	0	0	410	8	0	2	1	36	\N
765	KFC	KFC® Creamy Parmesan Caesar Dressing	260	26	5	0	15	540	4	0	2	2	265	\N
766	KFC	Marzetti Light Italian Dressing	15	\N	0	0	0	510	2	0	1	0	16	\N
767	KFC	Parmesan Garlic Croutons	60	3	0	0	0	135	8	\N	0	2	58	\N
768	KFC	Apple Turnover	230	10	2.5	0	0	140	32	\N	12	2	242.5	\N
769	KFC	Café Valley Chocolate Chip Cake (1 Slice)	300	15	3	0	50	260	39	1	27	4	326	\N
770	KFC	Café Valley Lemon Cake (1 Slice)	220	10	2	0	30	170	30	0	20	2	240	\N
771	KFC	Café Valley Mini Chocolate Chip Cake	300	12	2.5	0	40	190	49	1	35	3	334.5	\N
772	KFC	Café Valley Mini Lemon Cake	300	13	2.5	0	50	230	43	0	31	3	330.5	\N
773	KFC	Chocolate Chip Cookie	120	6	3	0	\N	70	18	1	12	1	134	\N
774	KFC	Oreo Cookies and Crème Pie	270	13	8	0	\N	210	35	1	24	3	299	\N
775	KFC	Reese’s Peanut Butter Pie	300	17	9	0	\N	270	33	1	22	5	326	\N
776	KFC	BBQ – Dipping Sauce Cup	45	0	0	0	0	150	11	0	11	0	56	\N
777	KFC	Colonel’s Buttery Spread	35	4	1.5	0	0	35	0	0	0	0	36.5	\N
778	KFC	Grape Jelly Packet	35	0	0	0	0	10	9	0	7	0	42	\N
1026	Taco Bell	Hash Brown (V)	160	100	12	1	0	0	270	13	2	0	1	\N
79	McDonald’s	Sausage Biscuit (Regular Size Biscuit)	430	240	27	12	0	30	1080	34	2	2	11	433
1091	Pizza Hut	Pan Pizza Slices Backyard BBQ Chicken Medium	270	10	4	0	25	450	33	2	6	11	\N	\N
502	Burger King	20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
1110	Pizza Hut	Pan Pizza Slices Pepperoni Personal Pan	150	7	2.5	0	15	310	17	1	2	6	\N	\N
1111	Pizza Hut	Pan Pizza Slices Pepperoni Medium	250	11	4.5	0	25	470	28	2	1	10	\N	\N
1112	Pizza Hut	Pan Pizza Slices Pepperoni Large	370	18	6	0	35	680	36	2	2	15	\N	\N
80	McDonald’s	Sausage Biscuit (Large Size Biscuit)	480	280	31	13	0	30	1190	39	3	3	11	485
81	McDonald’s	Southern Style Chicken Biscuit (Regular Size Biscuit)	410	180	20	8	0	30	1180	41	2	3	17	404
82	McDonald’s	Southern Style Chicken Biscuit (Large Size Biscuit)	470	220	24	9	0	30	1290	46	3	4	17	466
83	McDonald’s	Steak, Egg & Cheese Bagel	660	300	33	12	1	300	1580	56	3	7	33	646
84	McDonald’s	Bacon, Egg & Cheese McGriddles®	420	160	18	8	0	240	1110	48	2	15	15	428
85	McDonald’s	Sausage, Egg & Cheese McGriddles®	560	290	32	12	0	265	1360	48	2	15	20	567
86	McDonald’s	Sausage McGriddles®	420	200	22	8	0	35	1030	44	2	15	11	432
87	McDonald’s	Big Breakfast® (Regular Size Biscuit)	740	430	48	17	0	555	1560	51	3	3	28	732
88	McDonald’s	Big Breakfast® (Large Size Biscuit)	800	470	52	18	0	555	1680	56	4	3	28	793
89	McDonald’s	Big Breakfast with Hotcakes (Regular Size Biscuit)	1090	510	56	19	0	575	2150	111	6	17	36	1090
90	McDonald’s	Big Breakfast with Hotcakes (Large Size Biscuit)	1150	540	60	20	0	575	2260	116	7	17	36	1151
91	McDonald’s	Sausage Burrito	300	140	16	7	0	115	830	26	1	2	12	297
92	McDonald’s	McSkillet™ Burrito with Sausage	610	320	36	14	0.5	410	1390	44	3	4	27	601
574	Wendy’s	Chili, Small	170	5	2	0	35	780	16	4	6	15	163	\N
902	KFC	KFC® Livers	230	13	2.5	0	285	750	12	0	0	17	215.5	\N
17	McDonald’s	Premium Crispy Chicken Classic Sandwich	510	200	22	3.5	0	45	990	56	3	10	24	499.5
35	McDonald’s	Small French Fries	230	100	11	1.5	0	0	160	29	3	0	3	228.5
94	McDonald’s	Hotcakes and Sausage	520	210	24	7	0	50	930	61	3	14	15	526
96	McDonald’s	Whipped Margarine (1 pat)	40	40	4.5	1.5	0	0	55	0	0	0	0	41.5
97	McDonald’s	Hash Brown	150	80	9	1.5	0	0	310	15	2	0	1	150.5
98	McDonald’s	Grape Jam	35	0	0	0	0	0	0	9	0	9	0	44
99	McDonald’s	Strawberry Preserves	35	0	0	0	0	0	0	9	0	9	0	44
100	McDonald’s	Bacon, Egg & Cheese Bagel	560	240	27	9	0.5	260	1300	56	3	7	24	552
101	McDonald’s	Fruit & Maple Oatmeal	290	40	4.5	2	0	10	160	57	5	32	5	319
102	McDonald’s	Fruit & Maple Oatmeal without Brown Sugar	260	40	4.5	2	0	10	115	48	5	18	5	275
103	McDonald’s	Hamburger Happy Meal	475	\N	16	\N	0	40	690	62	2	20	22	\N
1145	Pizza Hut	Hand Tossed Slices Pepperoni Small	130	5	2	0	10	260	16	1	\N	6	\N	\N
104	McDonald’s	4 Piece Chicken McNuggets Happy Meal	395	\N	17	3.5	0	35	510	41	1	14	19	\N
105	McDonald’s	6 Piece Chicken McNuggets® Happy Meal	475	\N	22	4.5	0	50	680	46	2	14	24	\N
106	McDonald’s	Fruit ‘n Yogurt Parfait (7 oz)	160	20	2	1	0	5	85	31	1	21	4	178
107	McDonald’s	Low Fat Caramel Dip	70	5	0.5	0	0	5	35	15	0	9	0	79
108	McDonald’s	Vanilla Reduced Fat Ice Cream Cone	150	35	3.5	2	0	15	60	24	0	18	4	166
109	McDonald’s	Kiddie Cone	45	10	1	0.5	0	5	20	8	0	6	1	50.5
110	McDonald’s	Strawberry Sundae	280	60	6	4	0	25	95	49	1	45	6	323
111	McDonald’s	Hot Caramel Sundae	340	70	8	5	0	30	160	60	1	44	7	382
112	McDonald’s	Hot Fudge Sundae	330	90	10	7	0	25	180	54	2	48	8	377
503	Burger King	29 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
113	McDonald’s	Peanuts (for Sundaes)	45	30	3.5	0.5	0	0	0	2	1	0	2	43.5
114	McDonald’s	McFlurry® with M&M’S® Candies (12 fl oz cup)	710	230	25	16	1	60	220	105	4	97	15	808
115	McDonald’s	McFlurry® with OREO® Cookies (12 fl oz cup)	580	170	19	10	1	50	320	89	3	73	13	650
116	McDonald’s	Baked Hot Apple Pie	250	110	13	7	0	0	170	32	4	13	2	268
117	McDonald’s	Cinnamon Melts	460	170	19	9	0	15	370	66	3	32	6	495
118	McDonald’s	McDonaldland® Cookies	260	70	8	2.5	0	0	300	43	1	13	4	271.5
119	McDonald’s	Chocolate Chip Cookie	160	70	8	3.5	0	10	90	21	1	15	2	176.5
120	McDonald’s	Oatmeal Raisin Cookie	150	50	6	2.5	0	10	135	22	1	13	2	163.5
121	McDonald’s	Sugar Cookie	160	60	7	3	0	5	120	21	0	11	2	172
122	McDonald’s	Apple Dippers with Low Fat Caramel Dip	100	5	0.5	0	0	5	35	23	0	15	0	115
123	McDonald’s	Chocolate McCafé® Shake (12 fl oz cup)	580	150	17	10	1	50	240	94	1	77	11	656
124	McDonald’s	Chocolate McCafé® Shake (16 fl oz cup)	720	180	20	12	1	60	300	119	1	98	15	815
125	McDonald’s	Chocolate McCafé® Shake (22 fl oz cup)	880	220	24	15	1.5	75	370	147	1	121	18	998
126	McDonald’s	Chocolate Triple Thick® Shake (12 fl oz cup)	440	90	10	6	0.5	40	190	76	1	63	10	499
127	McDonald’s	Chocolate Triple Thick® Shake (16 fl oz cup)	580	120	14	8	1	50	250	102	1	84	13	659
128	McDonald’s	Chocolate Triple Thick® Shake (21 fl oz cup)	770	160	18	11	1	70	330	134	1	111	18	874
129	McDonald’s	Chocolate Triple Thick® Shake (32 fl oz cup)	1160	240	27	16	2	100	510	203	2	168	27	1317
130	McDonald’s	Snack Size McFlurry® with M&M’S® Candies	430	140	16	10	0.5	35	130	64	2	59	9	490
131	McDonald’s	Snack Size McFlurry® with OREO® Cookies	340	100	12	6	0	30	200	53	2	43	8	381
132	McDonald’s	Strawberry McCafé® Shake (12 fl oz cup)	570	150	17	10	1	50	170	92	0	79	11	648
133	McDonald’s	Strawberry McCafé® Shake (16 fl oz cup)	710	180	20	12	1	65	210	116	0	100	14	808
134	McDonald’s	Strawberry McCafé® Shake (22 fl oz cup)	860	220	24	15	1.5	75	260	144	0	124	18	981
135	McDonald’s	Strawberry Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	130	73	0	63	10	479
136	McDonald’s	Strawberry Triple Thick® Shake (16 fl oz cup)	560	120	13	8	1	50	170	97	0	84	13	639
137	McDonald’s	Strawberry Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	230	128	0	111	17	845
138	McDonald’s	Strawberry Triple Thick® Shake (32 fl oz cup)	1110	240	26	16	2	100	350	194	0	168	25	1269
139	McDonald’s	Vanilla McCafé® Shake (12 fl oz cup)	540	150	16	10	1	45	170	88	0	64	10	604
140	McDonald’s	Vanilla McCafé® Shake (16 fl oz cup)	680	180	20	12	1	60	220	111	0	82	14	760
141	McDonald’s	Vanilla McCafé® Shake (22 fl oz cup)	830	210	24	14	1.5	75	270	138	0	103	17	930
142	McDonald’s	Vanilla Triple Thick Shake® (32 fl oz cup)	1110	240	26	16	2	100	370	193	0	145	25	1246
143	McDonald’s	Vanilla Triple Thick® Shake (12 fl oz cup)	420	90	10	6	0.5	40	140	72	0	54	9	471
144	McDonald’s	Vanilla Triple Thick® Shake (16 fl oz cup)	550	120	13	8	1	50	190	96	0	72	13	617
145	McDonald’s	Vanilla Triple Thick® Shake (21 fl oz cup)	740	160	18	11	1	70	250	128	0	96	17	830
146	McDonald’s	1% Low Fat Milk Jug	100	20	2.5	1.5	0	10	125	12	0	12	8	105.5
147	McDonald’s	1% Low Fat Chocolate Milk Jug	170	25	3	1.5	0	5	150	26	1	25	9	187.5
148	McDonald’s	Minute Maid® 100% Apple Juice Box	100	0	0	0	0	0	15	23	0	22	0	122
149	McDonald’s	Dasani® Water	0	0	0	0	0	0	0	0	0	0	0	0
150	McDonald’s	Minute Maid® Orange Juice (Small)	150	0	0	0	0	0	0	30	0	30	2	178
151	McDonald’s	Minute Maid® Orange Juice (Medium)	190	0	0	0	0	0	0	39	0	39	3	226
152	McDonald’s	Minute Maid® Orange Juice (Large)	280	0	0	0	0	0	5	58	0	58	4	334
153	McDonald’s	Coca-Cola® Classic (Child)	110	0	0	0	0	0	5	29	0	29	0	139
154	McDonald’s	Coca-Cola® Classic (Small)	150	0	0	0	0	0	10	40	0	40	0	190
155	McDonald’s	Coca-Cola® Classic (Medium)	210	0	0	0	0	0	15	58	0	58	0	268
156	McDonald’s	Coca-Cola® Classic (Large)	310	0	0	0	0	0	20	86	0	86	0	396
157	McDonald’s	Diet Coke® (Child)	0	0	0	0	0	0	15	0	0	0	0	0
158	McDonald’s	Diet Coke® (Small)	0	0	0	0	0	0	20	0	0	0	0	0
159	McDonald’s	Diet Coke® (Medium)	0	0	0	0	0	0	30	0	0	0	0	0
160	McDonald’s	Diet Coke® (Large)	0	0	0	0	0	0	45	0	0	0	0	0
161	McDonald’s	Sprite® (Child)	110	0	0	0	0	0	30	28	0	28	0	138
162	McDonald’s	Sprite® (Small)	150	0	0	0	0	0	40	39	0	39	0	189
163	McDonald’s	Sprite® (Medium)	210	0	0	0	0	0	55	56	0	56	0	266
164	McDonald’s	Sprite® (Large)	310	0	0	0	0	0	80	83	0	83	0	393
165	McDonald’s	Hi-C® Orange Lavaburst (Child)	120	0	0	0	0	0	0	32	0	32	0	152
166	McDonald’s	Hi-C® Orange Lavaburst (Small)	160	0	0	0	0	0	5	44	0	44	0	204
167	McDonald’s	Hi-C® Orange Lavaburst (Medium)	240	0	0	0	0	0	10	64	0	64	0	304
168	McDonald’s	Hi-C® Orange Lavaburst (Large)	350	0	0	0	0	0	10	94	0	94	0	444
169	McDonald’s	POWERade® Mountain Blast (Child)	70	0	0	0	0	0	65	20	0	16	0	86
170	McDonald’s	POWERade® Mountain Blast (Small)	100	0	0	0	0	0	85	27	0	21	0	121
171	McDonald’s	POWERade® Mountain Blast (Medium)	150	0	0	0	0	0	130	39	0	31	0	181
399	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
172	McDonald’s	POWERade® Mountain Blast (Large)	220	0	0	0	0	0	190	58	0	46	0	266
173	McDonald’s	Iced Tea (Child)	0	0	0	0	0	0	5	0	0	0	0	0
174	McDonald’s	Iced Tea (Small)	0	0	0	0	0	0	10	0	0	0	0	0
175	McDonald’s	Iced Tea (Medium)	0	0	0	0	0	0	15	0	0	0	0	0
176	McDonald’s	Iced Tea (Large)	0	0	0	0	0	0	20	1	0	0	0	0
177	McDonald’s	Coffee (Small)	0	0	0	0	0	0	0	0	0	0	0	0
178	McDonald’s	Coffee (Large)	0	0	0	0	0	0	0	0	0	0	0	0
179	McDonald’s	Coffee Cream	20	20	2	1.5	0	10	15	0	0	0	0	21.5
180	McDonald’s	Sugar Packet	15	0	0	0	0	0	0	4	0	4	0	19
181	McDonald’s	EQUAL® 0\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
463	Burger King	16 fl oz	210	0	0	0	0	0	95	56	0	56	0	266
182	McDonald’s	SPLENDA® No\nCalorie Sweetener	0	0	0	0	0	0	0	1	0	1	0	1
183	McDonald’s	Iced Coffee– Caramel (Small)	130	50	5	3.5	0	20	80	21	0	20	1	152.5
184	McDonald’s	Iced Coffee– Caramel (Medium)	190	70	8	5	0	30	115	27	0	27	2	220
185	McDonald’s	Iced Coffee– Caramel (Large)	270	100	11	7	0	40	160	41	0	41	2	316
186	McDonald’s	Iced Coffee– Hazelnut (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
187	McDonald’s	Iced Coffee– Hazelnut (Medium)	190	70	8	5	0	30	60	29	0	29	2	222
188	McDonald’s	Iced Coffee– Hazelnut (Large)	270	100	11	7	0	40	85	43	0	43	2	318
189	McDonald’s	Iced Coffee– Regular (Small)	140	50	5	3.5	0	20	40	22	0	22	1	164.5
190	McDonald’s	Iced Coffee– Regular (Medium)	200	70	8	5	0	30	60	30	0	30	2	233
191	McDonald’s	Iced Coffee– Regular (Large)	280	100	11	7	0	40	85	45	0	45	2	330
192	McDonald’s	Iced Coffee– Vanilla (Small)	130	50	5	3.5	0	20	40	21	0	21	1	153.5
193	McDonald’s	Iced Coffee– Vanilla (Medium)	190	70	8	5	0	30	60	29	0	28	2	221
194	McDonald’s	Iced Coffee– Vanilla (Large)	270	100	11	7	0	40	80	43	0	43	2	318
195	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Small)	60	50	5	3.5	0	20	70	8	0	1	1	63.5
196	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Medium)	90	70	8	5	0	30	100	11	0	2	2	95
197	McDonald’s	Iced Coffee with Sugar Free Vanilla Syrup (Large)	120	100	11	7	0	40	140	16	0	2	2	127
198	McDonald’s	Sweet Tea (Child)	110	0	0	0	0	0	5	27	0	27	0	137
199	McDonald’s	Sweet Tea (Large)	280	0	0	0	0	0	15	69	0	69	1	348
200	McDonald’s	Sweet Tea (Medium)	180	0	0	0	0	0	10	45	0	45	1	224
201	McDonald’s	Sweet Tea (Small)	150	0	0	0	0	0	10	36	0	36	1	185
202	McDonald’s	Nonfat Cappuccino (Small)	60	0	0	0	0	5	85	9	0	9	6	63
203	McDonald’s	Nonfat Cappuccino (Medium)	80	0	0	0	0	5	110	12	0	12	8	84
204	McDonald’s	Nonfat Cappuccino (Large)	90	0	0	0	0	5	130	13	0	13	9	94
205	McDonald’s	Nonfat Latte (Small)	90	0	0	0	0	5	115	13	0	13	9	94
206	McDonald’s	Nonfat Latte (Medium)	110	0	0	0	0	5	140	15	0	15	10	115
207	McDonald’s	Nonfat Latte (Large)	120	0	0	0	0	5	160	18	0	18	12	126
208	McDonald’s	Nonfat Caramel Cappuccino (Small)	150	0	0	0	0	5	120	33	0	32	5	177
209	McDonald’s	Nonfat Caramel Cappuccino (Medium)	190	0	0	0	0	5	150	41	0	41	6	225
210	McDonald’s	Nonfat Caramel Cappuccino (Large)	230	0	0	0	0	5	180	49	0	49	7	272
211	McDonald’s	Nonfat Caramel Latte (Small)	170	0	0	0	0	5	150	36	0	36	7	199
212	McDonald’s	Nonfat Caramel Latte (Medium)	220	0	0	0	0	5	180	45	0	45	9	256
213	McDonald’s	Nonfat Caramel Latte (Large)	260	0	0	0	0	5	220	53	0	53	10	303
214	McDonald’s	Nonfat Hazelnut Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
215	McDonald’s	Nonfat Hazelnut Cappuccino (Medium)	190	0	0	0	0	5	90	43	0	43	6	227
216	McDonald’s	Nonfat Hazelnut Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
217	McDonald’s	Nonfat Hazelnut Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
218	McDonald’s	Nonfat Hazelnut Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
219	McDonald’s	Nonfat Hazelnut Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
220	McDonald’s	Nonfat Vanilla Cappuccino (Small)	150	0	0	0	0	5	70	34	0	34	5	179
221	McDonald’s	Nonfat Vanilla Cappuccino (Medium)	190	0	0	0	0	5	90	42	0	42	6	226
222	McDonald’s	Nonfat Vanilla Cappuccino (Large)	230	0	0	0	0	5	100	51	0	51	7	274
223	McDonald’s	Nonfat Vanilla Latte (Small)	180	0	0	0	0	5	95	37	0	37	7	210
224	McDonald’s	Nonfat Vanilla Latte (Medium)	220	0	0	0	0	5	115	46	0	46	9	257
225	McDonald’s	Nonfat Vanilla Latte (Large)	260	0	0	0	0	5	135	55	0	55	10	305
226	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Small)	50	0	0	0	0	5	100	15	0	8	5	53
227	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Medium)	70	0	0	0	0	5	130	19	0	10	7	73
400	Burger King	Dutch Apple Pie	340	130	14	6	0	0	310	51	1	25	3	368
228	McDonald’s	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Large)	80	0	0	0	0	5	150	22	0	11	8	83
229	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Small)	80	0	0	0	0	5	130	18	0	11	7	84
230	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	90	0	0	0	0	5	160	22	0	13	9	94
231	McDonald’s	Nonfat Latte with Sugar Free Vanilla Syrup (Large)	110	0	0	0	0	5	190	27	0	15	11	114
232	McDonald’s	Mocha with Nonfat Milk (Small)	240	45	5	3	0	5	130	41	0	34	7	270
233	McDonald’s	Mocha with Nonfat Milk (Medium)	280	50	6	3.5	0	10	160	50	0	42	8	317.5
464	Burger King	20 fl oz	260	0	0	0	0	0	120	70	0	70	0	330
234	McDonald’s	Mocha with Nonfat Milk (Large)	330	50	6	3.5	0	10	190	58	0	50	10	373.5
235	McDonald’s	Hot Chocolate with Nonfat Milk (Small)	250	45	5	3	0	10	140	43	0	37	8	282
236	McDonald’s	Hot Chocolate with Nonfat Milk (Medium)	310	50	6	3.5	0	10	190	55	0	47	11	349.5
237	McDonald’s	Hot Chocolate with Nonfat Milk (Large)	390	50	6	3.5	0	10	250	68	0	59	16	436.5
238	McDonald’s	Iced Nonfat Latte (Small)	50	0	0	0	0	5	70	7	0	7	5	52
239	McDonald’s	Iced Nonfat Latte (Medium)	60	0	0	0	0	5	90	9	0	9	6	63
240	McDonald’s	Iced Nonfat Latte (Large)	70	0	0	0	0	5	105	11	0	11	7	74
241	McDonald’s	Iced Nonfat Caramel Latte (Small)	140	0	0	0	0	0	105	30	0	30	3	167
242	McDonald’s	Iced Nonfat Caramel Latte (Medium)	150	0	0	0	0	5	120	32	0	32	5	177
243	McDonald’s	Iced Nonfat Caramel Latte (Large)	190	0	0	0	0	5	150	40	0	40	6	224
244	McDonald’s	Iced Nonfat Hazelnut Latte (Small)	140	0	0	0	0	0	50	32	0	32	3	169
245	McDonald’s	Iced Nonfat Hazelnut Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
246	McDonald’s	Iced Nonfat Hazelnut Latte (Large)	190	0	0	0	0	5	80	42	0	42	6	226
247	McDonald’s	Iced Nonfat Vanilla Latte (Small)	140	0	0	0	0	0	50	31	0	31	3	168
248	McDonald’s	Iced Nonfat Vanilla Latte (Medium)	150	0	0	0	0	5	70	33	0	33	5	178
249	McDonald’s	Iced Nonfat Vanilla Latte (Large)	190	0	0	0	0	5	85	41	0	41	6	225
250	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Small)	40	0	0	0	0	0	85	13	0	5	4	41
251	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	50	0	0	0	0	5	100	14	0	6	5	51
252	McDonald’s	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Large)	60	0	0	0	0	5	130	19	0	8	6	62
253	McDonald’s	Iced Mocha with Nonfat Milk (Medium)	270	70	8	4.5	0	10	140	43	0	35	7	302.5
254	McDonald’s	Iced Nonfat Caramel Mocha (Large)	300	60	6	4	0	10	230	49	0	45	11	338
255	McDonald’s	Iced Nonfat Caramel Mocha (Medium)	240	60	6	4	0	10	190	37	0	34	9	269
256	McDonald’s	Iced Nonfat Caramel Mocha (Small)	200	50	6	4	0	10	140	29	0	26	6	224
257	McDonald’s	Nonfat Caramel Mocha (Large)	280	35	4	2.5	0	10	260	49	0	46	12	316.5
258	McDonald’s	Nonfat Caramel Mocha (Medium)	240	35	4	2.5	0	5	200	41	0	38	9	271.5
259	McDonald’s	Nonfat Caramel Mocha (Small)	200	35	4	2.5	0	5	170	34	0	31	8	225.5
261	McDonald’s	Cappuccino (Small)	120	60	7	4	0	20	85	9	0	9	6	127
262	McDonald’s	Cappuccino (Medium)	140	70	8	4.5	0	25	105	11	0	11	8	147.5
263	McDonald’s	Cappuccino (Large)	180	90	10	6	0	30	130	13	0	13	9	190
264	McDonald’s	Latte (Small) 	150	70	8	4.5	0	25	105	11	0	11	8	157.5
265	McDonald’s	Latte (Medium)	180	90	10	6	0	30	130	13	0	13	10	189
266	McDonald’s	Latte (Large)	210	100	11	7	0	35	150	16	0	16	11	222
504	Burger King	40 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
267	McDonald’s	Caramel Cappuccino (Small)	200	45	5	3	0	15	125	32	0	32	5	230
268	McDonald’s	Caramel Cappuccino (Medium)	240	50	6	3.5	0	20	150	41	0	40	6	277.5
269	McDonald’s	Caramel Cappuccino (Large)	290	70	8	4.5	0	25	190	49	0	49	8	335.5
270	McDonald’s	Caramel Latte (Small)	230	60	7	4	0	20	140	35	0	35	7	262
271	McDonald’s	Caramel Latte (Medium)	280	70	8	4.5	0	25	170	43	0	43	8	319.5
272	McDonald’s	Caramel Latte (Large)	330	80	9	5	0	30	210	52	0	51	9	377
273	McDonald’s	Hazelnut Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
274	McDonald’s	Hazelnut Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
275	McDonald’s	Hazelnut Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
276	McDonald’s	Hazelnut Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
277	McDonald’s	Hazelnut Latte (Medium)	280	70	8	4.5	0	25	110	45	0	45	8	321.5
278	McDonald’s	Hazelnut Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
279	McDonald’s	Vanilla Cappuccino (Small)	200	45	5	3	0	15	70	34	0	34	5	232
280	McDonald’s	Vanilla Cappuccino (Medium)	240	50	6	3.5	0	20	85	42	0	42	6	279.5
281	McDonald’s	Vanilla Cappuccino (Large)	290	70	8	4.5	0	25	105	51	0	51	7	338.5
282	McDonald’s	Vanilla Latte (Small)	230	60	7	4	0	20	90	36	0	36	7	263
283	McDonald’s	Vanilla Latte (Medium)	280	70	8	4.5	0	25	110	44	0	44	8	320.5
284	McDonald’s	Vanilla Latte (Large)	330	80	9	5	0	30	130	53	0	53	9	379
285	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Small)	100	50	5	3	0	15	105	15	0	7	5	105
286	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Medium)	120	60	6	3.5	0	20	130	18	0	9	6	126.5
287	McDonald’s	Cappuccino with Sugar Free Vanilla Syrup (Large)	150	70	8	4.5	0	25	160	22	0	11	8	157.5
288	McDonald’s	Latte with Sugar Free Vanilla Syrup (Small)	130	60	7	4	0	20	125	17	0	10	7	137
909	Taco Bell	Nacho Fries	320	160	18	1.5	0	\N	630	35	4	2	4	\N
289	McDonald’s	Latte with Sugar Free Vanilla Syrup (Medium)	160	70	8	5	0	25	150	21	0	11	8	168
290	McDonald’s	Latte with Sugar Free Vanilla Syrup (Large)	180	90	10	6	0	30	180	25	0	13	10	189
291	McDonald’s	Mocha (Small)	280	100	11	6	0	20	125	40	0	33	6	313
292	McDonald’s	Mocha (Medium)	330	110	12	7	0	25	150	48	0	41	7	371
293	McDonald’s	Mocha (Large)	400	130	14	8	0.5	30	190	58	0	49	10	447
294	McDonald’s	Hot Chocolate (Small)	300	110	12	7	0	25	135	41	0	35	8	334
295	McDonald’s	Hot Chocolate (Medium)	380	130	15	9	0.5	30	170	53	0	45	10	424
296	McDonald’s	Hot Chocolate (Large)	460	160	18	10	0.5	40	220	63	0	54	13	511
297	McDonald’s	Iced Latte (Small)	80	40	4.5	2.5	0	15	65	6	0	6	4	84.5
298	McDonald’s	Iced Latte (Medium)	100	50	6	3.5	0	15	80	8	0	8	6	105.5
299	McDonald’s	Iced Latte (Large)	140	70	8	4.5	0	25	105	10	0	10	7	147.5
300	McDonald’s	Iced Caramel Latte (Small)	160	25	3	1.5	0	10	100	29	0	29	3	187.5
301	McDonald’s	Iced Caramel Latte (Medium)	180	40	4.5	2.5	0	15	120	31	0	31	4	209.5
302	McDonald’s	Iced Caramel Latte (Large)	230	50	6	3.5	0	15	150	40	0	40	6	267.5
303	McDonald’s	Iced Hazelnut Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
304	McDonald’s	Iced Hazelnut Latte (Medium)	180	40	4.5	2.5	0	15	65	33	0	33	4	211.5
305	McDonald’s	Iced Hazelnut Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
306	McDonald’s	Iced Vanilla Latte (Small)	160	25	3	1.5	0	10	45	31	0	31	3	189.5
307	McDonald’s	Iced Vanilla Latte (Medium)	190	40	4.5	2.5	0	15	70	33	0	33	5	220.5
308	McDonald’s	Iced Vanilla Latte (Large)	230	50	6	3.5	0	15	85	41	0	41	6	268.5
309	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Small)	60	30	3	2	0	10	80	12	0	4	3	63
310	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Medium)	90	40	5	3	0	15	105	14	0	6	5	94
311	McDonald’s	Iced Latte with Sugar Free Vanilla Syrup (Large)	110	50	6	3.5	0	15	130	19	0	8	6	115.5
312	McDonald’s	Iced Mocha (Medium)	310	120	13	8	0	25	140	42	0	35	7	346
313	McDonald’s	Caramel Mocha (Large)	360	130	14	8	0.5	35	220	47	0	46	10	404
314	McDonald’s	Caramel Mocha (Medium)	290	100	12	7	0	25	180	39	0	38	8	327
315	McDonald’s	Caramel Mocha (Small)	250	90	11	6	0	25	150	33	0	31	7	280
316	McDonald’s	Iced Caramel Mocha (Large)	380	140	16	9	0.5	35	210	48	0	46	10	425
317	McDonald’s	Iced Caramel Mocha (Medium)	300	120	14	8	0	30	160	36	0	33	8	333
318	McDonald’s	Iced Caramel Mocha (Small)	240	100	12	7	0	25	130	29	0	26	6	267
319	McDonald’s	Frappe Caramel (Small)	450	180	20	13	1	55	135	61	0	57	6	514
320	McDonald’s	Frappe Caramel (Medium)	550	220	24	15	1	70	160	76	0	71	8	628
321	McDonald’s	Frappe Caramel (Large)	680	260	29	18	1.5	85	200	94	0	88	10	776
322	McDonald’s	Frappe Mocha (Small)	450	180	20	13	1	55	130	62	1	56	7	512
323	McDonald’s	Frappe Mocha (Medium)	560	210	24	15	1	65	160	78	1	70	8	637
324	McDonald’s	Frappe Mocha (Large)	680	250	28	18	1	80	200	96	1	87	10	775
325	McDonald’s	Strawberry Banana Smoothie (Large)	330	10	1	0.5	0	5	55	77	4	70	3	397.5
326	McDonald’s	Strawberry Banana Smoothie (Medium)	260	5	1	0	0	5	40	60	3	54	2	312
327	McDonald’s	Strawberry Banana Smoothie (Small)	210	5	0.5	0	0	5	35	49	2	44	2	252
328	McDonald’s	Wild Berry Smoothie (Large)	320	10	1	0.5	0	5	45	75	4	69	3	386.5
329	McDonald’s	Wild Berry Smoothie (Medium)	260	5	1	0	0	5	35	60	4	55	3	312
330	McDonald’s	Wild Berry Smoothie (Small)	210	5	0.5	0	0	5	30	48	3	44	2	252
331	Burger King	Whopper® Sandwich	660	360	40	12	1.5	90	980	49	2	11	28	655
332	Burger King	Whopper® Sandwich with Cheese	740	420	46	16	2	115	1340	50	2	11	32	735
333	Burger King	Bacon & Cheese Whopper® Sandwich	790	460	51	17	2	125	1560	50	2	11	35	783
334	Burger King	Double Whopper® Sandwich	900	520	58	20	3	175	1050	49	2	11	48	883
335	Burger King	Double Whopper® Sandwich with Cheese	980	580	64	24	3	195	1410	50	2	11	52	963
336	Burger King	Triple Whopper® Sandwich	1130	680	75	28	4	255	1120	49	2	11	67	1102
337	Burger King	Triple Whopper® Sandwich with Cheese	1220	740	82	32	4.5	280	1470	50	2	11	71	1192
338	Burger King	Whopper JR.® Sandwich	310	160	18	5	0.5	40	390	27	1	7	13	309
340	Burger King	Bacon King Sandwich	1150	710	79	31	3.5	240	2150	49	2	10	61	1130
341	Burger King	Cheddar Bacon King Sandwich	1190	750	84	33	3.5	235	1930	50	2	11	64	1170
342	Burger King	Single Quarter Pound King Sandwich	580	260	29	13	1.5	105	1310	49	2	10	32	571
343	Burger King	Double Quarter Pound King Sandwich	900	480	54	25	3	210	1740	50	2	11	56	880
344	Burger King	Single Stacker King	700	380	42	16	2	125	1360	48	1	10	35	691
345	Burger King	Double Stacker King	1050	610	68	28	3.5	235	1870	49	1	11	61	1028
346	Burger King	IMPOSSIBLE Whopper® Sandwich	630	310	34	11	0	10	1080	58	4	12	25	628
347	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
348	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
349	Burger King	Double Hamburger	350	160	18	7	1	70	410	26	1	6	21	342
350	Burger King	Double Cheeseburger	390	190	21	9	1.5	85	590	27	1	7	23	383
351	Burger King	Extra Long Cheeseburger	630	330	37	14	1.5	100	1050	45	2	9	29	624
352	Burger King	Bacon Cheeseburger	320	140	16	7	0.5	55	710	27	1	7	17	317
353	Burger King	Bacon Double Cheeseburger	420	210	24	10	1.5	90	740	27	1	7	25	412
354	Burger King	Crispy Chicken Sandwich	670	370	41	7	0	60	1080	54	2	8	23	662
355	Burger King	Spicy Crispy Chicken Sandwich	700	370	42	7	0	65	1140	57	3	8	25	690
356	Burger King	Original Chicken Sandwich	660	360	40	7	0	75	1170	48	2	5	28	644
357	Burger King	Bacon & Cheese Crispy Chicken Sandwich	800	460	52	13	1	95	1650	55	2	8	30	791
358	Burger King	BBQ Bacon Crispy Chicken Sandwich	790	440	49	10	0.5	80	1630	60	2	13	28	785
359	Burger King	Crispy Chicken Jr.	450	270	30	5	0	30	780	34	2	5	12	448
360	Burger King	Spicy Crispy Chicken Jr.	390	190	21	3.5	0	30	740	37	2	6	12	388
361	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
362	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
363	Burger King	Chicken Nuggets- 10pc	430	240	27	4.5	0	55	780	27	2	0	20	415
364	Burger King	Chicken Nuggets- 20pc	860	490	54	9	0	115	1570	53	3	1	39	831
365	Burger King	Spicy Chicken Nuggets- 4pc	210	130	15	3	0	20	570	11	2	0	8	205
366	Burger King	Spicy Chicken Nuggets- 6pc	320	200	22	4.5	0	35	850	17	3	0	12	313
367	Burger King	Spicy Chicken Nuggets- 10 pc	530	330	37	7	0	55	1420	28	4	1	20	518
368	Burger King	Spicy Chicken Nuggets- 20 pc	1050	670	74	15	0	110	2840	56	9	1	40	1026
369	Burger King	Chicken Fries – 9 pc.	280	150	17	2.5	0	35	850	20	1	1	13	271
370	Burger King	Crispy Taco	170	80	9	3	0	10	410	19	2	1	5	169
371	Burger King	BIG FISH Sandwich	510	250	28	4.5	0	30	1180	51	2	7	16	506
372	Burger King	Garden Chicken Salad with Crispy Chicken – no dressing	440	220	25	7	0	75	930	31	3	4	25	426
373	Burger King	Club Salad with Crispy Chicken – no dressing	540	300	33	10	0	95	1380	31	3	5	31	524
374	Burger King	Garden Side Salad – w/o dressing	60	35	4	2.5	0	10	95	3	1	2	4	61
375	Burger King	Ken’s Ranch Dressing	260	250	28	4	0	10	240	2	0	2	1	265
376	Burger King	Ken’s Golden Italian Dressing	160	150	17	2.5	0	0	380	4	0	3	0	166
435	Burger King	Mayonnaise (Packet)	80	80	9	0.5	0	10	75	1	0	0	0	81
377	Burger King	Ken’s Lite Honey Balsamic Vinaigrette	120	70	8	1	0	0	220	14	0	11	0	132
378	Burger King	Buttery Garlic Croutons- Packet	60	20	2.5	0	0	10	180	9	0	1	1	60
379	Burger King	Onion Rings – value	150	70	8	1.5	0	0	400	19	1	2	1	153
380	Burger King	Onion Rings – small	320	150	16	3	0	0	840	41	3	4	3	324
381	Burger King	Onion Rings – medium	410	190	21	3.5	0	0	1080	53	4	5	4	415
382	Burger King	Onion Rings – large	500	230	25	4.5	0	0	1310	64	5	7	5	507
383	Burger King	French Fries – value (unsalted)	220	80	9	1.5	0	0	210	34	3	1	2	221
384	Burger King	French Fries – small	320	120	13	2	0	0	300	49	5	1	4	319
385	Burger King	French Fries – medium	380	140	16	2	0	0	360	58	6	1	4	379
386	Burger King	French Fries – large	430	160	18	2.5	0	0	410	66	7	2	5	430
387	Burger King	Kids Oatmeal	170	30	3	1.5	0	5	260	32	3	12	4	180
388	Burger King	Chicken Nuggets- 4pc	170	100	11	1.5	0	25	310	11	1	0	8	164
389	Burger King	Chicken Nuggets- 6pc	260	150	16	2.5	0	35	470	16	1	0	12	251
390	Burger King	Hamburger	240	90	10	3.5	0.5	35	380	26	1	6	13	237
391	Burger King	Cheeseburger	280	120	13	6	0.5	45	560	27	1	7	15	278
393	Burger King	Mott’s® Natural Applesauce	50	0	0	0	0	0	0	13	1	11	0	61
395	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
396	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
397	Burger King	Capri Sun® 100% Apple Juice (6 fl oz)	80	0	0	0	0	0	25	20	0	20	0	100
398	Burger King	PB&J Jamwich	300	140	16	3	0	0	290	33	4	11	11	303
401	Burger King	HERSHEY®’S Sundae Pie	310	170	19	12	0	10	220	32	1	22	3	341
402	Burger King	Pie made with TWIX®	370	180	20	13	0	10	330	45	1	30	4	409
403	Burger King	OREO® Cookie Cheesecake	350	170	18	8	0	35	310	41	1	25	6	377
404	Burger King	Soft Serve Cone	190	40	4.5	3	0	20	150	32	0	24	5	212
405	Burger King	Soft Serve Cup	170	40	4.5	3	0	20	150	28	0	24	5	192
406	Burger King	HERSHEY®’s Chocolate Sundae	260	45	5	3	0	20	160	49	1	43	5	301
407	Burger King	Caramel Sundae	240	50	5	3.5	0	20	210	42	0	33	5	272
408	Burger King	Chocolate Chip Cookies (each)	160	70	8	4	0	10	125	24	1	15	2	177
409	Burger King	CROISSAN’WICH® Egg & Cheese	340	170	18	8	0	160	610	29	1	4	12	340
410	Burger King	CROISSAN’WICH® Sausage, Egg & Cheese	500	300	33	13	0	195	930	30	1	4	19	498
411	Burger King	CROISSAN’WICH® Ham, Egg & Cheese	370	170	19	8	0	175	1030	30	1	5	17	366
412	Burger King	CROISSAN’WICH® Bacon, Egg & Cheese	370	190	21	9	0	170	760	30	1	4	14	369
413	Burger King	Fully Loaded CROISSAN’WICH®	610	360	40	17	0.5	225	1680	31	1	5	28	604
414	Burger King	Double CROISSAN’WICH® with Sausage & Bacon	580	340	40	16	0.5	215	1260	31	1	5	23	578
415	Burger King	Double CROISSAN’WICH® with Sausage	710	470	52	20	0.5	240	1420	31	1	5	29	706
416	Burger King	Double CROISSAN’WICH® with Ham & Sausage	580	340	38	16	0.5	220	1530	31	1	5	27	574
417	Burger King	Fully Loaded Biscuit	640	400	45	20	0	225	2190	31	1	4	28	636
418	Burger King	Ham, Egg, & Cheese Biscuit	400	210	24	12	0	175	1550	29	1	3	17	398
419	Burger King	Sausage, Egg, & Cheese Biscuit	530	340	38	17	0	195	1440	29	1	3	19	531
420	Burger King	Bacon, Egg & Cheese Biscuit	400	230	26	13	0	170	1270	29	1	3	13	403
421	Burger King	Sausage Biscuit	420	250	28	6	0	35	1050	28	1	2	12	416
422	Burger King	Breakfast Burrito Jr.	370	210	23	8	0	150	930	27	3	2	15	365
423	Burger King	EGG-NORMOUS BURRITOΡ	780	380	42	15	0	355	1960	68	3	4	32	767
424	Burger King	BK™ Ultimate Breakfast Platter	930	390	44	11	0	390	2230	110	4	40	24	957
425	Burger King	NY Ultimate Platter (Regional menu item)	900	420	46	12	0	380	1760	95	5	31	25	918
426	Burger King	Pancake and Sausage platter	610	280	31	9	0	80	1010	72	1	30	12	637
427	Burger King	Hash Browns – small	250	150	16	3.5	0	0	580	24	3	0	2	252
428	Burger King	Hash Browns – medium	500	290	33	7	0	0	1140	48	7	0	4	503
429	Burger King	Hash Browns – large	670	390	44	9	0	0	1530	65	9	0	5	674
430	Burger King	French Toast Sticks (3 piece)	230	100	11	2	0	0	260	29	1	8	3	237
431	Burger King	French Toast Sticks (5 piece)	380	160	18	3	0	0	430	49	2	13	5	391
432	Burger King	Additional Options	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
433	Burger King	American Cheese (slice)	40	30	3.5	2	0	10	180	1	0	0	2	40
434	Burger King	Ketchup (Packet)	10	0	0	0	0	0	125	3	0	2	0	12
436	Burger King	Strawberry or Grape Jam (packet)	30	0	0	0	0	0	0	7	0	6	0	36
437	Burger King	Breakfast Syrup (1 oz)	120	0	0	0	0	0	15	30	0	18	0	138
438	Burger King	Barbecue Dipping Sauce (1 oz)	40	0	0	0	0	0	310	11	0	10	0	50
439	Burger King	Ranch Dipping Sauce (1 oz)	140	140	15	2.5	0	10	85	1	0	1	1	143
440	Burger King	Buffalo Dipping Sauce (1 oz)	80	70	8	1.5	0	5	360	2	0	1	0	83
512	Burger King	BK® Café Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
441	Burger King	Zesty Onion Ring Dipping Sauce (1 oz)	150	140	15	2.5	0	20	240	3	0	0	0	153
442	Burger King	Honey Mustard Dipping Sauce (1oz)	90	60	6	1	0	10	180	8	0	7	0	98
443	Burger King	Fat FREE Milk (8 fl oz)	90	0	0	0	0	5	125	13	0	12	9	93
444	Burger King	1% Low Fat Chocolate Milk (8 fl oz)	160	25	2.5	1.5	0	15	150	26	0	25	8	179
445	Burger King	Smoothie: Strawberry Banana 16 fl oz	310	10	1	0	0	0	55	71	3	50	4	356
446	Burger King	Oreo® Shake	720	180	20	12	0.5	65	540	118	1	98	16	814
447	Burger King	Chocolate Oreo® Shake	740	190	22	13	0.5	70	680	121	1	101	17	837
448	Burger King	Vanilla Milk Shake	580	140	15	10	0	60	420	98	0	85	14	661
449	Burger King	HERSHEY®’S Chocolate Milk Shake	610	140	16	10	0	60	500	103	1	88	14	694
450	Burger King	Strawberry Milk Shake	640	140	15	10	0	60	440	113	0	99	14	735
453	Burger King	16 fl oz	210	0	0	0	0	0	50	58	0	58	0	268
454	Burger King	20 fl oz	270	0	0	0	0	0	60	73	0	73	0	343
455	Burger King	29 fl oz	290	0	0	0	0	0	85	105	0	105	0	395
456	Burger King	38 fl oz	510	0	0	0	0	0	115	138	0	138	0	648
459	Burger King	20 fl oz	0	0	0	0	0	0	85	0	0	0	0	0
460	Burger King	29 fl oz	0	0	0	0	0	0	120	0	0	0	0	0
461	Burger King	38 fl oz	0	0	0	0	0	0	160	0	0	0	0	0
465	Burger King	29 fl oz	380	0	0	0	0	0	170	102	0	102	0	482
466	Burger King	38 fl oz	500	0	0	0	0	0	230	133	0	133	0	633
467	Burger King	Dr. Pepper®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
468	Burger King	16 fl oz	190	0	0	0	0	0	60	52	0	51	0	241
469	Burger King	20 fl oz	240	0	0	0	0	0	75	65	0	64	0	304
470	Burger King	29 fl oz	350	0	0	0	0	0	105	94	0	93	0	443
471	Burger King	38 fl oz	450	0	0	0	0	0	140	124	0	121	0	571
472	Burger King	Barq’s® Root Beer‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
473	Burger King	16 fl oz	240	0	0	0	0	0	100	65	0	65	0	305
474	Burger King	20 fl oz	300	0	0	0	0	0	120	81	0	81	0	381
475	Burger King	29 fl oz	350	0	0	0	0	0	180	118	0	118	0	468
476	Burger King	38 fl oz	450	0	0	0	0	0	230	155	0	155	0	605
477	Burger King	Cherry Coke®‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
479	Burger King	20 fl oz	280	0	0	0	0	0	70	76	0	76	0	356
480	Burger King	29 fl oz	410	0	0	0	0	0	100	110	0	110	0	520
481	Burger King	38 fl oz	450	0	0	0	0	0	130	145	0	145	0	595
482	Burger King	Fanta® Orange‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
483	Burger King	16 fl oz	230	0	0	0	0	0	60	62	0	61	0	291
484	Burger King	20 fl oz	280	0	0	0	0	0	70	78	0	77	0	357
485	Burger King	29 fl oz	410	0	0	0	0	0	105	113	0	111	0	521
486	Burger King	38 fl oz	530	0	0	0	0	0	135	148	0	146	0	676
487	Burger King	Hi-C® Fruit Punch‡	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
488	Burger King	16 fl oz	220	0	0	0	0	0	75	62	0	60	0	280
489	Burger King	20 fl oz	280	0	0	0	0	0	95	77	0	75	0	355
490	Burger King	29 fl oz	410	0	0	0	0	0	135	111	0	109	0	519
491	Burger King	38 fl oz	450	0	0	0	0	0	180	146	0	143	0	593
492	Burger King	MINUTE MAID® Light Lemonade	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
493	Burger King	16 fl oz	10	0	0	0	0	0	60	3	0	0	0	0
494	Burger King	20 fl oz	10	0	0	0	0	0	70	4	0	0	0	0
495	Burger King	29 fl oz	15	0	0	0	0	0	105	5	0	0	0	0
497	Burger King	Sweet Tea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
498	Burger King	20 fl oz	120	0	0	0	0	0	0	35	0	35	0	155
499	Burger King	29 fl oz	160	0	0	0	0	0	0	49	0	49	0	209
500	Burger King	40 fl oz	240	0	0	0	0	0	0	71	0	71	0	311
501	Burger King	Unsweetened Tea	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
505	Burger King	Capri Sun® 100% Apple Juice	80	0	0	0	0	0	25	20	0	20	0	100
506	Burger King	Minute Maid® Orange Juice	140	0	0	0	0	0	20	33	0	30	2	168
507	Burger King	Frozen Coke® – 16 oz	130	0	0	0	0	0	50	35	0	35	0	165
509	Burger King	Hot Coffees	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
510	Burger King	BK® Café Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
511	Burger King	BK® Café Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
513	Burger King	BK® Café Decaf Coffee- 12 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
514	Burger King	BK® Café Decaf Coffee- 16 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
515	Burger King	BK® Café Decaf Coffee- 20 fl oz	0	0	0	0	0	0	0	0	0	0	0	0
517	Burger King	BK® Café Iced Vanilla Coffee- 12 fl oz	150	70	8	4	0	25	30	21	0	21	1	174
518	Burger King	BK® Café Iced Vanilla Coffee- 16 fl oz	200	90	10	5	0	30	40	27	0	27	2	230
519	Burger King	BK® Café Iced Vanilla Coffee- 20 fl oz	260	110	13	7	0	40	50	34	0	34	2	299
520	Burger King	BK® Café Iced Mocha Coffee- 12 fl oz	180	70	8	4	0	25	40	27	1	25	2	207
521	Burger King	BK® Café Iced Mocha Coffee- 16 fl oz	240	90	10	6	0	30	55	35	1	32	2	276
522	Burger King	BK® Café Iced Mocha Coffee- 20 fl oz	300	120	13	7	0	40	70	45	2	41	3	345
524	Burger King	BK® Café Mocha Frappe- 12 fl oz	300	80	8	5	0	30	200	50	1	41	7	339
525	Burger King	BK® Café Mocha Frappe- 16 fl oz	400	90	10	7	0	40	270	68	1	58	9	456
526	Burger King	BK® Café Mocha Frappe- 20 fl oz	510	110	13	8	0	50	350	87	1	71	12	577
527	Burger King	BK® Café Caramel Frappe- 12 fl oz	300	80	8	5	0	35	210	50	0	41	7	339
528	Burger King	BK® Café Caramel Frappe- 16 fl oz	400	90	10	7	0	40	280	68	0	56	9	454
529	Burger King	BK® Café Caramel Frappe- 20 fl oz	500	110	12	8	0	50	350	86	0	71	11	568
530	Wendy’s	Baconator	950	62	24	3	205	1630	40	2	8	59	923	\N
531	Wendy’s	Dave’s Double	810	51	20	3	175	1280	41	3	8	49	789	\N
532	Wendy’s	Dave’s Single	570	34	13	1.5	100	1110	40	3	9	30	562	\N
533	Wendy’s	Dave’s Triple	1090	72	30	4	260	1650	43	3	9	71	1058	\N
534	Wendy’s	Double Stack	390	21	9	1.5	90	740	26	1	6	25	380	\N
535	Wendy’s	Jr. Bacon Cheeseburger	380	22	8	1	65	680	25	1	5	19	374	\N
536	Wendy’s	Jr. Cheeseburger	280	13	6	1	50	660	26	1	6	16	276	\N
537	Wendy’s	Jr. Cheeseburger Deluxe	340	19	7	1	55	660	27	2	7	16	338	\N
538	Wendy’s	Son of Baconator	630	39	15	1.5	125	1280	37	2	7	34	618	\N
539	Wendy’s	3 Piece Chicken Tenders	330	16	2.5	0	75	1010	22	0	0	24	309	\N
540	Wendy’s	4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	\N
541	Wendy’s	4 Piece Chicken Tenders	430	21	3.5	0	100	1350	29	0	1	32	403	\N
542	Wendy’s	6 Picece Chicken Nuggets	250	16	3.5	0	50	510	14	1	0	13	241	\N
543	Wendy’s	6 Piece Chicken Tenders	650	32	5	0	150	2020	43	0	1	48	608	\N
544	Wendy’s	10 Piece Chicken Nuggets	420	27	5	0	80	850	24	1	0	22	403	\N
545	Wendy’s	Crispy Chicken BLT	420	23	6	0	50	950	35	2	5	20	411	\N
546	Wendy’s	Crispy Chicken Sandwich	330	16	3	0	30	600	33	2	4	14	323	\N
547	Wendy’s	Grilled Asiago Ranch Club	530	23	7	0	120	1220	36	3	6	43	500	\N
548	Wendy’s	Grilled Chicken Sandwich	370	10	2	0	90	830	38	3	8	34	346	\N
549	Wendy’s	Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	\N
781	KFC	Ketchup	30	0	0	0	0	250	8	0	6	0	36	\N
550	Wendy’s	Homestyle Asiago Ranch Chicken Club	660	34	9	0	100	1650	52	3	7	38	638	\N
551	Wendy’s	Homestyle Chicken Sandwich	510	22	4	0	70	1150	51	3	6	28	492	\N
552	Wendy’s	S’Awesome Sauce	120	12	2	0	0	170	4	1	3	1	124	\N
553	Wendy’s	Spicy Asiago Ranch Club	670	32	9	0	100	1530	55	4	6	38	647	\N
554	Wendy’s	Spicy Chicken Sandwich	510	20	3.5	0	65	1030	54	4	6	29	491	\N
555	Wendy’s	Spicy Chicken Wrap	370	20	5	0	50	850	30	2	2	18	359	\N
556	Wendy’s	Apple Pecan Chicken Salad, Full Size	560	24	7	0	115	1020	52	7	40	38	569	\N
557	Wendy’s	Apple Pecan Chicken Salad, Half Size	340	17	4	0	55	550	29	4	22	20	346	\N
558	Wendy’s	Berry Burst Chicken Salad, Full Size	460	17	4.5	0	105	1090	41	7	29	41	453	\N
559	Wendy’s	Berry Burst Chicken Salad, Half Size	290	13	2.5	0	50	570	23	5	15	23	285	\N
560	Wendy’s	Caesar Side Salad	240	15	4	0	30	500	19	3	4	8	240	\N
561	Wendy’s	Garden Side Salad	250	18	4	0	20	460	18	2	4	7	251	\N
562	Wendy’s	Southwest Avocado Chicken Salad, Full Size	600	41	11	0	135	1220	18	7	7	42	576	\N
563	Wendy’s	Southwest Avocado Chicken Salad, Half Size	300	20	6	0	70	620	10	4	4	21	289	\N
810	KFC	Diet Mountain Dew® (20 fl oz)	10	0	0	0	0	90	1	0	1	0	11	\N
564	Wendy’s	Spicy Caesar Chicken Salad, Full Size	720	42	12	1	150	1680	44	8	6	42	696	\N
565	Wendy’s	Spicy Caesar Chicken Salad, Half Size	410	23	6	0.5	75	930	30	5	4	23	397	\N
566	Wendy’s	Taco Salad, Full Size	660	32	13	1	85	1820	63	10	18	32	659	\N
567	Wendy’s	Taco Salad, Half Size	470	23	8	0.5	45	1320	49	7	12	19	471	\N
568	Wendy’s	Apple Bites	35	0	0	0	0	0	9	2	7	0	42	\N
569	Wendy’s	Baconator Fries	490	28	9	0	35	550	45	4	2	14	487	\N
570	Wendy’s	Bacon Cheese Baked Potato	440	14	6	0	35	550	64	7	4	17	433	\N
571	Wendy’s	Cheese Baked Potato	430	13	7	0	30	560	65	7	5	14	428	\N
572	Wendy’s	Chili & Cheese Baked Potato	460	11	5	0	35	710	71	8	7	19	453	\N
573	Wendy’s	Chili, Large	250	7	3	0.5	50	1170	23	5	9	23	239	\N
575	Wendy’s	Chili Cheese Fries	500	25	8	0.5	35	710	53	6	4	16	496	\N
576	Wendy’s	Natural-Cut Fries, Junior	230	10	2	0	0	15	30	3	0	3	229	\N
577	Wendy’s	Natural-Cut Fries, Large	530	24	4.5	0	0	520	70	6	0	7	528	\N
578	Wendy’s	Natural-Cut Fries, Medium	420	19	3.5	0	0	420	56	5	0	6	418	\N
579	Wendy’s	Natural-Cut Fries, Small	320	15	2.5	0	0	320	43	4	0	5	318	\N
580	Wendy’s	Plain Baked Potato	270	0	0	0	0	25	61	7	3	7	266	\N
581	Wendy’s	Sour Cream and Chive Baked Potato	310	\N	2.5	0	10	35	63	7	4	8	309	\N
582	Wendy’s	Summer Berry Burst Fruit Cup	20	0	0	0	0	0	5	1	3	0	23	\N
583	Wendy’s	1% Chocolate Milk	150	\N	1.5	0	10	170	26	0	23	7	168	\N
584	Wendy’s	1% White Milk	90	2	1.5	0	10	105	10	0	10	7	95	\N
585	Wendy’s	All-Natural Lemonade, Large	380	0	0	0	0	0	100	0	93	0	473	\N
586	Wendy’s	All-Natural Lemonade, Medium	330	0	0	0	0	0	86	0	81	0	411	\N
587	Wendy’s	All-Natural Lemonade, Small	190	0	0	0	0	0	50	0	47	0	237	\N
588	Wendy’s	Apple Kiwi Fruit Tea, Large	330	0	0	0	0	60	83	0	80	0	410	\N
589	Wendy’s	Apple Kiwi Fruit Tea, Medium	300	0	0	0	0	50	76	0	73	0	373	\N
590	Wendy’s	Apple Kiwi Fruit Tea, Small	170	0	0	0	0	30	44	0	42	0	212	\N
591	Wendy’s	Barq’s Root Beer, Large	450	0	0	0	0	180	122	0	122	0	572	\N
592	Wendy’s	Barq’s Root Beer, Medium	360	0	0	0	0	150	98	0	98	0	458	\N
593	Wendy’s	Barq’s Root Beer, Small	220	0	0	0	0	90	61	0	61	0	281	\N
594	Wendy’s	Brewed Unsweetened Iced Tea, Large	5	0	0	0	0	25	2	0	0	0	5	\N
595	Wendy’s	Brewed Unsweetened Iced Tea, Medium	0	0	0	0	0	15	1	0	0	0	0	\N
596	Wendy’s	Brewed Unsweetened Iced Tea, Small	0	0	0	0	0	10	1	0	0	0	0	\N
597	Wendy’s	Caramel Iced Coffee, Medium	240	8	5	0	25	45	40	0	36	3	278	\N
598	Wendy’s	Caramel Iced Coffee, Small	160	6	3.5	0	20	30	26	0	24	2	186	\N
599	Wendy’s	Coca-Cola, Large	400	0	0	0	0	90	109	0	109	0	509	\N
600	Wendy’s	Coca-Cola, Medium	320	0	0	0	0	70	87	0	87	0	407	\N
601	Wendy’s	Coca-Cola, Small	200	0	0	0	0	45	54	0	54	0	254	\N
602	Wendy’s	Coca-Cola Zero Sugar, Large	0	0	0	0	0	100	1	0	0	0	0	\N
603	Wendy’s	Coca-Cola Zero Sugar, Medium	0	0	0	0	0	80	1	0	0	0	0	\N
604	Wendy’s	Coca-Cola Zero Sugar, Small	0	0	0	0	0	50	0	0	0	0	0	\N
605	Wendy’s	Diet Coke, Large	0	0	0	0	0	125	1	0	0	0	0	\N
606	Wendy’s	Diet Coke, Medium	0	0	0	0	0	100	1	0	0	0	0	\N
607	Wendy’s	Diet Coke, Small	0	0	0	0	0	45	0	0	0	0	0	\N
608	Wendy’s	Dr Pepper, Large	240	0	0	0	0	70	66	0	64	0	304	\N
609	Wendy’s	Dr Pepper, Medium	190	0	0	0	0	55	53	0	51	0	241	\N
610	Wendy’s	Dr Pepper, Small	120	0	0	0	0	35	33	0	32	0	152	\N
611	Wendy’s	Fanta Orange, Large	430	0	0	0	0	110	117	0	115	0	545	\N
612	Wendy’s	Fanta Orange, Medium	340	0	0	0	0	85	94	0	92	0	432	\N
613	Wendy’s	Fanta Orange, Small	210	0	0	0	0	55	59	0	58	0	268	\N
614	Wendy’s	Hi-C Flashin’ Fruit Punch, Large	420	0	0	0	0	140	115	0	113	0	533	\N
615	Wendy’s	Hi-C Flashin’ Fruit Punch, Medium	340	0	0	0	0	115	92	0	90	0	430	\N
616	Wendy’s	Hi-C Flashin’ Fruit Punch, Small	210	0	0	0	0	70	58	0	56	0	266	\N
617	Wendy’s	Honest Tropical Green Tea, Large	110	0	0	0	0	55	29	0	29	0	139	\N
618	Wendy’s	Honest Tropical Green Tea, Medium	90	0	0	0	0	40	22	0	22	0	112	\N
619	Wendy’s	Honest Tropical Green Tea, Small	60	0	0	0	0	25	14	0	14	0	74	\N
620	Wendy’s	Hot Tea	0	0	0	0	0	0	1	0	0	0	0	\N
621	Wendy’s	Limeade, Large	460	0	0	0	0	55	117	0	111	0	571	\N
622	Wendy’s	Limeade, Medium	380	0	0	0	0	45	98	0	93	0	473	\N
623	Wendy’s	Limeade, Small	230	0	0	0	0	30	59	0	56	0	286	\N
624	Wendy’s	Minute Maid Light Lemonade, Large	15	0	0	0	0	10	2	0	0	0	15	\N
625	Wendy’s	Minute Maid Light Lemonade, Medium	10	0	0	0	0	10	1	0	0	0	10	\N
626	Wendy’s	Minute Maid Light Lemonade, Small	5	0	0	0	0	5	1	0	0	0	5	\N
627	Wendy’s	Mocha Iced Coffee, Medium	210	8	5	0	25	40	32	0	28	3	240	\N
628	Wendy’s	Mocha Iced Coffee, Small	170	6	3.5	0	20	30	28	0	25	2	197	\N
629	Wendy’s	Pear Berry Fruit Tea, Large	320	0	0	0	0	60	82	0	76	0	396	\N
630	Wendy’s	Pear Berry Fruit Tea, Medium	300	0	0	0	0	50	76	0	70	0	370	\N
631	Wendy’s	Pear Berry Fruit Tea, Small	170	0	0	0	0	30	44	0	40	0	210	\N
632	Wendy’s	Skinny Vanilla Iced Coffee, Medium	100	8	5	0	25	45	14	0	0	3	102	\N
633	Wendy’s	Skinny Vanilla Iced Coffee, Small	70	5	3.5	0	15	30	6	0	0	2	72	\N
634	Wendy’s	Small Sprite, Small	200	0	0	0	0	90	53	0	53	0	253	\N
635	Wendy’s	Sprite, Large	390	0	0	0	0	180	105	0	105	0	495	\N
636	Wendy’s	Sprite, Medium	310	0	0	0	0	140	84	0	84	0	394	\N
637	Wendy’s	Strawberry Lemonade, Large	480	0	0	0	0	55	121	0	114	0	594	\N
638	Wendy’s	Strawberry Lemonade, Medium	380	0	0	0	0	45	98	0	92	0	472	\N
639	Wendy’s	Strawberry Lemonade, Small	230	0	0	0	0	30	58	0	54	0	284	\N
640	Wendy’s	Strawberry Sweet Tea, Large	270	0	0	0	0	15	69	0	67	0	337	\N
641	Wendy’s	Strawberry Sweet Tea, Medium	240	0	0	0	0	15	60	0	59	0	299	\N
642	Wendy’s	Strawberry Sweet Tea, Small	140	0	0	0	0	10	36	0	35	0	175	\N
643	Wendy’s	Strawberry Tea, Large	90	0	0	0	0	20	22	0	20	0	110	\N
644	Wendy’s	Strawberry Tea, Medium	60	0	0	0	0	15	16	0	14	0	74	\N
645	Wendy’s	Strawberry Tea, Small	45	0	0	0	0	10	11	0	10	0	55	\N
646	Wendy’s	Sweetened Iced Tea, Large	300	0	0	0	0	25	77	0	75	0	375	\N
647	Wendy’s	Sweetened Iced Tea, Medium	220	0	0	0	0	20	58	0	56	0	276	\N
648	Wendy’s	Sweetened Iced Tea, Small	160	0	0	0	0	10	41	0	40	0	200	\N
649	Wendy’s	Vanilla Iced Coffee, Medium	250	8	5	0	25	40	42	0	39	3	291	\N
650	Wendy’s	Vanilla Iced Coffee, Small	170	6	3.5	0	20	30	28	0	26	2	198	\N
651	Wendy’s	Classic Chocolate Frosty, Junior	200	5	3	0	20	90	33	0	27	6	224	\N
652	Wendy’s	Classic Chocolate Frosty, Large	590	15	10	0.5	60	260	99	0	81	17	664	\N
653	Wendy’s	Classic Chocolate Frosty, Medium	470	12	8	0.5	50	210	79	0	65	13	530	\N
654	Wendy’s	Classic Chocolate Frosty, Small	350	9	6	0	35	150	58	0	47	10	393	\N
655	Wendy’s	Vanilla Frosty, Junior	190	5	3.5	0	25	90	32	0	27	5	216	\N
656	Wendy’s	Vanilla Frosty, Large	570	15	10	0.5	70	260	94	0	78	15	643	\N
657	Wendy’s	Vanilla Frosty, Medium	450	12	8	0.5	55	210	75	0	63	12	509	\N
658	Wendy’s	Vanilla Frosty, Small	340	9	6	0	45	160	56	0	47	9	384	\N
659	Wendy’s	Chocolate Chunk Cookie	310	16	8	0	20	210	40	2	24	3	339	\N
660	Wendy’s	Double Chocolate Chunk Cookie	290	14	7	0	20	230	39	4	21	4	314	\N
661	Wendy’s	Sugar Cookie	330	16	8	0	25	300	43	1	24	3	359	\N
662	Wendy’s	Wendy’s Kids’ Meal	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
663	Wendy’s	Kids 2 Piece Chicken Tenders	200	10	1.5	0	45	620	13	0	0	15	187	\N
664	Wendy’s	Kids 4 Piece Chicken Nuggets	170	11	2	0	35	340	10	0	0	9	163	\N
665	Wendy’s	Kids Cheeseburger	280	13	6	0.5	50	540	25	1	5	15	276	\N
666	Wendy’s	Kids Grilled Chicken Wrap	270	10	3.5	0	55	640	24	2	3	20	257	\N
667	Wendy’s	Kids Hamburger	240	9	3.5	0.5	40	350	24	1	5	13	236	\N
668	Wendy’s	Artisan Egg Sandwich with Bacon	320	17	8	0	245	750	25	1	4	18	314	\N
669	Wendy’s	Artisan Egg Sandwich with Sausage	480	33	13	0	275	980	27	1	4	21	476	\N
670	Wendy’s	Bacon Breakfast Bowl	510	28	9	0	245	1390	44	4	2	19	502	\N
671	Wendy’s	Biggie Breakfast Sandwich	610	40	15	0	290	1400	37	2	7	27	605	\N
672	Wendy’s	Fresh-Baked Biscuit with Applewood Smoked Bacon	410	24	13	0	235	970	34	1	5	15	413	\N
673	Wendy’s	Fresh Baked Biscuit with Natural Sausage	590	41	19	0	270	1270	36	1	6	20	595	\N
674	Wendy’s	Gravy and Sausage Bowl	450	22	6	0	220	1260	50	4	2	12	446	\N
675	Wendy’s	Honey Butter Chicken Biscuit	500	26	12	0	50	1120	48	1	9	19	502	\N
676	Wendy’s	Sausage and Egg Burrito	360	20	8	0	210	920	29	1	2	17	353	\N
677	Wendy’s	Sausage and Gravy Biscuit	490	29	14	0	20	1400	49	2	6	8	502	\N
678	Wendy’s	Sausage Biscuit	480	33	15	0	50	1010	35	1	5	12	488	\N
679	Wendy’s	Sausage Breakfast Bowl	640	42	14	0	270	1540	46	4	3	21	636	\N
680	Wendy’s	Seasoned Home-Style Potatoes, Large	360	13	2.5	0	0	1080	57	6	1	5	359	\N
681	Wendy’s	Seasoned Home-Style Potatoes, Medium	250	9	1.5	0	0	750	39	4	1	4	249	\N
682	Wendy’s	Seasoned Home-Style Potatoes, Small	230	8	1.5	0	0	680	35	4	0	3	229	\N
683	Wendy’s	Two Sausage and Egg Burritos	720	41	16	0	420	1830	59	2	5	34	707	\N
684	Wendy’s	Two Sausage Biscuits	960	65	31	0	95	2020	70	3	10	23	978	\N
685	KFC	Limited Time Cinnabon Dessert  Biscuits	290	13	7	0	\N	580	40	2	17	4	310	\N
686	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Breast	390	21	4	0	120	1190	11	2	0	39	355	\N
687	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Limited Time Drumstick	130	8	1.5	0	55	430	4	1	0	12	119.5	\N
688	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Thigh	280	19	4.5	0	100	910	8	1	0	19	265.5	\N
689	KFC	Limited Time ORIGINAL RECIPE CHICKEN Chicken Whole Wing	130	8	2	0	55	380	3	0	0	10	122	\N
691	KFC	Chicken Drumstick	250	21	3.5	0	50	530	6	1	0	11	242.5	\N
692	KFC	Chicken Thigh	500	40	7	0	100	970	11	1	1	22	486	\N
693	KFC	Chicken Whole Wing	290	25	4	0	45	520	6	1	1	10	285	\N
694	KFC	Breast	260	12	3	0	130	790	1	0	0	38	225	\N
695	KFC	Drumstick	100	6	1.5	0	55	260	0	0	0	11	90.5	\N
696	KFC	Thigh	180	12	3.5	0	90	470	0	0	0	17	166.5	\N
697	KFC	Whole Wing	90	6	1.5	0	45	210	1	0	0	9	82.5	\N
700	KFC	Thigh	390	32	6	0	65	900	12	2	1	13	384	\N
701	KFC	Whole Wing	180	15	2.5	0	35	450	5	1	0	8	174.5	\N
702	KFC	EXTRA CRISPY  Chicken Breast	530	35	6	0	105	1150	18	0	0	35	501	\N
703	KFC	EXTRA CRISPY  Chicken Drumstick	170	12	2	0	50	390	5	0	0	10	162	\N
704	KFC	EXTRA CRISPY  Chicken Thigh	330	23	4.5	0	100	700	9	0	0	22	312.5	\N
705	KFC	EXTRA CRISPY  Chicken Whole Wing	170	13	2	0	45	340	5	0	0	10	162	\N
706	KFC	KENTUCKY GRILLED CHICKEN Breast	210	7	2	0	130	710	0	0	0	38	174	\N
707	KFC	KENTUCKY GRILLED CHICKEN Drumstick	80	4	1	0	55	220	0	0	0	11	70	\N
708	KFC	KENTUCKY GRILLED CHICKEN Thigh	150	9	3	0	90	420	0	0	0	17	136	\N
709	KFC	KENTUCKY GRILLED CHICKEN Whole Wing	70	3	1	0	45	180	0	0	0	9	62	\N
710	KFC	SPICY CRISPY CHICKEN Breast	350	20	3.5	0	100	1100	11	1	0	30	323.5	\N
711	KFC	SPICY CRISPY CHICKEN Drumstick	130	8	1.5	0	40	420	5	1	0	9	122.5	\N
712	KFC	SPICY CRISPY CHICKEN Thigh	270	20	3.5	0	65	720	10	1	0	13	260.5	\N
713	KFC	SPICY CRISPY CHICKEN Whole Wing	120	8	1.5	0	35	350	5	0	0	7	114.5	\N
714	KFC	EXTRA CRISPY  Tender (each)	260	14	2	0	50	610	15	\N	0	19	243	\N
715	KFC	EXTRA CRISPY  Tender (each)	220	16	2.5	0	25	460	9	\N	0	10	212.5	\N
716	KFC	KENTUCKY FRIED WINGS Buffalo	100	7	1.5	0	20	310	3	0	0	5	96.5	\N
717	KFC	KENTUCKY FRIED WINGS Honey BBQ	100	6	1	0	20	210	8	0	4	5	100	\N
718	KFC	KENTUCKY FRIED WINGS Nashville Hot	130	11	2	0	20	230	4	0	0	5	127	\N
719	KFC	KENTUCKY FRIED WINGS Unsauced	80	6	1	0	20	150	3	0	0	5	76	\N
720	KFC	POPCORN NUGGETS Kids	290	19	2.5	0	30	870	19	1	0	13	279.5	\N
721	KFC	POPCORN NUGGETS Large	620	39	5	0	65	1820	39	2	0	27	598	\N
722	KFC	BBQ Baked Beans	190	1	0	0	0	650	34	7	15	11	194	\N
723	KFC	Biscuit	180	8	4.5	0	0	520	22	1	1	4	181.5	\N
724	KFC	Coleslaw	170	12	2	0	\N	180	14	4	10	1	181	\N
725	KFC	Corn on the Cob	70	\N	0	0	0	0	17	2	3	2	71	\N
779	KFC	Honey Mustard – Dipping Sauce Cup	110	9	1.5	0	\N	120	6	0	6	0	117.5	\N
780	KFC	Honey Sauce Packet	30	0	0	0	0	0	8	0	5	0	35	\N
782	KFC	KFC Sauce – Dipping Sauce Cup	90	8	1.5	0	10	170	5	0	5	0	96.5	\N
783	KFC	Lemon Juice Packet	5	0	0	0	0	20	1	0	0	0	5	\N
784	KFC	Ranch – Dipping Sauce Cup	130	14	2.5	0	10	240	2	0	1	0	133.5	\N
785	KFC	Strawberry Jam Packet	35	0	0	0	0	0	9	0	6	0	41	\N
786	KFC	Capri Sun® 100% Juice Fruit Punch	80	0	0	0	0	25	21	0	20	0	100	\N
787	KFC	Chocolate Milk 1%	150	\N	1.5	0	10	170	26	0	23	7	167.5	\N
789	KFC	Musselman’s™ Applesauce	45	0	0	0	0	0	12	1	8	0	53	\N
790	KFC	7UP® (12 fl oz)	140	0	0	0	0	50	35	0	35	0	175	\N
791	KFC	7UP® (16 fl oz)	190	0	0	0	0	70	46	0	46	0	236	\N
792	KFC	7UP® (20 fl oz)	240	0	0	0	0	85	58	0	58	0	298	\N
793	KFC	7UP® (30 fl oz)	350	0	0	0	0	125	87	0	87	0	437	\N
794	KFC	Classic Lemonade (1/2 Gallon)	880	0	0	0	0	780	234	0	228	0	1108	\N
795	KFC	Classic Lemonade (20 fl oz)	140	0	0	0	0	130	39	0	38	0	178	\N
796	KFC	Code Red Mountain Dew® (12 fl oz)	170	0	0	0	0	50	46	0	46	0	216	\N
797	KFC	Code Red Mountain Dew® (16 fl oz)	230	0	0	0	0	65	62	0	62	0	292	\N
798	KFC	Code Red Mountain Dew® (20 fl oz)	290	0	0	0	0	85	77	0	77	0	367	\N
799	KFC	Code Red Mountain Dew® (30 fl oz)	430	0	0	0	0	125	116	0	115	0	545	\N
800	KFC	Diet Dr Pepper® (12 fl oz)	0	0	0	0	0	70	0	0	0	0	0	\N
801	KFC	Diet Dr Pepper® (16 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
802	KFC	Diet Dr Pepper® (20 fl oz)	0	0	0	0	0	120	0	0	0	0	0	\N
803	KFC	Diet Dr Pepper® (30 fl oz)	0	0	0	0	0	180	0	0	0	0	0	\N
804	KFC	Diet Mist Twst® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
805	KFC	Diet Mist Twst® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
806	KFC	Diet Mist Twst® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
807	KFC	Diet Mist Twst® (30 fl oz)	5	0	0	0	0	95	0	0	0	0	5	\N
808	KFC	Diet Mountain Dew® (12 fl oz)	0	0	0	0	0	55	1	0	0	0	0	\N
809	KFC	Diet Mountain Dew® (16 fl oz)	5	0	0	0	0	75	1	0	0	0	5	\N
811	KFC	Diet Mountain Dew® (30 fl oz)	10	0	0	0	0	140	1	0	1	0	11	\N
812	KFC	Diet Pepsi® (12 fl oz)	0	0	0	0	0	55	0	0	0	0	0	\N
813	KFC	Diet Pepsi® (16 fl oz)	0	0	0	0	0	75	0	0	0	0	0	\N
814	KFC	Diet Pepsi® (20 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
815	KFC	Diet Pepsi® (30 fl oz)	0	0	0	0	0	140	0	0	0	0	0	\N
816	KFC	Diet Pepsi® Wild Cherry Pepsi® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
817	KFC	Diet Pepsi® Wild Cherry Pepsi® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
818	KFC	Diet Pepsi® Wild Cherry Pepsi® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
819	KFC	Diet Pepsi® Wild Cherry Pepsi® (30 fl oz)	0	0	0	0	0	95	0	0	0	0	0	\N
820	KFC	Dr Pepper® (12 fl oz)	140	0	0	0	0	45	39	0	38	0	178	\N
821	KFC	Dr Pepper® (16 fl oz)	190	0	0	0	0	60	52	0	51	0	241	\N
822	KFC	Dr Pepper® (20 fl oz)	240	0	0	0	0	75	65	0	64	0	304	\N
823	KFC	Dr Pepper® (30 fl oz)	360	0	0	0	0	110	98	0	96	0	456	\N
824	KFC	Lipton® Brisk® Lemon Tea (12 fl oz)	80	0	0	0	0	40	22	0	22	0	102	\N
825	KFC	Lipton® Brisk® Lemon Tea (16 fl oz)	110	0	0	0	0	55	29	0	29	0	139	\N
826	KFC	Lipton® Brisk® Lemon Tea (20 fl oz)	140	0	0	0	0	70	36	0	36	0	176	\N
827	KFC	Lipton® Brisk® Lemon Tea (30 fl oz)	210	0	0	0	0	105	55	0	54	0	264	\N
828	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (12 fl oz)	0	0	0	0	0	105	0	0	0	0	0	\N
829	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (16 fl oz)	0	0	0	0	0	140	0	0	0	0	0	\N
830	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (20 fl oz)	5	0	0	0	0	180	0	0	0	0	5	\N
831	KFC	Lipton® Brisk® No Calorie Peach Iced Green Tea (30 fl oz)	10	0	0	0	0	270	0	0	0	0	10	\N
832	KFC	Lipton® Brisk® Raspberry Tea (12 fl oz)	80	0	0	0	0	45	20	0	20	0	100	\N
833	KFC	Lipton® Brisk® Raspberry Tea (16 fl oz)	100	0	0	0	0	55	26	0	26	0	126	\N
834	KFC	Lipton® Brisk® Raspberry Tea (20 fl oz)	130	0	0	0	0	70	33	0	33	0	163	\N
835	KFC	Lipton® Brisk® Raspberry Tea (30 fl oz)	190	0	0	0	0	110	49	0	49	0	239	\N
836	KFC	Lipton® Brisk® Sweet Iced Tea (12 fl oz)	80	0	0	0	0	45	22	0	21	0	101	\N
837	KFC	Lipton® Brisk® Sweet Iced Tea (16 fl oz)	110	0	0	0	0	65	29	0	29	0	139	\N
838	KFC	Lipton® Brisk® Sweet Iced Tea (20 fl oz)	130	0	0	0	0	80	36	0	36	0	166	\N
839	KFC	Lipton® Brisk® Sweet Iced Tea (30 fl oz)	200	0	0	0	0	120	54	0	54	0	254	\N
840	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	\N
841	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
842	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0	0	0	0	0	75	0	0	0	0	0	\N
843	KFC	Lipton® Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	0	0	0	0	0	115	0	0	0	0	0	\N
844	KFC	Manzanita Sol® (12 fl oz)	160	0	0	0	0	35	42	0	42	0	202	\N
845	KFC	Manzanita Sol® (16 fl oz)	210	0	0	0	0	45	57	0	57	0	267	\N
846	KFC	Manzanita Sol® (20 fl oz)	260	0	0	0	0	55	71	0	71	0	331	\N
847	KFC	Manzanita Sol® (30 fl oz)	400	0	0	0	0	80	106	0	106	0	506	\N
848	KFC	Miranda® Strawberry (12 fl oz)	160	0	0	0	0	70	44	0	44	0	204	\N
849	KFC	Miranda® Strawberry (16 fl oz)	220	0	0	0	0	95	58	0	58	0	278	\N
850	KFC	Miranda® Strawberry (20 fl oz)	270	0	0	0	0	120	73	0	73	0	343	\N
851	KFC	Miranda® Strawberry (30 fl oz)	410	0	0	0	0	180	109	0	109	0	519	\N
852	KFC	Mist Twst® (12 fl oz)	150	0	0	0	0	35	41	0	41	0	191	\N
853	KFC	Mist Twst® (16 fl oz)	200	0	0	0	0	45	54	0	54	0	254	\N
854	KFC	Mist Twst® (20 fl oz)	260	0	0	0	0	55	68	0	68	0	328	\N
855	KFC	Mist Twst® (30 fl oz)	380	0	0	0	0	80	101	0	101	0	481	\N
856	KFC	MNT DEW Sweet Lightning (20 fl oz)	120	0	0	0	0	190	32	0	25	0	145	\N
857	KFC	Mountain Dew® (12 fl oz)	160	0	0	0	0	50	44	0	44	0	204	\N
858	KFC	Mountain Dew® (16 fl oz)	220	0	0	0	0	70	59	0	58	0	278	\N
859	KFC	Mountain Dew® (20 fl oz)	270	0	0	0	0	85	73	0	73	0	343	\N
860	KFC	Mountain Dew® (30 fl oz)	410	0	0	0	0	125	110	0	109	0	519	\N
861	KFC	Mug Root Beer® (12 fl oz)	140	0	0	0	0	45	39	0	39	0	179	\N
862	KFC	Mug Root Beer® (16 fl oz)	190	0	0	0	0	60	52	0	52	0	242	\N
863	KFC	Mug Root Beer® (20 fl oz)	240	0	0	0	0	75	65	0	65	0	305	\N
864	KFC	Mug Root Beer® (30 fl oz)	360	0	0	0	0	110	98	0	98	0	458	\N
865	KFC	Pepsi Zero Sugar® (12 fl oz)	0	0	0	0	0	35	0	0	0	0	0	\N
866	KFC	Pepsi Zero Sugar® (16 fl oz)	0	0	0	0	0	50	0	0	0	0	0	\N
867	KFC	Pepsi Zero Sugar® (20 fl oz)	0	0	0	0	0	60	0	0	0	0	0	\N
868	KFC	Pepsi Zero Sugar® (30 fl oz)	0	0	0	0	0	95	1	0	0	0	0	\N
869	KFC	Pepsi® (12 fl oz)	150	0	0	0	0	30	41	0	41	0	191	\N
870	KFC	Pepsi® (16 fl oz)	200	0	0	0	0	45	55	0	55	0	255	\N
871	KFC	Pepsi® (20 fl oz)	250	0	0	0	0	55	69	0	69	0	319	\N
872	KFC	Pepsi® (30 fl oz)	380	0	0	0	0	80	104	0	103	0	483	\N
873	KFC	Sobe Lifewater Yumberry Pomegranate (12 fl oz)	0	0	0	0	0	45	0	0	0	0	0	\N
874	KFC	Sobe Lifewater Yumberry Pomegranate (16 fl oz)	0	0	0	0	0	65	0	0	0	0	0	\N
875	KFC	Sobe Lifewater Yumberry Pomegranate (20 fl oz)	0	0	0	0	0	80	0	0	0	0	0	\N
876	KFC	Sobe Lifewater Yumberry Pomegranate (30 fl oz)	5	0	0	0	0	120	1	0	0	0	5	\N
877	KFC	Strawberry Lemonade (1/2 Gallon)	950	0	0	0	0	790	270	0	264	0	1214	\N
878	KFC	Strawberry Lemonade (20 fl oz)	170	0	0	0	0	130	45	0	44	0	214	\N
879	KFC	Tropicana® Fruit Punch (12 fl oz)	170	0	0	0	0	35	45	0	45	0	215	\N
880	KFC	Tropicana® Fruit Punch (16 fl oz)	230	0	0	0	0	45	60	0	60	0	290	\N
881	KFC	Tropicana® Fruit Punch (20 fl oz)	280	0	0	0	0	60	75	0	75	0	355	\N
882	KFC	Tropicana® Fruit Punch (30 fl oz)	420	0	0	0	0	90	113	0	112	0	532	\N
883	KFC	Tropicana® Light Lemonade (12 fl oz)	5	0	0	0	0	140	0	0	0	0	5	\N
884	KFC	Tropicana® Light Lemonade (16 fl oz)	10	0	0	0	0	190	0	0	0	0	10	\N
885	KFC	Tropicana® Light Lemonade (20 fl oz)	10	0	0	0	0	240	0	0	0	0	10	\N
886	KFC	Tropicana® Light Lemonade (30 fl oz)	15	0	0	0	0	350	1	0	0	0	15	\N
887	KFC	Tropicana® Pink Lemonade (12 fl oz)	150	0	0	0	0	160	40	0	40	0	190	\N
1011	Taco Bell	Power Menu Bowl – Chicken	470	170	19	6	0	70	1200	50	7	2	26	\N
888	KFC	Tropicana® Pink Lemonade (16 fl oz)	210	0	0	0	0	210	53	0	53	0	263	\N
889	KFC	Tropicana® Pink Lemonade (20 fl oz)	260	0	0	0	0	260	67	0	67	0	327	\N
890	KFC	Tropicana® Pink Lemonade (30 fl oz)	390	0	0	0	0	390	100	0	100	0	490	\N
891	KFC	Tropicana® Twister® Orange (12 fl oz)	170	0	0	0	0	35	46	0	46	0	216	\N
892	KFC	Tropicana® Twister® Orange (16 fl oz)	230	0	0	0	0	50	61	0	61	0	291	\N
893	KFC	Tropicana® Twister® Orange (20 fl oz)	290	0	0	0	0	60	76	0	76	0	366	\N
894	KFC	Tropicana® Twister® Orange (30 fl oz)	430	0	0	0	0	90	115	0	114	0	544	\N
895	KFC	Wild Cherry Pepsi® (12 fl oz)	160	0	0	0	0	30	42	0	42	0	202	\N
896	KFC	Wild Cherry Pepsi® (16 fl oz)	210	0	0	0	0	40	56	0	56	0	266	\N
897	KFC	Wild Cherry Pepsi® (20 fl oz)	260	0	0	0	0	50	70	0	70	0	330	\N
898	KFC	Wild Cherry Pepsi® (30 fl oz)	390	0	0	0	0	80	105	0	105	0	495	\N
899	KFC	Country Fried Steak without Peppered White Gravy	360	24	7	1	35	750	22	2	0	13	354	\N
900	KFC	Country Fried Steak with Peppered White Gravy	390	26	7	1	35	910	26	2	0	13	384	\N
903	Taco Bell	Bacon Club Chalupa	440	240	27	5	0	50	840	31	2	3	20	\N
904	Taco Bell	Blue Raspberry Freeze™ (16 oz)	120	0	0	0	0	0	35	30	0	30	0	\N
905	Taco Bell	Blue Raspberry Freeze™ (20 oz)	150	0	0	0	0	0	40	38	0	38	0	\N
906	Taco Bell	Loaded Nacho Taco	250	110	12	4.5	0	25	610	24	3	2	10	\N
907	Taco Bell	Midnight Berry Freeze™ (16 oz)	140	0	0	0	0	0	35	35	0	34	0	\N
908	Taco Bell	Midnight Berry Freeze™ (20 oz)	170	0	0	0	0	0	40	43	0	42	0	\N
910	Taco Bell	Nacho Fries BellGrande®	710	360	40	6	0	30	1440	73	10	4	13	\N
911	Taco Bell	Black Bean Chalupa – Online Exclusive	330	140	15	3	0	10	430	39	5	3	10	\N
912	Taco Bell	Black Bean Quesarito – Online Exclusive	630	270	29	10	0	35	1260	73	7	5	19	\N
913	Taco Bell	Quesarito – Online Exclusive	650	300	33	12	0.5	55	1390	67	6	5	22	\N
914	Taco Bell	Chalupa Supreme® – Beef	350	170	18	5	0	25	560	33	4	3	13	\N
915	Taco Bell	Chalupa Supreme® – Chicken	330	140	15	3.5	0	35	560	31	2	3	16	\N
916	Taco Bell	Chalupa Supreme® – Steak	330	140	16	4	0	30	530	32	2	3	15	\N
917	Taco Bell	Cheesy Gordita Crunch	500	250	28	10	0.5	55	850	41	5	4	20	\N
918	Taco Bell	Crunchy Taco	170	80	9	3.5	0	25	310	13	3	\N	8	\N
919	Taco Bell	Crunchy Taco Supreme®	190	100	11	4.5	0	25	340	15	3	2	8	\N
920	Taco Bell	Loaded Nacho Taco (New)	250	110	12	4.5	0	25	610	24	3	2	10	\N
921	Taco Bell	Nacho Cheese Doritos® Locos Taco	170	80	9	3.5	0	25	360	13	3	\N	8	\N
922	Taco Bell	Nacho Cheese Doritos® Locos Taco Supreme®	190	100	11	4.5	0	30	380	15	3	2	8	\N
923	Taco Bell	Soft Taco – Beef	180	80	9	4	0	25	500	17	3	1	9	\N
924	Taco Bell	Soft Taco – Chicken	160	50	5	2.5	0	30	500	16	1	1	12	\N
925	Taco Bell	Soft Taco Supreme®	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
926	Taco Bell	Soft Taco – Beef	210	90	10	5	0	25	520	20	3	2	10	\N
927	Taco Bell	Soft Taco – Chicken	180	60	7	3.5	0	35	520	18	2	2	13	\N
928	Taco Bell	Bean Burrito (V)	350	80	9	3.5	0	5	1000	54	11	3	13	\N
929	Taco Bell	Beefy 5-Layer Burrito	490	160	18	7	0	30	1250	63	9	5	18	\N
930	Taco Bell	Burrito Supreme® – Beef	390	130	14	6	0	25	1110	51	9	4	16	\N
931	Taco Bell	Burrito Supreme® – Chicken	370	100	11	4.5	0	35	1110	49	8	4	19	\N
932	Taco Bell	Burrito Supreme® – Steak	370	110	12	5	0	30	1090	49	7	4	18	\N
933	Taco Bell	Chili Cheese Burrito (regional)	370	150	17	8	0	35	970	40	4	2	16	\N
934	Taco Bell	Quesarito – Beef	650	300	33	12	0.5	55	1390	67	6	5	22	\N
935	Taco Bell	Quesarito – Chicken	620	270	29	11	0	65	1390	66	4	4	25	\N
936	Taco Bell	Quesarito – Steak	630	270	30	11	0	60	1370	66	4	4	24	\N
937	Taco Bell	Chips and Nacho Cheese Sauce (V)	220	120	13	1.5	0	\N	250	24	2	2	2	\N
938	Taco Bell	Nacho Fries (V) (New)	320	160	18	1.5	0	\N	630	35	4	2	4	\N
939	Taco Bell	Nacho Fries BellGrande® (New)	710	360	40	6	0	30	1440	73	10	4	13	\N
940	Taco Bell	Nachos BellGrande® – Beef	740	340	38	7	0	25	1050	82	15	5	16	\N
941	Taco Bell	Nachos BellGrande® – Chicken	720	310	35	6	0	35	1050	81	14	5	20	\N
942	Taco Bell	Nachos BellGrande® – Steak	720	320	36	6	0	30	1030	81	14	5	19	\N
943	Taco Bell	Beef Quesarito	650	300	33	12	0.5	55	1390	67	6	5	22	\N
944	Taco Bell	Black Bean Quesarito (V)	630	270	29	10	0	35	1260	73	7	5	19	\N
945	Taco Bell	Quesadilla – Cheese (V)	470	230	25	12	0.5	50	990	37	4	2	19	\N
946	Taco Bell	Quesadilla – Chicken	510	240	26	12	0.5	75	1250	38	4	2	27	\N
947	Taco Bell	Quesadilla – Steak	520	240	27	12	0.5	70	1230	38	4	2	27	\N
948	Taco Bell	Bacon Club Chalupa – Specialties	440	240	27	5	0	50	840	31	2	3	20	\N
949	Taco Bell	Black Bean Chalupa – Specialties	330	140	15	3	0	10	430	39	5	3	10	\N
950	Taco Bell	Black Bean Crunchwrap Supreme – Specialties	510	160	17	4.5	0	5	1080	77	8	6	13	\N
951	Taco Bell	Black Bean Quesarito – Specialties	630	270	29	10	0	35	1260	73	7	5	19	\N
952	Taco Bell	Chalupa Supreme® – Specialties	350	170	18	5	0	25	560	33	4	3	13	\N
953	Taco Bell	Cheesy Gordita Crunch – Specialties	500	250	28	10	0.5	55	850	41	5	4	20	\N
954	Taco Bell	Cheesy Roll Up – Specialties	180	80	9	5	0	20	430	15	2	\N	9	\N
955	Taco Bell	Crunchwrap Supreme® – Specialties	530	190	21	6	0	25	1200	71	6	6	16	\N
956	Taco Bell	Crunchy Taco – Specialties	170	80	9	3.5	0	25	310	13	3	\N	8	\N
957	Taco Bell	Nacho Cheese Doritos® Locos Taco – Specialties	170	80	9	3.5	0	25	360	13	3	\N	8	\N
958	Taco Bell	Nachos BellGrande® – Specialties	740	340	38	7	0	25	1050	82	15	5	16	\N
959	Taco Bell	Power Menu Bowl – Specialties	470	170	19	6	0	70	1200	50	7	2	26	\N
960	Taco Bell	Quesadilla – Specialties	510	240	26	12	0.5	75	1250	38	4	2	27	\N
961	Taco Bell	Quesarito – Specialties	650	300	33	12	0.5	55	1390	67	6	5	22	\N
962	Taco Bell	Soft Taco – Specialties	180	80	9	4	0	25	500	17	3	1	9	\N
963	Taco Bell	Soft Taco Supreme – Specialties	210	90	10	5	0	25	520	20	3	2	10	\N
964	Taco Bell	Veggie Power Menu Bowl – Specialties	430	160	17	5	0	20	810	57	10	2	12	\N
966	Taco Bell	Black Beans (V)	50	10	1	0	0	0	135	8	3	0	2	\N
967	Taco Bell	Cinnabon® Delights™ (2 Pk) (V)	160	80	9	2	0	5	80	17	0	10	2	\N
968	Taco Bell	Cinnabon® Delights™ (12 Pk – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	\N
969	Taco Bell	Cinnamon Twists (V)	170	50	6	0	0	0	210	27	\N	13	1	\N
970	Taco Bell	Diablo Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	\N
971	Taco Bell	Fire Sauce Packet (V)	0	0	0	0	0	0	55	0	0	0	0	\N
972	Taco Bell	Hot Sauce Packet (V)	0	0	0	0	0	0	45	0	0	0	0	\N
973	Taco Bell	Mild Sauce Packet (V)	0	0	0	0	0	0	30	0	0	0	0	\N
974	Taco Bell	Blue Raspberry Freeze™ (16 oz) (New)	120	0	0	0	0	0	35	30	0	30	0	\N
975	Taco Bell	Blue Raspberry Freeze™ (20 oz) (New)	150	0	0	0	0	0	40	38	0	38	0	\N
976	Taco Bell	Dragon Fruit Freeze (16 oz)	190	0	0	0	0	0	50	49	0	47	0	\N
977	Taco Bell	Dragon Fruit Freeze (20 oz)	230	0	0	0	0	0	60	59	0	57	0	\N
978	Taco Bell	Lowfat Milk – CA (Regional)	100	20	2	1.5	0	10	130	13	0	12	9	\N
979	Taco Bell	Lowfat Milk – Federal (Regional)	80	20	2	1.5	0	10	100	10	0	9	7	\N
980	Taco Bell	Midnight Berry Freeze™ (16 oz) (New)	140	0	0	0	0	0	35	35	0	34	0	\N
981	Taco Bell	Midnight Berry Freeze™ (20 oz) (New)	170	0	0	0	0	0	40	43	0	42	0	\N
982	Taco Bell	Mtn Dew® Baja Blast Freeze™ (16 oz)	150	0	0	0	0	0	45	41	0	41	0	\N
983	Taco Bell	Mtn Dew® Baja Blast Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	\N
985	Taco Bell	Premium Hot Coffee	10	0	0	0	0	0	0	0	0	0	2	\N
986	Taco Bell	Regular Iced Coffee	10	0	0	0	0	0	0	0	0	0	2	\N
988	Taco Bell	Wild Strawberry Freeze™ (16 oz)	150	0	0	0	0	0	40	41	0	41	0	\N
989	Taco Bell	Wild Strawberry Freeze™ (20 oz)	190	0	0	0	0	0	55	51	0	51	0	\N
990	Taco Bell	Beef Burrito – Value Menu	430	170	19	5	0	20	970	51	4	3	12	\N
991	Taco Bell	Cheesy Bean & Rice Burrito – Value Menu	420	140	16	4	0	\N	880	56	7	3	10	\N
992	Taco Bell	Cheesy Roll Up – Value Menu	180	80	9	5	0	20	430	15	2	\N	9	\N
993	Taco Bell	Chicken Chipotle Melt – Value Menu	190	80	9	3	0	35	530	15	1	\N	12	\N
994	Taco Bell	Chips and Nacho Cheese Sauce – Value Menu	220	120	13	1.5	0	\N	250	24	2	2	2	\N
995	Taco Bell	Cinnamon Twists – Value Menu	170	50	6	0	0	0	210	27	\N	13	1	\N
996	Taco Bell	Loaded Nacho Taco – Value Menu	250	110	12	4.5	0	25	610	24	3	2	10	\N
997	Taco Bell	Bean Burrito	350	80	9	3.5	0	5	1000	54	11	3	13	\N
998	Taco Bell	Black Bean Chalupa	330	140	15	3	0	10	430	39	5	3	10	\N
999	Taco Bell	Black Bean Crunchwrap Supreme	510	160	17	4.5	0	5	1080	77	8	6	13	\N
1000	Taco Bell	Black Bean Quesarito	630	270	29	10	0	35	1260	73	7	5	19	\N
1001	Taco Bell	Black Beans & Rice	170	30	3.5	0	0	0	320	31	4	0	4	\N
1002	Taco Bell	Cheese Quesadilla	470	230	25	12	0.5	50	990	37	4	2	19	\N
1003	Taco Bell	Cheesy Bean & Rice Burrito	420	140	16	4	0	\N	880	56	7	3	10	\N
1004	Taco Bell	Cheesy Roll Up	180	80	9	5	0	20	430	15	2	\N	9	\N
1005	Taco Bell	Chips and Nacho Cheese Sauce	220	120	13	1.5	0	\N	250	24	2	2	2	\N
1006	Taco Bell	Cinnabon® Delights™ (2 Pack)	160	80	9	2	0	5	80	17	0	10	2	\N
1007	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4)	930	480	53	13	2	40	480	104	3	59	9	\N
1008	Taco Bell	Cinnamon Twists	170	50	6	0	0	0	210	27	\N	13	1	\N
1009	Taco Bell	Hash Brown	160	100	12	1	0	0	270	13	2	0	1	\N
1010	Taco Bell	Power Menu Bowl – Veggie	430	160	17	5	0	20	810	57	10	2	12	\N
1012	Taco Bell	Power Menu Bowl – Steak	480	180	20	7	0	60	1150	51	7	2	25	\N
1013	Taco Bell	Power Menu Bowl – Veggie (V)	430	160	17	5	0	20	810	57	10	2	12	\N
1014	Taco Bell	Breakfast Crunchwrap – Bacon	670	370	41	12	0	140	1270	50	4	3	21	\N
1015	Taco Bell	Breakfast Crunchwrap – Sausage	720	430	47	15	0	145	1210	51	4	3	21	\N
1016	Taco Bell	Breakfast Crunchwrap – Steak	660	350	38	12	0	145	1300	51	4	3	24	\N
1017	Taco Bell	Breakfast Salsa Packet (V)	0	0	0	0	0	0	50	\N	0	0	0	\N
1018	Taco Bell	Cheesy Toasted Breakfast Burrito – Bacon	350	150	16	4.5	0	115	870	36	2	3	13	\N
1019	Taco Bell	Cheesy Toasted Breakfast Burrito – Fiesta Potato (V)	340	130	14	3.5	0	100	750	43	3	3	10	\N
1020	Taco Bell	Cheesy Toasted Breakfast Burrito – Sausage	340	160	17	5	0	110	730	36	2	3	11	\N
1021	Taco Bell	Cinnabon® Delights™ (2 Pack) (V)	160	80	9	2	0	5	80	17	0	10	2	\N
1022	Taco Bell	Cinnabon® Delights™ (12 Pack – Serves 4) (V)	930	480	53	13	2	40	480	104	3	59	9	\N
1023	Taco Bell	Grande Toasted Breakfast Burrito – Bacon	560	270	30	10	0	230	1290	49	4	3	24	\N
1024	Taco Bell	Grande Toasted Breakfast Burrito – Sausage	560	280	31	10	0	230	1150	49	4	3	22	\N
1025	Taco Bell	Grande Toasted Breakfast Burrito – Steak	560	250	28	9	0	240	1310	50	4	3	27	\N
1027	Taco Bell	Hash Brown Toasted Breakfast Burrito – Bacon	570	300	33	10	0	135	1270	49	4	2	21	\N
1028	Taco Bell	Hash Brown Toasted Breakfast Burrito – Sausage	570	300	34	10	0	130	1130	49	4	2	18	\N
1029	Taco Bell	Hash Brown Toasted Breakfast Burrito – Steak	570	270	30	9	0	140	1290	50	4	2	24	\N
1031	Taco Bell	Brisk® Mango Iced Tea (16 fl oz)	100	\N	\N	\N	\N	50	26	\N	\N	26	\N	\N
1032	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	0	\N	\N	\N	\N	60	0	\N	\N	0	\N	\N
1033	Taco Bell	Diet Dr Pepper® (16 fl oz)	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	\N
1034	Taco Bell	Diet Mtn Dew® (16 fl oz)	5	\N	\N	\N	\N	75	1	\N	\N	1	\N	\N
1035	Taco Bell	Diet Pepsi® (16 fl oz)	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	\N
1036	Taco Bell	Dr Pepper® (16 fl oz)	190	\N	\N	\N	\N	60	52	\N	\N	51	\N	\N
1037	Taco Bell	G2 – Fruit Punch (16 fl oz)	30	\N	\N	\N	\N	140	7	\N	\N	6	\N	\N
1038	Taco Bell	Mtn Dew® (16 fl oz)	220	\N	\N	\N	\N	70	59	\N	\N	58	\N	\N
1039	Taco Bell	Mtn Dew® Baja Blast™ (16 fl oz)	220	\N	\N	\N	\N	65	59	\N	\N	59	\N	\N
1040	Taco Bell	Mtn Dew® Baja Blast Zero Sugar (16 fl oz)	5	\N	\N	\N	\N	70	0	\N	\N	0	\N	\N
1041	Taco Bell	Mtn Dew® Kickstart™ Orange Citrus (16 fl oz)	70	\N	\N	\N	\N	75	18	\N	\N	18	\N	\N
1042	Taco Bell	Mug® Root Beer (16 fl oz)	190	\N	\N	\N	\N	60	52	\N	\N	52	\N	\N
1044	Taco Bell	Pepsi® Wild Cherry (16 fl oz)	210	\N	\N	\N	\N	40	56	\N	\N	56	\N	\N
1045	Taco Bell	Pepsi® Zero Sugar (16 fl oz)	0	\N	\N	\N	\N	85	0	\N	\N	0	\N	\N
1046	Taco Bell	Sierra Mist® (16 fl oz)	200	\N	\N	\N	\N	45	54	\N	\N	54	\N	\N
1047	Taco Bell	Tropicana® Pink Lemonade (16 fl oz)	210	\N	\N	\N	\N	210	53	\N	\N	53	\N	\N
1048	Taco Bell	7-Up (20 fl oz)	240	\N	\N	\N	\N	85	58	\N	\N	58	\N	\N
1049	Taco Bell	Brisk® Mango Iced Tea (20 fl oz)	120	\N	\N	\N	\N	60	32	\N	\N	32	\N	\N
1050	Taco Bell	Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	\N
1113	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Personal Pan	180	9	3.5	0	20	370	17	1	2	8	\N	\N
1114	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Medium	300	15	6	0	35	580	28	2	1	13	\N	\N
1115	Pizza Hut	Pan Pizza Slices Pepperoni Lover’s® Large	440	24	9	0.5	50	850	37	3	2	19	\N	\N
1116	Pizza Hut	Pan Pizza Slices Supreme Personal Pan	170	8	3	0	15	360	18	1	2	7	\N	\N
1117	Pizza Hut	Pan Pizza Slices Supreme Medium	270	13	5	0	25	500	29	2	2	11	\N	\N
1118	Pizza Hut	Pan Pizza Slices Supreme Large	390	20	7	0	40	740	37	2	2	16	\N	\N
1119	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Personal Pan	170	8	3.5	0	15	330	17	1	2	8	\N	\N
1120	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Medium	270	13	5	0	25	470	27	2	1	12	\N	\N
1121	Pizza Hut	Pan Pizza Slices Ultimate Cheese Lover’s® Large	390	20	8	0	40	670	36	2	2	17	\N	\N
1122	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Personal Pan	140	5	2	0	10	290	18	1	2	6	\N	\N
1123	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Medium	230	9	3.5	0	15	420	29	2	2	9	\N	\N
1124	Pizza Hut	Pan Pizza Slices Veggie Lover’s® Large	330	15	5	0	25	620	38	3	3	14	\N	\N
1125	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Small	140	4	2	0	15	250	20	1	4	6	\N	\N
1126	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Medium	220	7	3	0	20	390	31	2	6	10	\N	\N
1127	Pizza Hut	Hand Tossed Slices Backyard BBQ Chicken Large	300	10	4.5	0	30	530	40	2	7	14	\N	\N
1128	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Medium	200	7	3.5	0	15	410	26	2	1	9	\N	\N
1129	Pizza Hut	Hand Tossed Slices Beyond Meat® Pepperoni Large	280	10	5	0	20	560	35	3	2	12	\N	\N
1130	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Small	130	\N	1.5	0	10	380	19	\N	\N	6	\N	\N
1131	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Medium	200	5	2.5	0	20	560	28	2	1	9	\N	\N
1132	Pizza Hut	Hand Tossed Slices  Buffalo Chicken Large	270	8	4	0	30	740	37	2	2	13	\N	\N
1133	Pizza Hut	Hand Tossed Slices Cheese Small	130	\N	2	0	10	250	17	1	\N	6	\N	\N
1134	Pizza Hut	Hand Tossed Slices Cheese Medium	210	8	3.5	0	20	390	26	2	1	10	\N	\N
1135	Pizza Hut	Hand Tossed Slices Cheese Large	290	10	5	0	30	540	34	3	2	13	\N	\N
1136	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Small	150	6	2.5	0	15	270	16	1	\N	7	\N	\N
1137	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Medium	230	9	4	0	25	410	25	2	1	11	\N	\N
1138	Pizza Hut	Hand Tossed Slices Chicken Bacon Parmesan Large	310	13	5	0	35	560	33	2	1	16	\N	\N
1139	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Small	130	4	1.5	0	10	270	17	1	1	7	\N	\N
1140	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Medium	210	6	3	0	20	420	27	2	2	10	\N	\N
1141	Pizza Hut	Hand Tossed Slices Hawaiian Chicken Large	280	9	4	0	30	580	36	3	3	15	\N	\N
1142	Pizza Hut	Hand Tossed Slices Meat Lover’s® Small	180	9	3.5	0	20	370	17	1	\N	7	\N	\N
1143	Pizza Hut	Hand Tossed Slices Meat Lover’s® Medium	290	15	6	0	30	590	26	2	1	12	\N	\N
1144	Pizza Hut	Hand Tossed Slices Meat Lover’s® Large	390	21	8	0	45	830	34	3	2	17	\N	\N
1146	Pizza Hut	Hand Tossed Slices Pepperoni Medium	220	9	4	0	20	420	25	2	1	9	\N	\N
1147	Pizza Hut	Hand Tossed Slices Pepperoni Large	300	13	6	0	30	590	34	3	2	13	\N	\N
1148	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Small	160	7	3	0	20	310	17	1	\N	7	\N	\N
1149	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Medium	270	13	6	0	35	530	26	2	1	12	\N	\N
1150	Pizza Hut	Hand Tossed Slices Pepperoni Lover’s® Large	370	18	8	0	50	740	35	3	2	17	\N	\N
1151	Pizza Hut	Hand Tossed Slices Supreme Small	150	6	2.5	0	15	280	17	1	1	6	\N	\N
1152	Pizza Hut	Hand Tossed Slices Supreme Medium	240	10	4	0	25	450	26	2	2	10	\N	\N
1153	Pizza Hut	Hand Tossed Slices Supreme Large	320	14	6	0	35	630	35	3	2	14	\N	\N
1154	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Small	150	6	2.5	0	15	250	16	1	\N	6	\N	\N
1155	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Medium	230	10	4.5	0	25	390	25	2	1	11	\N	\N
1156	Pizza Hut	Hand Tossed Slices Ultimate Cheese Lover’s® Large	310	13	6	0	35	540	33	2	1	15	\N	\N
1157	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Small	120	4	1.5	0	10	230	17	1	1	5	\N	\N
1158	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Medium	200	6	2.5	0	15	370	27	2	2	8	\N	\N
1159	Pizza Hut	Hand Tossed Slices Veggie Lover’s® Large	260	9	4	0	20	510	36	3	3	11	\N	\N
\.


--
-- Data for Name: nutritional_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nutritional_info (id, snack_name, id_snack, company_name, id_company, "Calories", "CaloriesFromFat", "TotalFat(g)", "SaturatedFat(g)", "TransFat(g)", "Cholesterol(mg)", "Sodium(mg)", "Carbs(g)", "Fiber(g)", "Sugars(g)", "Protein(g)", "createdAt", "updatedAt") FROM stdin;
3875	Hotcakes	1	McDonald’s	1	350	80	9	2	0	20	590	60	3	14	8	2023-09-22 20:59:19.022995-03	\N
3876	16 fl oz	2	Burger King	6	220	0	0	0	0	0	55	61	0	61	0	2023-09-22 20:59:19.022995-03	\N
3877	Water	3	Taco Bell	4	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
3878	 	4	Taco Bell	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3879	7-Up (30 fl oz)	5	Taco Bell	4	350	\N	\N	\N	\N	125	87	\N	\N	87	\N	2023-09-22 20:59:19.022995-03	\N
3880	Hamburger	6	Burger King	6	240	90	10	3.5	0.5	35	380	26	1	6	13	2023-09-22 20:59:19.022995-03	\N
3881	Cheeseburger	7	Burger King	6	280	120	13	6	0.5	45	560	27	1	7	15	2023-09-22 20:59:19.022995-03	\N
3882	Double Cheeseburger	8	Burger King	6	390	190	21	9	1.5	85	590	27	1	7	23	2023-09-22 20:59:19.022995-03	\N
3883	McDouble	9	McDonald’s	1	390	170	19	8	1	65	920	33	2	7	22	2023-09-22 20:59:19.022995-03	\N
3884	 Quarter Pounder® with Cheese	10	McDonald’s	1	510	230	26	12	1.5	90	1190	40	3	9	29	2023-09-22 20:59:19.022995-03	\N
3885	Double Quarter Pounder® with Cheese	11	McDonald’s	1	740	380	42	19	2.5	155	1380	40	3	9	48	2023-09-22 20:59:19.022995-03	\N
3886	Big Mac®	12	McDonald’s	1	540	260	29	10	1.5	75	1040	45	3	9	25	2023-09-22 20:59:19.022995-03	\N
3887	Big N’ Tasty®	13	McDonald’s	1	460	220	24	8	1.5	70	720	37	3	8	24	2023-09-22 20:59:19.022995-03	\N
3888	Big N’ Tasty® with Cheese	14	McDonald’s	1	510	250	28	11	1.5	85	960	38	3	8	27	2023-09-22 20:59:19.022995-03	\N
3889	Angus Bacon & Cheese	15	McDonald’s	1	790	350	39	17	2	145	2070	63	4	13	45	2023-09-22 20:59:19.022995-03	\N
3890	Angus Deluxe	16	McDonald’s	1	750	350	39	16	2	135	1700	61	4	10	40	2023-09-22 20:59:19.022995-03	\N
3891	Angus Mushroom & Swiss	17	McDonald’s	1	770	360	40	17	2	135	1170	59	4	8	44	2023-09-22 20:59:19.022995-03	\N
3892	Filet-O-Fish®	18	McDonald’s	1	380	170	18	3.5	0	40	640	38	2	5	15	2023-09-22 20:59:19.022995-03	\N
3893	McChicken ®	19	McDonald’s	1	360	150	16	3	0	35	830	40	2	5	14	2023-09-22 20:59:19.022995-03	\N
3894	McRib ®	20	McDonald’s	1	500	240	26	10	0	70	980	44	3	11	22	2023-09-22 20:59:19.022995-03	\N
3895	Premium Grilled Chicken Classic Sandwich	21	McDonald’s	1	360	80	9	2	0	65	820	41	4	8	27	2023-09-22 20:59:19.022995-03	\N
3896	Milk 1%	22	KFC	5	90	2	1.5	0	10	105	10	0	10	7	94.5	2023-09-22 20:59:19.022995-03	\N
3897	16 fl oz	23	Burger King	6	10	0	0	0	0	0	60	3	0	0	0	2023-09-22 20:59:19.022995-03	\N
3898	Premium Crispy Chicken Ranch BLT Sandwich	24	McDonald’s	1	540	210	23	4.5	0	55	1160	56	3	11	27	2023-09-22 20:59:19.022995-03	\N
3899	Southern Style Crispy Chicken Sandwich	25	McDonald’s	1	400	150	17	3	0	45	1030	39	1	6	24	2023-09-22 20:59:19.022995-03	\N
3900	Ranch Snack Wrap® (Crispy)	26	McDonald’s	1	340	150	17	4.5	0	30	810	33	1	2	14	2023-09-22 20:59:19.022995-03	\N
3901	Ranch Snack Wrap® (Grilled)	27	McDonald’s	1	270	90	10	4	0	45	830	26	1	2	18	2023-09-22 20:59:19.022995-03	\N
3902	Honey Mustard Snack Wrap® (Crispy)	28	McDonald’s	1	330	140	16	4.5	0	30	780	34	1	4	14	2023-09-22 20:59:19.022995-03	\N
3903	Honey Mustard Snack Wrap® (Grilled)	29	McDonald’s	1	260	80	9	3.5	0	45	800	27	1	4	18	2023-09-22 20:59:19.022995-03	\N
3904	Chipotle BBQ Snack Wrap® (Crispy)	30	McDonald’s	1	330	140	15	4.5	0	30	810	35	1	4	14	2023-09-22 20:59:19.022995-03	\N
3905	Chipotle BBQ Snack Wrap® (Grilled)	31	McDonald’s	1	260	80	9	3.5	0	45	830	28	1	5	18	2023-09-22 20:59:19.022995-03	\N
3906	Angus Bacon & Cheese Snack Wrap	32	McDonald’s	1	390	190	21	9	1	75	1080	28	1	4	21	2023-09-22 20:59:19.022995-03	\N
3907	Angus Chipotle BBQ Bacon	33	McDonald’s	1	800	350	39	18	2	145	2020	66	4	16	45	2023-09-22 20:59:19.022995-03	\N
3908	Angus Chipotle BBQ Bacon Snack Wrap	34	McDonald’s	1	400	190	22	10	1	75	1060	30	1	6	21	2023-09-22 20:59:19.022995-03	\N
3909	Angus Deluxe Snack Wrap	35	McDonald’s	1	410	220	25	10	1.5	75	990	27	2	3	20	2023-09-22 20:59:19.022995-03	\N
3910	Angus Mushroom & Swiss Snack Wrap	36	McDonald’s	1	430	230	26	10	1.5	75	730	27	2	2	22	2023-09-22 20:59:19.022995-03	\N
3911	Mac Snack Wrap	37	McDonald’s	1	330	170	19	7	1	45	690	26	1	3	15	2023-09-22 20:59:19.022995-03	\N
3912	Drumstick	38	KFC	5	190	14	2.5	0	40	510	6	1	0	9	183.5	2023-09-22 20:59:19.022995-03	\N
3913	Diet Dr Pepper® (20 fl oz)	39	KFC	5	0	0	0	0	0	120	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
3914	Pepsi® (16 fl oz)	40	Taco Bell	4	200	\N	\N	\N	\N	45	55	\N	\N	55	\N	2023-09-22 20:59:19.022995-03	\N
3915	Chicken Selects® Premium Breast Strips (5 pc)	41	McDonald’s	1	660	360	40	6	0	85	1680	39	0	0	38	2023-09-22 20:59:19.022995-03	\N
3916	Spicy Buffalo Sauce	42	McDonald’s	1	60	50	6	1	0	0	800	1	1	0	0	2023-09-22 20:59:19.022995-03	\N
3917	Creamy Ranch Sauce	43	McDonald’s	1	170	160	18	3	0	10	270	2	0	1	0	2023-09-22 20:59:19.022995-03	\N
3918	Tangy Honey Mustard Sauce	44	McDonald’s	1	60	20	2	0	0	5	140	10	0	8	0	2023-09-22 20:59:19.022995-03	\N
3919	Southwestern Chipotle Barbeque Sauce	45	McDonald’s	1	60	0	0	0	0	0	210	15	1	11	0	2023-09-22 20:59:19.022995-03	\N
3920	Premium Southwest Salad with Grilled Chicken	46	McDonald’s	1	320	80	9	3	0	70	960	30	6	11	30	2023-09-22 20:59:19.022995-03	\N
3921	Premium Southwest Salad with Crispy Chicken	47	McDonald’s	1	430	180	20	4	0	55	920	38	6	12	26	2023-09-22 20:59:19.022995-03	\N
3922	Premium Southwest Salad (without chicken)	48	McDonald’s	1	140	40	4.5	2	0	10	150	20	6	6	6	2023-09-22 20:59:19.022995-03	\N
3975	Brisk® Mango Iced Tea (30 fl oz)	101	Taco Bell	4	180	\N	\N	\N	\N	90	48	\N	\N	48	\N	2023-09-22 20:59:19.022995-03	\N
3923	Premium Bacon Ranch Salad with Grilled Chicken	49	McDonald’s	1	260	90	9	4	0	90	1010	12	3	5	33	2023-09-22 20:59:19.022995-03	\N
3924	Salad Dressings	50	McDonald’s	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3925	Breast	51	KFC	5	260	12	3	0	130	790	1	0	0	38	225	2023-09-22 20:59:19.022995-03	\N
3926	Chicken Breast	52	KFC	5	770	60	10	0	105	1530	21	1	1	35	746	2023-09-22 20:59:19.022995-03	\N
3927	Black Beans & Rice (V)	53	Taco Bell	4	170	30	3.5	0	0	0	320	31	4	0	4	2023-09-22 20:59:19.022995-03	\N
3928	Chicken McNuggets® (6 piece)	54	McDonald’s	1	280	160	18	3	0	40	540	18	1	0	13	2023-09-22 20:59:19.022995-03	\N
3929	Chicken McNuggets® (10 piece)	55	McDonald’s	1	470	270	30	5	0	65	900	30	2	0	22	2023-09-22 20:59:19.022995-03	\N
3930	Barbeque Sauce	56	McDonald’s	1	50	0	0	0	0	0	260	12	0	10	0	2023-09-22 20:59:19.022995-03	\N
3931	Honey	57	McDonald’s	1	50	0	0	0	0	0	0	12	0	11	0	2023-09-22 20:59:19.022995-03	\N
3932	Hot Mustard Sauce	58	McDonald’s	1	60	20	2.5	0	0	5	250	9	2	6	1	2023-09-22 20:59:19.022995-03	\N
3933	Sweet ‘N Sour Sauce	59	McDonald’s	1	50	0	0	0	0	0	150	12	0	10	0	2023-09-22 20:59:19.022995-03	\N
3934	Chicken Selects® Premium Breast Strips (3 pc)	60	McDonald’s	1	400	210	24	3.5	0	50	1010	23	0	0	23	2023-09-22 20:59:19.022995-03	\N
3935	SOFT DRINKS BY CUP SIZE (*no ice)	61	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3936	Iced Coffees	62	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3937	Premium Grilled Chicken Club Sandwich	63	McDonald’s	1	460	150	17	6	0	90	1040	43	4	9	35	2023-09-22 20:59:19.022995-03	\N
3938	Premium Crispy Chicken Club Sandwich	64	McDonald’s	1	620	260	29	7	0	70	1200	57	3	11	31	2023-09-22 20:59:19.022995-03	\N
3939	Premium Grilled Chicken Ranch BLT Sandwich	65	McDonald’s	1	380	90	10	3	0	75	1000	41	4	9	31	2023-09-22 20:59:19.022995-03	\N
3940	Newman’s Own® Creamy Southwest Dressing	66	McDonald’s	1	100	50	6	1	0	20	340	11	0	3	1	2023-09-22 20:59:19.022995-03	\N
3941	Newman’s Own® Creamy Caesar Dressing	67	McDonald’s	1	190	170	18	3.5	0	20	500	4	0	2	2	2023-09-22 20:59:19.022995-03	\N
3942	Newman’s Own® Low Fat Balsamic Vinaigrette	68	McDonald’s	1	40	25	3	0	0	0	730	4	0	3	0	2023-09-22 20:59:19.022995-03	\N
3943	Newman’s Own® Low Fat Family Recipe Italian Dressing	69	McDonald’s	1	60	20	2.5	0	0	0	730	8	0	1	1	2023-09-22 20:59:19.022995-03	\N
3944	Newman’s Own® Ranch Dressing	70	McDonald’s	1	170	130	15	2.5	0	20	530	9	0	4	1	2023-09-22 20:59:19.022995-03	\N
3945	Sausage McMuffin®	71	McDonald’s	1	370	200	22	8	0	45	850	29	2	2	14	2023-09-22 20:59:19.022995-03	\N
3946	Sausage McMuffin® with Egg	72	McDonald’s	1	450	250	27	10	0	285	920	30	2	2	21	2023-09-22 20:59:19.022995-03	\N
3947	English Muffin	73	McDonald’s	1	160	30	3	0.5	0	0	280	27	2	2	5	2023-09-22 20:59:19.022995-03	\N
3948	Bacon, Egg & Cheese Biscuit (Regular Size Biscuit)	74	McDonald’s	1	420	210	23	12	0	235	1160	37	2	3	15	2023-09-22 20:59:19.022995-03	\N
3949	Bacon, Egg & Cheese Biscuit (Large Size Biscuit)	75	McDonald’s	1	480	240	27	12	0	235	1270	43	3	4	15	2023-09-22 20:59:19.022995-03	\N
3950	Sausage Biscuit with Egg (Regular Size Biscuit)	76	McDonald’s	1	510	290	33	14	0	250	1170	36	2	2	18	2023-09-22 20:59:19.022995-03	\N
3951	Sausage Biscuit with Egg (Large Size Biscuit)	77	McDonald’s	1	570	330	37	15	0	250	1280	42	3	3	18	2023-09-22 20:59:19.022995-03	\N
3952	Diet Mtn Dew® (20 fl oz)	78	Taco Bell	4	10	\N	\N	\N	\N	90	1	\N	\N	1	\N	2023-09-22 20:59:19.022995-03	\N
3953	Diet Pepsi® (20 fl oz)	79	Taco Bell	4	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
3954	Dr Pepper® (20 fl oz)	80	KFC	5	240	0	0	0	0	75	65	0	64	0	304	2023-09-22 20:59:19.022995-03	\N
3955	G2 – Fruit Punch (20 fl oz)	81	Taco Bell	4	35	\N	\N	\N	\N	180	9	\N	\N	8	\N	2023-09-22 20:59:19.022995-03	\N
3956	Mtn Dew® (20 fl oz)	82	Taco Bell	4	270	\N	\N	\N	\N	85	73	\N	\N	73	\N	2023-09-22 20:59:19.022995-03	\N
3957	Mtn Dew® Baja Blast™ (20 fl oz)	83	Taco Bell	4	280	\N	\N	\N	\N	80	74	\N	\N	73	\N	2023-09-22 20:59:19.022995-03	\N
3958	Mtn Dew® Baja Blast Zero Sugar (20 fl oz)	84	Taco Bell	4	10	\N	\N	\N	\N	85	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
3959	Mtn Dew® Kickstart™ Orange Citrus (20 fl oz)	85	Taco Bell	4	90	\N	\N	\N	\N	90	23	\N	\N	22	\N	2023-09-22 20:59:19.022995-03	\N
3960	Mug® Root Beer (20 fl oz)	86	Taco Bell	4	240	\N	\N	\N	\N	75	65	\N	\N	65	\N	2023-09-22 20:59:19.022995-03	\N
3961	Side Items	87	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3962	Sprite®‡	88	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3963	Medium French Fries	89	McDonald’s	1	380	170	19	2.5	0	0	270	48	5	0	4	2023-09-22 20:59:19.022995-03	\N
3964	Large French Fries	90	McDonald’s	1	500	220	25	3.5	0	0	350	63	6	0	6	2023-09-22 20:59:19.022995-03	\N
3965	Ketchup Packet	91	McDonald’s	1	15	0	0	0	0	0	110	3	0	2	0	2023-09-22 20:59:19.022995-03	\N
3966	Salt Packet	92	McDonald’s	1	0	0	0	0	0	0	270	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
3967	Chicken McNuggets® (4 piece)	93	McDonald’s	1	190	110	12	2	0	25	360	12	1	0	9	2023-09-22 20:59:19.022995-03	\N
3968	Premium Bacon Ranch Salad with Crispy Chicken	94	McDonald’s	1	370	180	20	6	0	75	970	20	3	6	29	2023-09-22 20:59:19.022995-03	\N
3969	Pepsi® (20 fl oz)	95	KFC	5	250	0	0	0	0	55	69	0	69	0	319	2023-09-22 20:59:19.022995-03	\N
3970	Pepsi® Wild Cherry (20 fl oz)	96	Taco Bell	4	260	\N	\N	\N	\N	50	70	\N	\N	70	\N	2023-09-22 20:59:19.022995-03	\N
3971	Pepsi® Zero Sugar (20 fl oz)	97	Taco Bell	4	0	\N	\N	\N	\N	105	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
3972	Sierra Mist® (20 fl oz)	98	Taco Bell	4	260	\N	\N	\N	\N	55	68	\N	\N	68	\N	2023-09-22 20:59:19.022995-03	\N
3973	Tropicana® Pink Lemonade (20 fl oz)	99	KFC	5	260	0	0	0	0	260	67	0	67	0	327	2023-09-22 20:59:19.022995-03	\N
3974	FOUNTAIN BEVERAGES (30 OZ)	100	Taco Bell	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3976	Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	102	Taco Bell	4	0	\N	\N	\N	\N	115	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
3977	Diet Dr Pepper® (30 fl oz)	103	KFC	5	0	0	0	0	0	180	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
3978	Diet Mtn Dew® (30 fl oz)	104	Taco Bell	4	10	\N	\N	\N	\N	140	1	\N	\N	1	\N	2023-09-22 20:59:19.022995-03	\N
3979	McCafe Coffees – Whole Milk	105	McDonald’s	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3980	Flame Broiled Burgers	106	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3981	Beverage	107	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
3982	KFC® Gizzards	108	KFC	5	300	16	2	0	210	770	18	\N	0	20	282	2023-09-22 20:59:19.022995-03	\N
3983	38 fl oz	109	Burger King	6	530	0	0	0	0	0	135	148	0	146	0	2023-09-22 20:59:19.022995-03	\N
3984	Premium Bacon Ranch Salad (without chicken)	110	McDonald’s	1	140	70	7	3.5	0	25	300	10	3	4	9	2023-09-22 20:59:19.022995-03	\N
3985	Premium Caesar Salad with Grilled Chicken	111	McDonald’s	1	220	60	6	3	0	75	890	12	3	5	30	2023-09-22 20:59:19.022995-03	\N
3986	Premium Caesar Salad with Crispy Chicken	112	McDonald’s	1	330	150	17	4.5	0	60	840	20	3	6	26	2023-09-22 20:59:19.022995-03	\N
3987	Premium Caesar Salad (without chicken)	113	McDonald’s	1	90	35	4	2.5	0	10	180	9	3	4	7	2023-09-22 20:59:19.022995-03	\N
3988	Side Salad	114	McDonald’s	1	20	0	0	0	0	0	10	4	1	2	1	2023-09-22 20:59:19.022995-03	\N
3989	Butter Garlic Croutons	115	McDonald’s	1	60	15	1.5	0	0	0	140	10	1	0	2	2023-09-22 20:59:19.022995-03	\N
3990	Snack Size Fruit & Walnut Salad	116	McDonald’s	1	210	70	8	1.5	0	5	60	31	2	25	4	2023-09-22 20:59:19.022995-03	\N
3991	Egg McMuffin®	117	McDonald’s	1	300	110	12	5	0	260	820	30	2	3	18	2023-09-22 20:59:19.022995-03	\N
3992	Hotcake Syrup	118	McDonald’s	1	180	0	0	0	0	0	20	45	0	32	0	2023-09-22 20:59:19.022995-03	\N
3993	Diet Pepsi® (30 fl oz)	119	KFC	5	0	0	0	0	0	140	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
3994	Dr Pepper® (30 fl oz)	120	KFC	5	360	0	0	0	0	110	98	0	96	0	456	2023-09-22 20:59:19.022995-03	\N
3995	G2 – Fruit Punch (30 fl oz)	121	Taco Bell	4	50	\N	\N	\N	\N	270	13	\N	\N	12	\N	2023-09-22 20:59:19.022995-03	\N
3996	Mtn Dew® (30 fl oz)	122	Taco Bell	4	410	\N	\N	\N	\N	125	110	\N	\N	109	\N	2023-09-22 20:59:19.022995-03	\N
3997	Mtn Dew® Baja Blast™ (30 fl oz)	123	Taco Bell	4	420	\N	\N	\N	\N	120	110	\N	\N	110	\N	2023-09-22 20:59:19.022995-03	\N
3998	Mtn Dew® Baja Blast Zero Sugar (30 fl oz)	124	Taco Bell	4	15	\N	\N	\N	\N	125	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
3999	Mtn Dew® Kickstart™ Orange Citrus (30 fl oz)	125	Taco Bell	4	130	\N	\N	\N	\N	140	34	\N	\N	33	\N	2023-09-22 20:59:19.022995-03	\N
4000	Mug® Root Beer (30 fl oz)	126	Taco Bell	4	360	\N	\N	\N	\N	110	98	\N	\N	98	\N	2023-09-22 20:59:19.022995-03	\N
4001	Pepsi® (30 fl oz)	127	Taco Bell	4	380	\N	\N	\N	\N	80	104	\N	\N	103	\N	2023-09-22 20:59:19.022995-03	\N
4002	Pepsi® Wild Cherry (30 fl oz)	128	Taco Bell	4	390	\N	\N	\N	\N	80	105	\N	\N	105	\N	2023-09-22 20:59:19.022995-03	\N
4003	Pepsi® Zero Sugar (30 fl oz)	129	Taco Bell	4	0	\N	\N	\N	\N	160	\N	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4004	Sierra Mist® (30 fl oz)	130	Taco Bell	4	380	\N	\N	\N	\N	80	101	\N	\N	101	\N	2023-09-22 20:59:19.022995-03	\N
4005	Tropicana® Pink Lemonade (30 fl oz)	131	KFC	5	390	0	0	0	0	390	100	0	100	0	490	2023-09-22 20:59:19.022995-03	\N
4006	Detroit Double Cheesy Pizza Slice	132	Pizza Hut	3	280	12	6	0	30	560	31	2	2	13	\N	2023-09-22 20:59:19.022995-03	\N
4007	Detroit Double Pepperoni Pizza Slice	133	Pizza Hut	3	330	17	7	0	40	720	30	2	2	14	\N	2023-09-22 20:59:19.022995-03	\N
4008	Detroit Meaty Pizza Slice	134	Pizza Hut	3	320	16	6	0	35	640	31	2	2	14	\N	2023-09-22 20:59:19.022995-03	\N
4009	Detroit Supremo Pizza Slice	135	Pizza Hut	3	290	13	6	0	30	570	31	2	2	13	\N	2023-09-22 20:59:19.022995-03	\N
4010	Pan Pizza Slices Backyard BBQ Chicken Personal Pan	136	Pizza Hut	3	180	6	2	0	15	370	25	1	8	8	\N	2023-09-22 20:59:19.022995-03	\N
4011	Coca Cola classic®‡	137	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4012	BK® Café	138	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4013	7-Up (16 fl oz)	139	Taco Bell	4	190	\N	\N	\N	\N	70	46	\N	\N	46	\N	2023-09-22 20:59:19.022995-03	\N
4014	Pan Pizza Slices Backyard BBQ Chicken Large	140	Pizza Hut	3	380	16	6	0	35	650	43	2	7	16	\N	2023-09-22 20:59:19.022995-03	\N
4015	Pan Pizza Slices Beyond Meat® Pepperoni Medium	141	Pizza Hut	3	240	10	4.5	0	15	470	29	2	1	10	\N	2023-09-22 20:59:19.022995-03	\N
4016	Pan Pizza Slices Beyond Meat® Pepperoni Large	142	Pizza Hut	3	350	16	6	0	25	680	38	3	2	14	\N	2023-09-22 20:59:19.022995-03	\N
4017	Pan Pizza Slices Buffalo Chicken Personal Pan	143	Pizza Hut	3	160	5	2	0	15	570	22	1	2	7	\N	2023-09-22 20:59:19.022995-03	\N
4018	Pan Pizza Slices Buffalo Chicken Medium	144	Pizza Hut	3	240	9	3.5	0	20	680	31	2	2	11	\N	2023-09-22 20:59:19.022995-03	\N
4019	Pan Pizza Slices Buffalo Chicken Large	145	Pizza Hut	3	350	14	5	0	30	850	40	2	2	15	\N	2023-09-22 20:59:19.022995-03	\N
4020	Pan Pizza Slices Cheese Personal Pan	146	Pizza Hut	3	150	6	2.5	0	15	310	17	1	2	7	\N	2023-09-22 20:59:19.022995-03	\N
4021	Pan Pizza Slices Cheese Medium	147	Pizza Hut	3	250	10	4.5	0	25	450	28	2	1	11	\N	2023-09-22 20:59:19.022995-03	\N
4022	Pan Pizza Slices Cheese Large	148	Pizza Hut	3	360	17	7	0	35	660	37	2	2	16	\N	2023-09-22 20:59:19.022995-03	\N
4023	Pan Pizza Slices Chicken Bacon Parmesan Personal Pan	149	Pizza Hut	3	180	8	3	0	20	350	17	1	2	9	\N	2023-09-22 20:59:19.022995-03	\N
4024	Pan Pizza Slices Chicken Bacon Parmesan Medium	150	Pizza Hut	3	270	13	4.5	0	30	470	27	2	1	12	\N	2023-09-22 20:59:19.022995-03	\N
4025	Pan Pizza Slices Chicken Bacon Parmesan Large	151	Pizza Hut	3	390	20	7	0	40	680	35	2	2	18	\N	2023-09-22 20:59:19.022995-03	\N
4026	Pan Pizza Slices Hawaiian Chicken Personal Pan	152	Pizza Hut	3	150	5	2	0	15	330	18	1	3	8	\N	2023-09-22 20:59:19.022995-03	\N
4027	Pan Pizza Slices Hawaiian Chicken Medium	153	Pizza Hut	3	240	9	3.5	0	20	480	29	2	2	12	\N	2023-09-22 20:59:19.022995-03	\N
4028	Pan Pizza Slices Hawaiian Chicken Large	154	Pizza Hut	3	350	15	5	0	30	690	38	2	3	17	\N	2023-09-22 20:59:19.022995-03	\N
4029	Pan Pizza Slices Meat Lover’s® Personal Pan	155	Pizza Hut	3	210	12	4.5	0	25	460	18	1	2	9	\N	2023-09-22 20:59:19.022995-03	\N
4030	Pan Pizza Slices Meat Lover’s® Medium	156	Pizza Hut	3	320	17	6	0	35	640	28	2	1	13	\N	2023-09-22 20:59:19.022995-03	\N
4031	Pan Pizza Slices Meat Lover’s® Large	157	Pizza Hut	3	470	27	10	0	50	940	37	2	2	19	\N	2023-09-22 20:59:19.022995-03	\N
4032	Frappes	158	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4033	Diet Coke®‡	159	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4034	Orange Juice	160	Taco Bell	4	140	0	0	0	0	0	20	33	\N	28	2	2023-09-22 20:59:19.022995-03	\N
4035	Green Beans	161	KFC	5	25	0	0	0	0	300	5	3	1	1	25	2023-09-22 20:59:19.022995-03	\N
4036	KFC® Cornbread Muffin	162	KFC	5	210	9	1.5	0	35	240	28	\N	11	3	219.5	2023-09-22 20:59:19.022995-03	\N
4037	Macaroni & Cheese	163	KFC	5	140	6	1.5	0	\N	590	17	1	2	5	138.5	2023-09-22 20:59:19.022995-03	\N
4038	Macaroni Salad	164	KFC	5	140	8	1	0	15	290	14	0	9	1	149	2023-09-22 20:59:19.022995-03	\N
4039	Mashed Potatoes	165	KFC	5	110	\N	0.5	0	0	330	17	1	0	2	108.5	2023-09-22 20:59:19.022995-03	\N
4040	Mashed Potatoes With Gravy	166	KFC	5	130	\N	1	0	0	520	20	1	0	3	128	2023-09-22 20:59:19.022995-03	\N
4041	Potato Salad	167	KFC	5	340	28	4.5	0	25	290	19	2	3	2	345.5	2023-09-22 20:59:19.022995-03	\N
4042	Secret Recipe Fries	168	KFC	5	320	15	2	0	0	1100	41	3	0	5	317	2023-09-22 20:59:19.022995-03	\N
4043	Sweet Kernel Corn	169	KFC	5	70	\N	0	0	0	0	16	2	2	2	70	2023-09-22 20:59:19.022995-03	\N
4044	BBQ Baked Beans (Family)	170	KFC	5	830	5	1	0	0	2810	148	31	63	47	847	2023-09-22 20:59:19.022995-03	\N
4045	Coleslaw (Family)	171	KFC	5	640	46	7	0	15	670	54	14	37	4	680	2023-09-22 20:59:19.022995-03	\N
4046	Corn on the Cob (Family)	172	KFC	5	280	2	0	0	0	15	67	8	11	9	282	2023-09-22 20:59:19.022995-03	\N
4047	Green Beans (Family)	173	KFC	5	80	0	0	0	0	930	15	9	3	4	79	2023-09-22 20:59:19.022995-03	\N
4048	Macaroni & Cheese (Family)	174	KFC	5	540	23	6	0	10	2220	66	5	8	18	536	2023-09-22 20:59:19.022995-03	\N
4049	Macaroni Salad (Family)	175	KFC	5	480	28	3.5	0	55	990	50	0	30	3	510.5	2023-09-22 20:59:19.022995-03	\N
4050	Mashed Potatoes (Family)	176	KFC	5	460	15	3	0	0	1410	72	6	0	9	454	2023-09-22 20:59:19.022995-03	\N
4051	Mashed Potatoes With Gravy (Family)	177	KFC	5	590	21	5	0	0	2590	88	6	1	12	584	2023-09-22 20:59:19.022995-03	\N
4052	Potato Salad (Family)	178	KFC	5	1200	98	16	0	80	1010	65	8	12	8	1220	2023-09-22 20:59:19.022995-03	\N
4053	Secret Recipe Fries (Family)	179	KFC	5	840	40	5	0	0	2890	108	9	0	13	832	2023-09-22 20:59:19.022995-03	\N
4054	Sweet Kernel Corn (Family)	180	KFC	5	280	\N	0	0	0	10	67	7	8	10	278	2023-09-22 20:59:19.022995-03	\N
4055	Chicken Littles	181	KFC	5	300	15	2.5	0	30	620	27	1	3	14	291.5	2023-09-22 20:59:19.022995-03	\N
4056	Chicken Littles – Buffalo	182	KFC	5	310	17	2.5	0	30	790	27	1	3	14	301.5	2023-09-22 20:59:19.022995-03	\N
4057	Chicken Littles – Honey BBQ	183	KFC	5	320	15	2.5	0	30	680	31	1	7	14	315.5	2023-09-22 20:59:19.022995-03	\N
4058	Chicken Littles – Nashville Hot	184	KFC	5	340	19	3	0	30	680	27	1	3	14	332	2023-09-22 20:59:19.022995-03	\N
4059	Classic Chicken Sandwich	185	KFC	5	650	35	4.5	0	90	1260	49	1	6	34	626.5	2023-09-22 20:59:19.022995-03	\N
4060	Crispy Colonel’s Sandwich	186	KFC	5	470	24	3.5	0	60	1170	39	\N	4	24	453.5	2023-09-22 20:59:19.022995-03	\N
4061	Crispy Colonel’s Sandwich – Buffalo	187	KFC	5	500	27	4	0	60	1500	39	\N	4	24	484	2023-09-22 20:59:19.022995-03	\N
4062	Crispy Colonel’s Sandwich – Honey BBQ	188	KFC	5	510	25	3.5	0	60	1290	48	\N	12	24	501.5	2023-09-22 20:59:19.022995-03	\N
4063	Crispy Colonel’s Sandwich – Nashville Hot	189	KFC	5	540	32	4.5	0	60	1290	40	\N	5	24	525.5	2023-09-22 20:59:19.022995-03	\N
4064	Crispy Twister®	190	KFC	5	630	34	7	0	70	1260	53	4	3	28	612	2023-09-22 20:59:19.022995-03	\N
4065	Honey BBQ Sandwich	191	KFC	5	350	\N	0.5	0	55	1350	55	2	22	24	348.5	2023-09-22 20:59:19.022995-03	\N
4066	Spicy Chicken Sandwich	192	Wendy’s	2	510	20	3.5	0	65	1030	54	4	6	29	491	2023-09-22 20:59:19.022995-03	\N
4067	Chicken Pot Pie	193	KFC	5	720	41	25	0	80	1750	60	7	5	26	724	2023-09-22 20:59:19.022995-03	\N
4068	KFC® Famous Bowl	194	KFC	5	740	35	6	0	45	2350	81	6	2	26	722	2023-09-22 20:59:19.022995-03	\N
4069	KFC® Famous Bowl – Snack Size	195	KFC	5	270	14	3.5	0	20	850	27	2	1	11	263.5	2023-09-22 20:59:19.022995-03	\N
4070	Caesar Side Salad	196	KFC	5	40	2	1	0	5	90	2	1	1	3	39	2023-09-22 20:59:19.022995-03	\N
4071	House Side Salad	197	KFC	5	15	0	0	0	0	10	3	2	2	1	16	2023-09-22 20:59:19.022995-03	\N
4072	Heinz Buttermilk Dressing	198	KFC	5	160	17	2	0	10	220	1	0	1	0	163	2023-09-22 20:59:19.022995-03	\N
4073	Hidden Valley The Original Ranch Fat Free Dressing	199	KFC	5	35	0	0	0	0	410	8	0	2	1	36	2023-09-22 20:59:19.022995-03	\N
4074	KFC® Creamy Parmesan Caesar Dressing	200	KFC	5	260	26	5	0	15	540	4	0	2	2	265	2023-09-22 20:59:19.022995-03	\N
4075	Marzetti Light Italian Dressing	201	KFC	5	15	\N	0	0	0	510	2	0	1	0	16	2023-09-22 20:59:19.022995-03	\N
4076	Parmesan Garlic Croutons	202	KFC	5	60	3	0	0	0	135	8	\N	0	2	58	2023-09-22 20:59:19.022995-03	\N
4077	Apple Turnover	203	KFC	5	230	10	2.5	0	0	140	32	\N	12	2	242.5	2023-09-22 20:59:19.022995-03	\N
4078	Café Valley Chocolate Chip Cake (1 Slice)	204	KFC	5	300	15	3	0	50	260	39	1	27	4	326	2023-09-22 20:59:19.022995-03	\N
4079	Café Valley Lemon Cake (1 Slice)	205	KFC	5	220	10	2	0	30	170	30	0	20	2	240	2023-09-22 20:59:19.022995-03	\N
4080	Café Valley Mini Chocolate Chip Cake	206	KFC	5	300	12	2.5	0	40	190	49	1	35	3	334.5	2023-09-22 20:59:19.022995-03	\N
4081	Café Valley Mini Lemon Cake	207	KFC	5	300	13	2.5	0	50	230	43	0	31	3	330.5	2023-09-22 20:59:19.022995-03	\N
4082	Chocolate Chip Cookie	208	McDonald’s	1	160	70	8	3.5	0	10	90	21	1	15	2	2023-09-22 20:59:19.022995-03	\N
4083	Oreo Cookies and Crème Pie	209	KFC	5	270	13	8	0	\N	210	35	1	24	3	299	2023-09-22 20:59:19.022995-03	\N
4084	Reese’s Peanut Butter Pie	210	KFC	5	300	17	9	0	\N	270	33	1	22	5	326	2023-09-22 20:59:19.022995-03	\N
4085	BBQ – Dipping Sauce Cup	211	KFC	5	45	0	0	0	0	150	11	0	11	0	56	2023-09-22 20:59:19.022995-03	\N
4086	Colonel’s Buttery Spread	212	KFC	5	35	4	1.5	0	0	35	0	0	0	0	36.5	2023-09-22 20:59:19.022995-03	\N
4087	Grape Jelly Packet	213	KFC	5	35	0	0	0	0	10	9	0	7	0	42	2023-09-22 20:59:19.022995-03	\N
4088	Hash Brown (V)	214	Taco Bell	4	160	100	12	1	0	0	270	13	2	0	1	2023-09-22 20:59:19.022995-03	\N
4089	Sausage Biscuit (Regular Size Biscuit)	215	McDonald’s	1	430	240	27	12	0	30	1080	34	2	2	11	2023-09-22 20:59:19.022995-03	\N
4090	Pan Pizza Slices Backyard BBQ Chicken Medium	216	Pizza Hut	3	270	10	4	0	25	450	33	2	6	11	\N	2023-09-22 20:59:19.022995-03	\N
4091	20 fl oz	217	Burger King	6	280	0	0	0	0	0	70	78	0	77	0	2023-09-22 20:59:19.022995-03	\N
4092	Pan Pizza Slices Pepperoni Personal Pan	218	Pizza Hut	3	150	7	2.5	0	15	310	17	1	2	6	\N	2023-09-22 20:59:19.022995-03	\N
4093	Pan Pizza Slices Pepperoni Medium	219	Pizza Hut	3	250	11	4.5	0	25	470	28	2	1	10	\N	2023-09-22 20:59:19.022995-03	\N
4094	Pan Pizza Slices Pepperoni Large	220	Pizza Hut	3	370	18	6	0	35	680	36	2	2	15	\N	2023-09-22 20:59:19.022995-03	\N
4095	Sausage Biscuit (Large Size Biscuit)	221	McDonald’s	1	480	280	31	13	0	30	1190	39	3	3	11	2023-09-22 20:59:19.022995-03	\N
4096	Southern Style Chicken Biscuit (Regular Size Biscuit)	222	McDonald’s	1	410	180	20	8	0	30	1180	41	2	3	17	2023-09-22 20:59:19.022995-03	\N
4097	Southern Style Chicken Biscuit (Large Size Biscuit)	223	McDonald’s	1	470	220	24	9	0	30	1290	46	3	4	17	2023-09-22 20:59:19.022995-03	\N
4098	Steak, Egg & Cheese Bagel	224	McDonald’s	1	660	300	33	12	1	300	1580	56	3	7	33	2023-09-22 20:59:19.022995-03	\N
4099	Bacon, Egg & Cheese McGriddles®	225	McDonald’s	1	420	160	18	8	0	240	1110	48	2	15	15	2023-09-22 20:59:19.022995-03	\N
4100	Sausage, Egg & Cheese McGriddles®	226	McDonald’s	1	560	290	32	12	0	265	1360	48	2	15	20	2023-09-22 20:59:19.022995-03	\N
4101	Sausage McGriddles®	227	McDonald’s	1	420	200	22	8	0	35	1030	44	2	15	11	2023-09-22 20:59:19.022995-03	\N
4102	Big Breakfast® (Regular Size Biscuit)	228	McDonald’s	1	740	430	48	17	0	555	1560	51	3	3	28	2023-09-22 20:59:19.022995-03	\N
4103	Big Breakfast® (Large Size Biscuit)	229	McDonald’s	1	800	470	52	18	0	555	1680	56	4	3	28	2023-09-22 20:59:19.022995-03	\N
4104	Big Breakfast with Hotcakes (Regular Size Biscuit)	230	McDonald’s	1	1090	510	56	19	0	575	2150	111	6	17	36	2023-09-22 20:59:19.022995-03	\N
4105	Big Breakfast with Hotcakes (Large Size Biscuit)	231	McDonald’s	1	1150	540	60	20	0	575	2260	116	7	17	36	2023-09-22 20:59:19.022995-03	\N
4106	Sausage Burrito	232	McDonald’s	1	300	140	16	7	0	115	830	26	1	2	12	2023-09-22 20:59:19.022995-03	\N
4107	McSkillet™ Burrito with Sausage	233	McDonald’s	1	610	320	36	14	0.5	410	1390	44	3	4	27	2023-09-22 20:59:19.022995-03	\N
4108	Chili, Small	234	Wendy’s	2	170	5	2	0	35	780	16	4	6	15	163	2023-09-22 20:59:19.022995-03	\N
4109	KFC® Livers	235	KFC	5	230	13	2.5	0	285	750	12	0	0	17	215.5	2023-09-22 20:59:19.022995-03	\N
4110	Premium Crispy Chicken Classic Sandwich	236	McDonald’s	1	510	200	22	3.5	0	45	990	56	3	10	24	2023-09-22 20:59:19.022995-03	\N
4111	Small French Fries	237	McDonald’s	1	230	100	11	1.5	0	0	160	29	3	0	3	2023-09-22 20:59:19.022995-03	\N
4112	Hotcakes and Sausage	238	McDonald’s	1	520	210	24	7	0	50	930	61	3	14	15	2023-09-22 20:59:19.022995-03	\N
4113	Whipped Margarine (1 pat)	239	McDonald’s	1	40	40	4.5	1.5	0	0	55	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4114	Hash Brown	240	Taco Bell	4	160	100	12	1	0	0	270	13	2	0	1	2023-09-22 20:59:19.022995-03	\N
4115	Grape Jam	241	McDonald’s	1	35	0	0	0	0	0	0	9	0	9	0	2023-09-22 20:59:19.022995-03	\N
4116	Strawberry Preserves	242	McDonald’s	1	35	0	0	0	0	0	0	9	0	9	0	2023-09-22 20:59:19.022995-03	\N
4117	Bacon, Egg & Cheese Bagel	243	McDonald’s	1	560	240	27	9	0.5	260	1300	56	3	7	24	2023-09-22 20:59:19.022995-03	\N
4118	Fruit & Maple Oatmeal	244	McDonald’s	1	290	40	4.5	2	0	10	160	57	5	32	5	2023-09-22 20:59:19.022995-03	\N
4119	Fruit & Maple Oatmeal without Brown Sugar	245	McDonald’s	1	260	40	4.5	2	0	10	115	48	5	18	5	2023-09-22 20:59:19.022995-03	\N
4120	Hamburger Happy Meal	246	McDonald’s	1	475	\N	16	\N	0	40	690	62	2	20	22	2023-09-22 20:59:19.022995-03	\N
4121	Hand Tossed Slices Pepperoni Small	247	Pizza Hut	3	130	5	2	0	10	260	16	1	\N	6	\N	2023-09-22 20:59:19.022995-03	\N
4122	4 Piece Chicken McNuggets Happy Meal	248	McDonald’s	1	395	\N	17	3.5	0	35	510	41	1	14	19	2023-09-22 20:59:19.022995-03	\N
4123	6 Piece Chicken McNuggets® Happy Meal	249	McDonald’s	1	475	\N	22	4.5	0	50	680	46	2	14	24	2023-09-22 20:59:19.022995-03	\N
4124	Fruit ‘n Yogurt Parfait (7 oz)	250	McDonald’s	1	160	20	2	1	0	5	85	31	1	21	4	2023-09-22 20:59:19.022995-03	\N
4125	Low Fat Caramel Dip	251	McDonald’s	1	70	5	0.5	0	0	5	35	15	0	9	0	2023-09-22 20:59:19.022995-03	\N
4126	Vanilla Reduced Fat Ice Cream Cone	252	McDonald’s	1	150	35	3.5	2	0	15	60	24	0	18	4	2023-09-22 20:59:19.022995-03	\N
4127	Kiddie Cone	253	McDonald’s	1	45	10	1	0.5	0	5	20	8	0	6	1	2023-09-22 20:59:19.022995-03	\N
4128	Strawberry Sundae	254	McDonald’s	1	280	60	6	4	0	25	95	49	1	45	6	2023-09-22 20:59:19.022995-03	\N
4129	Hot Caramel Sundae	255	McDonald’s	1	340	70	8	5	0	30	160	60	1	44	7	2023-09-22 20:59:19.022995-03	\N
4130	Hot Fudge Sundae	256	McDonald’s	1	330	90	10	7	0	25	180	54	2	48	8	2023-09-22 20:59:19.022995-03	\N
4131	29 fl oz	257	Burger King	6	290	0	0	0	0	0	85	105	0	105	0	2023-09-22 20:59:19.022995-03	\N
4132	Peanuts (for Sundaes)	258	McDonald’s	1	45	30	3.5	0.5	0	0	0	2	1	0	2	2023-09-22 20:59:19.022995-03	\N
4133	McFlurry® with M&M’S® Candies (12 fl oz cup)	259	McDonald’s	1	710	230	25	16	1	60	220	105	4	97	15	2023-09-22 20:59:19.022995-03	\N
4134	McFlurry® with OREO® Cookies (12 fl oz cup)	260	McDonald’s	1	580	170	19	10	1	50	320	89	3	73	13	2023-09-22 20:59:19.022995-03	\N
4135	Baked Hot Apple Pie	261	McDonald’s	1	250	110	13	7	0	0	170	32	4	13	2	2023-09-22 20:59:19.022995-03	\N
4136	Cinnamon Melts	262	McDonald’s	1	460	170	19	9	0	15	370	66	3	32	6	2023-09-22 20:59:19.022995-03	\N
4137	McDonaldland® Cookies	263	McDonald’s	1	260	70	8	2.5	0	0	300	43	1	13	4	2023-09-22 20:59:19.022995-03	\N
4138	Chocolate Chip Cookie	264	McDonald’s	1	160	70	8	3.5	0	10	90	21	1	15	2	2023-09-22 20:59:19.022995-03	\N
4139	Oatmeal Raisin Cookie	265	McDonald’s	1	150	50	6	2.5	0	10	135	22	1	13	2	2023-09-22 20:59:19.022995-03	\N
4140	Sugar Cookie	266	McDonald’s	1	160	60	7	3	0	5	120	21	0	11	2	2023-09-22 20:59:19.022995-03	\N
4141	Apple Dippers with Low Fat Caramel Dip	267	McDonald’s	1	100	5	0.5	0	0	5	35	23	0	15	0	2023-09-22 20:59:19.022995-03	\N
4142	Chocolate McCafé® Shake (12 fl oz cup)	268	McDonald’s	1	580	150	17	10	1	50	240	94	1	77	11	2023-09-22 20:59:19.022995-03	\N
4143	Chocolate McCafé® Shake (16 fl oz cup)	269	McDonald’s	1	720	180	20	12	1	60	300	119	1	98	15	2023-09-22 20:59:19.022995-03	\N
4144	Chocolate McCafé® Shake (22 fl oz cup)	270	McDonald’s	1	880	220	24	15	1.5	75	370	147	1	121	18	2023-09-22 20:59:19.022995-03	\N
4145	Chocolate Triple Thick® Shake (12 fl oz cup)	271	McDonald’s	1	440	90	10	6	0.5	40	190	76	1	63	10	2023-09-22 20:59:19.022995-03	\N
4146	Chocolate Triple Thick® Shake (16 fl oz cup)	272	McDonald’s	1	580	120	14	8	1	50	250	102	1	84	13	2023-09-22 20:59:19.022995-03	\N
4147	Chocolate Triple Thick® Shake (21 fl oz cup)	273	McDonald’s	1	770	160	18	11	1	70	330	134	1	111	18	2023-09-22 20:59:19.022995-03	\N
4148	Chocolate Triple Thick® Shake (32 fl oz cup)	274	McDonald’s	1	1160	240	27	16	2	100	510	203	2	168	27	2023-09-22 20:59:19.022995-03	\N
4149	Snack Size McFlurry® with M&M’S® Candies	275	McDonald’s	1	430	140	16	10	0.5	35	130	64	2	59	9	2023-09-22 20:59:19.022995-03	\N
4150	Snack Size McFlurry® with OREO® Cookies	276	McDonald’s	1	340	100	12	6	0	30	200	53	2	43	8	2023-09-22 20:59:19.022995-03	\N
4151	Strawberry McCafé® Shake (12 fl oz cup)	277	McDonald’s	1	570	150	17	10	1	50	170	92	0	79	11	2023-09-22 20:59:19.022995-03	\N
4152	Strawberry McCafé® Shake (16 fl oz cup)	278	McDonald’s	1	710	180	20	12	1	65	210	116	0	100	14	2023-09-22 20:59:19.022995-03	\N
4153	Strawberry McCafé® Shake (22 fl oz cup)	279	McDonald’s	1	860	220	24	15	1.5	75	260	144	0	124	18	2023-09-22 20:59:19.022995-03	\N
4154	Strawberry Triple Thick® Shake (12 fl oz cup)	280	McDonald’s	1	420	90	10	6	0.5	40	130	73	0	63	10	2023-09-22 20:59:19.022995-03	\N
4155	Strawberry Triple Thick® Shake (16 fl oz cup)	281	McDonald’s	1	560	120	13	8	1	50	170	97	0	84	13	2023-09-22 20:59:19.022995-03	\N
4156	Strawberry Triple Thick® Shake (21 fl oz cup)	282	McDonald’s	1	740	160	18	11	1	70	230	128	0	111	17	2023-09-22 20:59:19.022995-03	\N
4157	Strawberry Triple Thick® Shake (32 fl oz cup)	283	McDonald’s	1	1110	240	26	16	2	100	350	194	0	168	25	2023-09-22 20:59:19.022995-03	\N
4158	Vanilla McCafé® Shake (12 fl oz cup)	284	McDonald’s	1	540	150	16	10	1	45	170	88	0	64	10	2023-09-22 20:59:19.022995-03	\N
4159	Vanilla McCafé® Shake (16 fl oz cup)	285	McDonald’s	1	680	180	20	12	1	60	220	111	0	82	14	2023-09-22 20:59:19.022995-03	\N
4160	Vanilla McCafé® Shake (22 fl oz cup)	286	McDonald’s	1	830	210	24	14	1.5	75	270	138	0	103	17	2023-09-22 20:59:19.022995-03	\N
4161	Vanilla Triple Thick Shake® (32 fl oz cup)	287	McDonald’s	1	1110	240	26	16	2	100	370	193	0	145	25	2023-09-22 20:59:19.022995-03	\N
4162	Vanilla Triple Thick® Shake (12 fl oz cup)	288	McDonald’s	1	420	90	10	6	0.5	40	140	72	0	54	9	2023-09-22 20:59:19.022995-03	\N
4163	Vanilla Triple Thick® Shake (16 fl oz cup)	289	McDonald’s	1	550	120	13	8	1	50	190	96	0	72	13	2023-09-22 20:59:19.022995-03	\N
4164	Vanilla Triple Thick® Shake (21 fl oz cup)	290	McDonald’s	1	740	160	18	11	1	70	250	128	0	96	17	2023-09-22 20:59:19.022995-03	\N
4165	1% Low Fat Milk Jug	291	McDonald’s	1	100	20	2.5	1.5	0	10	125	12	0	12	8	2023-09-22 20:59:19.022995-03	\N
4166	1% Low Fat Chocolate Milk Jug	292	McDonald’s	1	170	25	3	1.5	0	5	150	26	1	25	9	2023-09-22 20:59:19.022995-03	\N
4167	Minute Maid® 100% Apple Juice Box	293	McDonald’s	1	100	0	0	0	0	0	15	23	0	22	0	2023-09-22 20:59:19.022995-03	\N
4168	Dasani® Water	294	McDonald’s	1	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4169	Minute Maid® Orange Juice (Small)	295	McDonald’s	1	150	0	0	0	0	0	0	30	0	30	2	2023-09-22 20:59:19.022995-03	\N
4170	Minute Maid® Orange Juice (Medium)	296	McDonald’s	1	190	0	0	0	0	0	0	39	0	39	3	2023-09-22 20:59:19.022995-03	\N
4171	Minute Maid® Orange Juice (Large)	297	McDonald’s	1	280	0	0	0	0	0	5	58	0	58	4	2023-09-22 20:59:19.022995-03	\N
4172	Coca-Cola® Classic (Child)	298	McDonald’s	1	110	0	0	0	0	0	5	29	0	29	0	2023-09-22 20:59:19.022995-03	\N
4173	Coca-Cola® Classic (Small)	299	McDonald’s	1	150	0	0	0	0	0	10	40	0	40	0	2023-09-22 20:59:19.022995-03	\N
4174	Coca-Cola® Classic (Medium)	300	McDonald’s	1	210	0	0	0	0	0	15	58	0	58	0	2023-09-22 20:59:19.022995-03	\N
4175	Coca-Cola® Classic (Large)	301	McDonald’s	1	310	0	0	0	0	0	20	86	0	86	0	2023-09-22 20:59:19.022995-03	\N
4176	Diet Coke® (Child)	302	McDonald’s	1	0	0	0	0	0	0	15	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4177	Diet Coke® (Small)	303	McDonald’s	1	0	0	0	0	0	0	20	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4178	Diet Coke® (Medium)	304	McDonald’s	1	0	0	0	0	0	0	30	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4179	Diet Coke® (Large)	305	McDonald’s	1	0	0	0	0	0	0	45	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4180	Sprite® (Child)	306	McDonald’s	1	110	0	0	0	0	0	30	28	0	28	0	2023-09-22 20:59:19.022995-03	\N
4181	Sprite® (Small)	307	McDonald’s	1	150	0	0	0	0	0	40	39	0	39	0	2023-09-22 20:59:19.022995-03	\N
4182	Sprite® (Medium)	308	McDonald’s	1	210	0	0	0	0	0	55	56	0	56	0	2023-09-22 20:59:19.022995-03	\N
4183	Sprite® (Large)	309	McDonald’s	1	310	0	0	0	0	0	80	83	0	83	0	2023-09-22 20:59:19.022995-03	\N
4184	Hi-C® Orange Lavaburst (Child)	310	McDonald’s	1	120	0	0	0	0	0	0	32	0	32	0	2023-09-22 20:59:19.022995-03	\N
4185	Hi-C® Orange Lavaburst (Small)	311	McDonald’s	1	160	0	0	0	0	0	5	44	0	44	0	2023-09-22 20:59:19.022995-03	\N
4186	Hi-C® Orange Lavaburst (Medium)	312	McDonald’s	1	240	0	0	0	0	0	10	64	0	64	0	2023-09-22 20:59:19.022995-03	\N
4187	Hi-C® Orange Lavaburst (Large)	313	McDonald’s	1	350	0	0	0	0	0	10	94	0	94	0	2023-09-22 20:59:19.022995-03	\N
4188	POWERade® Mountain Blast (Child)	314	McDonald’s	1	70	0	0	0	0	0	65	20	0	16	0	2023-09-22 20:59:19.022995-03	\N
4189	POWERade® Mountain Blast (Small)	315	McDonald’s	1	100	0	0	0	0	0	85	27	0	21	0	2023-09-22 20:59:19.022995-03	\N
4190	POWERade® Mountain Blast (Medium)	316	McDonald’s	1	150	0	0	0	0	0	130	39	0	31	0	2023-09-22 20:59:19.022995-03	\N
4191	Soft Serve Cone	317	Burger King	6	190	40	4.5	3	0	20	150	32	0	24	5	2023-09-22 20:59:19.022995-03	\N
4192	POWERade® Mountain Blast (Large)	318	McDonald’s	1	220	0	0	0	0	0	190	58	0	46	0	2023-09-22 20:59:19.022995-03	\N
4193	Iced Tea (Child)	319	McDonald’s	1	0	0	0	0	0	0	5	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4194	Iced Tea (Small)	320	McDonald’s	1	0	0	0	0	0	0	10	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4195	Iced Tea (Medium)	321	McDonald’s	1	0	0	0	0	0	0	15	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4196	Iced Tea (Large)	322	McDonald’s	1	0	0	0	0	0	0	20	1	0	0	0	2023-09-22 20:59:19.022995-03	\N
4197	Coffee (Small)	323	McDonald’s	1	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4198	Coffee (Large)	324	McDonald’s	1	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4199	Coffee Cream	325	McDonald’s	1	20	20	2	1.5	0	10	15	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4200	Sugar Packet	326	McDonald’s	1	15	0	0	0	0	0	0	4	0	4	0	2023-09-22 20:59:19.022995-03	\N
4201	EQUAL® 0\nCalorie Sweetener	327	McDonald’s	1	0	0	0	0	0	0	0	1	0	1	0	2023-09-22 20:59:19.022995-03	\N
4202	16 fl oz	328	Burger King	6	190	0	0	0	0	0	60	52	0	51	0	2023-09-22 20:59:19.022995-03	\N
4203	SPLENDA® No\nCalorie Sweetener	329	McDonald’s	1	0	0	0	0	0	0	0	1	0	1	0	2023-09-22 20:59:19.022995-03	\N
4204	Iced Coffee– Caramel (Small)	330	McDonald’s	1	130	50	5	3.5	0	20	80	21	0	20	1	2023-09-22 20:59:19.022995-03	\N
4205	Iced Coffee– Caramel (Medium)	331	McDonald’s	1	190	70	8	5	0	30	115	27	0	27	2	2023-09-22 20:59:19.022995-03	\N
4206	Iced Coffee– Caramel (Large)	332	McDonald’s	1	270	100	11	7	0	40	160	41	0	41	2	2023-09-22 20:59:19.022995-03	\N
4207	Iced Coffee– Hazelnut (Small)	333	McDonald’s	1	130	50	5	3.5	0	20	40	21	0	21	1	2023-09-22 20:59:19.022995-03	\N
4208	Iced Coffee– Hazelnut (Medium)	334	McDonald’s	1	190	70	8	5	0	30	60	29	0	29	2	2023-09-22 20:59:19.022995-03	\N
4209	Iced Coffee– Hazelnut (Large)	335	McDonald’s	1	270	100	11	7	0	40	85	43	0	43	2	2023-09-22 20:59:19.022995-03	\N
4210	Iced Coffee– Regular (Small)	336	McDonald’s	1	140	50	5	3.5	0	20	40	22	0	22	1	2023-09-22 20:59:19.022995-03	\N
4211	Iced Coffee– Regular (Medium)	337	McDonald’s	1	200	70	8	5	0	30	60	30	0	30	2	2023-09-22 20:59:19.022995-03	\N
4212	Iced Coffee– Regular (Large)	338	McDonald’s	1	280	100	11	7	0	40	85	45	0	45	2	2023-09-22 20:59:19.022995-03	\N
4213	Iced Coffee– Vanilla (Small)	339	McDonald’s	1	130	50	5	3.5	0	20	40	21	0	21	1	2023-09-22 20:59:19.022995-03	\N
4214	Iced Coffee– Vanilla (Medium)	340	McDonald’s	1	190	70	8	5	0	30	60	29	0	28	2	2023-09-22 20:59:19.022995-03	\N
4215	Iced Coffee– Vanilla (Large)	341	McDonald’s	1	270	100	11	7	0	40	80	43	0	43	2	2023-09-22 20:59:19.022995-03	\N
4216	Iced Coffee with Sugar Free Vanilla Syrup (Small)	342	McDonald’s	1	60	50	5	3.5	0	20	70	8	0	1	1	2023-09-22 20:59:19.022995-03	\N
4217	Iced Coffee with Sugar Free Vanilla Syrup (Medium)	343	McDonald’s	1	90	70	8	5	0	30	100	11	0	2	2	2023-09-22 20:59:19.022995-03	\N
4218	Iced Coffee with Sugar Free Vanilla Syrup (Large)	344	McDonald’s	1	120	100	11	7	0	40	140	16	0	2	2	2023-09-22 20:59:19.022995-03	\N
4219	Sweet Tea (Child)	345	McDonald’s	1	110	0	0	0	0	0	5	27	0	27	0	2023-09-22 20:59:19.022995-03	\N
4220	Sweet Tea (Large)	346	McDonald’s	1	280	0	0	0	0	0	15	69	0	69	1	2023-09-22 20:59:19.022995-03	\N
4221	Sweet Tea (Medium)	347	McDonald’s	1	180	0	0	0	0	0	10	45	0	45	1	2023-09-22 20:59:19.022995-03	\N
4222	Sweet Tea (Small)	348	McDonald’s	1	150	0	0	0	0	0	10	36	0	36	1	2023-09-22 20:59:19.022995-03	\N
4223	Nonfat Cappuccino (Small)	349	McDonald’s	1	60	0	0	0	0	5	85	9	0	9	6	2023-09-22 20:59:19.022995-03	\N
4224	Nonfat Cappuccino (Medium)	350	McDonald’s	1	80	0	0	0	0	5	110	12	0	12	8	2023-09-22 20:59:19.022995-03	\N
4225	Nonfat Cappuccino (Large)	351	McDonald’s	1	90	0	0	0	0	5	130	13	0	13	9	2023-09-22 20:59:19.022995-03	\N
4226	Nonfat Latte (Small)	352	McDonald’s	1	90	0	0	0	0	5	115	13	0	13	9	2023-09-22 20:59:19.022995-03	\N
4227	Nonfat Latte (Medium)	353	McDonald’s	1	110	0	0	0	0	5	140	15	0	15	10	2023-09-22 20:59:19.022995-03	\N
4228	Nonfat Latte (Large)	354	McDonald’s	1	120	0	0	0	0	5	160	18	0	18	12	2023-09-22 20:59:19.022995-03	\N
4229	Nonfat Caramel Cappuccino (Small)	355	McDonald’s	1	150	0	0	0	0	5	120	33	0	32	5	2023-09-22 20:59:19.022995-03	\N
4230	Nonfat Caramel Cappuccino (Medium)	356	McDonald’s	1	190	0	0	0	0	5	150	41	0	41	6	2023-09-22 20:59:19.022995-03	\N
4231	Nonfat Caramel Cappuccino (Large)	357	McDonald’s	1	230	0	0	0	0	5	180	49	0	49	7	2023-09-22 20:59:19.022995-03	\N
4232	Nonfat Caramel Latte (Small)	358	McDonald’s	1	170	0	0	0	0	5	150	36	0	36	7	2023-09-22 20:59:19.022995-03	\N
4233	Nonfat Caramel Latte (Medium)	359	McDonald’s	1	220	0	0	0	0	5	180	45	0	45	9	2023-09-22 20:59:19.022995-03	\N
4234	Nonfat Caramel Latte (Large)	360	McDonald’s	1	260	0	0	0	0	5	220	53	0	53	10	2023-09-22 20:59:19.022995-03	\N
4235	Nonfat Hazelnut Cappuccino (Small)	361	McDonald’s	1	150	0	0	0	0	5	70	34	0	34	5	2023-09-22 20:59:19.022995-03	\N
4236	Nonfat Hazelnut Cappuccino (Medium)	362	McDonald’s	1	190	0	0	0	0	5	90	43	0	43	6	2023-09-22 20:59:19.022995-03	\N
4237	Nonfat Hazelnut Cappuccino (Large)	363	McDonald’s	1	230	0	0	0	0	5	100	51	0	51	7	2023-09-22 20:59:19.022995-03	\N
4238	Nonfat Hazelnut Latte (Small)	364	McDonald’s	1	180	0	0	0	0	5	95	37	0	37	7	2023-09-22 20:59:19.022995-03	\N
4239	Nonfat Hazelnut Latte (Medium)	365	McDonald’s	1	220	0	0	0	0	5	115	46	0	46	9	2023-09-22 20:59:19.022995-03	\N
4240	Nonfat Hazelnut Latte (Large)	366	McDonald’s	1	260	0	0	0	0	5	135	55	0	55	10	2023-09-22 20:59:19.022995-03	\N
4241	Nonfat Vanilla Cappuccino (Small)	367	McDonald’s	1	150	0	0	0	0	5	70	34	0	34	5	2023-09-22 20:59:19.022995-03	\N
4242	Nonfat Vanilla Cappuccino (Medium)	368	McDonald’s	1	190	0	0	0	0	5	90	42	0	42	6	2023-09-22 20:59:19.022995-03	\N
4243	Nonfat Vanilla Cappuccino (Large)	369	McDonald’s	1	230	0	0	0	0	5	100	51	0	51	7	2023-09-22 20:59:19.022995-03	\N
4244	Nonfat Vanilla Latte (Small)	370	McDonald’s	1	180	0	0	0	0	5	95	37	0	37	7	2023-09-22 20:59:19.022995-03	\N
4245	Nonfat Vanilla Latte (Medium)	371	McDonald’s	1	220	0	0	0	0	5	115	46	0	46	9	2023-09-22 20:59:19.022995-03	\N
4246	Nonfat Vanilla Latte (Large)	372	McDonald’s	1	260	0	0	0	0	5	135	55	0	55	10	2023-09-22 20:59:19.022995-03	\N
4247	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Small)	373	McDonald’s	1	50	0	0	0	0	5	100	15	0	8	5	2023-09-22 20:59:19.022995-03	\N
4248	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Medium)	374	McDonald’s	1	70	0	0	0	0	5	130	19	0	10	7	2023-09-22 20:59:19.022995-03	\N
4249	Dutch Apple Pie	375	Burger King	6	340	130	14	6	0	0	310	51	1	25	3	2023-09-22 20:59:19.022995-03	\N
4250	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Large)	376	McDonald’s	1	80	0	0	0	0	5	150	22	0	11	8	2023-09-22 20:59:19.022995-03	\N
4251	Nonfat Latte with Sugar Free Vanilla Syrup (Small)	377	McDonald’s	1	80	0	0	0	0	5	130	18	0	11	7	2023-09-22 20:59:19.022995-03	\N
4252	Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	378	McDonald’s	1	90	0	0	0	0	5	160	22	0	13	9	2023-09-22 20:59:19.022995-03	\N
4253	Nonfat Latte with Sugar Free Vanilla Syrup (Large)	379	McDonald’s	1	110	0	0	0	0	5	190	27	0	15	11	2023-09-22 20:59:19.022995-03	\N
4254	Mocha with Nonfat Milk (Small)	380	McDonald’s	1	240	45	5	3	0	5	130	41	0	34	7	2023-09-22 20:59:19.022995-03	\N
4255	Mocha with Nonfat Milk (Medium)	381	McDonald’s	1	280	50	6	3.5	0	10	160	50	0	42	8	2023-09-22 20:59:19.022995-03	\N
4256	20 fl oz	382	Burger King	6	0	0	0	0	0	0	85	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4257	Mocha with Nonfat Milk (Large)	383	McDonald’s	1	330	50	6	3.5	0	10	190	58	0	50	10	2023-09-22 20:59:19.022995-03	\N
4258	Hot Chocolate with Nonfat Milk (Small)	384	McDonald’s	1	250	45	5	3	0	10	140	43	0	37	8	2023-09-22 20:59:19.022995-03	\N
4259	Hot Chocolate with Nonfat Milk (Medium)	385	McDonald’s	1	310	50	6	3.5	0	10	190	55	0	47	11	2023-09-22 20:59:19.022995-03	\N
4260	Hot Chocolate with Nonfat Milk (Large)	386	McDonald’s	1	390	50	6	3.5	0	10	250	68	0	59	16	2023-09-22 20:59:19.022995-03	\N
4261	Iced Nonfat Latte (Small)	387	McDonald’s	1	50	0	0	0	0	5	70	7	0	7	5	2023-09-22 20:59:19.022995-03	\N
4262	Iced Nonfat Latte (Medium)	388	McDonald’s	1	60	0	0	0	0	5	90	9	0	9	6	2023-09-22 20:59:19.022995-03	\N
4263	Iced Nonfat Latte (Large)	389	McDonald’s	1	70	0	0	0	0	5	105	11	0	11	7	2023-09-22 20:59:19.022995-03	\N
4264	Iced Nonfat Caramel Latte (Small)	390	McDonald’s	1	140	0	0	0	0	0	105	30	0	30	3	2023-09-22 20:59:19.022995-03	\N
4265	Iced Nonfat Caramel Latte (Medium)	391	McDonald’s	1	150	0	0	0	0	5	120	32	0	32	5	2023-09-22 20:59:19.022995-03	\N
4266	Iced Nonfat Caramel Latte (Large)	392	McDonald’s	1	190	0	0	0	0	5	150	40	0	40	6	2023-09-22 20:59:19.022995-03	\N
4267	Iced Nonfat Hazelnut Latte (Small)	393	McDonald’s	1	140	0	0	0	0	0	50	32	0	32	3	2023-09-22 20:59:19.022995-03	\N
4268	Iced Nonfat Hazelnut Latte (Medium)	394	McDonald’s	1	150	0	0	0	0	5	70	33	0	33	5	2023-09-22 20:59:19.022995-03	\N
4269	Iced Nonfat Hazelnut Latte (Large)	395	McDonald’s	1	190	0	0	0	0	5	80	42	0	42	6	2023-09-22 20:59:19.022995-03	\N
4270	Iced Nonfat Vanilla Latte (Small)	396	McDonald’s	1	140	0	0	0	0	0	50	31	0	31	3	2023-09-22 20:59:19.022995-03	\N
4271	Iced Nonfat Vanilla Latte (Medium)	397	McDonald’s	1	150	0	0	0	0	5	70	33	0	33	5	2023-09-22 20:59:19.022995-03	\N
4272	Iced Nonfat Vanilla Latte (Large)	398	McDonald’s	1	190	0	0	0	0	5	85	41	0	41	6	2023-09-22 20:59:19.022995-03	\N
4273	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Small)	399	McDonald’s	1	40	0	0	0	0	0	85	13	0	5	4	2023-09-22 20:59:19.022995-03	\N
4274	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	400	McDonald’s	1	50	0	0	0	0	5	100	14	0	6	5	2023-09-22 20:59:19.022995-03	\N
4275	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Large)	401	McDonald’s	1	60	0	0	0	0	5	130	19	0	8	6	2023-09-22 20:59:19.022995-03	\N
4276	Iced Mocha with Nonfat Milk (Medium)	402	McDonald’s	1	270	70	8	4.5	0	10	140	43	0	35	7	2023-09-22 20:59:19.022995-03	\N
4277	Iced Nonfat Caramel Mocha (Large)	403	McDonald’s	1	300	60	6	4	0	10	230	49	0	45	11	2023-09-22 20:59:19.022995-03	\N
4278	Iced Nonfat Caramel Mocha (Medium)	404	McDonald’s	1	240	60	6	4	0	10	190	37	0	34	9	2023-09-22 20:59:19.022995-03	\N
4279	Iced Nonfat Caramel Mocha (Small)	405	McDonald’s	1	200	50	6	4	0	10	140	29	0	26	6	2023-09-22 20:59:19.022995-03	\N
4280	Nonfat Caramel Mocha (Large)	406	McDonald’s	1	280	35	4	2.5	0	10	260	49	0	46	12	2023-09-22 20:59:19.022995-03	\N
4281	Nonfat Caramel Mocha (Medium)	407	McDonald’s	1	240	35	4	2.5	0	5	200	41	0	38	9	2023-09-22 20:59:19.022995-03	\N
4282	Nonfat Caramel Mocha (Small)	408	McDonald’s	1	200	35	4	2.5	0	5	170	34	0	31	8	2023-09-22 20:59:19.022995-03	\N
4283	Cappuccino (Small)	409	McDonald’s	1	120	60	7	4	0	20	85	9	0	9	6	2023-09-22 20:59:19.022995-03	\N
4284	Cappuccino (Medium)	410	McDonald’s	1	140	70	8	4.5	0	25	105	11	0	11	8	2023-09-22 20:59:19.022995-03	\N
4285	Cappuccino (Large)	411	McDonald’s	1	180	90	10	6	0	30	130	13	0	13	9	2023-09-22 20:59:19.022995-03	\N
4286	Latte (Small) 	412	McDonald’s	1	150	70	8	4.5	0	25	105	11	0	11	8	2023-09-22 20:59:19.022995-03	\N
4287	Latte (Medium)	413	McDonald’s	1	180	90	10	6	0	30	130	13	0	13	10	2023-09-22 20:59:19.022995-03	\N
4288	Latte (Large)	414	McDonald’s	1	210	100	11	7	0	35	150	16	0	16	11	2023-09-22 20:59:19.022995-03	\N
4289	40 fl oz	415	Burger King	6	240	0	0	0	0	0	0	71	0	71	0	2023-09-22 20:59:19.022995-03	\N
4290	Caramel Cappuccino (Small)	416	McDonald’s	1	200	45	5	3	0	15	125	32	0	32	5	2023-09-22 20:59:19.022995-03	\N
4291	Caramel Cappuccino (Medium)	417	McDonald’s	1	240	50	6	3.5	0	20	150	41	0	40	6	2023-09-22 20:59:19.022995-03	\N
4292	Caramel Cappuccino (Large)	418	McDonald’s	1	290	70	8	4.5	0	25	190	49	0	49	8	2023-09-22 20:59:19.022995-03	\N
4293	Caramel Latte (Small)	419	McDonald’s	1	230	60	7	4	0	20	140	35	0	35	7	2023-09-22 20:59:19.022995-03	\N
4294	Caramel Latte (Medium)	420	McDonald’s	1	280	70	8	4.5	0	25	170	43	0	43	8	2023-09-22 20:59:19.022995-03	\N
4295	Caramel Latte (Large)	421	McDonald’s	1	330	80	9	5	0	30	210	52	0	51	9	2023-09-22 20:59:19.022995-03	\N
4296	Hazelnut Cappuccino (Small)	422	McDonald’s	1	200	45	5	3	0	15	70	34	0	34	5	2023-09-22 20:59:19.022995-03	\N
4297	Hazelnut Cappuccino (Medium)	423	McDonald’s	1	240	50	6	3.5	0	20	85	42	0	42	6	2023-09-22 20:59:19.022995-03	\N
4298	Hazelnut Cappuccino (Large)	424	McDonald’s	1	290	70	8	4.5	0	25	105	51	0	51	7	2023-09-22 20:59:19.022995-03	\N
4299	Hazelnut Latte (Small)	425	McDonald’s	1	230	60	7	4	0	20	90	36	0	36	7	2023-09-22 20:59:19.022995-03	\N
4300	Hazelnut Latte (Medium)	426	McDonald’s	1	280	70	8	4.5	0	25	110	45	0	45	8	2023-09-22 20:59:19.022995-03	\N
4301	Hazelnut Latte (Large)	427	McDonald’s	1	330	80	9	5	0	30	130	53	0	53	9	2023-09-22 20:59:19.022995-03	\N
4302	Vanilla Cappuccino (Small)	428	McDonald’s	1	200	45	5	3	0	15	70	34	0	34	5	2023-09-22 20:59:19.022995-03	\N
4303	Vanilla Cappuccino (Medium)	429	McDonald’s	1	240	50	6	3.5	0	20	85	42	0	42	6	2023-09-22 20:59:19.022995-03	\N
4304	Vanilla Cappuccino (Large)	430	McDonald’s	1	290	70	8	4.5	0	25	105	51	0	51	7	2023-09-22 20:59:19.022995-03	\N
4305	Vanilla Latte (Small)	431	McDonald’s	1	230	60	7	4	0	20	90	36	0	36	7	2023-09-22 20:59:19.022995-03	\N
4306	Vanilla Latte (Medium)	432	McDonald’s	1	280	70	8	4.5	0	25	110	44	0	44	8	2023-09-22 20:59:19.022995-03	\N
4307	Vanilla Latte (Large)	433	McDonald’s	1	330	80	9	5	0	30	130	53	0	53	9	2023-09-22 20:59:19.022995-03	\N
4308	Cappuccino with Sugar Free Vanilla Syrup (Small)	434	McDonald’s	1	100	50	5	3	0	15	105	15	0	7	5	2023-09-22 20:59:19.022995-03	\N
4309	Cappuccino with Sugar Free Vanilla Syrup (Medium)	435	McDonald’s	1	120	60	6	3.5	0	20	130	18	0	9	6	2023-09-22 20:59:19.022995-03	\N
4310	Cappuccino with Sugar Free Vanilla Syrup (Large)	436	McDonald’s	1	150	70	8	4.5	0	25	160	22	0	11	8	2023-09-22 20:59:19.022995-03	\N
4311	Latte with Sugar Free Vanilla Syrup (Small)	437	McDonald’s	1	130	60	7	4	0	20	125	17	0	10	7	2023-09-22 20:59:19.022995-03	\N
4312	Nacho Fries	438	Taco Bell	4	320	160	18	1.5	0	\N	630	35	4	2	4	2023-09-22 20:59:19.022995-03	\N
4313	Latte with Sugar Free Vanilla Syrup (Medium)	439	McDonald’s	1	160	70	8	5	0	25	150	21	0	11	8	2023-09-22 20:59:19.022995-03	\N
4314	Latte with Sugar Free Vanilla Syrup (Large)	440	McDonald’s	1	180	90	10	6	0	30	180	25	0	13	10	2023-09-22 20:59:19.022995-03	\N
4315	Mocha (Small)	441	McDonald’s	1	280	100	11	6	0	20	125	40	0	33	6	2023-09-22 20:59:19.022995-03	\N
4316	Mocha (Medium)	442	McDonald’s	1	330	110	12	7	0	25	150	48	0	41	7	2023-09-22 20:59:19.022995-03	\N
4317	Mocha (Large)	443	McDonald’s	1	400	130	14	8	0.5	30	190	58	0	49	10	2023-09-22 20:59:19.022995-03	\N
4318	Hot Chocolate (Small)	444	McDonald’s	1	300	110	12	7	0	25	135	41	0	35	8	2023-09-22 20:59:19.022995-03	\N
4319	Hot Chocolate (Medium)	445	McDonald’s	1	380	130	15	9	0.5	30	170	53	0	45	10	2023-09-22 20:59:19.022995-03	\N
4320	Hot Chocolate (Large)	446	McDonald’s	1	460	160	18	10	0.5	40	220	63	0	54	13	2023-09-22 20:59:19.022995-03	\N
4321	Iced Latte (Small)	447	McDonald’s	1	80	40	4.5	2.5	0	15	65	6	0	6	4	2023-09-22 20:59:19.022995-03	\N
4322	Iced Latte (Medium)	448	McDonald’s	1	100	50	6	3.5	0	15	80	8	0	8	6	2023-09-22 20:59:19.022995-03	\N
4323	Iced Latte (Large)	449	McDonald’s	1	140	70	8	4.5	0	25	105	10	0	10	7	2023-09-22 20:59:19.022995-03	\N
4324	Iced Caramel Latte (Small)	450	McDonald’s	1	160	25	3	1.5	0	10	100	29	0	29	3	2023-09-22 20:59:19.022995-03	\N
4325	Iced Caramel Latte (Medium)	451	McDonald’s	1	180	40	4.5	2.5	0	15	120	31	0	31	4	2023-09-22 20:59:19.022995-03	\N
4326	Iced Caramel Latte (Large)	452	McDonald’s	1	230	50	6	3.5	0	15	150	40	0	40	6	2023-09-22 20:59:19.022995-03	\N
4327	Iced Hazelnut Latte (Small)	453	McDonald’s	1	160	25	3	1.5	0	10	45	31	0	31	3	2023-09-22 20:59:19.022995-03	\N
4328	Iced Hazelnut Latte (Medium)	454	McDonald’s	1	180	40	4.5	2.5	0	15	65	33	0	33	4	2023-09-22 20:59:19.022995-03	\N
4329	Iced Hazelnut Latte (Large)	455	McDonald’s	1	230	50	6	3.5	0	15	85	41	0	41	6	2023-09-22 20:59:19.022995-03	\N
4330	Iced Vanilla Latte (Small)	456	McDonald’s	1	160	25	3	1.5	0	10	45	31	0	31	3	2023-09-22 20:59:19.022995-03	\N
4331	Iced Vanilla Latte (Medium)	457	McDonald’s	1	190	40	4.5	2.5	0	15	70	33	0	33	5	2023-09-22 20:59:19.022995-03	\N
4332	Iced Vanilla Latte (Large)	458	McDonald’s	1	230	50	6	3.5	0	15	85	41	0	41	6	2023-09-22 20:59:19.022995-03	\N
4333	Iced Latte with Sugar Free Vanilla Syrup (Small)	459	McDonald’s	1	60	30	3	2	0	10	80	12	0	4	3	2023-09-22 20:59:19.022995-03	\N
4334	Iced Latte with Sugar Free Vanilla Syrup (Medium)	460	McDonald’s	1	90	40	5	3	0	15	105	14	0	6	5	2023-09-22 20:59:19.022995-03	\N
4335	Iced Latte with Sugar Free Vanilla Syrup (Large)	461	McDonald’s	1	110	50	6	3.5	0	15	130	19	0	8	6	2023-09-22 20:59:19.022995-03	\N
4336	Iced Mocha (Medium)	462	McDonald’s	1	310	120	13	8	0	25	140	42	0	35	7	2023-09-22 20:59:19.022995-03	\N
4337	Caramel Mocha (Large)	463	McDonald’s	1	360	130	14	8	0.5	35	220	47	0	46	10	2023-09-22 20:59:19.022995-03	\N
4338	Caramel Mocha (Medium)	464	McDonald’s	1	290	100	12	7	0	25	180	39	0	38	8	2023-09-22 20:59:19.022995-03	\N
4339	Caramel Mocha (Small)	465	McDonald’s	1	250	90	11	6	0	25	150	33	0	31	7	2023-09-22 20:59:19.022995-03	\N
4340	Iced Caramel Mocha (Large)	466	McDonald’s	1	380	140	16	9	0.5	35	210	48	0	46	10	2023-09-22 20:59:19.022995-03	\N
4341	Iced Caramel Mocha (Medium)	467	McDonald’s	1	300	120	14	8	0	30	160	36	0	33	8	2023-09-22 20:59:19.022995-03	\N
4342	Iced Caramel Mocha (Small)	468	McDonald’s	1	240	100	12	7	0	25	130	29	0	26	6	2023-09-22 20:59:19.022995-03	\N
4343	Frappe Caramel (Small)	469	McDonald’s	1	450	180	20	13	1	55	135	61	0	57	6	2023-09-22 20:59:19.022995-03	\N
4344	Frappe Caramel (Medium)	470	McDonald’s	1	550	220	24	15	1	70	160	76	0	71	8	2023-09-22 20:59:19.022995-03	\N
4345	Frappe Caramel (Large)	471	McDonald’s	1	680	260	29	18	1.5	85	200	94	0	88	10	2023-09-22 20:59:19.022995-03	\N
4346	Frappe Mocha (Small)	472	McDonald’s	1	450	180	20	13	1	55	130	62	1	56	7	2023-09-22 20:59:19.022995-03	\N
4347	Frappe Mocha (Medium)	473	McDonald’s	1	560	210	24	15	1	65	160	78	1	70	8	2023-09-22 20:59:19.022995-03	\N
4348	Frappe Mocha (Large)	474	McDonald’s	1	680	250	28	18	1	80	200	96	1	87	10	2023-09-22 20:59:19.022995-03	\N
4349	Strawberry Banana Smoothie (Large)	475	McDonald’s	1	330	10	1	0.5	0	5	55	77	4	70	3	2023-09-22 20:59:19.022995-03	\N
4350	Strawberry Banana Smoothie (Medium)	476	McDonald’s	1	260	5	1	0	0	5	40	60	3	54	2	2023-09-22 20:59:19.022995-03	\N
4351	Strawberry Banana Smoothie (Small)	477	McDonald’s	1	210	5	0.5	0	0	5	35	49	2	44	2	2023-09-22 20:59:19.022995-03	\N
4352	Wild Berry Smoothie (Large)	478	McDonald’s	1	320	10	1	0.5	0	5	45	75	4	69	3	2023-09-22 20:59:19.022995-03	\N
4353	Wild Berry Smoothie (Medium)	479	McDonald’s	1	260	5	1	0	0	5	35	60	4	55	3	2023-09-22 20:59:19.022995-03	\N
4354	Wild Berry Smoothie (Small)	480	McDonald’s	1	210	5	0.5	0	0	5	30	48	3	44	2	2023-09-22 20:59:19.022995-03	\N
4355	Whopper® Sandwich	481	Burger King	6	660	360	40	12	1.5	90	980	49	2	11	28	2023-09-22 20:59:19.022995-03	\N
4356	Whopper® Sandwich with Cheese	482	Burger King	6	740	420	46	16	2	115	1340	50	2	11	32	2023-09-22 20:59:19.022995-03	\N
4357	Bacon & Cheese Whopper® Sandwich	483	Burger King	6	790	460	51	17	2	125	1560	50	2	11	35	2023-09-22 20:59:19.022995-03	\N
4358	Double Whopper® Sandwich	484	Burger King	6	900	520	58	20	3	175	1050	49	2	11	48	2023-09-22 20:59:19.022995-03	\N
4359	Double Whopper® Sandwich with Cheese	485	Burger King	6	980	580	64	24	3	195	1410	50	2	11	52	2023-09-22 20:59:19.022995-03	\N
4360	Triple Whopper® Sandwich	486	Burger King	6	1130	680	75	28	4	255	1120	49	2	11	67	2023-09-22 20:59:19.022995-03	\N
4361	Triple Whopper® Sandwich with Cheese	487	Burger King	6	1220	740	82	32	4.5	280	1470	50	2	11	71	2023-09-22 20:59:19.022995-03	\N
4362	Whopper JR.® Sandwich	488	Burger King	6	310	160	18	5	0.5	40	390	27	1	7	13	2023-09-22 20:59:19.022995-03	\N
4363	Bacon King Sandwich	489	Burger King	6	1150	710	79	31	3.5	240	2150	49	2	10	61	2023-09-22 20:59:19.022995-03	\N
4364	Cheddar Bacon King Sandwich	490	Burger King	6	1190	750	84	33	3.5	235	1930	50	2	11	64	2023-09-22 20:59:19.022995-03	\N
4365	Single Quarter Pound King Sandwich	491	Burger King	6	580	260	29	13	1.5	105	1310	49	2	10	32	2023-09-22 20:59:19.022995-03	\N
4366	Double Quarter Pound King Sandwich	492	Burger King	6	900	480	54	25	3	210	1740	50	2	11	56	2023-09-22 20:59:19.022995-03	\N
4367	Single Stacker King	493	Burger King	6	700	380	42	16	2	125	1360	48	1	10	35	2023-09-22 20:59:19.022995-03	\N
4368	Double Stacker King	494	Burger King	6	1050	610	68	28	3.5	235	1870	49	1	11	61	2023-09-22 20:59:19.022995-03	\N
4369	IMPOSSIBLE Whopper® Sandwich	495	Burger King	6	630	310	34	11	0	10	1080	58	4	12	25	2023-09-22 20:59:19.022995-03	\N
4370	Hamburger	496	Burger King	6	240	90	10	3.5	0.5	35	380	26	1	6	13	2023-09-22 20:59:19.022995-03	\N
4371	Cheeseburger	497	Burger King	6	280	120	13	6	0.5	45	560	27	1	7	15	2023-09-22 20:59:19.022995-03	\N
4372	Double Hamburger	498	Burger King	6	350	160	18	7	1	70	410	26	1	6	21	2023-09-22 20:59:19.022995-03	\N
4373	Double Cheeseburger	499	Burger King	6	390	190	21	9	1.5	85	590	27	1	7	23	2023-09-22 20:59:19.022995-03	\N
4374	Extra Long Cheeseburger	500	Burger King	6	630	330	37	14	1.5	100	1050	45	2	9	29	2023-09-22 20:59:19.022995-03	\N
4375	Bacon Cheeseburger	501	Burger King	6	320	140	16	7	0.5	55	710	27	1	7	17	2023-09-22 20:59:19.022995-03	\N
4376	Bacon Double Cheeseburger	502	Burger King	6	420	210	24	10	1.5	90	740	27	1	7	25	2023-09-22 20:59:19.022995-03	\N
4377	Crispy Chicken Sandwich	503	Burger King	6	670	370	41	7	0	60	1080	54	2	8	23	2023-09-22 20:59:19.022995-03	\N
4378	Spicy Crispy Chicken Sandwich	504	Burger King	6	700	370	42	7	0	65	1140	57	3	8	25	2023-09-22 20:59:19.022995-03	\N
4379	Original Chicken Sandwich	505	Burger King	6	660	360	40	7	0	75	1170	48	2	5	28	2023-09-22 20:59:19.022995-03	\N
4380	Bacon & Cheese Crispy Chicken Sandwich	506	Burger King	6	800	460	52	13	1	95	1650	55	2	8	30	2023-09-22 20:59:19.022995-03	\N
4381	BBQ Bacon Crispy Chicken Sandwich	507	Burger King	6	790	440	49	10	0.5	80	1630	60	2	13	28	2023-09-22 20:59:19.022995-03	\N
4382	Crispy Chicken Jr.	508	Burger King	6	450	270	30	5	0	30	780	34	2	5	12	2023-09-22 20:59:19.022995-03	\N
4383	Spicy Crispy Chicken Jr.	509	Burger King	6	390	190	21	3.5	0	30	740	37	2	6	12	2023-09-22 20:59:19.022995-03	\N
4384	Chicken Nuggets- 4pc	510	Burger King	6	170	100	11	1.5	0	25	310	11	1	0	8	2023-09-22 20:59:19.022995-03	\N
4385	Chicken Nuggets- 6pc	511	Burger King	6	260	150	16	2.5	0	35	470	16	1	0	12	2023-09-22 20:59:19.022995-03	\N
4386	Chicken Nuggets- 10pc	512	Burger King	6	430	240	27	4.5	0	55	780	27	2	0	20	2023-09-22 20:59:19.022995-03	\N
4387	Chicken Nuggets- 20pc	513	Burger King	6	860	490	54	9	0	115	1570	53	3	1	39	2023-09-22 20:59:19.022995-03	\N
4388	Spicy Chicken Nuggets- 4pc	514	Burger King	6	210	130	15	3	0	20	570	11	2	0	8	2023-09-22 20:59:19.022995-03	\N
4389	Spicy Chicken Nuggets- 6pc	515	Burger King	6	320	200	22	4.5	0	35	850	17	3	0	12	2023-09-22 20:59:19.022995-03	\N
4390	Spicy Chicken Nuggets- 10 pc	516	Burger King	6	530	330	37	7	0	55	1420	28	4	1	20	2023-09-22 20:59:19.022995-03	\N
4391	Spicy Chicken Nuggets- 20 pc	517	Burger King	6	1050	670	74	15	0	110	2840	56	9	1	40	2023-09-22 20:59:19.022995-03	\N
4392	Chicken Fries – 9 pc.	518	Burger King	6	280	150	17	2.5	0	35	850	20	1	1	13	2023-09-22 20:59:19.022995-03	\N
4393	Crispy Taco	519	Burger King	6	170	80	9	3	0	10	410	19	2	1	5	2023-09-22 20:59:19.022995-03	\N
4394	BIG FISH Sandwich	520	Burger King	6	510	250	28	4.5	0	30	1180	51	2	7	16	2023-09-22 20:59:19.022995-03	\N
4395	Garden Chicken Salad with Crispy Chicken – no dressing	521	Burger King	6	440	220	25	7	0	75	930	31	3	4	25	2023-09-22 20:59:19.022995-03	\N
4396	Club Salad with Crispy Chicken – no dressing	522	Burger King	6	540	300	33	10	0	95	1380	31	3	5	31	2023-09-22 20:59:19.022995-03	\N
4397	Garden Side Salad – w/o dressing	523	Burger King	6	60	35	4	2.5	0	10	95	3	1	2	4	2023-09-22 20:59:19.022995-03	\N
4398	Ken’s Ranch Dressing	524	Burger King	6	260	250	28	4	0	10	240	2	0	2	1	2023-09-22 20:59:19.022995-03	\N
4399	Ken’s Golden Italian Dressing	525	Burger King	6	160	150	17	2.5	0	0	380	4	0	3	0	2023-09-22 20:59:19.022995-03	\N
4400	Mayonnaise (Packet)	526	Burger King	6	80	80	9	0.5	0	10	75	1	0	0	0	2023-09-22 20:59:19.022995-03	\N
4401	Ken’s Lite Honey Balsamic Vinaigrette	527	Burger King	6	120	70	8	1	0	0	220	14	0	11	0	2023-09-22 20:59:19.022995-03	\N
4502	29 fl oz	628	Burger King	6	380	0	0	0	0	0	170	102	0	102	0	2023-09-22 20:59:19.022995-03	\N
4402	Buttery Garlic Croutons- Packet	528	Burger King	6	60	20	2.5	0	0	10	180	9	0	1	1	2023-09-22 20:59:19.022995-03	\N
4403	Onion Rings – value	529	Burger King	6	150	70	8	1.5	0	0	400	19	1	2	1	2023-09-22 20:59:19.022995-03	\N
4404	Onion Rings – small	530	Burger King	6	320	150	16	3	0	0	840	41	3	4	3	2023-09-22 20:59:19.022995-03	\N
4405	Onion Rings – medium	531	Burger King	6	410	190	21	3.5	0	0	1080	53	4	5	4	2023-09-22 20:59:19.022995-03	\N
4406	Onion Rings – large	532	Burger King	6	500	230	25	4.5	0	0	1310	64	5	7	5	2023-09-22 20:59:19.022995-03	\N
4407	French Fries – value (unsalted)	533	Burger King	6	220	80	9	1.5	0	0	210	34	3	1	2	2023-09-22 20:59:19.022995-03	\N
4408	French Fries – small	534	Burger King	6	320	120	13	2	0	0	300	49	5	1	4	2023-09-22 20:59:19.022995-03	\N
4409	French Fries – medium	535	Burger King	6	380	140	16	2	0	0	360	58	6	1	4	2023-09-22 20:59:19.022995-03	\N
4410	French Fries – large	536	Burger King	6	430	160	18	2.5	0	0	410	66	7	2	5	2023-09-22 20:59:19.022995-03	\N
4411	Kids Oatmeal	537	Burger King	6	170	30	3	1.5	0	5	260	32	3	12	4	2023-09-22 20:59:19.022995-03	\N
4412	Chicken Nuggets- 4pc	538	Burger King	6	170	100	11	1.5	0	25	310	11	1	0	8	2023-09-22 20:59:19.022995-03	\N
4413	Chicken Nuggets- 6pc	539	Burger King	6	260	150	16	2.5	0	35	470	16	1	0	12	2023-09-22 20:59:19.022995-03	\N
4414	Hamburger	540	Burger King	6	240	90	10	3.5	0.5	35	380	26	1	6	13	2023-09-22 20:59:19.022995-03	\N
4415	Cheeseburger	541	Burger King	6	280	120	13	6	0.5	45	560	27	1	7	15	2023-09-22 20:59:19.022995-03	\N
4416	Mott’s® Natural Applesauce	542	Burger King	6	50	0	0	0	0	0	0	13	1	11	0	2023-09-22 20:59:19.022995-03	\N
4417	Fat FREE Milk (8 fl oz)	543	Burger King	6	90	0	0	0	0	5	125	13	0	12	9	2023-09-22 20:59:19.022995-03	\N
4418	1% Low Fat Chocolate Milk (8 fl oz)	544	Burger King	6	160	25	2.5	1.5	0	15	150	26	0	25	8	2023-09-22 20:59:19.022995-03	\N
4419	Capri Sun® 100% Apple Juice (6 fl oz)	545	Burger King	6	80	0	0	0	0	0	25	20	0	20	0	2023-09-22 20:59:19.022995-03	\N
4420	PB&J Jamwich	546	Burger King	6	300	140	16	3	0	0	290	33	4	11	11	2023-09-22 20:59:19.022995-03	\N
4421	HERSHEY®’S Sundae Pie	547	Burger King	6	310	170	19	12	0	10	220	32	1	22	3	2023-09-22 20:59:19.022995-03	\N
4422	Pie made with TWIX®	548	Burger King	6	370	180	20	13	0	10	330	45	1	30	4	2023-09-22 20:59:19.022995-03	\N
4423	OREO® Cookie Cheesecake	549	Burger King	6	350	170	18	8	0	35	310	41	1	25	6	2023-09-22 20:59:19.022995-03	\N
4424	Soft Serve Cone	550	Burger King	6	190	40	4.5	3	0	20	150	32	0	24	5	2023-09-22 20:59:19.022995-03	\N
4425	Soft Serve Cup	551	Burger King	6	170	40	4.5	3	0	20	150	28	0	24	5	2023-09-22 20:59:19.022995-03	\N
4426	HERSHEY®’s Chocolate Sundae	552	Burger King	6	260	45	5	3	0	20	160	49	1	43	5	2023-09-22 20:59:19.022995-03	\N
4427	Caramel Sundae	553	Burger King	6	240	50	5	3.5	0	20	210	42	0	33	5	2023-09-22 20:59:19.022995-03	\N
4428	Chocolate Chip Cookies (each)	554	Burger King	6	160	70	8	4	0	10	125	24	1	15	2	2023-09-22 20:59:19.022995-03	\N
4429	CROISSAN’WICH® Egg & Cheese	555	Burger King	6	340	170	18	8	0	160	610	29	1	4	12	2023-09-22 20:59:19.022995-03	\N
4430	CROISSAN’WICH® Sausage, Egg & Cheese	556	Burger King	6	500	300	33	13	0	195	930	30	1	4	19	2023-09-22 20:59:19.022995-03	\N
4431	CROISSAN’WICH® Ham, Egg & Cheese	557	Burger King	6	370	170	19	8	0	175	1030	30	1	5	17	2023-09-22 20:59:19.022995-03	\N
4432	CROISSAN’WICH® Bacon, Egg & Cheese	558	Burger King	6	370	190	21	9	0	170	760	30	1	4	14	2023-09-22 20:59:19.022995-03	\N
4433	Fully Loaded CROISSAN’WICH®	559	Burger King	6	610	360	40	17	0.5	225	1680	31	1	5	28	2023-09-22 20:59:19.022995-03	\N
4434	Double CROISSAN’WICH® with Sausage & Bacon	560	Burger King	6	580	340	40	16	0.5	215	1260	31	1	5	23	2023-09-22 20:59:19.022995-03	\N
4435	Double CROISSAN’WICH® with Sausage	561	Burger King	6	710	470	52	20	0.5	240	1420	31	1	5	29	2023-09-22 20:59:19.022995-03	\N
4436	Double CROISSAN’WICH® with Ham & Sausage	562	Burger King	6	580	340	38	16	0.5	220	1530	31	1	5	27	2023-09-22 20:59:19.022995-03	\N
4437	Fully Loaded Biscuit	563	Burger King	6	640	400	45	20	0	225	2190	31	1	4	28	2023-09-22 20:59:19.022995-03	\N
4438	Ham, Egg, & Cheese Biscuit	564	Burger King	6	400	210	24	12	0	175	1550	29	1	3	17	2023-09-22 20:59:19.022995-03	\N
4439	Sausage, Egg, & Cheese Biscuit	565	Burger King	6	530	340	38	17	0	195	1440	29	1	3	19	2023-09-22 20:59:19.022995-03	\N
4440	Bacon, Egg & Cheese Biscuit	566	Burger King	6	400	230	26	13	0	170	1270	29	1	3	13	2023-09-22 20:59:19.022995-03	\N
4441	Sausage Biscuit	567	Wendy’s	2	480	33	15	0	50	1010	35	1	5	12	488	2023-09-22 20:59:19.022995-03	\N
4442	Breakfast Burrito Jr.	568	Burger King	6	370	210	23	8	0	150	930	27	3	2	15	2023-09-22 20:59:19.022995-03	\N
4443	EGG-NORMOUS BURRITOΡ	569	Burger King	6	780	380	42	15	0	355	1960	68	3	4	32	2023-09-22 20:59:19.022995-03	\N
4444	BK™ Ultimate Breakfast Platter	570	Burger King	6	930	390	44	11	0	390	2230	110	4	40	24	2023-09-22 20:59:19.022995-03	\N
4445	NY Ultimate Platter (Regional menu item)	571	Burger King	6	900	420	46	12	0	380	1760	95	5	31	25	2023-09-22 20:59:19.022995-03	\N
4446	Pancake and Sausage platter	572	Burger King	6	610	280	31	9	0	80	1010	72	1	30	12	2023-09-22 20:59:19.022995-03	\N
4447	Hash Browns – small	573	Burger King	6	250	150	16	3.5	0	0	580	24	3	0	2	2023-09-22 20:59:19.022995-03	\N
4448	Hash Browns – medium	574	Burger King	6	500	290	33	7	0	0	1140	48	7	0	4	2023-09-22 20:59:19.022995-03	\N
4449	Hash Browns – large	575	Burger King	6	670	390	44	9	0	0	1530	65	9	0	5	2023-09-22 20:59:19.022995-03	\N
4450	French Toast Sticks (3 piece)	576	Burger King	6	230	100	11	2	0	0	260	29	1	8	3	2023-09-22 20:59:19.022995-03	\N
4451	French Toast Sticks (5 piece)	577	Burger King	6	380	160	18	3	0	0	430	49	2	13	5	2023-09-22 20:59:19.022995-03	\N
4452	Additional Options	578	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4453	American Cheese (slice)	579	Burger King	6	40	30	3.5	2	0	10	180	1	0	0	2	2023-09-22 20:59:19.022995-03	\N
4454	Ketchup (Packet)	580	Burger King	6	10	0	0	0	0	0	125	3	0	2	0	2023-09-22 20:59:19.022995-03	\N
4455	Strawberry or Grape Jam (packet)	581	Burger King	6	30	0	0	0	0	0	0	7	0	6	0	2023-09-22 20:59:19.022995-03	\N
4456	Breakfast Syrup (1 oz)	582	Burger King	6	120	0	0	0	0	0	15	30	0	18	0	2023-09-22 20:59:19.022995-03	\N
4457	Barbecue Dipping Sauce (1 oz)	583	Burger King	6	40	0	0	0	0	0	310	11	0	10	0	2023-09-22 20:59:19.022995-03	\N
4458	Ranch Dipping Sauce (1 oz)	584	Burger King	6	140	140	15	2.5	0	10	85	1	0	1	1	2023-09-22 20:59:19.022995-03	\N
4459	Buffalo Dipping Sauce (1 oz)	585	Burger King	6	80	70	8	1.5	0	5	360	2	0	1	0	2023-09-22 20:59:19.022995-03	\N
4460	BK® Café Coffee- 20 fl oz	586	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4461	Zesty Onion Ring Dipping Sauce (1 oz)	587	Burger King	6	150	140	15	2.5	0	20	240	3	0	0	0	2023-09-22 20:59:19.022995-03	\N
4462	Honey Mustard Dipping Sauce (1oz)	588	Burger King	6	90	60	6	1	0	10	180	8	0	7	0	2023-09-22 20:59:19.022995-03	\N
4463	Fat FREE Milk (8 fl oz)	589	Burger King	6	90	0	0	0	0	5	125	13	0	12	9	2023-09-22 20:59:19.022995-03	\N
4464	1% Low Fat Chocolate Milk (8 fl oz)	590	Burger King	6	160	25	2.5	1.5	0	15	150	26	0	25	8	2023-09-22 20:59:19.022995-03	\N
4465	Smoothie: Strawberry Banana 16 fl oz	591	Burger King	6	310	10	1	0	0	0	55	71	3	50	4	2023-09-22 20:59:19.022995-03	\N
4466	Oreo® Shake	592	Burger King	6	720	180	20	12	0.5	65	540	118	1	98	16	2023-09-22 20:59:19.022995-03	\N
4467	Chocolate Oreo® Shake	593	Burger King	6	740	190	22	13	0.5	70	680	121	1	101	17	2023-09-22 20:59:19.022995-03	\N
4468	Vanilla Milk Shake	594	Burger King	6	580	140	15	10	0	60	420	98	0	85	14	2023-09-22 20:59:19.022995-03	\N
4469	HERSHEY®’S Chocolate Milk Shake	595	Burger King	6	610	140	16	10	0	60	500	103	1	88	14	2023-09-22 20:59:19.022995-03	\N
4470	Strawberry Milk Shake	596	Burger King	6	640	140	15	10	0	60	440	113	0	99	14	2023-09-22 20:59:19.022995-03	\N
4471	16 fl oz	597	Burger King	6	0	0	0	0	0	0	70	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4472	20 fl oz	598	Burger King	6	270	0	0	0	0	0	60	73	0	73	0	2023-09-22 20:59:19.022995-03	\N
4473	29 fl oz	599	Burger King	6	410	0	0	0	0	0	100	110	0	110	0	2023-09-22 20:59:19.022995-03	\N
4474	38 fl oz	600	Burger King	6	0	0	0	0	0	0	160	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4475	20 fl oz	601	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4476	29 fl oz	602	Burger King	6	410	0	0	0	0	0	105	113	0	111	0	2023-09-22 20:59:19.022995-03	\N
4477	38 fl oz	603	Burger King	6	450	0	0	0	0	0	140	124	0	121	0	2023-09-22 20:59:19.022995-03	\N
4478	29 fl oz	604	Burger King	6	350	0	0	0	0	0	105	94	0	93	0	2023-09-22 20:59:19.022995-03	\N
4479	38 fl oz	605	Burger King	6	0	0	0	0	0	0	160	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4480	Dr. Pepper®‡	606	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4481	16 fl oz	607	Burger King	6	240	0	0	0	0	0	100	65	0	65	0	2023-09-22 20:59:19.022995-03	\N
4482	20 fl oz	608	Burger King	6	0	0	0	0	0	0	85	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4483	29 fl oz	609	Burger King	6	410	0	0	0	0	0	135	111	0	109	0	2023-09-22 20:59:19.022995-03	\N
4484	38 fl oz	610	Burger King	6	450	0	0	0	0	0	130	145	0	145	0	2023-09-22 20:59:19.022995-03	\N
4485	Barq’s® Root Beer‡	611	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4486	16 fl oz	612	Burger King	6	190	0	0	0	0	0	60	52	0	51	0	2023-09-22 20:59:19.022995-03	\N
4487	20 fl oz	613	Burger King	6	240	0	0	0	0	0	75	65	0	64	0	2023-09-22 20:59:19.022995-03	\N
4488	29 fl oz	614	Burger King	6	290	0	0	0	0	0	85	105	0	105	0	2023-09-22 20:59:19.022995-03	\N
4489	38 fl oz	615	Burger King	6	510	0	0	0	0	0	115	138	0	138	0	2023-09-22 20:59:19.022995-03	\N
4490	Cherry Coke®‡	616	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4491	20 fl oz	617	Burger King	6	240	0	0	0	0	0	75	65	0	64	0	2023-09-22 20:59:19.022995-03	\N
4492	29 fl oz	618	Burger King	6	410	0	0	0	0	0	105	113	0	111	0	2023-09-22 20:59:19.022995-03	\N
4493	38 fl oz	619	Burger King	6	20	0	0	0	0	0	135	7	0	0	0	2023-09-22 20:59:19.022995-03	\N
4494	Fanta® Orange‡	620	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4495	16 fl oz	621	Burger King	6	10	0	0	0	0	0	60	3	0	0	0	2023-09-22 20:59:19.022995-03	\N
4496	20 fl oz	622	Burger King	6	270	0	0	0	0	0	60	73	0	73	0	2023-09-22 20:59:19.022995-03	\N
4497	29 fl oz	623	Burger King	6	290	0	0	0	0	0	85	105	0	105	0	2023-09-22 20:59:19.022995-03	\N
4498	38 fl oz	624	Burger King	6	450	0	0	0	0	0	230	155	0	155	0	2023-09-22 20:59:19.022995-03	\N
4499	Hi-C® Fruit Punch‡	625	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4500	16 fl oz	626	Burger King	6	210	0	0	0	0	0	50	58	0	58	0	2023-09-22 20:59:19.022995-03	\N
4501	20 fl oz	627	Burger King	6	270	0	0	0	0	0	60	73	0	73	0	2023-09-22 20:59:19.022995-03	\N
4748	Diet Dr Pepper® (16 fl oz)	874	Taco Bell	4	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4503	38 fl oz	629	Burger King	6	530	0	0	0	0	0	135	148	0	146	0	2023-09-22 20:59:19.022995-03	\N
4504	MINUTE MAID® Light Lemonade	630	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4505	16 fl oz	631	Burger King	6	0	0	0	0	0	0	70	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4506	20 fl oz	632	Burger King	6	240	0	0	0	0	0	75	65	0	64	0	2023-09-22 20:59:19.022995-03	\N
4507	29 fl oz	633	Burger King	6	410	0	0	0	0	0	100	110	0	110	0	2023-09-22 20:59:19.022995-03	\N
4508	Sweet Tea	634	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4509	20 fl oz	635	Burger King	6	280	0	0	0	0	0	95	77	0	75	0	2023-09-22 20:59:19.022995-03	\N
4510	29 fl oz	636	Burger King	6	0	0	0	0	0	0	120	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4511	40 fl oz	637	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4512	Unsweetened Tea	638	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4513	Capri Sun® 100% Apple Juice	639	Burger King	6	80	0	0	0	0	0	25	20	0	20	0	2023-09-22 20:59:19.022995-03	\N
4514	Minute Maid® Orange Juice	640	Burger King	6	140	0	0	0	0	0	20	33	0	30	2	2023-09-22 20:59:19.022995-03	\N
4515	Frozen Coke® – 16 oz	641	Burger King	6	130	0	0	0	0	0	50	35	0	35	0	2023-09-22 20:59:19.022995-03	\N
4516	Hot Coffees	642	Burger King	6	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4517	BK® Café Coffee- 12 fl oz	643	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4518	BK® Café Coffee- 16 fl oz	644	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4519	BK® Café Decaf Coffee- 12 fl oz	645	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4520	BK® Café Decaf Coffee- 16 fl oz	646	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4521	BK® Café Decaf Coffee- 20 fl oz	647	Burger King	6	0	0	0	0	0	0	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4522	BK® Café Iced Vanilla Coffee- 12 fl oz	648	Burger King	6	150	70	8	4	0	25	30	21	0	21	1	2023-09-22 20:59:19.022995-03	\N
4523	BK® Café Iced Vanilla Coffee- 16 fl oz	649	Burger King	6	200	90	10	5	0	30	40	27	0	27	2	2023-09-22 20:59:19.022995-03	\N
4524	BK® Café Iced Vanilla Coffee- 20 fl oz	650	Burger King	6	260	110	13	7	0	40	50	34	0	34	2	2023-09-22 20:59:19.022995-03	\N
4525	BK® Café Iced Mocha Coffee- 12 fl oz	651	Burger King	6	180	70	8	4	0	25	40	27	1	25	2	2023-09-22 20:59:19.022995-03	\N
4526	BK® Café Iced Mocha Coffee- 16 fl oz	652	Burger King	6	240	90	10	6	0	30	55	35	1	32	2	2023-09-22 20:59:19.022995-03	\N
4527	BK® Café Iced Mocha Coffee- 20 fl oz	653	Burger King	6	300	120	13	7	0	40	70	45	2	41	3	2023-09-22 20:59:19.022995-03	\N
4528	BK® Café Mocha Frappe- 12 fl oz	654	Burger King	6	300	80	8	5	0	30	200	50	1	41	7	2023-09-22 20:59:19.022995-03	\N
4529	BK® Café Mocha Frappe- 16 fl oz	655	Burger King	6	400	90	10	7	0	40	270	68	1	58	9	2023-09-22 20:59:19.022995-03	\N
4530	BK® Café Mocha Frappe- 20 fl oz	656	Burger King	6	510	110	13	8	0	50	350	87	1	71	12	2023-09-22 20:59:19.022995-03	\N
4531	BK® Café Caramel Frappe- 12 fl oz	657	Burger King	6	300	80	8	5	0	35	210	50	0	41	7	2023-09-22 20:59:19.022995-03	\N
4532	BK® Café Caramel Frappe- 16 fl oz	658	Burger King	6	400	90	10	7	0	40	280	68	0	56	9	2023-09-22 20:59:19.022995-03	\N
4533	BK® Café Caramel Frappe- 20 fl oz	659	Burger King	6	500	110	12	8	0	50	350	86	0	71	11	2023-09-22 20:59:19.022995-03	\N
4534	Baconator	660	Wendy’s	2	950	62	24	3	205	1630	40	2	8	59	923	2023-09-22 20:59:19.022995-03	\N
4535	Dave’s Double	661	Wendy’s	2	810	51	20	3	175	1280	41	3	8	49	789	2023-09-22 20:59:19.022995-03	\N
4536	Dave’s Single	662	Wendy’s	2	570	34	13	1.5	100	1110	40	3	9	30	562	2023-09-22 20:59:19.022995-03	\N
4537	Dave’s Triple	663	Wendy’s	2	1090	72	30	4	260	1650	43	3	9	71	1058	2023-09-22 20:59:19.022995-03	\N
4538	Double Stack	664	Wendy’s	2	390	21	9	1.5	90	740	26	1	6	25	380	2023-09-22 20:59:19.022995-03	\N
4539	Jr. Bacon Cheeseburger	665	Wendy’s	2	380	22	8	1	65	680	25	1	5	19	374	2023-09-22 20:59:19.022995-03	\N
4540	Jr. Cheeseburger	666	Wendy’s	2	280	13	6	1	50	660	26	1	6	16	276	2023-09-22 20:59:19.022995-03	\N
4541	Jr. Cheeseburger Deluxe	667	Wendy’s	2	340	19	7	1	55	660	27	2	7	16	338	2023-09-22 20:59:19.022995-03	\N
4542	Son of Baconator	668	Wendy’s	2	630	39	15	1.5	125	1280	37	2	7	34	618	2023-09-22 20:59:19.022995-03	\N
4543	3 Piece Chicken Tenders	669	Wendy’s	2	330	16	2.5	0	75	1010	22	0	0	24	309	2023-09-22 20:59:19.022995-03	\N
4544	4 Piece Chicken Nuggets	670	Wendy’s	2	170	11	2	0	35	340	10	0	0	9	163	2023-09-22 20:59:19.022995-03	\N
4545	4 Piece Chicken Tenders	671	Wendy’s	2	430	21	3.5	0	100	1350	29	0	1	32	403	2023-09-22 20:59:19.022995-03	\N
4546	6 Picece Chicken Nuggets	672	Wendy’s	2	250	16	3.5	0	50	510	14	1	0	13	241	2023-09-22 20:59:19.022995-03	\N
4547	6 Piece Chicken Tenders	673	Wendy’s	2	650	32	5	0	150	2020	43	0	1	48	608	2023-09-22 20:59:19.022995-03	\N
4548	10 Piece Chicken Nuggets	674	Wendy’s	2	420	27	5	0	80	850	24	1	0	22	403	2023-09-22 20:59:19.022995-03	\N
4549	Crispy Chicken BLT	675	Wendy’s	2	420	23	6	0	50	950	35	2	5	20	411	2023-09-22 20:59:19.022995-03	\N
4550	Crispy Chicken Sandwich	676	Wendy’s	2	330	16	3	0	30	600	33	2	4	14	323	2023-09-22 20:59:19.022995-03	\N
4551	Grilled Asiago Ranch Club	677	Wendy’s	2	530	23	7	0	120	1220	36	3	6	43	500	2023-09-22 20:59:19.022995-03	\N
4552	Grilled Chicken Sandwich	678	Wendy’s	2	370	10	2	0	90	830	38	3	8	34	346	2023-09-22 20:59:19.022995-03	\N
4553	Grilled Chicken Wrap	679	Wendy’s	2	270	10	3.5	0	55	640	24	2	3	20	257	2023-09-22 20:59:19.022995-03	\N
4554	Ketchup	680	KFC	5	30	0	0	0	0	250	8	0	6	0	36	2023-09-22 20:59:19.022995-03	\N
4555	Homestyle Asiago Ranch Chicken Club	681	Wendy’s	2	660	34	9	0	100	1650	52	3	7	38	638	2023-09-22 20:59:19.022995-03	\N
4556	Homestyle Chicken Sandwich	682	Wendy’s	2	510	22	4	0	70	1150	51	3	6	28	492	2023-09-22 20:59:19.022995-03	\N
4557	S’Awesome Sauce	683	Wendy’s	2	120	12	2	0	0	170	4	1	3	1	124	2023-09-22 20:59:19.022995-03	\N
4558	Spicy Asiago Ranch Club	684	Wendy’s	2	670	32	9	0	100	1530	55	4	6	38	647	2023-09-22 20:59:19.022995-03	\N
4559	Spicy Chicken Sandwich	685	Wendy’s	2	510	20	3.5	0	65	1030	54	4	6	29	491	2023-09-22 20:59:19.022995-03	\N
4560	Spicy Chicken Wrap	686	Wendy’s	2	370	20	5	0	50	850	30	2	2	18	359	2023-09-22 20:59:19.022995-03	\N
4561	Apple Pecan Chicken Salad, Full Size	687	Wendy’s	2	560	24	7	0	115	1020	52	7	40	38	569	2023-09-22 20:59:19.022995-03	\N
4562	Apple Pecan Chicken Salad, Half Size	688	Wendy’s	2	340	17	4	0	55	550	29	4	22	20	346	2023-09-22 20:59:19.022995-03	\N
4563	Berry Burst Chicken Salad, Full Size	689	Wendy’s	2	460	17	4.5	0	105	1090	41	7	29	41	453	2023-09-22 20:59:19.022995-03	\N
4564	Berry Burst Chicken Salad, Half Size	690	Wendy’s	2	290	13	2.5	0	50	570	23	5	15	23	285	2023-09-22 20:59:19.022995-03	\N
4565	Caesar Side Salad	691	Wendy’s	2	240	15	4	0	30	500	19	3	4	8	240	2023-09-22 20:59:19.022995-03	\N
4566	Garden Side Salad	692	Wendy’s	2	250	18	4	0	20	460	18	2	4	7	251	2023-09-22 20:59:19.022995-03	\N
4567	Southwest Avocado Chicken Salad, Full Size	693	Wendy’s	2	600	41	11	0	135	1220	18	7	7	42	576	2023-09-22 20:59:19.022995-03	\N
4568	Southwest Avocado Chicken Salad, Half Size	694	Wendy’s	2	300	20	6	0	70	620	10	4	4	21	289	2023-09-22 20:59:19.022995-03	\N
4569	Diet Mountain Dew® (20 fl oz)	695	KFC	5	10	0	0	0	0	90	1	0	1	0	11	2023-09-22 20:59:19.022995-03	\N
4570	Spicy Caesar Chicken Salad, Full Size	696	Wendy’s	2	720	42	12	1	150	1680	44	8	6	42	696	2023-09-22 20:59:19.022995-03	\N
4571	Spicy Caesar Chicken Salad, Half Size	697	Wendy’s	2	410	23	6	0.5	75	930	30	5	4	23	397	2023-09-22 20:59:19.022995-03	\N
4572	Taco Salad, Full Size	698	Wendy’s	2	660	32	13	1	85	1820	63	10	18	32	659	2023-09-22 20:59:19.022995-03	\N
4573	Taco Salad, Half Size	699	Wendy’s	2	470	23	8	0.5	45	1320	49	7	12	19	471	2023-09-22 20:59:19.022995-03	\N
4574	Apple Bites	700	Wendy’s	2	35	0	0	0	0	0	9	2	7	0	42	2023-09-22 20:59:19.022995-03	\N
4575	Baconator Fries	701	Wendy’s	2	490	28	9	0	35	550	45	4	2	14	487	2023-09-22 20:59:19.022995-03	\N
4576	Bacon Cheese Baked Potato	702	Wendy’s	2	440	14	6	0	35	550	64	7	4	17	433	2023-09-22 20:59:19.022995-03	\N
4577	Cheese Baked Potato	703	Wendy’s	2	430	13	7	0	30	560	65	7	5	14	428	2023-09-22 20:59:19.022995-03	\N
4578	Chili & Cheese Baked Potato	704	Wendy’s	2	460	11	5	0	35	710	71	8	7	19	453	2023-09-22 20:59:19.022995-03	\N
4579	Chili, Large	705	Wendy’s	2	250	7	3	0.5	50	1170	23	5	9	23	239	2023-09-22 20:59:19.022995-03	\N
4580	Chili Cheese Fries	706	Wendy’s	2	500	25	8	0.5	35	710	53	6	4	16	496	2023-09-22 20:59:19.022995-03	\N
4581	Natural-Cut Fries, Junior	707	Wendy’s	2	230	10	2	0	0	15	30	3	0	3	229	2023-09-22 20:59:19.022995-03	\N
4582	Natural-Cut Fries, Large	708	Wendy’s	2	530	24	4.5	0	0	520	70	6	0	7	528	2023-09-22 20:59:19.022995-03	\N
4583	Natural-Cut Fries, Medium	709	Wendy’s	2	420	19	3.5	0	0	420	56	5	0	6	418	2023-09-22 20:59:19.022995-03	\N
4584	Natural-Cut Fries, Small	710	Wendy’s	2	320	15	2.5	0	0	320	43	4	0	5	318	2023-09-22 20:59:19.022995-03	\N
4585	Plain Baked Potato	711	Wendy’s	2	270	0	0	0	0	25	61	7	3	7	266	2023-09-22 20:59:19.022995-03	\N
4586	Sour Cream and Chive Baked Potato	712	Wendy’s	2	310	\N	2.5	0	10	35	63	7	4	8	309	2023-09-22 20:59:19.022995-03	\N
4587	Summer Berry Burst Fruit Cup	713	Wendy’s	2	20	0	0	0	0	0	5	1	3	0	23	2023-09-22 20:59:19.022995-03	\N
4588	1% Chocolate Milk	714	Wendy’s	2	150	\N	1.5	0	10	170	26	0	23	7	168	2023-09-22 20:59:19.022995-03	\N
4589	1% White Milk	715	Wendy’s	2	90	2	1.5	0	10	105	10	0	10	7	95	2023-09-22 20:59:19.022995-03	\N
4590	All-Natural Lemonade, Large	716	Wendy’s	2	380	0	0	0	0	0	100	0	93	0	473	2023-09-22 20:59:19.022995-03	\N
4591	All-Natural Lemonade, Medium	717	Wendy’s	2	330	0	0	0	0	0	86	0	81	0	411	2023-09-22 20:59:19.022995-03	\N
4592	All-Natural Lemonade, Small	718	Wendy’s	2	190	0	0	0	0	0	50	0	47	0	237	2023-09-22 20:59:19.022995-03	\N
4593	Apple Kiwi Fruit Tea, Large	719	Wendy’s	2	330	0	0	0	0	60	83	0	80	0	410	2023-09-22 20:59:19.022995-03	\N
4594	Apple Kiwi Fruit Tea, Medium	720	Wendy’s	2	300	0	0	0	0	50	76	0	73	0	373	2023-09-22 20:59:19.022995-03	\N
4595	Apple Kiwi Fruit Tea, Small	721	Wendy’s	2	170	0	0	0	0	30	44	0	42	0	212	2023-09-22 20:59:19.022995-03	\N
4596	Barq’s Root Beer, Large	722	Wendy’s	2	450	0	0	0	0	180	122	0	122	0	572	2023-09-22 20:59:19.022995-03	\N
4597	Barq’s Root Beer, Medium	723	Wendy’s	2	360	0	0	0	0	150	98	0	98	0	458	2023-09-22 20:59:19.022995-03	\N
4598	Barq’s Root Beer, Small	724	Wendy’s	2	220	0	0	0	0	90	61	0	61	0	281	2023-09-22 20:59:19.022995-03	\N
4599	Brewed Unsweetened Iced Tea, Large	725	Wendy’s	2	5	0	0	0	0	25	2	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4600	Brewed Unsweetened Iced Tea, Medium	726	Wendy’s	2	0	0	0	0	0	15	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4601	Brewed Unsweetened Iced Tea, Small	727	Wendy’s	2	0	0	0	0	0	10	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4602	Caramel Iced Coffee, Medium	728	Wendy’s	2	240	8	5	0	25	45	40	0	36	3	278	2023-09-22 20:59:19.022995-03	\N
4603	Caramel Iced Coffee, Small	729	Wendy’s	2	160	6	3.5	0	20	30	26	0	24	2	186	2023-09-22 20:59:19.022995-03	\N
4604	Coca-Cola, Large	730	Wendy’s	2	400	0	0	0	0	90	109	0	109	0	509	2023-09-22 20:59:19.022995-03	\N
4605	Coca-Cola, Medium	731	Wendy’s	2	320	0	0	0	0	70	87	0	87	0	407	2023-09-22 20:59:19.022995-03	\N
4606	Coca-Cola, Small	732	Wendy’s	2	200	0	0	0	0	45	54	0	54	0	254	2023-09-22 20:59:19.022995-03	\N
4607	Coca-Cola Zero Sugar, Large	733	Wendy’s	2	0	0	0	0	0	100	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4608	Coca-Cola Zero Sugar, Medium	734	Wendy’s	2	0	0	0	0	0	80	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4609	Coca-Cola Zero Sugar, Small	735	Wendy’s	2	0	0	0	0	0	50	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4610	Diet Coke, Large	736	Wendy’s	2	0	0	0	0	0	125	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4611	Diet Coke, Medium	737	Wendy’s	2	0	0	0	0	0	100	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4612	Diet Coke, Small	738	Wendy’s	2	0	0	0	0	0	45	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4613	Dr Pepper, Large	739	Wendy’s	2	240	0	0	0	0	70	66	0	64	0	304	2023-09-22 20:59:19.022995-03	\N
4614	Dr Pepper, Medium	740	Wendy’s	2	190	0	0	0	0	55	53	0	51	0	241	2023-09-22 20:59:19.022995-03	\N
4615	Dr Pepper, Small	741	Wendy’s	2	120	0	0	0	0	35	33	0	32	0	152	2023-09-22 20:59:19.022995-03	\N
4616	Fanta Orange, Large	742	Wendy’s	2	430	0	0	0	0	110	117	0	115	0	545	2023-09-22 20:59:19.022995-03	\N
4617	Fanta Orange, Medium	743	Wendy’s	2	340	0	0	0	0	85	94	0	92	0	432	2023-09-22 20:59:19.022995-03	\N
4618	Fanta Orange, Small	744	Wendy’s	2	210	0	0	0	0	55	59	0	58	0	268	2023-09-22 20:59:19.022995-03	\N
4619	Hi-C Flashin’ Fruit Punch, Large	745	Wendy’s	2	420	0	0	0	0	140	115	0	113	0	533	2023-09-22 20:59:19.022995-03	\N
4620	Hi-C Flashin’ Fruit Punch, Medium	746	Wendy’s	2	340	0	0	0	0	115	92	0	90	0	430	2023-09-22 20:59:19.022995-03	\N
4621	Hi-C Flashin’ Fruit Punch, Small	747	Wendy’s	2	210	0	0	0	0	70	58	0	56	0	266	2023-09-22 20:59:19.022995-03	\N
4622	Honest Tropical Green Tea, Large	748	Wendy’s	2	110	0	0	0	0	55	29	0	29	0	139	2023-09-22 20:59:19.022995-03	\N
4623	Honest Tropical Green Tea, Medium	749	Wendy’s	2	90	0	0	0	0	40	22	0	22	0	112	2023-09-22 20:59:19.022995-03	\N
4624	Honest Tropical Green Tea, Small	750	Wendy’s	2	60	0	0	0	0	25	14	0	14	0	74	2023-09-22 20:59:19.022995-03	\N
4625	Hot Tea	751	Wendy’s	2	0	0	0	0	0	0	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4626	Limeade, Large	752	Wendy’s	2	460	0	0	0	0	55	117	0	111	0	571	2023-09-22 20:59:19.022995-03	\N
4627	Limeade, Medium	753	Wendy’s	2	380	0	0	0	0	45	98	0	93	0	473	2023-09-22 20:59:19.022995-03	\N
4628	Limeade, Small	754	Wendy’s	2	230	0	0	0	0	30	59	0	56	0	286	2023-09-22 20:59:19.022995-03	\N
4629	Minute Maid Light Lemonade, Large	755	Wendy’s	2	15	0	0	0	0	10	2	0	0	0	15	2023-09-22 20:59:19.022995-03	\N
4630	Minute Maid Light Lemonade, Medium	756	Wendy’s	2	10	0	0	0	0	10	1	0	0	0	10	2023-09-22 20:59:19.022995-03	\N
4631	Minute Maid Light Lemonade, Small	757	Wendy’s	2	5	0	0	0	0	5	1	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4632	Mocha Iced Coffee, Medium	758	Wendy’s	2	210	8	5	0	25	40	32	0	28	3	240	2023-09-22 20:59:19.022995-03	\N
4633	Mocha Iced Coffee, Small	759	Wendy’s	2	170	6	3.5	0	20	30	28	0	25	2	197	2023-09-22 20:59:19.022995-03	\N
4634	Pear Berry Fruit Tea, Large	760	Wendy’s	2	320	0	0	0	0	60	82	0	76	0	396	2023-09-22 20:59:19.022995-03	\N
4635	Pear Berry Fruit Tea, Medium	761	Wendy’s	2	300	0	0	0	0	50	76	0	70	0	370	2023-09-22 20:59:19.022995-03	\N
4636	Pear Berry Fruit Tea, Small	762	Wendy’s	2	170	0	0	0	0	30	44	0	40	0	210	2023-09-22 20:59:19.022995-03	\N
4637	Skinny Vanilla Iced Coffee, Medium	763	Wendy’s	2	100	8	5	0	25	45	14	0	0	3	102	2023-09-22 20:59:19.022995-03	\N
4638	Skinny Vanilla Iced Coffee, Small	764	Wendy’s	2	70	5	3.5	0	15	30	6	0	0	2	72	2023-09-22 20:59:19.022995-03	\N
4639	Small Sprite, Small	765	Wendy’s	2	200	0	0	0	0	90	53	0	53	0	253	2023-09-22 20:59:19.022995-03	\N
4640	Sprite, Large	766	Wendy’s	2	390	0	0	0	0	180	105	0	105	0	495	2023-09-22 20:59:19.022995-03	\N
4641	Sprite, Medium	767	Wendy’s	2	310	0	0	0	0	140	84	0	84	0	394	2023-09-22 20:59:19.022995-03	\N
4642	Strawberry Lemonade, Large	768	Wendy’s	2	480	0	0	0	0	55	121	0	114	0	594	2023-09-22 20:59:19.022995-03	\N
4643	Strawberry Lemonade, Medium	769	Wendy’s	2	380	0	0	0	0	45	98	0	92	0	472	2023-09-22 20:59:19.022995-03	\N
4644	Strawberry Lemonade, Small	770	Wendy’s	2	230	0	0	0	0	30	58	0	54	0	284	2023-09-22 20:59:19.022995-03	\N
4645	Strawberry Sweet Tea, Large	771	Wendy’s	2	270	0	0	0	0	15	69	0	67	0	337	2023-09-22 20:59:19.022995-03	\N
4646	Strawberry Sweet Tea, Medium	772	Wendy’s	2	240	0	0	0	0	15	60	0	59	0	299	2023-09-22 20:59:19.022995-03	\N
4647	Strawberry Sweet Tea, Small	773	Wendy’s	2	140	0	0	0	0	10	36	0	35	0	175	2023-09-22 20:59:19.022995-03	\N
4648	Strawberry Tea, Large	774	Wendy’s	2	90	0	0	0	0	20	22	0	20	0	110	2023-09-22 20:59:19.022995-03	\N
4649	Strawberry Tea, Medium	775	Wendy’s	2	60	0	0	0	0	15	16	0	14	0	74	2023-09-22 20:59:19.022995-03	\N
4650	Strawberry Tea, Small	776	Wendy’s	2	45	0	0	0	0	10	11	0	10	0	55	2023-09-22 20:59:19.022995-03	\N
4651	Sweetened Iced Tea, Large	777	Wendy’s	2	300	0	0	0	0	25	77	0	75	0	375	2023-09-22 20:59:19.022995-03	\N
4652	Sweetened Iced Tea, Medium	778	Wendy’s	2	220	0	0	0	0	20	58	0	56	0	276	2023-09-22 20:59:19.022995-03	\N
4653	Sweetened Iced Tea, Small	779	Wendy’s	2	160	0	0	0	0	10	41	0	40	0	200	2023-09-22 20:59:19.022995-03	\N
4654	Vanilla Iced Coffee, Medium	780	Wendy’s	2	250	8	5	0	25	40	42	0	39	3	291	2023-09-22 20:59:19.022995-03	\N
4655	Vanilla Iced Coffee, Small	781	Wendy’s	2	170	6	3.5	0	20	30	28	0	26	2	198	2023-09-22 20:59:19.022995-03	\N
4656	Classic Chocolate Frosty, Junior	782	Wendy’s	2	200	5	3	0	20	90	33	0	27	6	224	2023-09-22 20:59:19.022995-03	\N
4657	Classic Chocolate Frosty, Large	783	Wendy’s	2	590	15	10	0.5	60	260	99	0	81	17	664	2023-09-22 20:59:19.022995-03	\N
4658	Classic Chocolate Frosty, Medium	784	Wendy’s	2	470	12	8	0.5	50	210	79	0	65	13	530	2023-09-22 20:59:19.022995-03	\N
4659	Classic Chocolate Frosty, Small	785	Wendy’s	2	350	9	6	0	35	150	58	0	47	10	393	2023-09-22 20:59:19.022995-03	\N
4660	Vanilla Frosty, Junior	786	Wendy’s	2	190	5	3.5	0	25	90	32	0	27	5	216	2023-09-22 20:59:19.022995-03	\N
4661	Vanilla Frosty, Large	787	Wendy’s	2	570	15	10	0.5	70	260	94	0	78	15	643	2023-09-22 20:59:19.022995-03	\N
4662	Vanilla Frosty, Medium	788	Wendy’s	2	450	12	8	0.5	55	210	75	0	63	12	509	2023-09-22 20:59:19.022995-03	\N
4663	Vanilla Frosty, Small	789	Wendy’s	2	340	9	6	0	45	160	56	0	47	9	384	2023-09-22 20:59:19.022995-03	\N
4664	Chocolate Chunk Cookie	790	Wendy’s	2	310	16	8	0	20	210	40	2	24	3	339	2023-09-22 20:59:19.022995-03	\N
4665	Double Chocolate Chunk Cookie	791	Wendy’s	2	290	14	7	0	20	230	39	4	21	4	314	2023-09-22 20:59:19.022995-03	\N
4666	Sugar Cookie	792	Wendy’s	2	330	16	8	0	25	300	43	1	24	3	359	2023-09-22 20:59:19.022995-03	\N
4667	Wendy’s Kids’ Meal	793	Wendy’s	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4668	Kids 2 Piece Chicken Tenders	794	Wendy’s	2	200	10	1.5	0	45	620	13	0	0	15	187	2023-09-22 20:59:19.022995-03	\N
4669	Kids 4 Piece Chicken Nuggets	795	Wendy’s	2	170	11	2	0	35	340	10	0	0	9	163	2023-09-22 20:59:19.022995-03	\N
4670	Kids Cheeseburger	796	Wendy’s	2	280	13	6	0.5	50	540	25	1	5	15	276	2023-09-22 20:59:19.022995-03	\N
4671	Kids Grilled Chicken Wrap	797	Wendy’s	2	270	10	3.5	0	55	640	24	2	3	20	257	2023-09-22 20:59:19.022995-03	\N
4672	Kids Hamburger	798	Wendy’s	2	240	9	3.5	0.5	40	350	24	1	5	13	236	2023-09-22 20:59:19.022995-03	\N
4673	Artisan Egg Sandwich with Bacon	799	Wendy’s	2	320	17	8	0	245	750	25	1	4	18	314	2023-09-22 20:59:19.022995-03	\N
4674	Artisan Egg Sandwich with Sausage	800	Wendy’s	2	480	33	13	0	275	980	27	1	4	21	476	2023-09-22 20:59:19.022995-03	\N
4675	Bacon Breakfast Bowl	801	Wendy’s	2	510	28	9	0	245	1390	44	4	2	19	502	2023-09-22 20:59:19.022995-03	\N
4676	Biggie Breakfast Sandwich	802	Wendy’s	2	610	40	15	0	290	1400	37	2	7	27	605	2023-09-22 20:59:19.022995-03	\N
4677	Fresh-Baked Biscuit with Applewood Smoked Bacon	803	Wendy’s	2	410	24	13	0	235	970	34	1	5	15	413	2023-09-22 20:59:19.022995-03	\N
4678	Fresh Baked Biscuit with Natural Sausage	804	Wendy’s	2	590	41	19	0	270	1270	36	1	6	20	595	2023-09-22 20:59:19.022995-03	\N
4679	Gravy and Sausage Bowl	805	Wendy’s	2	450	22	6	0	220	1260	50	4	2	12	446	2023-09-22 20:59:19.022995-03	\N
4680	Honey Butter Chicken Biscuit	806	Wendy’s	2	500	26	12	0	50	1120	48	1	9	19	502	2023-09-22 20:59:19.022995-03	\N
4681	Sausage and Egg Burrito	807	Wendy’s	2	360	20	8	0	210	920	29	1	2	17	353	2023-09-22 20:59:19.022995-03	\N
4682	Sausage and Gravy Biscuit	808	Wendy’s	2	490	29	14	0	20	1400	49	2	6	8	502	2023-09-22 20:59:19.022995-03	\N
4683	Sausage Biscuit	809	Wendy’s	2	480	33	15	0	50	1010	35	1	5	12	488	2023-09-22 20:59:19.022995-03	\N
4684	Sausage Breakfast Bowl	810	Wendy’s	2	640	42	14	0	270	1540	46	4	3	21	636	2023-09-22 20:59:19.022995-03	\N
4685	Seasoned Home-Style Potatoes, Large	811	Wendy’s	2	360	13	2.5	0	0	1080	57	6	1	5	359	2023-09-22 20:59:19.022995-03	\N
4686	Seasoned Home-Style Potatoes, Medium	812	Wendy’s	2	250	9	1.5	0	0	750	39	4	1	4	249	2023-09-22 20:59:19.022995-03	\N
4687	Seasoned Home-Style Potatoes, Small	813	Wendy’s	2	230	8	1.5	0	0	680	35	4	0	3	229	2023-09-22 20:59:19.022995-03	\N
4688	Two Sausage and Egg Burritos	814	Wendy’s	2	720	41	16	0	420	1830	59	2	5	34	707	2023-09-22 20:59:19.022995-03	\N
4689	Two Sausage Biscuits	815	Wendy’s	2	960	65	31	0	95	2020	70	3	10	23	978	2023-09-22 20:59:19.022995-03	\N
4690	Limited Time Cinnabon Dessert  Biscuits	816	KFC	5	290	13	7	0	\N	580	40	2	17	4	310	2023-09-22 20:59:19.022995-03	\N
4691	Limited Time ORIGINAL RECIPE CHICKEN Chicken Breast	817	KFC	5	390	21	4	0	120	1190	11	2	0	39	355	2023-09-22 20:59:19.022995-03	\N
4692	Limited Time ORIGINAL RECIPE CHICKEN Chicken Limited Time Drumstick	818	KFC	5	130	8	1.5	0	55	430	4	1	0	12	119.5	2023-09-22 20:59:19.022995-03	\N
4693	Limited Time ORIGINAL RECIPE CHICKEN Chicken Thigh	819	KFC	5	280	19	4.5	0	100	910	8	1	0	19	265.5	2023-09-22 20:59:19.022995-03	\N
4694	Limited Time ORIGINAL RECIPE CHICKEN Chicken Whole Wing	820	KFC	5	130	8	2	0	55	380	3	0	0	10	122	2023-09-22 20:59:19.022995-03	\N
4695	Chicken Drumstick	821	KFC	5	250	21	3.5	0	50	530	6	1	0	11	242.5	2023-09-22 20:59:19.022995-03	\N
4696	Chicken Thigh	822	KFC	5	500	40	7	0	100	970	11	1	1	22	486	2023-09-22 20:59:19.022995-03	\N
4697	Chicken Whole Wing	823	KFC	5	290	25	4	0	45	520	6	1	1	10	285	2023-09-22 20:59:19.022995-03	\N
4698	Breast	824	KFC	5	260	12	3	0	130	790	1	0	0	38	225	2023-09-22 20:59:19.022995-03	\N
4699	Drumstick	825	KFC	5	100	6	1.5	0	55	260	0	0	0	11	90.5	2023-09-22 20:59:19.022995-03	\N
4700	Thigh	826	KFC	5	180	12	3.5	0	90	470	0	0	0	17	166.5	2023-09-22 20:59:19.022995-03	\N
4701	Whole Wing	827	KFC	5	180	15	2.5	0	35	450	5	1	0	8	174.5	2023-09-22 20:59:19.022995-03	\N
4702	Thigh	828	KFC	5	180	12	3.5	0	90	470	0	0	0	17	166.5	2023-09-22 20:59:19.022995-03	\N
4703	Whole Wing	829	KFC	5	180	15	2.5	0	35	450	5	1	0	8	174.5	2023-09-22 20:59:19.022995-03	\N
4704	EXTRA CRISPY  Chicken Breast	830	KFC	5	530	35	6	0	105	1150	18	0	0	35	501	2023-09-22 20:59:19.022995-03	\N
4705	EXTRA CRISPY  Chicken Drumstick	831	KFC	5	170	12	2	0	50	390	5	0	0	10	162	2023-09-22 20:59:19.022995-03	\N
4706	EXTRA CRISPY  Chicken Thigh	832	KFC	5	330	23	4.5	0	100	700	9	0	0	22	312.5	2023-09-22 20:59:19.022995-03	\N
4707	EXTRA CRISPY  Chicken Whole Wing	833	KFC	5	170	13	2	0	45	340	5	0	0	10	162	2023-09-22 20:59:19.022995-03	\N
4708	KENTUCKY GRILLED CHICKEN Breast	834	KFC	5	210	7	2	0	130	710	0	0	0	38	174	2023-09-22 20:59:19.022995-03	\N
4709	KENTUCKY GRILLED CHICKEN Drumstick	835	KFC	5	80	4	1	0	55	220	0	0	0	11	70	2023-09-22 20:59:19.022995-03	\N
4710	KENTUCKY GRILLED CHICKEN Thigh	836	KFC	5	150	9	3	0	90	420	0	0	0	17	136	2023-09-22 20:59:19.022995-03	\N
4711	KENTUCKY GRILLED CHICKEN Whole Wing	837	KFC	5	70	3	1	0	45	180	0	0	0	9	62	2023-09-22 20:59:19.022995-03	\N
4712	SPICY CRISPY CHICKEN Breast	838	KFC	5	350	20	3.5	0	100	1100	11	1	0	30	323.5	2023-09-22 20:59:19.022995-03	\N
4713	SPICY CRISPY CHICKEN Drumstick	839	KFC	5	130	8	1.5	0	40	420	5	1	0	9	122.5	2023-09-22 20:59:19.022995-03	\N
4714	SPICY CRISPY CHICKEN Thigh	840	KFC	5	270	20	3.5	0	65	720	10	1	0	13	260.5	2023-09-22 20:59:19.022995-03	\N
4715	SPICY CRISPY CHICKEN Whole Wing	841	KFC	5	120	8	1.5	0	35	350	5	0	0	7	114.5	2023-09-22 20:59:19.022995-03	\N
4716	EXTRA CRISPY  Tender (each)	842	KFC	5	220	16	2.5	0	25	460	9	\N	0	10	212.5	2023-09-22 20:59:19.022995-03	\N
4717	EXTRA CRISPY  Tender (each)	843	KFC	5	220	16	2.5	0	25	460	9	\N	0	10	212.5	2023-09-22 20:59:19.022995-03	\N
4718	KENTUCKY FRIED WINGS Buffalo	844	KFC	5	100	7	1.5	0	20	310	3	0	0	5	96.5	2023-09-22 20:59:19.022995-03	\N
4719	KENTUCKY FRIED WINGS Honey BBQ	845	KFC	5	100	6	1	0	20	210	8	0	4	5	100	2023-09-22 20:59:19.022995-03	\N
4720	KENTUCKY FRIED WINGS Nashville Hot	846	KFC	5	130	11	2	0	20	230	4	0	0	5	127	2023-09-22 20:59:19.022995-03	\N
4721	KENTUCKY FRIED WINGS Unsauced	847	KFC	5	80	6	1	0	20	150	3	0	0	5	76	2023-09-22 20:59:19.022995-03	\N
4722	POPCORN NUGGETS Kids	848	KFC	5	290	19	2.5	0	30	870	19	1	0	13	279.5	2023-09-22 20:59:19.022995-03	\N
4723	POPCORN NUGGETS Large	849	KFC	5	620	39	5	0	65	1820	39	2	0	27	598	2023-09-22 20:59:19.022995-03	\N
4724	BBQ Baked Beans	850	KFC	5	190	1	0	0	0	650	34	7	15	11	194	2023-09-22 20:59:19.022995-03	\N
4725	Biscuit	851	KFC	5	180	8	4.5	0	0	520	22	1	1	4	181.5	2023-09-22 20:59:19.022995-03	\N
4726	Coleslaw	852	KFC	5	170	12	2	0	\N	180	14	4	10	1	181	2023-09-22 20:59:19.022995-03	\N
4727	Corn on the Cob	853	KFC	5	70	\N	0	0	0	0	17	2	3	2	71	2023-09-22 20:59:19.022995-03	\N
4728	Honey Mustard – Dipping Sauce Cup	854	KFC	5	110	9	1.5	0	\N	120	6	0	6	0	117.5	2023-09-22 20:59:19.022995-03	\N
4729	Honey Sauce Packet	855	KFC	5	30	0	0	0	0	0	8	0	5	0	35	2023-09-22 20:59:19.022995-03	\N
4730	KFC Sauce – Dipping Sauce Cup	856	KFC	5	90	8	1.5	0	10	170	5	0	5	0	96.5	2023-09-22 20:59:19.022995-03	\N
4731	Lemon Juice Packet	857	KFC	5	5	0	0	0	0	20	1	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4732	Ranch – Dipping Sauce Cup	858	KFC	5	130	14	2.5	0	10	240	2	0	1	0	133.5	2023-09-22 20:59:19.022995-03	\N
4733	Strawberry Jam Packet	859	KFC	5	35	0	0	0	0	0	9	0	6	0	41	2023-09-22 20:59:19.022995-03	\N
4734	Capri Sun® 100% Juice Fruit Punch	860	KFC	5	80	0	0	0	0	25	21	0	20	0	100	2023-09-22 20:59:19.022995-03	\N
4735	Chocolate Milk 1%	861	KFC	5	150	\N	1.5	0	10	170	26	0	23	7	167.5	2023-09-22 20:59:19.022995-03	\N
4736	Musselman’s™ Applesauce	862	KFC	5	45	0	0	0	0	0	12	1	8	0	53	2023-09-22 20:59:19.022995-03	\N
4737	7UP® (12 fl oz)	863	KFC	5	140	0	0	0	0	50	35	0	35	0	175	2023-09-22 20:59:19.022995-03	\N
4738	7UP® (16 fl oz)	864	KFC	5	190	0	0	0	0	70	46	0	46	0	236	2023-09-22 20:59:19.022995-03	\N
4739	7UP® (20 fl oz)	865	KFC	5	240	0	0	0	0	85	58	0	58	0	298	2023-09-22 20:59:19.022995-03	\N
4740	7UP® (30 fl oz)	866	KFC	5	350	0	0	0	0	125	87	0	87	0	437	2023-09-22 20:59:19.022995-03	\N
4741	Classic Lemonade (1/2 Gallon)	867	KFC	5	880	0	0	0	0	780	234	0	228	0	1108	2023-09-22 20:59:19.022995-03	\N
4742	Classic Lemonade (20 fl oz)	868	KFC	5	140	0	0	0	0	130	39	0	38	0	178	2023-09-22 20:59:19.022995-03	\N
4743	Code Red Mountain Dew® (12 fl oz)	869	KFC	5	170	0	0	0	0	50	46	0	46	0	216	2023-09-22 20:59:19.022995-03	\N
4744	Code Red Mountain Dew® (16 fl oz)	870	KFC	5	230	0	0	0	0	65	62	0	62	0	292	2023-09-22 20:59:19.022995-03	\N
4745	Code Red Mountain Dew® (20 fl oz)	871	KFC	5	290	0	0	0	0	85	77	0	77	0	367	2023-09-22 20:59:19.022995-03	\N
4746	Code Red Mountain Dew® (30 fl oz)	872	KFC	5	430	0	0	0	0	125	116	0	115	0	545	2023-09-22 20:59:19.022995-03	\N
4747	Diet Dr Pepper® (12 fl oz)	873	KFC	5	0	0	0	0	0	70	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4749	Diet Dr Pepper® (20 fl oz)	875	KFC	5	0	0	0	0	0	120	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4750	Diet Dr Pepper® (30 fl oz)	876	KFC	5	0	0	0	0	0	180	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4751	Diet Mist Twst® (12 fl oz)	877	KFC	5	0	0	0	0	0	35	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4752	Diet Mist Twst® (16 fl oz)	878	KFC	5	0	0	0	0	0	50	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4753	Diet Mist Twst® (20 fl oz)	879	KFC	5	0	0	0	0	0	60	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4754	Diet Mist Twst® (30 fl oz)	880	KFC	5	5	0	0	0	0	95	0	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4755	Diet Mountain Dew® (12 fl oz)	881	KFC	5	0	0	0	0	0	55	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4756	Diet Mountain Dew® (16 fl oz)	882	KFC	5	5	0	0	0	0	75	1	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4757	Diet Mountain Dew® (30 fl oz)	883	KFC	5	10	0	0	0	0	140	1	0	1	0	11	2023-09-22 20:59:19.022995-03	\N
4758	Diet Pepsi® (12 fl oz)	884	KFC	5	0	0	0	0	0	55	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4759	Diet Pepsi® (16 fl oz)	885	Taco Bell	4	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4760	Diet Pepsi® (20 fl oz)	886	KFC	5	0	0	0	0	0	95	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4761	Diet Pepsi® (30 fl oz)	887	KFC	5	0	0	0	0	0	140	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4762	Diet Pepsi® Wild Cherry Pepsi® (12 fl oz)	888	KFC	5	0	0	0	0	0	35	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4763	Diet Pepsi® Wild Cherry Pepsi® (16 fl oz)	889	KFC	5	0	0	0	0	0	50	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4764	Diet Pepsi® Wild Cherry Pepsi® (20 fl oz)	890	KFC	5	0	0	0	0	0	60	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4765	Diet Pepsi® Wild Cherry Pepsi® (30 fl oz)	891	KFC	5	0	0	0	0	0	95	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4766	Dr Pepper® (12 fl oz)	892	KFC	5	140	0	0	0	0	45	39	0	38	0	178	2023-09-22 20:59:19.022995-03	\N
4767	Dr Pepper® (16 fl oz)	893	KFC	5	190	0	0	0	0	60	52	0	51	0	241	2023-09-22 20:59:19.022995-03	\N
4768	Dr Pepper® (20 fl oz)	894	KFC	5	240	0	0	0	0	75	65	0	64	0	304	2023-09-22 20:59:19.022995-03	\N
4769	Dr Pepper® (30 fl oz)	895	KFC	5	360	0	0	0	0	110	98	0	96	0	456	2023-09-22 20:59:19.022995-03	\N
4770	Lipton® Brisk® Lemon Tea (12 fl oz)	896	KFC	5	80	0	0	0	0	40	22	0	22	0	102	2023-09-22 20:59:19.022995-03	\N
4771	Lipton® Brisk® Lemon Tea (16 fl oz)	897	KFC	5	110	0	0	0	0	55	29	0	29	0	139	2023-09-22 20:59:19.022995-03	\N
4772	Lipton® Brisk® Lemon Tea (20 fl oz)	898	KFC	5	140	0	0	0	0	70	36	0	36	0	176	2023-09-22 20:59:19.022995-03	\N
4773	Lipton® Brisk® Lemon Tea (30 fl oz)	899	KFC	5	210	0	0	0	0	105	55	0	54	0	264	2023-09-22 20:59:19.022995-03	\N
4774	Lipton® Brisk® No Calorie Peach Iced Green Tea (12 fl oz)	900	KFC	5	0	0	0	0	0	105	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4775	Lipton® Brisk® No Calorie Peach Iced Green Tea (16 fl oz)	901	KFC	5	0	0	0	0	0	140	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4776	Lipton® Brisk® No Calorie Peach Iced Green Tea (20 fl oz)	902	KFC	5	5	0	0	0	0	180	0	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4777	Lipton® Brisk® No Calorie Peach Iced Green Tea (30 fl oz)	903	KFC	5	10	0	0	0	0	270	0	0	0	0	10	2023-09-22 20:59:19.022995-03	\N
4778	Lipton® Brisk® Raspberry Tea (12 fl oz)	904	KFC	5	80	0	0	0	0	45	20	0	20	0	100	2023-09-22 20:59:19.022995-03	\N
4779	Lipton® Brisk® Raspberry Tea (16 fl oz)	905	KFC	5	100	0	0	0	0	55	26	0	26	0	126	2023-09-22 20:59:19.022995-03	\N
4780	Lipton® Brisk® Raspberry Tea (20 fl oz)	906	KFC	5	130	0	0	0	0	70	33	0	33	0	163	2023-09-22 20:59:19.022995-03	\N
4781	Lipton® Brisk® Raspberry Tea (30 fl oz)	907	KFC	5	190	0	0	0	0	110	49	0	49	0	239	2023-09-22 20:59:19.022995-03	\N
4782	Lipton® Brisk® Sweet Iced Tea (12 fl oz)	908	KFC	5	80	0	0	0	0	45	22	0	21	0	101	2023-09-22 20:59:19.022995-03	\N
4783	Lipton® Brisk® Sweet Iced Tea (16 fl oz)	909	KFC	5	110	0	0	0	0	65	29	0	29	0	139	2023-09-22 20:59:19.022995-03	\N
4784	Lipton® Brisk® Sweet Iced Tea (20 fl oz)	910	KFC	5	130	0	0	0	0	80	36	0	36	0	166	2023-09-22 20:59:19.022995-03	\N
4785	Lipton® Brisk® Sweet Iced Tea (30 fl oz)	911	KFC	5	200	0	0	0	0	120	54	0	54	0	254	2023-09-22 20:59:19.022995-03	\N
4786	Lipton® Brisk® Unsweetened No Lemon Iced Tea (12 fl oz)	912	KFC	5	0	0	0	0	0	45	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4787	Lipton® Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	913	KFC	5	0	0	0	0	0	60	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4788	Lipton® Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	914	KFC	5	0	0	0	0	0	75	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4789	Lipton® Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	915	KFC	5	0	0	0	0	0	115	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4790	Manzanita Sol® (12 fl oz)	916	KFC	5	160	0	0	0	0	35	42	0	42	0	202	2023-09-22 20:59:19.022995-03	\N
4791	Manzanita Sol® (16 fl oz)	917	KFC	5	210	0	0	0	0	45	57	0	57	0	267	2023-09-22 20:59:19.022995-03	\N
4792	Manzanita Sol® (20 fl oz)	918	KFC	5	260	0	0	0	0	55	71	0	71	0	331	2023-09-22 20:59:19.022995-03	\N
4793	Manzanita Sol® (30 fl oz)	919	KFC	5	400	0	0	0	0	80	106	0	106	0	506	2023-09-22 20:59:19.022995-03	\N
4794	Miranda® Strawberry (12 fl oz)	920	KFC	5	160	0	0	0	0	70	44	0	44	0	204	2023-09-22 20:59:19.022995-03	\N
4795	Miranda® Strawberry (16 fl oz)	921	KFC	5	220	0	0	0	0	95	58	0	58	0	278	2023-09-22 20:59:19.022995-03	\N
4796	Miranda® Strawberry (20 fl oz)	922	KFC	5	270	0	0	0	0	120	73	0	73	0	343	2023-09-22 20:59:19.022995-03	\N
4797	Miranda® Strawberry (30 fl oz)	923	KFC	5	410	0	0	0	0	180	109	0	109	0	519	2023-09-22 20:59:19.022995-03	\N
4798	Mist Twst® (12 fl oz)	924	KFC	5	150	0	0	0	0	35	41	0	41	0	191	2023-09-22 20:59:19.022995-03	\N
4799	Mist Twst® (16 fl oz)	925	KFC	5	200	0	0	0	0	45	54	0	54	0	254	2023-09-22 20:59:19.022995-03	\N
4800	Mist Twst® (20 fl oz)	926	KFC	5	260	0	0	0	0	55	68	0	68	0	328	2023-09-22 20:59:19.022995-03	\N
4801	Mist Twst® (30 fl oz)	927	KFC	5	380	0	0	0	0	80	101	0	101	0	481	2023-09-22 20:59:19.022995-03	\N
4802	MNT DEW Sweet Lightning (20 fl oz)	928	KFC	5	120	0	0	0	0	190	32	0	25	0	145	2023-09-22 20:59:19.022995-03	\N
4803	Mountain Dew® (12 fl oz)	929	KFC	5	160	0	0	0	0	50	44	0	44	0	204	2023-09-22 20:59:19.022995-03	\N
4804	Mountain Dew® (16 fl oz)	930	KFC	5	220	0	0	0	0	70	59	0	58	0	278	2023-09-22 20:59:19.022995-03	\N
4805	Mountain Dew® (20 fl oz)	931	KFC	5	270	0	0	0	0	85	73	0	73	0	343	2023-09-22 20:59:19.022995-03	\N
4806	Mountain Dew® (30 fl oz)	932	KFC	5	410	0	0	0	0	125	110	0	109	0	519	2023-09-22 20:59:19.022995-03	\N
4807	Mug Root Beer® (12 fl oz)	933	KFC	5	140	0	0	0	0	45	39	0	39	0	179	2023-09-22 20:59:19.022995-03	\N
4808	Mug Root Beer® (16 fl oz)	934	KFC	5	190	0	0	0	0	60	52	0	52	0	242	2023-09-22 20:59:19.022995-03	\N
4809	Mug Root Beer® (20 fl oz)	935	KFC	5	240	0	0	0	0	75	65	0	65	0	305	2023-09-22 20:59:19.022995-03	\N
4810	Mug Root Beer® (30 fl oz)	936	KFC	5	360	0	0	0	0	110	98	0	98	0	458	2023-09-22 20:59:19.022995-03	\N
4811	Pepsi Zero Sugar® (12 fl oz)	937	KFC	5	0	0	0	0	0	35	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4812	Pepsi Zero Sugar® (16 fl oz)	938	KFC	5	0	0	0	0	0	50	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4813	Pepsi Zero Sugar® (20 fl oz)	939	KFC	5	0	0	0	0	0	60	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4814	Pepsi Zero Sugar® (30 fl oz)	940	KFC	5	0	0	0	0	0	95	1	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4815	Pepsi® (12 fl oz)	941	KFC	5	150	0	0	0	0	30	41	0	41	0	191	2023-09-22 20:59:19.022995-03	\N
4816	Pepsi® (16 fl oz)	942	Taco Bell	4	200	\N	\N	\N	\N	45	55	\N	\N	55	\N	2023-09-22 20:59:19.022995-03	\N
4817	Pepsi® (20 fl oz)	943	Taco Bell	4	250	\N	\N	\N	\N	55	69	\N	\N	69	\N	2023-09-22 20:59:19.022995-03	\N
4818	Pepsi® (30 fl oz)	944	KFC	5	380	0	0	0	0	80	104	0	103	0	483	2023-09-22 20:59:19.022995-03	\N
4819	Sobe Lifewater Yumberry Pomegranate (12 fl oz)	945	KFC	5	0	0	0	0	0	45	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4820	Sobe Lifewater Yumberry Pomegranate (16 fl oz)	946	KFC	5	0	0	0	0	0	65	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4821	Sobe Lifewater Yumberry Pomegranate (20 fl oz)	947	KFC	5	0	0	0	0	0	80	0	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4822	Sobe Lifewater Yumberry Pomegranate (30 fl oz)	948	KFC	5	5	0	0	0	0	120	1	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4823	Strawberry Lemonade (1/2 Gallon)	949	KFC	5	950	0	0	0	0	790	270	0	264	0	1214	2023-09-22 20:59:19.022995-03	\N
4824	Strawberry Lemonade (20 fl oz)	950	KFC	5	170	0	0	0	0	130	45	0	44	0	214	2023-09-22 20:59:19.022995-03	\N
4825	Tropicana® Fruit Punch (12 fl oz)	951	KFC	5	170	0	0	0	0	35	45	0	45	0	215	2023-09-22 20:59:19.022995-03	\N
4826	Tropicana® Fruit Punch (16 fl oz)	952	KFC	5	230	0	0	0	0	45	60	0	60	0	290	2023-09-22 20:59:19.022995-03	\N
4827	Tropicana® Fruit Punch (20 fl oz)	953	KFC	5	280	0	0	0	0	60	75	0	75	0	355	2023-09-22 20:59:19.022995-03	\N
4828	Tropicana® Fruit Punch (30 fl oz)	954	KFC	5	420	0	0	0	0	90	113	0	112	0	532	2023-09-22 20:59:19.022995-03	\N
4829	Tropicana® Light Lemonade (12 fl oz)	955	KFC	5	5	0	0	0	0	140	0	0	0	0	5	2023-09-22 20:59:19.022995-03	\N
4830	Tropicana® Light Lemonade (16 fl oz)	956	KFC	5	10	0	0	0	0	190	0	0	0	0	10	2023-09-22 20:59:19.022995-03	\N
4831	Tropicana® Light Lemonade (20 fl oz)	957	KFC	5	10	0	0	0	0	240	0	0	0	0	10	2023-09-22 20:59:19.022995-03	\N
4832	Tropicana® Light Lemonade (30 fl oz)	958	KFC	5	15	0	0	0	0	350	1	0	0	0	15	2023-09-22 20:59:19.022995-03	\N
4833	Tropicana® Pink Lemonade (12 fl oz)	959	KFC	5	150	0	0	0	0	160	40	0	40	0	190	2023-09-22 20:59:19.022995-03	\N
4834	Power Menu Bowl – Chicken	960	Taco Bell	4	470	170	19	6	0	70	1200	50	7	2	26	2023-09-22 20:59:19.022995-03	\N
4835	Tropicana® Pink Lemonade (16 fl oz)	961	KFC	5	210	0	0	0	0	210	53	0	53	0	263	2023-09-22 20:59:19.022995-03	\N
4836	Tropicana® Pink Lemonade (20 fl oz)	962	Taco Bell	4	260	\N	\N	\N	\N	260	67	\N	\N	67	\N	2023-09-22 20:59:19.022995-03	\N
4837	Tropicana® Pink Lemonade (30 fl oz)	963	KFC	5	390	0	0	0	0	390	100	0	100	0	490	2023-09-22 20:59:19.022995-03	\N
4838	Tropicana® Twister® Orange (12 fl oz)	964	KFC	5	170	0	0	0	0	35	46	0	46	0	216	2023-09-22 20:59:19.022995-03	\N
4839	Tropicana® Twister® Orange (16 fl oz)	965	KFC	5	230	0	0	0	0	50	61	0	61	0	291	2023-09-22 20:59:19.022995-03	\N
4840	Tropicana® Twister® Orange (20 fl oz)	966	KFC	5	290	0	0	0	0	60	76	0	76	0	366	2023-09-22 20:59:19.022995-03	\N
4841	Tropicana® Twister® Orange (30 fl oz)	967	KFC	5	430	0	0	0	0	90	115	0	114	0	544	2023-09-22 20:59:19.022995-03	\N
4842	Wild Cherry Pepsi® (12 fl oz)	968	KFC	5	160	0	0	0	0	30	42	0	42	0	202	2023-09-22 20:59:19.022995-03	\N
4843	Wild Cherry Pepsi® (16 fl oz)	969	KFC	5	210	0	0	0	0	40	56	0	56	0	266	2023-09-22 20:59:19.022995-03	\N
4844	Wild Cherry Pepsi® (20 fl oz)	970	KFC	5	260	0	0	0	0	50	70	0	70	0	330	2023-09-22 20:59:19.022995-03	\N
4845	Wild Cherry Pepsi® (30 fl oz)	971	KFC	5	390	0	0	0	0	80	105	0	105	0	495	2023-09-22 20:59:19.022995-03	\N
4846	Country Fried Steak without Peppered White Gravy	972	KFC	5	360	24	7	1	35	750	22	2	0	13	354	2023-09-22 20:59:19.022995-03	\N
4847	Country Fried Steak with Peppered White Gravy	973	KFC	5	390	26	7	1	35	910	26	2	0	13	384	2023-09-22 20:59:19.022995-03	\N
4848	Bacon Club Chalupa	974	Taco Bell	4	440	240	27	5	0	50	840	31	2	3	20	2023-09-22 20:59:19.022995-03	\N
4849	Blue Raspberry Freeze™ (16 oz)	975	Taco Bell	4	120	0	0	0	0	0	35	30	0	30	0	2023-09-22 20:59:19.022995-03	\N
4850	Blue Raspberry Freeze™ (20 oz)	976	Taco Bell	4	150	0	0	0	0	0	40	38	0	38	0	2023-09-22 20:59:19.022995-03	\N
4851	Loaded Nacho Taco	977	Taco Bell	4	250	110	12	4.5	0	25	610	24	3	2	10	2023-09-22 20:59:19.022995-03	\N
4852	Midnight Berry Freeze™ (16 oz)	978	Taco Bell	4	140	0	0	0	0	0	35	35	0	34	0	2023-09-22 20:59:19.022995-03	\N
4853	Midnight Berry Freeze™ (20 oz)	979	Taco Bell	4	170	0	0	0	0	0	40	43	0	42	0	2023-09-22 20:59:19.022995-03	\N
4854	Nacho Fries BellGrande®	980	Taco Bell	4	710	360	40	6	0	30	1440	73	10	4	13	2023-09-22 20:59:19.022995-03	\N
4855	Black Bean Chalupa – Online Exclusive	981	Taco Bell	4	330	140	15	3	0	10	430	39	5	3	10	2023-09-22 20:59:19.022995-03	\N
4856	Black Bean Quesarito – Online Exclusive	982	Taco Bell	4	630	270	29	10	0	35	1260	73	7	5	19	2023-09-22 20:59:19.022995-03	\N
4857	Quesarito – Online Exclusive	983	Taco Bell	4	650	300	33	12	0.5	55	1390	67	6	5	22	2023-09-22 20:59:19.022995-03	\N
4858	Chalupa Supreme® – Beef	984	Taco Bell	4	350	170	18	5	0	25	560	33	4	3	13	2023-09-22 20:59:19.022995-03	\N
4859	Chalupa Supreme® – Chicken	985	Taco Bell	4	330	140	15	3.5	0	35	560	31	2	3	16	2023-09-22 20:59:19.022995-03	\N
4860	Chalupa Supreme® – Steak	986	Taco Bell	4	330	140	16	4	0	30	530	32	2	3	15	2023-09-22 20:59:19.022995-03	\N
4861	Cheesy Gordita Crunch	987	Taco Bell	4	500	250	28	10	0.5	55	850	41	5	4	20	2023-09-22 20:59:19.022995-03	\N
4862	Crunchy Taco	988	Taco Bell	4	170	80	9	3.5	0	25	310	13	3	\N	8	2023-09-22 20:59:19.022995-03	\N
4863	Crunchy Taco Supreme®	989	Taco Bell	4	190	100	11	4.5	0	25	340	15	3	2	8	2023-09-22 20:59:19.022995-03	\N
4864	Loaded Nacho Taco (New)	990	Taco Bell	4	250	110	12	4.5	0	25	610	24	3	2	10	2023-09-22 20:59:19.022995-03	\N
4865	Nacho Cheese Doritos® Locos Taco	991	Taco Bell	4	170	80	9	3.5	0	25	360	13	3	\N	8	2023-09-22 20:59:19.022995-03	\N
4866	Nacho Cheese Doritos® Locos Taco Supreme®	992	Taco Bell	4	190	100	11	4.5	0	30	380	15	3	2	8	2023-09-22 20:59:19.022995-03	\N
4867	Soft Taco – Beef	993	Taco Bell	4	180	80	9	4	0	25	500	17	3	1	9	2023-09-22 20:59:19.022995-03	\N
4868	Soft Taco – Chicken	994	Taco Bell	4	180	60	7	3.5	0	35	520	18	2	2	13	2023-09-22 20:59:19.022995-03	\N
4869	Soft Taco Supreme®	995	Taco Bell	4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-22 20:59:19.022995-03	\N
4870	Soft Taco – Beef	996	Taco Bell	4	180	80	9	4	0	25	500	17	3	1	9	2023-09-22 20:59:19.022995-03	\N
4871	Soft Taco – Chicken	997	Taco Bell	4	180	60	7	3.5	0	35	520	18	2	2	13	2023-09-22 20:59:19.022995-03	\N
4872	Bean Burrito (V)	998	Taco Bell	4	350	80	9	3.5	0	5	1000	54	11	3	13	2023-09-22 20:59:19.022995-03	\N
4873	Beefy 5-Layer Burrito	999	Taco Bell	4	490	160	18	7	0	30	1250	63	9	5	18	2023-09-22 20:59:19.022995-03	\N
4874	Burrito Supreme® – Beef	1000	Taco Bell	4	390	130	14	6	0	25	1110	51	9	4	16	2023-09-22 20:59:19.022995-03	\N
4875	Burrito Supreme® – Chicken	1001	Taco Bell	4	370	100	11	4.5	0	35	1110	49	8	4	19	2023-09-22 20:59:19.022995-03	\N
4876	Burrito Supreme® – Steak	1002	Taco Bell	4	370	110	12	5	0	30	1090	49	7	4	18	2023-09-22 20:59:19.022995-03	\N
4877	Chili Cheese Burrito (regional)	1003	Taco Bell	4	370	150	17	8	0	35	970	40	4	2	16	2023-09-22 20:59:19.022995-03	\N
4878	Quesarito – Beef	1004	Taco Bell	4	650	300	33	12	0.5	55	1390	67	6	5	22	2023-09-22 20:59:19.022995-03	\N
4879	Quesarito – Chicken	1005	Taco Bell	4	620	270	29	11	0	65	1390	66	4	4	25	2023-09-22 20:59:19.022995-03	\N
4880	Quesarito – Steak	1006	Taco Bell	4	630	270	30	11	0	60	1370	66	4	4	24	2023-09-22 20:59:19.022995-03	\N
4881	Chips and Nacho Cheese Sauce (V)	1007	Taco Bell	4	220	120	13	1.5	0	\N	250	24	2	2	2	2023-09-22 20:59:19.022995-03	\N
4882	Nacho Fries (V) (New)	1008	Taco Bell	4	320	160	18	1.5	0	\N	630	35	4	2	4	2023-09-22 20:59:19.022995-03	\N
4883	Nacho Fries BellGrande® (New)	1009	Taco Bell	4	710	360	40	6	0	30	1440	73	10	4	13	2023-09-22 20:59:19.022995-03	\N
4884	Nachos BellGrande® – Beef	1010	Taco Bell	4	740	340	38	7	0	25	1050	82	15	5	16	2023-09-22 20:59:19.022995-03	\N
4885	Nachos BellGrande® – Chicken	1011	Taco Bell	4	720	310	35	6	0	35	1050	81	14	5	20	2023-09-22 20:59:19.022995-03	\N
4886	Nachos BellGrande® – Steak	1012	Taco Bell	4	720	320	36	6	0	30	1030	81	14	5	19	2023-09-22 20:59:19.022995-03	\N
4887	Beef Quesarito	1013	Taco Bell	4	650	300	33	12	0.5	55	1390	67	6	5	22	2023-09-22 20:59:19.022995-03	\N
4888	Black Bean Quesarito (V)	1014	Taco Bell	4	630	270	29	10	0	35	1260	73	7	5	19	2023-09-22 20:59:19.022995-03	\N
4889	Quesadilla – Cheese (V)	1015	Taco Bell	4	470	230	25	12	0.5	50	990	37	4	2	19	2023-09-22 20:59:19.022995-03	\N
4890	Quesadilla – Chicken	1016	Taco Bell	4	510	240	26	12	0.5	75	1250	38	4	2	27	2023-09-22 20:59:19.022995-03	\N
4891	Quesadilla – Steak	1017	Taco Bell	4	520	240	27	12	0.5	70	1230	38	4	2	27	2023-09-22 20:59:19.022995-03	\N
4892	Bacon Club Chalupa – Specialties	1018	Taco Bell	4	440	240	27	5	0	50	840	31	2	3	20	2023-09-22 20:59:19.022995-03	\N
4893	Black Bean Chalupa – Specialties	1019	Taco Bell	4	330	140	15	3	0	10	430	39	5	3	10	2023-09-22 20:59:19.022995-03	\N
4894	Black Bean Crunchwrap Supreme – Specialties	1020	Taco Bell	4	510	160	17	4.5	0	5	1080	77	8	6	13	2023-09-22 20:59:19.022995-03	\N
4895	Black Bean Quesarito – Specialties	1021	Taco Bell	4	630	270	29	10	0	35	1260	73	7	5	19	2023-09-22 20:59:19.022995-03	\N
4896	Chalupa Supreme® – Specialties	1022	Taco Bell	4	350	170	18	5	0	25	560	33	4	3	13	2023-09-22 20:59:19.022995-03	\N
4897	Cheesy Gordita Crunch – Specialties	1023	Taco Bell	4	500	250	28	10	0.5	55	850	41	5	4	20	2023-09-22 20:59:19.022995-03	\N
4898	Cheesy Roll Up – Specialties	1024	Taco Bell	4	180	80	9	5	0	20	430	15	2	\N	9	2023-09-22 20:59:19.022995-03	\N
4899	Crunchwrap Supreme® – Specialties	1025	Taco Bell	4	530	190	21	6	0	25	1200	71	6	6	16	2023-09-22 20:59:19.022995-03	\N
4900	Crunchy Taco – Specialties	1026	Taco Bell	4	170	80	9	3.5	0	25	310	13	3	\N	8	2023-09-22 20:59:19.022995-03	\N
4901	Nacho Cheese Doritos® Locos Taco – Specialties	1027	Taco Bell	4	170	80	9	3.5	0	25	360	13	3	\N	8	2023-09-22 20:59:19.022995-03	\N
4902	Nachos BellGrande® – Specialties	1028	Taco Bell	4	740	340	38	7	0	25	1050	82	15	5	16	2023-09-22 20:59:19.022995-03	\N
4903	Power Menu Bowl – Specialties	1029	Taco Bell	4	470	170	19	6	0	70	1200	50	7	2	26	2023-09-22 20:59:19.022995-03	\N
4904	Quesadilla – Specialties	1030	Taco Bell	4	510	240	26	12	0.5	75	1250	38	4	2	27	2023-09-22 20:59:19.022995-03	\N
4905	Quesarito – Specialties	1031	Taco Bell	4	650	300	33	12	0.5	55	1390	67	6	5	22	2023-09-22 20:59:19.022995-03	\N
4906	Soft Taco – Specialties	1032	Taco Bell	4	180	80	9	4	0	25	500	17	3	1	9	2023-09-22 20:59:19.022995-03	\N
4907	Soft Taco Supreme – Specialties	1033	Taco Bell	4	210	90	10	5	0	25	520	20	3	2	10	2023-09-22 20:59:19.022995-03	\N
4908	Veggie Power Menu Bowl – Specialties	1034	Taco Bell	4	430	160	17	5	0	20	810	57	10	2	12	2023-09-22 20:59:19.022995-03	\N
4909	Black Beans (V)	1035	Taco Bell	4	50	10	1	0	0	0	135	8	3	0	2	2023-09-22 20:59:19.022995-03	\N
4910	Cinnabon® Delights™ (2 Pk) (V)	1036	Taco Bell	4	160	80	9	2	0	5	80	17	0	10	2	2023-09-22 20:59:19.022995-03	\N
4911	Cinnabon® Delights™ (12 Pk – Serves 4) (V)	1037	Taco Bell	4	930	480	53	13	2	40	480	104	3	59	9	2023-09-22 20:59:19.022995-03	\N
4912	Cinnamon Twists (V)	1038	Taco Bell	4	170	50	6	0	0	0	210	27	\N	13	1	2023-09-22 20:59:19.022995-03	\N
4913	Diablo Sauce Packet (V)	1039	Taco Bell	4	0	0	0	0	0	0	30	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4914	Fire Sauce Packet (V)	1040	Taco Bell	4	0	0	0	0	0	0	55	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4915	Hot Sauce Packet (V)	1041	Taco Bell	4	0	0	0	0	0	0	45	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4916	Mild Sauce Packet (V)	1042	Taco Bell	4	0	0	0	0	0	0	30	0	0	0	0	2023-09-22 20:59:19.022995-03	\N
4917	Blue Raspberry Freeze™ (16 oz) (New)	1043	Taco Bell	4	120	0	0	0	0	0	35	30	0	30	0	2023-09-22 20:59:19.022995-03	\N
4918	Blue Raspberry Freeze™ (20 oz) (New)	1044	Taco Bell	4	150	0	0	0	0	0	40	38	0	38	0	2023-09-22 20:59:19.022995-03	\N
4919	Dragon Fruit Freeze (16 oz)	1045	Taco Bell	4	190	0	0	0	0	0	50	49	0	47	0	2023-09-22 20:59:19.022995-03	\N
4920	Dragon Fruit Freeze (20 oz)	1046	Taco Bell	4	230	0	0	0	0	0	60	59	0	57	0	2023-09-22 20:59:19.022995-03	\N
4921	Lowfat Milk – CA (Regional)	1047	Taco Bell	4	100	20	2	1.5	0	10	130	13	0	12	9	2023-09-22 20:59:19.022995-03	\N
4922	Lowfat Milk – Federal (Regional)	1048	Taco Bell	4	80	20	2	1.5	0	10	100	10	0	9	7	2023-09-22 20:59:19.022995-03	\N
4923	Midnight Berry Freeze™ (16 oz) (New)	1049	Taco Bell	4	140	0	0	0	0	0	35	35	0	34	0	2023-09-22 20:59:19.022995-03	\N
4924	Midnight Berry Freeze™ (20 oz) (New)	1050	Taco Bell	4	170	0	0	0	0	0	40	43	0	42	0	2023-09-22 20:59:19.022995-03	\N
4925	Mtn Dew® Baja Blast Freeze™ (16 oz)	1051	Taco Bell	4	150	0	0	0	0	0	45	41	0	41	0	2023-09-22 20:59:19.022995-03	\N
4926	Mtn Dew® Baja Blast Freeze™ (20 oz)	1052	Taco Bell	4	190	0	0	0	0	0	55	51	0	51	0	2023-09-22 20:59:19.022995-03	\N
4927	Premium Hot Coffee	1053	Taco Bell	4	10	0	0	0	0	0	0	0	0	0	2	2023-09-22 20:59:19.022995-03	\N
4928	Regular Iced Coffee	1054	Taco Bell	4	10	0	0	0	0	0	0	0	0	0	2	2023-09-22 20:59:19.022995-03	\N
4929	Wild Strawberry Freeze™ (16 oz)	1055	Taco Bell	4	150	0	0	0	0	0	40	41	0	41	0	2023-09-22 20:59:19.022995-03	\N
4930	Wild Strawberry Freeze™ (20 oz)	1056	Taco Bell	4	190	0	0	0	0	0	55	51	0	51	0	2023-09-22 20:59:19.022995-03	\N
4931	Beef Burrito – Value Menu	1057	Taco Bell	4	430	170	19	5	0	20	970	51	4	3	12	2023-09-22 20:59:19.022995-03	\N
4932	Cheesy Bean & Rice Burrito – Value Menu	1058	Taco Bell	4	420	140	16	4	0	\N	880	56	7	3	10	2023-09-22 20:59:19.022995-03	\N
4933	Cheesy Roll Up – Value Menu	1059	Taco Bell	4	180	80	9	5	0	20	430	15	2	\N	9	2023-09-22 20:59:19.022995-03	\N
4934	Chicken Chipotle Melt – Value Menu	1060	Taco Bell	4	190	80	9	3	0	35	530	15	1	\N	12	2023-09-22 20:59:19.022995-03	\N
4935	Chips and Nacho Cheese Sauce – Value Menu	1061	Taco Bell	4	220	120	13	1.5	0	\N	250	24	2	2	2	2023-09-22 20:59:19.022995-03	\N
4936	Cinnamon Twists – Value Menu	1062	Taco Bell	4	170	50	6	0	0	0	210	27	\N	13	1	2023-09-22 20:59:19.022995-03	\N
4937	Loaded Nacho Taco – Value Menu	1063	Taco Bell	4	250	110	12	4.5	0	25	610	24	3	2	10	2023-09-22 20:59:19.022995-03	\N
4938	Bean Burrito	1064	Taco Bell	4	350	80	9	3.5	0	5	1000	54	11	3	13	2023-09-22 20:59:19.022995-03	\N
4939	Black Bean Chalupa	1065	Taco Bell	4	330	140	15	3	0	10	430	39	5	3	10	2023-09-22 20:59:19.022995-03	\N
4940	Black Bean Crunchwrap Supreme	1066	Taco Bell	4	510	160	17	4.5	0	5	1080	77	8	6	13	2023-09-22 20:59:19.022995-03	\N
4941	Black Bean Quesarito	1067	Taco Bell	4	630	270	29	10	0	35	1260	73	7	5	19	2023-09-22 20:59:19.022995-03	\N
4942	Black Beans & Rice	1068	Taco Bell	4	170	30	3.5	0	0	0	320	31	4	0	4	2023-09-22 20:59:19.022995-03	\N
4943	Cheese Quesadilla	1069	Taco Bell	4	470	230	25	12	0.5	50	990	37	4	2	19	2023-09-22 20:59:19.022995-03	\N
4944	Cheesy Bean & Rice Burrito	1070	Taco Bell	4	420	140	16	4	0	\N	880	56	7	3	10	2023-09-22 20:59:19.022995-03	\N
4945	Cheesy Roll Up	1071	Taco Bell	4	180	80	9	5	0	20	430	15	2	\N	9	2023-09-22 20:59:19.022995-03	\N
4946	Chips and Nacho Cheese Sauce	1072	Taco Bell	4	220	120	13	1.5	0	\N	250	24	2	2	2	2023-09-22 20:59:19.022995-03	\N
4947	Cinnabon® Delights™ (2 Pack)	1073	Taco Bell	4	160	80	9	2	0	5	80	17	0	10	2	2023-09-22 20:59:19.022995-03	\N
4948	Cinnabon® Delights™ (12 Pack – Serves 4)	1074	Taco Bell	4	930	480	53	13	2	40	480	104	3	59	9	2023-09-22 20:59:19.022995-03	\N
4949	Cinnamon Twists	1075	Taco Bell	4	170	50	6	0	0	0	210	27	\N	13	1	2023-09-22 20:59:19.022995-03	\N
4950	Hash Brown	1076	Taco Bell	4	160	100	12	1	0	0	270	13	2	0	1	2023-09-22 20:59:19.022995-03	\N
4951	Power Menu Bowl – Veggie	1077	Taco Bell	4	430	160	17	5	0	20	810	57	10	2	12	2023-09-22 20:59:19.022995-03	\N
4952	Power Menu Bowl – Steak	1078	Taco Bell	4	480	180	20	7	0	60	1150	51	7	2	25	2023-09-22 20:59:19.022995-03	\N
4953	Power Menu Bowl – Veggie (V)	1079	Taco Bell	4	430	160	17	5	0	20	810	57	10	2	12	2023-09-22 20:59:19.022995-03	\N
4954	Breakfast Crunchwrap – Bacon	1080	Taco Bell	4	670	370	41	12	0	140	1270	50	4	3	21	2023-09-22 20:59:19.022995-03	\N
4955	Breakfast Crunchwrap – Sausage	1081	Taco Bell	4	720	430	47	15	0	145	1210	51	4	3	21	2023-09-22 20:59:19.022995-03	\N
4956	Breakfast Crunchwrap – Steak	1082	Taco Bell	4	660	350	38	12	0	145	1300	51	4	3	24	2023-09-22 20:59:19.022995-03	\N
4957	Breakfast Salsa Packet (V)	1083	Taco Bell	4	0	0	0	0	0	0	50	\N	0	0	0	2023-09-22 20:59:19.022995-03	\N
4958	Cheesy Toasted Breakfast Burrito – Bacon	1084	Taco Bell	4	350	150	16	4.5	0	115	870	36	2	3	13	2023-09-22 20:59:19.022995-03	\N
4959	Cheesy Toasted Breakfast Burrito – Fiesta Potato (V)	1085	Taco Bell	4	340	130	14	3.5	0	100	750	43	3	3	10	2023-09-22 20:59:19.022995-03	\N
4960	Cheesy Toasted Breakfast Burrito – Sausage	1086	Taco Bell	4	340	160	17	5	0	110	730	36	2	3	11	2023-09-22 20:59:19.022995-03	\N
4961	Cinnabon® Delights™ (2 Pack) (V)	1087	Taco Bell	4	160	80	9	2	0	5	80	17	0	10	2	2023-09-22 20:59:19.022995-03	\N
4962	Cinnabon® Delights™ (12 Pack – Serves 4) (V)	1088	Taco Bell	4	930	480	53	13	2	40	480	104	3	59	9	2023-09-22 20:59:19.022995-03	\N
4963	Grande Toasted Breakfast Burrito – Bacon	1089	Taco Bell	4	560	270	30	10	0	230	1290	49	4	3	24	2023-09-22 20:59:19.022995-03	\N
4964	Grande Toasted Breakfast Burrito – Sausage	1090	Taco Bell	4	560	280	31	10	0	230	1150	49	4	3	22	2023-09-22 20:59:19.022995-03	\N
4965	Grande Toasted Breakfast Burrito – Steak	1091	Taco Bell	4	560	250	28	9	0	240	1310	50	4	3	27	2023-09-22 20:59:19.022995-03	\N
4966	Hash Brown Toasted Breakfast Burrito – Bacon	1092	Taco Bell	4	570	300	33	10	0	135	1270	49	4	2	21	2023-09-22 20:59:19.022995-03	\N
4967	Hash Brown Toasted Breakfast Burrito – Sausage	1093	Taco Bell	4	570	300	34	10	0	130	1130	49	4	2	18	2023-09-22 20:59:19.022995-03	\N
4968	Hash Brown Toasted Breakfast Burrito – Steak	1094	Taco Bell	4	570	270	30	9	0	140	1290	50	4	2	24	2023-09-22 20:59:19.022995-03	\N
4969	Brisk® Mango Iced Tea (16 fl oz)	1095	Taco Bell	4	100	\N	\N	\N	\N	50	26	\N	\N	26	\N	2023-09-22 20:59:19.022995-03	\N
4970	Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	1096	Taco Bell	4	0	\N	\N	\N	\N	60	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4971	Diet Dr Pepper® (16 fl oz)	1097	Taco Bell	4	0	\N	\N	\N	\N	95	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4972	Diet Mtn Dew® (16 fl oz)	1098	Taco Bell	4	5	\N	\N	\N	\N	75	1	\N	\N	1	\N	2023-09-22 20:59:19.022995-03	\N
4973	Diet Pepsi® (16 fl oz)	1099	Taco Bell	4	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4974	Dr Pepper® (16 fl oz)	1100	Taco Bell	4	190	\N	\N	\N	\N	60	52	\N	\N	51	\N	2023-09-22 20:59:19.022995-03	\N
4975	G2 – Fruit Punch (16 fl oz)	1101	Taco Bell	4	30	\N	\N	\N	\N	140	7	\N	\N	6	\N	2023-09-22 20:59:19.022995-03	\N
4976	Mtn Dew® (16 fl oz)	1102	Taco Bell	4	220	\N	\N	\N	\N	70	59	\N	\N	58	\N	2023-09-22 20:59:19.022995-03	\N
4977	Mtn Dew® Baja Blast™ (16 fl oz)	1103	Taco Bell	4	220	\N	\N	\N	\N	65	59	\N	\N	59	\N	2023-09-22 20:59:19.022995-03	\N
4978	Mtn Dew® Baja Blast Zero Sugar (16 fl oz)	1104	Taco Bell	4	5	\N	\N	\N	\N	70	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4979	Mtn Dew® Kickstart™ Orange Citrus (16 fl oz)	1105	Taco Bell	4	70	\N	\N	\N	\N	75	18	\N	\N	18	\N	2023-09-22 20:59:19.022995-03	\N
4980	Mug® Root Beer (16 fl oz)	1106	Taco Bell	4	190	\N	\N	\N	\N	60	52	\N	\N	52	\N	2023-09-22 20:59:19.022995-03	\N
4981	Pepsi® Wild Cherry (16 fl oz)	1107	Taco Bell	4	210	\N	\N	\N	\N	40	56	\N	\N	56	\N	2023-09-22 20:59:19.022995-03	\N
4982	Pepsi® Zero Sugar (16 fl oz)	1108	Taco Bell	4	0	\N	\N	\N	\N	85	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4983	Sierra Mist® (16 fl oz)	1109	Taco Bell	4	200	\N	\N	\N	\N	45	54	\N	\N	54	\N	2023-09-22 20:59:19.022995-03	\N
4984	Tropicana® Pink Lemonade (16 fl oz)	1110	Taco Bell	4	210	\N	\N	\N	\N	210	53	\N	\N	53	\N	2023-09-22 20:59:19.022995-03	\N
4985	7-Up (20 fl oz)	1111	Taco Bell	4	240	\N	\N	\N	\N	85	58	\N	\N	58	\N	2023-09-22 20:59:19.022995-03	\N
4986	Brisk® Mango Iced Tea (20 fl oz)	1112	Taco Bell	4	120	\N	\N	\N	\N	60	32	\N	\N	32	\N	2023-09-22 20:59:19.022995-03	\N
4987	Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	1113	Taco Bell	4	0	\N	\N	\N	\N	75	0	\N	\N	0	\N	2023-09-22 20:59:19.022995-03	\N
4988	Pan Pizza Slices Pepperoni Lover’s® Personal Pan	1114	Pizza Hut	3	180	9	3.5	0	20	370	17	1	2	8	\N	2023-09-22 20:59:19.022995-03	\N
4989	Pan Pizza Slices Pepperoni Lover’s® Medium	1115	Pizza Hut	3	300	15	6	0	35	580	28	2	1	13	\N	2023-09-22 20:59:19.022995-03	\N
4990	Pan Pizza Slices Pepperoni Lover’s® Large	1116	Pizza Hut	3	440	24	9	0.5	50	850	37	3	2	19	\N	2023-09-22 20:59:19.022995-03	\N
4991	Pan Pizza Slices Supreme Personal Pan	1117	Pizza Hut	3	170	8	3	0	15	360	18	1	2	7	\N	2023-09-22 20:59:19.022995-03	\N
4992	Pan Pizza Slices Supreme Medium	1118	Pizza Hut	3	270	13	5	0	25	500	29	2	2	11	\N	2023-09-22 20:59:19.022995-03	\N
4993	Pan Pizza Slices Supreme Large	1119	Pizza Hut	3	390	20	7	0	40	740	37	2	2	16	\N	2023-09-22 20:59:19.022995-03	\N
4994	Pan Pizza Slices Ultimate Cheese Lover’s® Personal Pan	1120	Pizza Hut	3	170	8	3.5	0	15	330	17	1	2	8	\N	2023-09-22 20:59:19.022995-03	\N
4995	Pan Pizza Slices Ultimate Cheese Lover’s® Medium	1121	Pizza Hut	3	270	13	5	0	25	470	27	2	1	12	\N	2023-09-22 20:59:19.022995-03	\N
4996	Pan Pizza Slices Ultimate Cheese Lover’s® Large	1122	Pizza Hut	3	390	20	8	0	40	670	36	2	2	17	\N	2023-09-22 20:59:19.022995-03	\N
4997	Pan Pizza Slices Veggie Lover’s® Personal Pan	1123	Pizza Hut	3	140	5	2	0	10	290	18	1	2	6	\N	2023-09-22 20:59:19.022995-03	\N
4998	Pan Pizza Slices Veggie Lover’s® Medium	1124	Pizza Hut	3	230	9	3.5	0	15	420	29	2	2	9	\N	2023-09-22 20:59:19.022995-03	\N
4999	Pan Pizza Slices Veggie Lover’s® Large	1125	Pizza Hut	3	330	15	5	0	25	620	38	3	3	14	\N	2023-09-22 20:59:19.022995-03	\N
5000	Hand Tossed Slices Backyard BBQ Chicken Small	1126	Pizza Hut	3	140	4	2	0	15	250	20	1	4	6	\N	2023-09-22 20:59:19.022995-03	\N
5001	Hand Tossed Slices Backyard BBQ Chicken Medium	1127	Pizza Hut	3	220	7	3	0	20	390	31	2	6	10	\N	2023-09-22 20:59:19.022995-03	\N
5002	Hand Tossed Slices Backyard BBQ Chicken Large	1128	Pizza Hut	3	300	10	4.5	0	30	530	40	2	7	14	\N	2023-09-22 20:59:19.022995-03	\N
5003	Hand Tossed Slices Beyond Meat® Pepperoni Medium	1129	Pizza Hut	3	200	7	3.5	0	15	410	26	2	1	9	\N	2023-09-22 20:59:19.022995-03	\N
5004	Hand Tossed Slices Beyond Meat® Pepperoni Large	1130	Pizza Hut	3	280	10	5	0	20	560	35	3	2	12	\N	2023-09-22 20:59:19.022995-03	\N
5005	Hand Tossed Slices  Buffalo Chicken Small	1131	Pizza Hut	3	130	\N	1.5	0	10	380	19	\N	\N	6	\N	2023-09-22 20:59:19.022995-03	\N
5006	Hand Tossed Slices  Buffalo Chicken Medium	1132	Pizza Hut	3	200	5	2.5	0	20	560	28	2	1	9	\N	2023-09-22 20:59:19.022995-03	\N
5007	Hand Tossed Slices  Buffalo Chicken Large	1133	Pizza Hut	3	270	8	4	0	30	740	37	2	2	13	\N	2023-09-22 20:59:19.022995-03	\N
5008	Hand Tossed Slices Cheese Small	1134	Pizza Hut	3	130	\N	2	0	10	250	17	1	\N	6	\N	2023-09-22 20:59:19.022995-03	\N
5009	Hand Tossed Slices Cheese Medium	1135	Pizza Hut	3	210	8	3.5	0	20	390	26	2	1	10	\N	2023-09-22 20:59:19.022995-03	\N
5010	Hand Tossed Slices Cheese Large	1136	Pizza Hut	3	290	10	5	0	30	540	34	3	2	13	\N	2023-09-22 20:59:19.022995-03	\N
5011	Hand Tossed Slices Chicken Bacon Parmesan Small	1137	Pizza Hut	3	150	6	2.5	0	15	270	16	1	\N	7	\N	2023-09-22 20:59:19.022995-03	\N
5012	Hand Tossed Slices Chicken Bacon Parmesan Medium	1138	Pizza Hut	3	230	9	4	0	25	410	25	2	1	11	\N	2023-09-22 20:59:19.022995-03	\N
5013	Hand Tossed Slices Chicken Bacon Parmesan Large	1139	Pizza Hut	3	310	13	5	0	35	560	33	2	1	16	\N	2023-09-22 20:59:19.022995-03	\N
5014	Hand Tossed Slices Hawaiian Chicken Small	1140	Pizza Hut	3	130	4	1.5	0	10	270	17	1	1	7	\N	2023-09-22 20:59:19.022995-03	\N
5015	Hand Tossed Slices Hawaiian Chicken Medium	1141	Pizza Hut	3	210	6	3	0	20	420	27	2	2	10	\N	2023-09-22 20:59:19.022995-03	\N
5016	Hand Tossed Slices Hawaiian Chicken Large	1142	Pizza Hut	3	280	9	4	0	30	580	36	3	3	15	\N	2023-09-22 20:59:19.022995-03	\N
5017	Hand Tossed Slices Meat Lover’s® Small	1143	Pizza Hut	3	180	9	3.5	0	20	370	17	1	\N	7	\N	2023-09-22 20:59:19.022995-03	\N
5018	Hand Tossed Slices Meat Lover’s® Medium	1144	Pizza Hut	3	290	15	6	0	30	590	26	2	1	12	\N	2023-09-22 20:59:19.022995-03	\N
5019	Hand Tossed Slices Meat Lover’s® Large	1145	Pizza Hut	3	390	21	8	0	45	830	34	3	2	17	\N	2023-09-22 20:59:19.022995-03	\N
5020	Hand Tossed Slices Pepperoni Medium	1146	Pizza Hut	3	220	9	4	0	20	420	25	2	1	9	\N	2023-09-22 20:59:19.022995-03	\N
5021	Hand Tossed Slices Pepperoni Large	1147	Pizza Hut	3	300	13	6	0	30	590	34	3	2	13	\N	2023-09-22 20:59:19.022995-03	\N
5022	Hand Tossed Slices Pepperoni Lover’s® Small	1148	Pizza Hut	3	160	7	3	0	20	310	17	1	\N	7	\N	2023-09-22 20:59:19.022995-03	\N
5023	Hand Tossed Slices Pepperoni Lover’s® Medium	1149	Pizza Hut	3	270	13	6	0	35	530	26	2	1	12	\N	2023-09-22 20:59:19.022995-03	\N
5024	Hand Tossed Slices Pepperoni Lover’s® Large	1150	Pizza Hut	3	370	18	8	0	50	740	35	3	2	17	\N	2023-09-22 20:59:19.022995-03	\N
5025	Hand Tossed Slices Supreme Small	1151	Pizza Hut	3	150	6	2.5	0	15	280	17	1	1	6	\N	2023-09-22 20:59:19.022995-03	\N
5026	Hand Tossed Slices Supreme Medium	1152	Pizza Hut	3	240	10	4	0	25	450	26	2	2	10	\N	2023-09-22 20:59:19.022995-03	\N
5027	Hand Tossed Slices Supreme Large	1153	Pizza Hut	3	320	14	6	0	35	630	35	3	2	14	\N	2023-09-22 20:59:19.022995-03	\N
5028	Hand Tossed Slices Ultimate Cheese Lover’s® Small	1154	Pizza Hut	3	150	6	2.5	0	15	250	16	1	\N	6	\N	2023-09-22 20:59:19.022995-03	\N
5029	Hand Tossed Slices Ultimate Cheese Lover’s® Medium	1155	Pizza Hut	3	230	10	4.5	0	25	390	25	2	1	11	\N	2023-09-22 20:59:19.022995-03	\N
5030	Hand Tossed Slices Ultimate Cheese Lover’s® Large	1156	Pizza Hut	3	310	13	6	0	35	540	33	2	1	15	\N	2023-09-22 20:59:19.022995-03	\N
5031	Hand Tossed Slices Veggie Lover’s® Small	1157	Pizza Hut	3	120	4	1.5	0	10	230	17	1	1	5	\N	2023-09-22 20:59:19.022995-03	\N
5032	Hand Tossed Slices Veggie Lover’s® Medium	1158	Pizza Hut	3	200	6	2.5	0	15	370	27	2	2	8	\N	2023-09-22 20:59:19.022995-03	\N
5033	Hand Tossed Slices Veggie Lover’s® Large	1159	Pizza Hut	3	260	9	4	0	20	510	36	3	3	11	\N	2023-09-22 20:59:19.022995-03	\N
\.


--
-- Data for Name: snack; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.snack (id, name, company_name, summary, id_company, "createdAt", "updatedAt") FROM stdin;
1	Hotcakes	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
2	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
3	Water	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
4	 	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
5	7-Up (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
6	Hamburger	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
7	Cheeseburger	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
8	Double Cheeseburger	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
9	McDouble	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
10	 Quarter Pounder® with Cheese	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
11	Double Quarter Pounder® with Cheese	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
12	Big Mac®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
13	Big N’ Tasty®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
14	Big N’ Tasty® with Cheese	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
15	Angus Bacon & Cheese	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
16	Angus Deluxe	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
17	Angus Mushroom & Swiss	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
18	Filet-O-Fish®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
19	McChicken ®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
20	McRib ®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
21	Premium Grilled Chicken Classic Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
22	Milk 1%	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
23	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
24	Premium Crispy Chicken Ranch BLT Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
25	Southern Style Crispy Chicken Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
26	Ranch Snack Wrap® (Crispy)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
27	Ranch Snack Wrap® (Grilled)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
28	Honey Mustard Snack Wrap® (Crispy)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
29	Honey Mustard Snack Wrap® (Grilled)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
30	Chipotle BBQ Snack Wrap® (Crispy)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
31	Chipotle BBQ Snack Wrap® (Grilled)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
32	Angus Bacon & Cheese Snack Wrap	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
33	Angus Chipotle BBQ Bacon	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
34	Angus Chipotle BBQ Bacon Snack Wrap	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
35	Angus Deluxe Snack Wrap	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
36	Angus Mushroom & Swiss Snack Wrap	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
37	Mac Snack Wrap	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
38	Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
39	Diet Dr Pepper® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
40	Pepsi® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
41	Chicken Selects® Premium Breast Strips (5 pc)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
42	Spicy Buffalo Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
43	Creamy Ranch Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
44	Tangy Honey Mustard Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
45	Southwestern Chipotle Barbeque Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
46	Premium Southwest Salad with Grilled Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
47	Premium Southwest Salad with Crispy Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
48	Premium Southwest Salad (without chicken)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
49	Premium Bacon Ranch Salad with Grilled Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
50	Salad Dressings	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
51	Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
52	Chicken Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
53	Black Beans & Rice (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
54	Chicken McNuggets® (6 piece)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
55	Chicken McNuggets® (10 piece)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
56	Barbeque Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
57	Honey	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
58	Hot Mustard Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
59	Sweet ‘N Sour Sauce	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
60	Chicken Selects® Premium Breast Strips (3 pc)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
61	SOFT DRINKS BY CUP SIZE (*no ice)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
62	Iced Coffees	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
63	Premium Grilled Chicken Club Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
64	Premium Crispy Chicken Club Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
65	Premium Grilled Chicken Ranch BLT Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
66	Newman’s Own® Creamy Southwest Dressing	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
67	Newman’s Own® Creamy Caesar Dressing	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
68	Newman’s Own® Low Fat Balsamic Vinaigrette	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
69	Newman’s Own® Low Fat Family Recipe Italian Dressing	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
70	Newman’s Own® Ranch Dressing	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
71	Sausage McMuffin®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
72	Sausage McMuffin® with Egg	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
73	English Muffin	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
74	Bacon, Egg & Cheese Biscuit (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
75	Bacon, Egg & Cheese Biscuit (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
76	Sausage Biscuit with Egg (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
77	Sausage Biscuit with Egg (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
78	Diet Mtn Dew® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
79	Diet Pepsi® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
80	Dr Pepper® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
81	G2 – Fruit Punch (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
82	Mtn Dew® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
83	Mtn Dew® Baja Blast™ (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
84	Mtn Dew® Baja Blast Zero Sugar (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
85	Mtn Dew® Kickstart™ Orange Citrus (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
86	Mug® Root Beer (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
87	Side Items	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
88	Sprite®‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
89	Medium French Fries	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
90	Large French Fries	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
91	Ketchup Packet	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
92	Salt Packet	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
93	Chicken McNuggets® (4 piece)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
94	Premium Bacon Ranch Salad with Crispy Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
95	Pepsi® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
96	Pepsi® Wild Cherry (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
97	Pepsi® Zero Sugar (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
98	Sierra Mist® (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
99	Tropicana® Pink Lemonade (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
100	FOUNTAIN BEVERAGES (30 OZ)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
101	Brisk® Mango Iced Tea (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
102	Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
103	Diet Dr Pepper® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
104	Diet Mtn Dew® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
105	McCafe Coffees – Whole Milk	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
106	Flame Broiled Burgers	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
107	Beverage	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
108	KFC® Gizzards	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
109	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
110	Premium Bacon Ranch Salad (without chicken)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
111	Premium Caesar Salad with Grilled Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
112	Premium Caesar Salad with Crispy Chicken	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
113	Premium Caesar Salad (without chicken)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
114	Side Salad	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
115	Butter Garlic Croutons	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
116	Snack Size Fruit & Walnut Salad	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
117	Egg McMuffin®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
118	Hotcake Syrup	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
119	Diet Pepsi® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
120	Dr Pepper® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
121	G2 – Fruit Punch (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
122	Mtn Dew® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
123	Mtn Dew® Baja Blast™ (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
124	Mtn Dew® Baja Blast Zero Sugar (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
125	Mtn Dew® Kickstart™ Orange Citrus (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
126	Mug® Root Beer (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
127	Pepsi® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
128	Pepsi® Wild Cherry (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
129	Pepsi® Zero Sugar (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
130	Sierra Mist® (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
131	Tropicana® Pink Lemonade (30 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
132	Detroit Double Cheesy Pizza Slice	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
133	Detroit Double Pepperoni Pizza Slice	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
134	Detroit Meaty Pizza Slice	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
135	Detroit Supremo Pizza Slice	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
136	Pan Pizza Slices Backyard BBQ Chicken Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
137	Coca Cola classic®‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
138	BK® Café	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
139	7-Up (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
140	Pan Pizza Slices Backyard BBQ Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
141	Pan Pizza Slices Beyond Meat® Pepperoni Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
142	Pan Pizza Slices Beyond Meat® Pepperoni Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
143	Pan Pizza Slices Buffalo Chicken Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
144	Pan Pizza Slices Buffalo Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
145	Pan Pizza Slices Buffalo Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
146	Pan Pizza Slices Cheese Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
147	Pan Pizza Slices Cheese Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
148	Pan Pizza Slices Cheese Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
149	Pan Pizza Slices Chicken Bacon Parmesan Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
150	Pan Pizza Slices Chicken Bacon Parmesan Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
151	Pan Pizza Slices Chicken Bacon Parmesan Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
152	Pan Pizza Slices Hawaiian Chicken Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
153	Pan Pizza Slices Hawaiian Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
154	Pan Pizza Slices Hawaiian Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
155	Pan Pizza Slices Meat Lover’s® Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
156	Pan Pizza Slices Meat Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
157	Pan Pizza Slices Meat Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
158	Frappes	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
159	Diet Coke®‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
160	Orange Juice	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
161	Green Beans	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
162	KFC® Cornbread Muffin	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
163	Macaroni & Cheese	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
164	Macaroni Salad	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
165	Mashed Potatoes	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
166	Mashed Potatoes With Gravy	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
167	Potato Salad	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
168	Secret Recipe Fries	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
169	Sweet Kernel Corn	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
170	BBQ Baked Beans (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
171	Coleslaw (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
172	Corn on the Cob (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
173	Green Beans (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
174	Macaroni & Cheese (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
175	Macaroni Salad (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
176	Mashed Potatoes (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
177	Mashed Potatoes With Gravy (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
178	Potato Salad (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
179	Secret Recipe Fries (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
180	Sweet Kernel Corn (Family)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
181	Chicken Littles	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
182	Chicken Littles – Buffalo	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
183	Chicken Littles – Honey BBQ	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
184	Chicken Littles – Nashville Hot	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
185	Classic Chicken Sandwich	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
186	Crispy Colonel’s Sandwich	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
187	Crispy Colonel’s Sandwich – Buffalo	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
188	Crispy Colonel’s Sandwich – Honey BBQ	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
189	Crispy Colonel’s Sandwich – Nashville Hot	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
190	Crispy Twister®	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
191	Honey BBQ Sandwich	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
192	Spicy Chicken Sandwich	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
193	Chicken Pot Pie	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
194	KFC® Famous Bowl	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
195	KFC® Famous Bowl – Snack Size	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
196	Caesar Side Salad	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
197	House Side Salad	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
198	Heinz Buttermilk Dressing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
199	Hidden Valley The Original Ranch Fat Free Dressing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
200	KFC® Creamy Parmesan Caesar Dressing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
201	Marzetti Light Italian Dressing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
202	Parmesan Garlic Croutons	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
203	Apple Turnover	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
204	Café Valley Chocolate Chip Cake (1 Slice)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
205	Café Valley Lemon Cake (1 Slice)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
206	Café Valley Mini Chocolate Chip Cake	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
207	Café Valley Mini Lemon Cake	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
208	Chocolate Chip Cookie	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
209	Oreo Cookies and Crème Pie	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
210	Reese’s Peanut Butter Pie	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
211	BBQ – Dipping Sauce Cup	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
212	Colonel’s Buttery Spread	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
213	Grape Jelly Packet	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
214	Hash Brown (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
215	Sausage Biscuit (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
216	Pan Pizza Slices Backyard BBQ Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
217	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
218	Pan Pizza Slices Pepperoni Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
219	Pan Pizza Slices Pepperoni Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
220	Pan Pizza Slices Pepperoni Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
221	Sausage Biscuit (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
222	Southern Style Chicken Biscuit (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
223	Southern Style Chicken Biscuit (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
224	Steak, Egg & Cheese Bagel	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
225	Bacon, Egg & Cheese McGriddles®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
226	Sausage, Egg & Cheese McGriddles®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
227	Sausage McGriddles®	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
228	Big Breakfast® (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
229	Big Breakfast® (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
230	Big Breakfast with Hotcakes (Regular Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
231	Big Breakfast with Hotcakes (Large Size Biscuit)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
232	Sausage Burrito	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
233	McSkillet™ Burrito with Sausage	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
234	Chili, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
235	KFC® Livers	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
236	Premium Crispy Chicken Classic Sandwich	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
237	Small French Fries	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
238	Hotcakes and Sausage	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
239	Whipped Margarine (1 pat)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
240	Hash Brown	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
241	Grape Jam	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
242	Strawberry Preserves	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
243	Bacon, Egg & Cheese Bagel	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
244	Fruit & Maple Oatmeal	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
245	Fruit & Maple Oatmeal without Brown Sugar	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
246	Hamburger Happy Meal	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
247	Hand Tossed Slices Pepperoni Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
248	4 Piece Chicken McNuggets Happy Meal	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
249	6 Piece Chicken McNuggets® Happy Meal	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
250	Fruit ‘n Yogurt Parfait (7 oz)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
251	Low Fat Caramel Dip	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
252	Vanilla Reduced Fat Ice Cream Cone	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
253	Kiddie Cone	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
254	Strawberry Sundae	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
255	Hot Caramel Sundae	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
256	Hot Fudge Sundae	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
257	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
258	Peanuts (for Sundaes)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
259	McFlurry® with M&M’S® Candies (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
260	McFlurry® with OREO® Cookies (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
261	Baked Hot Apple Pie	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
262	Cinnamon Melts	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
263	McDonaldland® Cookies	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
264	Chocolate Chip Cookie	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
265	Oatmeal Raisin Cookie	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
266	Sugar Cookie	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
267	Apple Dippers with Low Fat Caramel Dip	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
268	Chocolate McCafé® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
269	Chocolate McCafé® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
270	Chocolate McCafé® Shake (22 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
271	Chocolate Triple Thick® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
272	Chocolate Triple Thick® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
273	Chocolate Triple Thick® Shake (21 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
274	Chocolate Triple Thick® Shake (32 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
275	Snack Size McFlurry® with M&M’S® Candies	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
276	Snack Size McFlurry® with OREO® Cookies	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
277	Strawberry McCafé® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
278	Strawberry McCafé® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
279	Strawberry McCafé® Shake (22 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
280	Strawberry Triple Thick® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
281	Strawberry Triple Thick® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
855	Honey Sauce Packet	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
282	Strawberry Triple Thick® Shake (21 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
283	Strawberry Triple Thick® Shake (32 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
284	Vanilla McCafé® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
285	Vanilla McCafé® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
286	Vanilla McCafé® Shake (22 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
287	Vanilla Triple Thick Shake® (32 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
288	Vanilla Triple Thick® Shake (12 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
289	Vanilla Triple Thick® Shake (16 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
290	Vanilla Triple Thick® Shake (21 fl oz cup)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
291	1% Low Fat Milk Jug	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
292	1% Low Fat Chocolate Milk Jug	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
293	Minute Maid® 100% Apple Juice Box	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
294	Dasani® Water	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
295	Minute Maid® Orange Juice (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
296	Minute Maid® Orange Juice (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
297	Minute Maid® Orange Juice (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
298	Coca-Cola® Classic (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
299	Coca-Cola® Classic (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
300	Coca-Cola® Classic (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
301	Coca-Cola® Classic (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
302	Diet Coke® (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
303	Diet Coke® (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
304	Diet Coke® (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
305	Diet Coke® (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
306	Sprite® (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
307	Sprite® (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
308	Sprite® (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
309	Sprite® (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
310	Hi-C® Orange Lavaburst (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
311	Hi-C® Orange Lavaburst (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
312	Hi-C® Orange Lavaburst (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
313	Hi-C® Orange Lavaburst (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
314	POWERade® Mountain Blast (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
315	POWERade® Mountain Blast (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
316	POWERade® Mountain Blast (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
317	Soft Serve Cone	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
318	POWERade® Mountain Blast (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
319	Iced Tea (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
320	Iced Tea (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
321	Iced Tea (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
322	Iced Tea (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
323	Coffee (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
324	Coffee (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
325	Coffee Cream	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
326	Sugar Packet	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
327	EQUAL® 0\nCalorie Sweetener	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
328	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
329	SPLENDA® No\nCalorie Sweetener	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
330	Iced Coffee– Caramel (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
331	Iced Coffee– Caramel (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
332	Iced Coffee– Caramel (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
333	Iced Coffee– Hazelnut (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
334	Iced Coffee– Hazelnut (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
335	Iced Coffee– Hazelnut (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
336	Iced Coffee– Regular (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
337	Iced Coffee– Regular (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
338	Iced Coffee– Regular (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
339	Iced Coffee– Vanilla (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
340	Iced Coffee– Vanilla (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
341	Iced Coffee– Vanilla (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
342	Iced Coffee with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
343	Iced Coffee with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
344	Iced Coffee with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
345	Sweet Tea (Child)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
346	Sweet Tea (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
347	Sweet Tea (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
348	Sweet Tea (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
349	Nonfat Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
350	Nonfat Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
351	Nonfat Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
352	Nonfat Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
353	Nonfat Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
354	Nonfat Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
355	Nonfat Caramel Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
356	Nonfat Caramel Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
357	Nonfat Caramel Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
358	Nonfat Caramel Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
359	Nonfat Caramel Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
360	Nonfat Caramel Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
361	Nonfat Hazelnut Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
362	Nonfat Hazelnut Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
363	Nonfat Hazelnut Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
364	Nonfat Hazelnut Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
365	Nonfat Hazelnut Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
366	Nonfat Hazelnut Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
367	Nonfat Vanilla Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
368	Nonfat Vanilla Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
369	Nonfat Vanilla Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
370	Nonfat Vanilla Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
371	Nonfat Vanilla Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
372	Nonfat Vanilla Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
373	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
374	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
375	Dutch Apple Pie	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
376	Nonfat Cappuccino with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
377	Nonfat Latte with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
378	Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
379	Nonfat Latte with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
380	Mocha with Nonfat Milk (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
381	Mocha with Nonfat Milk (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
382	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
383	Mocha with Nonfat Milk (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
384	Hot Chocolate with Nonfat Milk (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
385	Hot Chocolate with Nonfat Milk (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
386	Hot Chocolate with Nonfat Milk (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
387	Iced Nonfat Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
388	Iced Nonfat Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
389	Iced Nonfat Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
390	Iced Nonfat Caramel Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
391	Iced Nonfat Caramel Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
392	Iced Nonfat Caramel Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
393	Iced Nonfat Hazelnut Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
394	Iced Nonfat Hazelnut Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
395	Iced Nonfat Hazelnut Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
396	Iced Nonfat Vanilla Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
397	Iced Nonfat Vanilla Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
398	Iced Nonfat Vanilla Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
399	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
400	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
401	Iced Nonfat Latte with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
402	Iced Mocha with Nonfat Milk (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
403	Iced Nonfat Caramel Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
404	Iced Nonfat Caramel Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
405	Iced Nonfat Caramel Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
406	Nonfat Caramel Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
407	Nonfat Caramel Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
408	Nonfat Caramel Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
409	Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
410	Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
411	Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
412	Latte (Small) 	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
413	Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
414	Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
415	40 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
416	Caramel Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
417	Caramel Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
418	Caramel Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
419	Caramel Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
420	Caramel Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
421	Caramel Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
422	Hazelnut Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
423	Hazelnut Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
424	Hazelnut Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
425	Hazelnut Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
426	Hazelnut Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
427	Hazelnut Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
428	Vanilla Cappuccino (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
429	Vanilla Cappuccino (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
430	Vanilla Cappuccino (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
431	Vanilla Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
432	Vanilla Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
433	Vanilla Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
434	Cappuccino with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
435	Cappuccino with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
436	Cappuccino with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
437	Latte with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
438	Nacho Fries	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
439	Latte with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
440	Latte with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
441	Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
442	Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
443	Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
444	Hot Chocolate (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
445	Hot Chocolate (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
446	Hot Chocolate (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
447	Iced Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
448	Iced Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
449	Iced Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
450	Iced Caramel Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
451	Iced Caramel Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
452	Iced Caramel Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
453	Iced Hazelnut Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
454	Iced Hazelnut Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
455	Iced Hazelnut Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
456	Iced Vanilla Latte (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
457	Iced Vanilla Latte (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
458	Iced Vanilla Latte (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
459	Iced Latte with Sugar Free Vanilla Syrup (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
460	Iced Latte with Sugar Free Vanilla Syrup (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
461	Iced Latte with Sugar Free Vanilla Syrup (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
462	Iced Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
463	Caramel Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
464	Caramel Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
465	Caramel Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
466	Iced Caramel Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
467	Iced Caramel Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
468	Iced Caramel Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
469	Frappe Caramel (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
470	Frappe Caramel (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
471	Frappe Caramel (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
472	Frappe Mocha (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
473	Frappe Mocha (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
474	Frappe Mocha (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
475	Strawberry Banana Smoothie (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
476	Strawberry Banana Smoothie (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
477	Strawberry Banana Smoothie (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
478	Wild Berry Smoothie (Large)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
479	Wild Berry Smoothie (Medium)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
480	Wild Berry Smoothie (Small)	McDonald’s	\N	1	2023-09-18 16:33:00.785489-03	\N
481	Whopper® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
482	Whopper® Sandwich with Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
483	Bacon & Cheese Whopper® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
484	Double Whopper® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
485	Double Whopper® Sandwich with Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
486	Triple Whopper® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
487	Triple Whopper® Sandwich with Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
488	Whopper JR.® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
489	Bacon King Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
490	Cheddar Bacon King Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
491	Single Quarter Pound King Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
492	Double Quarter Pound King Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
493	Single Stacker King	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
494	Double Stacker King	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
495	IMPOSSIBLE Whopper® Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
496	Hamburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
497	Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
498	Double Hamburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
499	Double Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
500	Extra Long Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
501	Bacon Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
502	Bacon Double Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
503	Crispy Chicken Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
504	Spicy Crispy Chicken Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
505	Original Chicken Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
506	Bacon & Cheese Crispy Chicken Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
507	BBQ Bacon Crispy Chicken Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
508	Crispy Chicken Jr.	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
509	Spicy Crispy Chicken Jr.	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
510	Chicken Nuggets- 4pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
511	Chicken Nuggets- 6pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
512	Chicken Nuggets- 10pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
513	Chicken Nuggets- 20pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
514	Spicy Chicken Nuggets- 4pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
515	Spicy Chicken Nuggets- 6pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
516	Spicy Chicken Nuggets- 10 pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
517	Spicy Chicken Nuggets- 20 pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
518	Chicken Fries – 9 pc.	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
519	Crispy Taco	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
520	BIG FISH Sandwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
521	Garden Chicken Salad with Crispy Chicken – no dressing	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
522	Club Salad with Crispy Chicken – no dressing	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
523	Garden Side Salad – w/o dressing	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
524	Ken’s Ranch Dressing	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
525	Ken’s Golden Italian Dressing	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
526	Mayonnaise (Packet)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
527	Ken’s Lite Honey Balsamic Vinaigrette	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
528	Buttery Garlic Croutons- Packet	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
529	Onion Rings – value	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
530	Onion Rings – small	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
531	Onion Rings – medium	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
532	Onion Rings – large	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
533	French Fries – value (unsalted)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
534	French Fries – small	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
535	French Fries – medium	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
536	French Fries – large	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
537	Kids Oatmeal	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
538	Chicken Nuggets- 4pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
539	Chicken Nuggets- 6pc	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
540	Hamburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
541	Cheeseburger	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
542	Mott’s® Natural Applesauce	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
543	Fat FREE Milk (8 fl oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
544	1% Low Fat Chocolate Milk (8 fl oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
545	Capri Sun® 100% Apple Juice (6 fl oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
546	PB&J Jamwich	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
547	HERSHEY®’S Sundae Pie	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
548	Pie made with TWIX®	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
549	OREO® Cookie Cheesecake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
550	Soft Serve Cone	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
551	Soft Serve Cup	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
552	HERSHEY®’s Chocolate Sundae	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
553	Caramel Sundae	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
554	Chocolate Chip Cookies (each)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
555	CROISSAN’WICH® Egg & Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
556	CROISSAN’WICH® Sausage, Egg & Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
557	CROISSAN’WICH® Ham, Egg & Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
558	CROISSAN’WICH® Bacon, Egg & Cheese	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
559	Fully Loaded CROISSAN’WICH®	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
560	Double CROISSAN’WICH® with Sausage & Bacon	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
561	Double CROISSAN’WICH® with Sausage	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
562	Double CROISSAN’WICH® with Ham & Sausage	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
563	Fully Loaded Biscuit	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
564	Ham, Egg, & Cheese Biscuit	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
565	Sausage, Egg, & Cheese Biscuit	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
566	Bacon, Egg & Cheese Biscuit	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
567	Sausage Biscuit	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
568	Breakfast Burrito Jr.	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
569	EGG-NORMOUS BURRITOΡ	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
570	BK™ Ultimate Breakfast Platter	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
571	NY Ultimate Platter (Regional menu item)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
572	Pancake and Sausage platter	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
573	Hash Browns – small	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
574	Hash Browns – medium	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
575	Hash Browns – large	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
576	French Toast Sticks (3 piece)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
577	French Toast Sticks (5 piece)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
578	Additional Options	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
579	American Cheese (slice)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
580	Ketchup (Packet)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
581	Strawberry or Grape Jam (packet)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
582	Breakfast Syrup (1 oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
583	Barbecue Dipping Sauce (1 oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
584	Ranch Dipping Sauce (1 oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
585	Buffalo Dipping Sauce (1 oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
586	BK® Café Coffee- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
587	Zesty Onion Ring Dipping Sauce (1 oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
588	Honey Mustard Dipping Sauce (1oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
589	Fat FREE Milk (8 fl oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
590	1% Low Fat Chocolate Milk (8 fl oz)	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
591	Smoothie: Strawberry Banana 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
592	Oreo® Shake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
593	Chocolate Oreo® Shake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
594	Vanilla Milk Shake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
595	HERSHEY®’S Chocolate Milk Shake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
596	Strawberry Milk Shake	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
597	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
598	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
599	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
600	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
601	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
602	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
603	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
604	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
605	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
606	Dr. Pepper®‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
607	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
608	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
609	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
610	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
611	Barq’s® Root Beer‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
612	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
613	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
614	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
615	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
616	Cherry Coke®‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
617	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
618	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
619	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
620	Fanta® Orange‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
621	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
622	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
623	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
624	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
625	Hi-C® Fruit Punch‡	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
626	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
627	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
628	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
629	38 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
630	MINUTE MAID® Light Lemonade	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
631	16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
632	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
633	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
634	Sweet Tea	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
635	20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
636	29 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
637	40 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
638	Unsweetened Tea	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
639	Capri Sun® 100% Apple Juice	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
640	Minute Maid® Orange Juice	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
641	Frozen Coke® – 16 oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
642	Hot Coffees	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
643	BK® Café Coffee- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
644	BK® Café Coffee- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
645	BK® Café Decaf Coffee- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
646	BK® Café Decaf Coffee- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
647	BK® Café Decaf Coffee- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
648	BK® Café Iced Vanilla Coffee- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
649	BK® Café Iced Vanilla Coffee- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
650	BK® Café Iced Vanilla Coffee- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
651	BK® Café Iced Mocha Coffee- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
652	BK® Café Iced Mocha Coffee- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
653	BK® Café Iced Mocha Coffee- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
654	BK® Café Mocha Frappe- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
655	BK® Café Mocha Frappe- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
656	BK® Café Mocha Frappe- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
657	BK® Café Caramel Frappe- 12 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
658	BK® Café Caramel Frappe- 16 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
659	BK® Café Caramel Frappe- 20 fl oz	Burger King	\N	6	2023-09-18 16:33:00.785489-03	\N
660	Baconator	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
661	Dave’s Double	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
662	Dave’s Single	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
663	Dave’s Triple	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
664	Double Stack	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
665	Jr. Bacon Cheeseburger	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
666	Jr. Cheeseburger	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
667	Jr. Cheeseburger Deluxe	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
668	Son of Baconator	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
669	3 Piece Chicken Tenders	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
670	4 Piece Chicken Nuggets	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
671	4 Piece Chicken Tenders	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
672	6 Picece Chicken Nuggets	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
673	6 Piece Chicken Tenders	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
674	10 Piece Chicken Nuggets	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
675	Crispy Chicken BLT	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
676	Crispy Chicken Sandwich	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
677	Grilled Asiago Ranch Club	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
678	Grilled Chicken Sandwich	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
679	Grilled Chicken Wrap	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
680	Ketchup	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
681	Homestyle Asiago Ranch Chicken Club	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
682	Homestyle Chicken Sandwich	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
683	S’Awesome Sauce	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
684	Spicy Asiago Ranch Club	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
685	Spicy Chicken Sandwich	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
686	Spicy Chicken Wrap	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
687	Apple Pecan Chicken Salad, Full Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
688	Apple Pecan Chicken Salad, Half Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
689	Berry Burst Chicken Salad, Full Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
690	Berry Burst Chicken Salad, Half Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
691	Caesar Side Salad	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
692	Garden Side Salad	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
693	Southwest Avocado Chicken Salad, Full Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
694	Southwest Avocado Chicken Salad, Half Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
695	Diet Mountain Dew® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
696	Spicy Caesar Chicken Salad, Full Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
697	Spicy Caesar Chicken Salad, Half Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
698	Taco Salad, Full Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
699	Taco Salad, Half Size	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
700	Apple Bites	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
701	Baconator Fries	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
702	Bacon Cheese Baked Potato	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
703	Cheese Baked Potato	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
704	Chili & Cheese Baked Potato	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
705	Chili, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
706	Chili Cheese Fries	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
707	Natural-Cut Fries, Junior	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
708	Natural-Cut Fries, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
709	Natural-Cut Fries, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
710	Natural-Cut Fries, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
711	Plain Baked Potato	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
712	Sour Cream and Chive Baked Potato	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
713	Summer Berry Burst Fruit Cup	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
714	1% Chocolate Milk	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
715	1% White Milk	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
716	All-Natural Lemonade, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
717	All-Natural Lemonade, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
718	All-Natural Lemonade, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
719	Apple Kiwi Fruit Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
720	Apple Kiwi Fruit Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
721	Apple Kiwi Fruit Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
722	Barq’s Root Beer, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
723	Barq’s Root Beer, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
724	Barq’s Root Beer, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
725	Brewed Unsweetened Iced Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
726	Brewed Unsweetened Iced Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
727	Brewed Unsweetened Iced Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
728	Caramel Iced Coffee, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
729	Caramel Iced Coffee, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
730	Coca-Cola, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
731	Coca-Cola, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
732	Coca-Cola, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
733	Coca-Cola Zero Sugar, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
734	Coca-Cola Zero Sugar, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
735	Coca-Cola Zero Sugar, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
736	Diet Coke, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
737	Diet Coke, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
738	Diet Coke, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
739	Dr Pepper, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
740	Dr Pepper, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
741	Dr Pepper, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
742	Fanta Orange, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
743	Fanta Orange, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
744	Fanta Orange, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
745	Hi-C Flashin’ Fruit Punch, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
746	Hi-C Flashin’ Fruit Punch, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
747	Hi-C Flashin’ Fruit Punch, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
748	Honest Tropical Green Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
749	Honest Tropical Green Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
750	Honest Tropical Green Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
751	Hot Tea	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
752	Limeade, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
753	Limeade, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
754	Limeade, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
755	Minute Maid Light Lemonade, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
756	Minute Maid Light Lemonade, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
757	Minute Maid Light Lemonade, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
758	Mocha Iced Coffee, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
759	Mocha Iced Coffee, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
760	Pear Berry Fruit Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
761	Pear Berry Fruit Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
762	Pear Berry Fruit Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
763	Skinny Vanilla Iced Coffee, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
764	Skinny Vanilla Iced Coffee, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
765	Small Sprite, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
766	Sprite, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
767	Sprite, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
768	Strawberry Lemonade, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
769	Strawberry Lemonade, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
770	Strawberry Lemonade, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
771	Strawberry Sweet Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
772	Strawberry Sweet Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
773	Strawberry Sweet Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
774	Strawberry Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
775	Strawberry Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
776	Strawberry Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
777	Sweetened Iced Tea, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
778	Sweetened Iced Tea, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
779	Sweetened Iced Tea, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
780	Vanilla Iced Coffee, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
781	Vanilla Iced Coffee, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
782	Classic Chocolate Frosty, Junior	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
783	Classic Chocolate Frosty, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
784	Classic Chocolate Frosty, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
785	Classic Chocolate Frosty, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
786	Vanilla Frosty, Junior	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
787	Vanilla Frosty, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
788	Vanilla Frosty, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
789	Vanilla Frosty, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
790	Chocolate Chunk Cookie	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
791	Double Chocolate Chunk Cookie	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
792	Sugar Cookie	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
793	Wendy’s Kids’ Meal	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
794	Kids 2 Piece Chicken Tenders	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
795	Kids 4 Piece Chicken Nuggets	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
796	Kids Cheeseburger	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
797	Kids Grilled Chicken Wrap	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
798	Kids Hamburger	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
799	Artisan Egg Sandwich with Bacon	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
800	Artisan Egg Sandwich with Sausage	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
801	Bacon Breakfast Bowl	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
802	Biggie Breakfast Sandwich	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
803	Fresh-Baked Biscuit with Applewood Smoked Bacon	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
804	Fresh Baked Biscuit with Natural Sausage	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
805	Gravy and Sausage Bowl	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
806	Honey Butter Chicken Biscuit	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
807	Sausage and Egg Burrito	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
808	Sausage and Gravy Biscuit	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
809	Sausage Biscuit	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
810	Sausage Breakfast Bowl	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
811	Seasoned Home-Style Potatoes, Large	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
812	Seasoned Home-Style Potatoes, Medium	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
813	Seasoned Home-Style Potatoes, Small	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
814	Two Sausage and Egg Burritos	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
815	Two Sausage Biscuits	Wendy’s	\N	2	2023-09-18 16:33:00.785489-03	\N
816	Limited Time Cinnabon Dessert  Biscuits	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
817	Limited Time ORIGINAL RECIPE CHICKEN Chicken Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
818	Limited Time ORIGINAL RECIPE CHICKEN Chicken Limited Time Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
819	Limited Time ORIGINAL RECIPE CHICKEN Chicken Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
820	Limited Time ORIGINAL RECIPE CHICKEN Chicken Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
821	Chicken Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
822	Chicken Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
823	Chicken Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
824	Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
825	Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
826	Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
827	Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
828	Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
829	Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
830	EXTRA CRISPY  Chicken Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
831	EXTRA CRISPY  Chicken Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
832	EXTRA CRISPY  Chicken Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
833	EXTRA CRISPY  Chicken Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
834	KENTUCKY GRILLED CHICKEN Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
835	KENTUCKY GRILLED CHICKEN Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
836	KENTUCKY GRILLED CHICKEN Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
837	KENTUCKY GRILLED CHICKEN Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
838	SPICY CRISPY CHICKEN Breast	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
839	SPICY CRISPY CHICKEN Drumstick	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
840	SPICY CRISPY CHICKEN Thigh	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
841	SPICY CRISPY CHICKEN Whole Wing	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
842	EXTRA CRISPY  Tender (each)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
843	EXTRA CRISPY  Tender (each)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
844	KENTUCKY FRIED WINGS Buffalo	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
845	KENTUCKY FRIED WINGS Honey BBQ	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
846	KENTUCKY FRIED WINGS Nashville Hot	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
847	KENTUCKY FRIED WINGS Unsauced	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
848	POPCORN NUGGETS Kids	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
849	POPCORN NUGGETS Large	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
850	BBQ Baked Beans	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
851	Biscuit	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
852	Coleslaw	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
853	Corn on the Cob	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
854	Honey Mustard – Dipping Sauce Cup	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
856	KFC Sauce – Dipping Sauce Cup	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
857	Lemon Juice Packet	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
858	Ranch – Dipping Sauce Cup	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
859	Strawberry Jam Packet	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
860	Capri Sun® 100% Juice Fruit Punch	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
861	Chocolate Milk 1%	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
862	Musselman’s™ Applesauce	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
863	7UP® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
864	7UP® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
865	7UP® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
866	7UP® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
867	Classic Lemonade (1/2 Gallon)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
868	Classic Lemonade (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
869	Code Red Mountain Dew® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
870	Code Red Mountain Dew® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
871	Code Red Mountain Dew® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
872	Code Red Mountain Dew® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
873	Diet Dr Pepper® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
874	Diet Dr Pepper® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
875	Diet Dr Pepper® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
876	Diet Dr Pepper® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
877	Diet Mist Twst® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
878	Diet Mist Twst® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
879	Diet Mist Twst® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
880	Diet Mist Twst® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
881	Diet Mountain Dew® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
882	Diet Mountain Dew® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
883	Diet Mountain Dew® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
884	Diet Pepsi® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
885	Diet Pepsi® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
886	Diet Pepsi® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
887	Diet Pepsi® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
888	Diet Pepsi® Wild Cherry Pepsi® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
889	Diet Pepsi® Wild Cherry Pepsi® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
890	Diet Pepsi® Wild Cherry Pepsi® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
891	Diet Pepsi® Wild Cherry Pepsi® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
892	Dr Pepper® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
893	Dr Pepper® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
894	Dr Pepper® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
895	Dr Pepper® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
896	Lipton® Brisk® Lemon Tea (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
897	Lipton® Brisk® Lemon Tea (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
898	Lipton® Brisk® Lemon Tea (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
899	Lipton® Brisk® Lemon Tea (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
900	Lipton® Brisk® No Calorie Peach Iced Green Tea (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
901	Lipton® Brisk® No Calorie Peach Iced Green Tea (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
902	Lipton® Brisk® No Calorie Peach Iced Green Tea (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
903	Lipton® Brisk® No Calorie Peach Iced Green Tea (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
904	Lipton® Brisk® Raspberry Tea (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
905	Lipton® Brisk® Raspberry Tea (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
906	Lipton® Brisk® Raspberry Tea (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
907	Lipton® Brisk® Raspberry Tea (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
908	Lipton® Brisk® Sweet Iced Tea (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
909	Lipton® Brisk® Sweet Iced Tea (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
910	Lipton® Brisk® Sweet Iced Tea (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
911	Lipton® Brisk® Sweet Iced Tea (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
912	Lipton® Brisk® Unsweetened No Lemon Iced Tea (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
913	Lipton® Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
914	Lipton® Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
915	Lipton® Brisk® Unsweetened No Lemon Iced Tea (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
916	Manzanita Sol® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
917	Manzanita Sol® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
918	Manzanita Sol® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
919	Manzanita Sol® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
920	Miranda® Strawberry (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
921	Miranda® Strawberry (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
922	Miranda® Strawberry (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
923	Miranda® Strawberry (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
924	Mist Twst® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
925	Mist Twst® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
926	Mist Twst® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
927	Mist Twst® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
928	MNT DEW Sweet Lightning (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
929	Mountain Dew® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
930	Mountain Dew® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
931	Mountain Dew® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
932	Mountain Dew® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
933	Mug Root Beer® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
934	Mug Root Beer® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
935	Mug Root Beer® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
936	Mug Root Beer® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
937	Pepsi Zero Sugar® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
938	Pepsi Zero Sugar® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
939	Pepsi Zero Sugar® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
940	Pepsi Zero Sugar® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
941	Pepsi® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
942	Pepsi® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
943	Pepsi® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
944	Pepsi® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
945	Sobe Lifewater Yumberry Pomegranate (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
946	Sobe Lifewater Yumberry Pomegranate (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
947	Sobe Lifewater Yumberry Pomegranate (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
948	Sobe Lifewater Yumberry Pomegranate (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
949	Strawberry Lemonade (1/2 Gallon)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
950	Strawberry Lemonade (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
951	Tropicana® Fruit Punch (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
952	Tropicana® Fruit Punch (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
953	Tropicana® Fruit Punch (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
954	Tropicana® Fruit Punch (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
955	Tropicana® Light Lemonade (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
956	Tropicana® Light Lemonade (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
957	Tropicana® Light Lemonade (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
958	Tropicana® Light Lemonade (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
959	Tropicana® Pink Lemonade (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
960	Power Menu Bowl – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
961	Tropicana® Pink Lemonade (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
962	Tropicana® Pink Lemonade (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
963	Tropicana® Pink Lemonade (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
964	Tropicana® Twister® Orange (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
965	Tropicana® Twister® Orange (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
966	Tropicana® Twister® Orange (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
967	Tropicana® Twister® Orange (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
968	Wild Cherry Pepsi® (12 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
969	Wild Cherry Pepsi® (16 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
970	Wild Cherry Pepsi® (20 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
971	Wild Cherry Pepsi® (30 fl oz)	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
972	Country Fried Steak without Peppered White Gravy	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
973	Country Fried Steak with Peppered White Gravy	KFC	\N	5	2023-09-18 16:33:00.785489-03	\N
974	Bacon Club Chalupa	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
975	Blue Raspberry Freeze™ (16 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
976	Blue Raspberry Freeze™ (20 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
977	Loaded Nacho Taco	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
978	Midnight Berry Freeze™ (16 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
979	Midnight Berry Freeze™ (20 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
980	Nacho Fries BellGrande®	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
981	Black Bean Chalupa – Online Exclusive	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
982	Black Bean Quesarito – Online Exclusive	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
983	Quesarito – Online Exclusive	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
984	Chalupa Supreme® – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
985	Chalupa Supreme® – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
986	Chalupa Supreme® – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
987	Cheesy Gordita Crunch	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
988	Crunchy Taco	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
989	Crunchy Taco Supreme®	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
990	Loaded Nacho Taco (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
991	Nacho Cheese Doritos® Locos Taco	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
992	Nacho Cheese Doritos® Locos Taco Supreme®	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
993	Soft Taco – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
994	Soft Taco – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
995	Soft Taco Supreme®	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
996	Soft Taco – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
997	Soft Taco – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
998	Bean Burrito (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
999	Beefy 5-Layer Burrito	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1000	Burrito Supreme® – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1001	Burrito Supreme® – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1002	Burrito Supreme® – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1003	Chili Cheese Burrito (regional)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1004	Quesarito – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1005	Quesarito – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1006	Quesarito – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1007	Chips and Nacho Cheese Sauce (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1008	Nacho Fries (V) (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1009	Nacho Fries BellGrande® (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1010	Nachos BellGrande® – Beef	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1011	Nachos BellGrande® – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1012	Nachos BellGrande® – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1013	Beef Quesarito	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1014	Black Bean Quesarito (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1015	Quesadilla – Cheese (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1016	Quesadilla – Chicken	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1017	Quesadilla – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1018	Bacon Club Chalupa – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1019	Black Bean Chalupa – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1020	Black Bean Crunchwrap Supreme – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1021	Black Bean Quesarito – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1022	Chalupa Supreme® – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1023	Cheesy Gordita Crunch – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1024	Cheesy Roll Up – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1025	Crunchwrap Supreme® – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1026	Crunchy Taco – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1027	Nacho Cheese Doritos® Locos Taco – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1028	Nachos BellGrande® – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1029	Power Menu Bowl – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1030	Quesadilla – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1031	Quesarito – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1032	Soft Taco – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1033	Soft Taco Supreme – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1034	Veggie Power Menu Bowl – Specialties	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1035	Black Beans (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1036	Cinnabon® Delights™ (2 Pk) (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1037	Cinnabon® Delights™ (12 Pk – Serves 4) (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1038	Cinnamon Twists (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1039	Diablo Sauce Packet (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1040	Fire Sauce Packet (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1041	Hot Sauce Packet (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1042	Mild Sauce Packet (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1043	Blue Raspberry Freeze™ (16 oz) (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1044	Blue Raspberry Freeze™ (20 oz) (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1045	Dragon Fruit Freeze (16 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1046	Dragon Fruit Freeze (20 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1047	Lowfat Milk – CA (Regional)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1048	Lowfat Milk – Federal (Regional)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1049	Midnight Berry Freeze™ (16 oz) (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1050	Midnight Berry Freeze™ (20 oz) (New)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1051	Mtn Dew® Baja Blast Freeze™ (16 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1052	Mtn Dew® Baja Blast Freeze™ (20 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1053	Premium Hot Coffee	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1054	Regular Iced Coffee	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1055	Wild Strawberry Freeze™ (16 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1056	Wild Strawberry Freeze™ (20 oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1057	Beef Burrito – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1058	Cheesy Bean & Rice Burrito – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1059	Cheesy Roll Up – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1060	Chicken Chipotle Melt – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1061	Chips and Nacho Cheese Sauce – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1062	Cinnamon Twists – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1063	Loaded Nacho Taco – Value Menu	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1064	Bean Burrito	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1065	Black Bean Chalupa	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1066	Black Bean Crunchwrap Supreme	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1067	Black Bean Quesarito	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1068	Black Beans & Rice	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1069	Cheese Quesadilla	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1070	Cheesy Bean & Rice Burrito	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1071	Cheesy Roll Up	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1072	Chips and Nacho Cheese Sauce	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1073	Cinnabon® Delights™ (2 Pack)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1074	Cinnabon® Delights™ (12 Pack – Serves 4)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1075	Cinnamon Twists	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1076	Hash Brown	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1077	Power Menu Bowl – Veggie	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1078	Power Menu Bowl – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1079	Power Menu Bowl – Veggie (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1080	Breakfast Crunchwrap – Bacon	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1081	Breakfast Crunchwrap – Sausage	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1082	Breakfast Crunchwrap – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1083	Breakfast Salsa Packet (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1084	Cheesy Toasted Breakfast Burrito – Bacon	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1085	Cheesy Toasted Breakfast Burrito – Fiesta Potato (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1086	Cheesy Toasted Breakfast Burrito – Sausage	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1087	Cinnabon® Delights™ (2 Pack) (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1088	Cinnabon® Delights™ (12 Pack – Serves 4) (V)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1089	Grande Toasted Breakfast Burrito – Bacon	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1090	Grande Toasted Breakfast Burrito – Sausage	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1091	Grande Toasted Breakfast Burrito – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1092	Hash Brown Toasted Breakfast Burrito – Bacon	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1093	Hash Brown Toasted Breakfast Burrito – Sausage	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1094	Hash Brown Toasted Breakfast Burrito – Steak	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1095	Brisk® Mango Iced Tea (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1096	Brisk® Unsweetened No Lemon Iced Tea (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1097	Diet Dr Pepper® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1098	Diet Mtn Dew® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1099	Diet Pepsi® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1100	Dr Pepper® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1101	G2 – Fruit Punch (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1102	Mtn Dew® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1103	Mtn Dew® Baja Blast™ (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1104	Mtn Dew® Baja Blast Zero Sugar (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1105	Mtn Dew® Kickstart™ Orange Citrus (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1106	Mug® Root Beer (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1107	Pepsi® Wild Cherry (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1108	Pepsi® Zero Sugar (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1109	Sierra Mist® (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1110	Tropicana® Pink Lemonade (16 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1111	7-Up (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1112	Brisk® Mango Iced Tea (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1113	Brisk® Unsweetened No Lemon Iced Tea (20 fl oz)	Taco Bell	\N	4	2023-09-18 16:33:00.785489-03	\N
1114	Pan Pizza Slices Pepperoni Lover’s® Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1115	Pan Pizza Slices Pepperoni Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1116	Pan Pizza Slices Pepperoni Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1117	Pan Pizza Slices Supreme Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1118	Pan Pizza Slices Supreme Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1119	Pan Pizza Slices Supreme Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1120	Pan Pizza Slices Ultimate Cheese Lover’s® Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1121	Pan Pizza Slices Ultimate Cheese Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1122	Pan Pizza Slices Ultimate Cheese Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1123	Pan Pizza Slices Veggie Lover’s® Personal Pan	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1124	Pan Pizza Slices Veggie Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1125	Pan Pizza Slices Veggie Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1126	Hand Tossed Slices Backyard BBQ Chicken Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1127	Hand Tossed Slices Backyard BBQ Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1128	Hand Tossed Slices Backyard BBQ Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1129	Hand Tossed Slices Beyond Meat® Pepperoni Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1130	Hand Tossed Slices Beyond Meat® Pepperoni Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1131	Hand Tossed Slices  Buffalo Chicken Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1132	Hand Tossed Slices  Buffalo Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1133	Hand Tossed Slices  Buffalo Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1134	Hand Tossed Slices Cheese Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1135	Hand Tossed Slices Cheese Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1136	Hand Tossed Slices Cheese Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1137	Hand Tossed Slices Chicken Bacon Parmesan Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1138	Hand Tossed Slices Chicken Bacon Parmesan Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1139	Hand Tossed Slices Chicken Bacon Parmesan Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1140	Hand Tossed Slices Hawaiian Chicken Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1141	Hand Tossed Slices Hawaiian Chicken Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1142	Hand Tossed Slices Hawaiian Chicken Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1143	Hand Tossed Slices Meat Lover’s® Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1144	Hand Tossed Slices Meat Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1145	Hand Tossed Slices Meat Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1146	Hand Tossed Slices Pepperoni Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1147	Hand Tossed Slices Pepperoni Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1148	Hand Tossed Slices Pepperoni Lover’s® Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1149	Hand Tossed Slices Pepperoni Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1150	Hand Tossed Slices Pepperoni Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1151	Hand Tossed Slices Supreme Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1152	Hand Tossed Slices Supreme Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1153	Hand Tossed Slices Supreme Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1154	Hand Tossed Slices Ultimate Cheese Lover’s® Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1155	Hand Tossed Slices Ultimate Cheese Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1156	Hand Tossed Slices Ultimate Cheese Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1157	Hand Tossed Slices Veggie Lover’s® Small	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1158	Hand Tossed Slices Veggie Lover’s® Medium	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
1159	Hand Tossed Slices Veggie Lover’s® Large	Pizza Hut	\N	3	2023-09-18 16:33:00.785489-03	\N
\.


--
-- Name: company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_seq', 6, true);


--
-- Name: fast_food_nutrition_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fast_food_nutrition_menu_id_seq', 1159, true);


--
-- Name: nutritional_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nutritional_info_id_seq', 5033, true);


--
-- Name: snack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.snack_id_seq', 1159, true);


--
-- Name: company company_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_name_key UNIQUE (name);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);


--
-- Name: fast_food_nutrition_menu fast_food_nutrition_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fast_food_nutrition_menu
    ADD CONSTRAINT fast_food_nutrition_menu_pkey PRIMARY KEY (id);


--
-- Name: fastfoodnutritionmenu id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fastfoodnutritionmenu
    ADD CONSTRAINT id_pk PRIMARY KEY (id);


--
-- Name: nutritional_info nutritional_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutritional_info
    ADD CONSTRAINT nutritional_info_pkey PRIMARY KEY (id);


--
-- Name: snack snack_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snack
    ADD CONSTRAINT snack_pkey PRIMARY KEY (id);


--
-- Name: snack fk_id_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.snack
    ADD CONSTRAINT fk_id_company FOREIGN KEY (id_company) REFERENCES public.company(id);


--
-- Name: nutritional_info fk_id_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutritional_info
    ADD CONSTRAINT fk_id_company FOREIGN KEY (id_company) REFERENCES public.company(id);


--
-- Name: nutritional_info fk_id_snack; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nutritional_info
    ADD CONSTRAINT fk_id_snack FOREIGN KEY (id_snack) REFERENCES public.snack(id);


--
-- PostgreSQL database dump complete
--

