toc.dat                                                                                             0000600 0004000 0002000 00000014742 14335350100 0014441 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           
            
    z            siakad    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16502    siakad    DATABASE     i   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false         �            1259    16519    tdosen    TABLE     �   CREATE TABLE public.tdosen (
    nidn integer NOT NULL,
    nama character varying(50),
    mkajar character varying(50),
    status character varying(20)
);
    DROP TABLE public.tdosen;
       public         heap    postgres    false         �            1259    16522    tdosen_nidn_seq    SEQUENCE     �   CREATE SEQUENCE public.tdosen_nidn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tdosen_nidn_seq;
       public          postgres    false    209                    0    0    tdosen_nidn_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tdosen_nidn_seq OWNED BY public.tdosen.nidn;
          public          postgres    false    210         �            1259    16523 
   tmahasiswa    TABLE     �   CREATE TABLE public.tmahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50),
    jns character varying(30)
);
    DROP TABLE public.tmahasiswa;
       public         heap    postgres    false         �            1259    16526    tmahasiswa_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.tmahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tmahasiswa_nim_seq;
       public          postgres    false    211                    0    0    tmahasiswa_nim_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tmahasiswa_nim_seq OWNED BY public.tmahasiswa.nim;
          public          postgres    false    212         �            1259    16527    tmatakuliah    TABLE     �   CREATE TABLE public.tmatakuliah (
    idmatkul integer NOT NULL,
    nmmatkul character varying(50),
    ruangan character varying(20),
    kls character varying(30),
    hari character varying(20)
);
    DROP TABLE public.tmatakuliah;
       public         heap    postgres    false         �            1259    16530    tmatakuliah_idmatkul_seq    SEQUENCE     �   CREATE SEQUENCE public.tmatakuliah_idmatkul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tmatakuliah_idmatkul_seq;
       public          postgres    false    213                    0    0    tmatakuliah_idmatkul_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tmatakuliah_idmatkul_seq OWNED BY public.tmatakuliah.idmatkul;
          public          postgres    false    214         f           2604    16535    tdosen nidn    DEFAULT     j   ALTER TABLE ONLY public.tdosen ALTER COLUMN nidn SET DEFAULT nextval('public.tdosen_nidn_seq'::regclass);
 :   ALTER TABLE public.tdosen ALTER COLUMN nidn DROP DEFAULT;
       public          postgres    false    210    209         g           2604    16536    tmahasiswa nim    DEFAULT     p   ALTER TABLE ONLY public.tmahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.tmahasiswa_nim_seq'::regclass);
 =   ALTER TABLE public.tmahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    212    211         h           2604    16537    tmatakuliah idmatkul    DEFAULT     |   ALTER TABLE ONLY public.tmatakuliah ALTER COLUMN idmatkul SET DEFAULT nextval('public.tmatakuliah_idmatkul_seq'::regclass);
 C   ALTER TABLE public.tmatakuliah ALTER COLUMN idmatkul DROP DEFAULT;
       public          postgres    false    214    213         �          0    16519    tdosen 
   TABLE DATA           <   COPY public.tdosen (nidn, nama, mkajar, status) FROM stdin;
    public          postgres    false    209       3322.dat �          0    16523 
   tmahasiswa 
   TABLE DATA           <   COPY public.tmahasiswa (nim, nama, alamat, jns) FROM stdin;
    public          postgres    false    211       3324.dat �          0    16527    tmatakuliah 
   TABLE DATA           M   COPY public.tmatakuliah (idmatkul, nmmatkul, ruangan, kls, hari) FROM stdin;
    public          postgres    false    213       3326.dat 	           0    0    tdosen_nidn_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tdosen_nidn_seq', 1, false);
          public          postgres    false    210         
           0    0    tmahasiswa_nim_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tmahasiswa_nim_seq', 1, false);
          public          postgres    false    212                    0    0    tmatakuliah_idmatkul_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tmatakuliah_idmatkul_seq', 1, false);
          public          postgres    false    214         j           2606    16547    tdosen tdosen_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tdosen
    ADD CONSTRAINT tdosen_pkey PRIMARY KEY (nidn);
 <   ALTER TABLE ONLY public.tdosen DROP CONSTRAINT tdosen_pkey;
       public            postgres    false    209         l           2606    16549    tmahasiswa tmahasiswa_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tmahasiswa
    ADD CONSTRAINT tmahasiswa_pkey PRIMARY KEY (nim);
 D   ALTER TABLE ONLY public.tmahasiswa DROP CONSTRAINT tmahasiswa_pkey;
       public            postgres    false    211         n           2606    16551    tmatakuliah tmatakuliah_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tmatakuliah
    ADD CONSTRAINT tmatakuliah_pkey PRIMARY KEY (idmatkul);
 F   ALTER TABLE ONLY public.tmatakuliah DROP CONSTRAINT tmatakuliah_pkey;
       public            postgres    false    213                                      3322.dat                                                                                            0000600 0004000 0002000 00000000354 14335350100 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        22256980	Sulfa	Aljabar	Aktif
22145023	Ismaun	Apk Komputer dan IMK	Aktif
22156789	Muzaki	Basis Data	Aktif
22169805	Chairi	Pemrograman Web	Tidak Aktif
22173048	Rafli	Multimedia	Aktif
22185490	Nurhikmah	Pemrograman Python	Tidak Aktif
\.


                                                                                                                                                                                                                                                                                    3324.dat                                                                                            0000600 0004000 0002000 00000000167 14335350100 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        221370	Putri	Wonomulyo	Wanita
221350	Sofian	Majene	Pria
221380	Rafli	Matakali	Pria
221365	Fitrah	Tinambung	Wanita
\.


                                                                                                                                                                                                                                                                                                                                                                                                         3326.dat                                                                                            0000600 0004000 0002000 00000000167 14335350100 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        103219	Aljabar Linear	HP	H	Rabu
113319	Pemrograman Web	Lab Terpadu	A	Senin
123319	Basis Data	Lab Robotik	B	Selasa
\.


                                                                                                                                                                                                                                                                                                                                                                                                         restore.sql                                                                                         0000600 0004000 0002000 00000013371 14335350100 0015363 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE siakad;
--
-- Name: siakad; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE siakad OWNER TO postgres;

\connect siakad

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
-- Name: tdosen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tdosen (
    nidn integer NOT NULL,
    nama character varying(50),
    mkajar character varying(50),
    status character varying(20)
);


ALTER TABLE public.tdosen OWNER TO postgres;

--
-- Name: tdosen_nidn_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tdosen_nidn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tdosen_nidn_seq OWNER TO postgres;

--
-- Name: tdosen_nidn_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tdosen_nidn_seq OWNED BY public.tdosen.nidn;


--
-- Name: tmahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tmahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50),
    jns character varying(30)
);


ALTER TABLE public.tmahasiswa OWNER TO postgres;

--
-- Name: tmahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tmahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmahasiswa_nim_seq OWNER TO postgres;

--
-- Name: tmahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tmahasiswa_nim_seq OWNED BY public.tmahasiswa.nim;


--
-- Name: tmatakuliah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tmatakuliah (
    idmatkul integer NOT NULL,
    nmmatkul character varying(50),
    ruangan character varying(20),
    kls character varying(30),
    hari character varying(20)
);


ALTER TABLE public.tmatakuliah OWNER TO postgres;

--
-- Name: tmatakuliah_idmatkul_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tmatakuliah_idmatkul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmatakuliah_idmatkul_seq OWNER TO postgres;

--
-- Name: tmatakuliah_idmatkul_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tmatakuliah_idmatkul_seq OWNED BY public.tmatakuliah.idmatkul;


--
-- Name: tdosen nidn; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tdosen ALTER COLUMN nidn SET DEFAULT nextval('public.tdosen_nidn_seq'::regclass);


--
-- Name: tmahasiswa nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tmahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.tmahasiswa_nim_seq'::regclass);


--
-- Name: tmatakuliah idmatkul; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tmatakuliah ALTER COLUMN idmatkul SET DEFAULT nextval('public.tmatakuliah_idmatkul_seq'::regclass);


--
-- Data for Name: tdosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tdosen (nidn, nama, mkajar, status) FROM stdin;
\.
COPY public.tdosen (nidn, nama, mkajar, status) FROM '$$PATH$$/3322.dat';

--
-- Data for Name: tmahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tmahasiswa (nim, nama, alamat, jns) FROM stdin;
\.
COPY public.tmahasiswa (nim, nama, alamat, jns) FROM '$$PATH$$/3324.dat';

--
-- Data for Name: tmatakuliah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tmatakuliah (idmatkul, nmmatkul, ruangan, kls, hari) FROM stdin;
\.
COPY public.tmatakuliah (idmatkul, nmmatkul, ruangan, kls, hari) FROM '$$PATH$$/3326.dat';

--
-- Name: tdosen_nidn_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tdosen_nidn_seq', 1, false);


--
-- Name: tmahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tmahasiswa_nim_seq', 1, false);


--
-- Name: tmatakuliah_idmatkul_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tmatakuliah_idmatkul_seq', 1, false);


--
-- Name: tdosen tdosen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tdosen
    ADD CONSTRAINT tdosen_pkey PRIMARY KEY (nidn);


--
-- Name: tmahasiswa tmahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tmahasiswa
    ADD CONSTRAINT tmahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: tmatakuliah tmatakuliah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tmatakuliah
    ADD CONSTRAINT tmatakuliah_pkey PRIMARY KEY (idmatkul);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       