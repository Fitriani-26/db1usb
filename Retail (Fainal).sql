toc.dat                                                                                             0000600 0004000 0002000 00000017020 14344405326 0014444 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                     	        z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         
           1262    24694    retail    DATABASE     i   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false         �            1259    24724 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    number_hp character(14),
    kode_pos integer,
    alamat character varying(100)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false         �            1259    24723    pelanggan_kode_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pelanggan_kode_pelanggan_seq;
       public          postgres    false    212                    0    0    pelanggan_kode_pelanggan_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;
          public          postgres    false    211         �            1259    24749 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    no integer,
    no_pesanan integer,
    bayar money,
    belum_bayar money,
    total_bayar money,
    tanggal_bayar date,
    keterangan text
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false         �            1259    24738    pesanan    TABLE     �   CREATE TABLE public.pesanan (
    no integer,
    no_pesanan integer NOT NULL,
    kode_produk integer,
    kode_pelanggan integer,
    harga_jual money,
    harga_beli money,
    jml_pesanan integer,
    total_harga money,
    tanggal_pesanan date
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false         �            1259    24737    pesanan_no_pesanan_seq    SEQUENCE     �   CREATE SEQUENCE public.pesanan_no_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pesanan_no_pesanan_seq;
       public          postgres    false    214                    0    0    pesanan_no_pesanan_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pesanan_no_pesanan_seq OWNED BY public.pesanan.no_pesanan;
          public          postgres    false    213         �            1259    24696    prodek    TABLE     �   CREATE TABLE public.prodek (
    no integer,
    kode_produk integer NOT NULL,
    nama_produk character varying(50),
    stok_awal integer,
    jml_terjual integer,
    stok_akhir integer
);
    DROP TABLE public.prodek;
       public         heap    postgres    false         �            1259    24695    prodek_kode_produk_seq    SEQUENCE     �   CREATE SEQUENCE public.prodek_kode_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.prodek_kode_produk_seq;
       public          postgres    false    210                    0    0    prodek_kode_produk_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.prodek_kode_produk_seq OWNED BY public.prodek.kode_produk;
          public          postgres    false    209         k           2604    24727    pelanggan kode_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);
 G   ALTER TABLE public.pelanggan ALTER COLUMN kode_pelanggan DROP DEFAULT;
       public          postgres    false    211    212    212         l           2604    24741    pesanan no_pesanan    DEFAULT     x   ALTER TABLE ONLY public.pesanan ALTER COLUMN no_pesanan SET DEFAULT nextval('public.pesanan_no_pesanan_seq'::regclass);
 A   ALTER TABLE public.pesanan ALTER COLUMN no_pesanan DROP DEFAULT;
       public          postgres    false    213    214    214         j           2604    24699    prodek kode_produk    DEFAULT     x   ALTER TABLE ONLY public.prodek ALTER COLUMN kode_produk SET DEFAULT nextval('public.prodek_kode_produk_seq'::regclass);
 A   ALTER TABLE public.prodek ALTER COLUMN kode_produk DROP DEFAULT;
       public          postgres    false    210    209    210                   0    24724 	   pelanggan 
   TABLE DATA           d   COPY public.pelanggan (no, kode_pelanggan, nama_pelanggan, number_hp, kode_pos, alamat) FROM stdin;
    public          postgres    false    212       3329.dat           0    24749 
   pembayaran 
   TABLE DATA           p   COPY public.pembayaran (no, no_pesanan, bayar, belum_bayar, total_bayar, tanggal_bayar, keterangan) FROM stdin;
    public          postgres    false    215       3332.dat           0    24738    pesanan 
   TABLE DATA           �   COPY public.pesanan (no, no_pesanan, kode_produk, kode_pelanggan, harga_jual, harga_beli, jml_pesanan, total_harga, tanggal_pesanan) FROM stdin;
    public          postgres    false    214       3331.dat �          0    24696    prodek 
   TABLE DATA           b   COPY public.prodek (no, kode_produk, nama_produk, stok_awal, jml_terjual, stok_akhir) FROM stdin;
    public          postgres    false    210       3327.dat            0    0    pelanggan_kode_pelanggan_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);
          public          postgres    false    211                    0    0    pesanan_no_pesanan_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pesanan_no_pesanan_seq', 1, false);
          public          postgres    false    213                    0    0    prodek_kode_produk_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.prodek_kode_produk_seq', 1, false);
          public          postgres    false    209         p           2606    24729    pelanggan pelanggan_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    212         r           2606    24743    pesanan pesanan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (no_pesanan);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    214         n           2606    24701    prodek prodek_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.prodek
    ADD CONSTRAINT prodek_pkey PRIMARY KEY (kode_produk);
 <   ALTER TABLE ONLY public.prodek DROP CONSTRAINT prodek_pkey;
       public            postgres    false    210                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        3329.dat                                                                                            0000600 0004000 0002000 00000001257 14344405326 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4405	Amel	085670334901  	91311	Polewali Mandar
2	4406	Nina	085657538490  	91411	Majene, Banggae
3	4407	Nopi	085340983461  	91411	Majene, Banggae
4	4408	Fani	081221005379  	91357	Campalagian
5	4409	Fajra	082456789034  	91356	Tinambung
6	4410	Berlian	085298753289  	91511	Mamuju
7	4411	Muayyat	085457890887  	91411	Majene, Banggae
8	4412	Ryan	085297043565  	91511	Mamuju
9	4413	Haikal	081908754390  	91452	Sendana
10	4414	Edwin	089567408902  	91411	Majene
11	4415	Sofia	085609500200  	91342	Wonomulyo
12	4416	Mutiara	082456700123  	91359	Mapilli
13	4417	Efor	089706534590  	91365	Mamasa
14	4418	Fadil	085990876591  	91352	Matakali
15	4419	Handa	085290821344  	91561	Mamuju, Kalukku
\.


                                                                                                                                                                                                                                                                                                                                                 3332.dat                                                                                            0000600 0004000 0002000 00000002006 14344405326 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	11111	Rp5.000.000,00	Rp4.000.000,00	Rp5.000.000,00	2022-10-10	Belum Lunas
2	22222	Rp2.500.000,00	Rp0,00	Rp2.500.000,00	2022-11-15	Lunas
3	33333	Rp5.000.000,00	Rp1.500.000,00	Rp5.000.000,00	2022-09-18	Belum Lunas
4	44444	Rp4.500.000,00	Rp0,00	Rp4.500.000,00	2022-09-22	Lunas
5	55555	Rp3.000.000,00	Rp0,00	Rp3.000.000,00	2022-08-05	Lunas
6	66666	Rp900.000,00	Rp0,00	Rp900.000,00	2022-08-20	Lunas
7	77777	Rp6.800.000,00	Rp1.000.000,00	Rp6.800.000,00	2022-09-11	Belum Lunas
8	88888	Rp2.000.000,00	Rp0,00	Rp2.000.000,00	2022-10-15	Lunas
9	99999	Rp1.500.000,00	Rp500.000,00	Rp1.500.000,00	2022-10-22	Belum Lunas
10	10101	Rp450.000,00	Rp0,00	Rp450.000,00	2022-10-02	Lunas
12	12121	Rp12.000.000,00	Rp0,00	Rp12.000.000,00	2022-11-20	Lunas
13	13131	Rp2.000.000,00	Rp2.000.000,00	Rp2.000.000,00	2022-08-20	Belum Lunas
14	14141	Rp560.000,00	Rp0,00	Rp560.000,00	2022-08-10	Lunas
15	15151	Rp10.000.000,00	Rp2.500.000,00	Rp10.000.000,00	2022-07-15	Belum Lunas
11	10001	Rp20.000.000,00	Rp5.000.000,00	Rp2.000.000,00	2022-11-19	Belum Lunas
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          3331.dat                                                                                            0000600 0004000 0002000 00000002077 14344405326 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	11111	5678	4405	Rp100.000,00	Rp90.000,00	100	Rp9.000.000,00	2022-10-08
2	22222	9067	4406	Rp55.000,00	Rp50.000,00	50	Rp2.500.000,00	2022-11-10
3	33333	4490	4407	Rp70.000,00	Rp65.000,00	100	Rp6.500.000,00	2022-09-12
4	44444	3040	4408	Rp50.000,00	Rp45.000,00	100	Rp4.500.000,00	2022-09-20
5	55555	8890	4409	Rp25.000,00	Rp20.000,00	150	Rp3.000.000,00	2022-08-03
6	66666	8860	4410	Rp40.000,00	Rp30.000,00	30	Rp900.000,00	2022-08-18
7	77777	5589	4411	Rp80.000,00	Rp78.000,00	100	Rp7.800.000,00	2022-10-09
8	88888	4450	4412	Rp110.000,00	Rp100.000,00	20	Rp2.000.000,00	2022-07-10
9	99999	9950	4413	Rp205.000,00	Rp200.000,00	10	Rp2.000.000,00	2022-07-20
10	10101	4560	4414	Rp18.000,00	Rp15.000,00	30	Rp450.000,00	2022-09-30
11	10001	3344	4415	Rp180.000,00	Rp175.000,00	140	Rp25.200.000,00	2022-11-17
12	12121	8988	4416	Rp120.000,00	Rp125.000,00	100	Rp12.000.000,00	2022-11-17
13	13131	5078	4417	Rp7.000,00	Rp5.000,00	800	Rp4.000.000,00	2022-08-17
14	14141	2239	4418	Rp8.000,00	Rp7.000,00	80	Rp560.000,00	2022-08-07
15	15151	5566	4419	Rp30.000,00	Rp25.000,00	500	Rp12.500.000,00	2022-07-12
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3327.dat                                                                                            0000600 0004000 0002000 00000000744 14344405326 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	5678	Boneka Beruang	150	100	50
2	9067	Jam Tangan	100	50	50
3	4490	Tas Hello Kitty	400	100	300
4	5589	Topi BTS	200	100	100
5	3040	Kacamata blink	500	100	400
6	8890	Buku Dairy	200	150	50
7	4450	Tikar	50	20	30
8	9950	Sepatu Adidas	30	10	20
9	8860	Cardigan	100	30	70
10	3344	Baju Girls	200	140	60
11	8988	Celana Joker Women	300	100	200
12	4560	Sandal Jepit	100	30	70
13	2239	Kos Kaki Sekolah	200	80	120
14	5566	Jilbab Bella Anti Letoy	800	500	300
15	5078	Polpen Magic	1000	800	200
\.


                            restore.sql                                                                                         0000600 0004000 0002000 00000015676 14344405326 0015410 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
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

DROP DATABASE retail;
--
-- Name: retail; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE retail OWNER TO postgres;

\connect retail

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
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    no integer,
    kode_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    number_hp character(14),
    kode_pos integer,
    alamat character varying(100)
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_kode_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_kode_pelanggan_seq OWNER TO postgres;

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_kode_pelanggan_seq OWNED BY public.pelanggan.kode_pelanggan;


--
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    no integer,
    no_pesanan integer,
    bayar money,
    belum_bayar money,
    total_bayar money,
    tanggal_bayar date,
    keterangan text
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    no integer,
    no_pesanan integer NOT NULL,
    kode_produk integer,
    kode_pelanggan integer,
    harga_jual money,
    harga_beli money,
    jml_pesanan integer,
    total_harga money,
    tanggal_pesanan date
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_no_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_no_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_no_pesanan_seq OWNER TO postgres;

--
-- Name: pesanan_no_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_no_pesanan_seq OWNED BY public.pesanan.no_pesanan;


--
-- Name: prodek; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodek (
    no integer,
    kode_produk integer NOT NULL,
    nama_produk character varying(50),
    stok_awal integer,
    jml_terjual integer,
    stok_akhir integer
);


ALTER TABLE public.prodek OWNER TO postgres;

--
-- Name: prodek_kode_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prodek_kode_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prodek_kode_produk_seq OWNER TO postgres;

--
-- Name: prodek_kode_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prodek_kode_produk_seq OWNED BY public.prodek.kode_produk;


--
-- Name: pelanggan kode_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN kode_pelanggan SET DEFAULT nextval('public.pelanggan_kode_pelanggan_seq'::regclass);


--
-- Name: pesanan no_pesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN no_pesanan SET DEFAULT nextval('public.pesanan_no_pesanan_seq'::regclass);


--
-- Name: prodek kode_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodek ALTER COLUMN kode_produk SET DEFAULT nextval('public.prodek_kode_produk_seq'::regclass);


--
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (no, kode_pelanggan, nama_pelanggan, number_hp, kode_pos, alamat) FROM stdin;
\.
COPY public.pelanggan (no, kode_pelanggan, nama_pelanggan, number_hp, kode_pos, alamat) FROM '$$PATH$$/3329.dat';

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (no, no_pesanan, bayar, belum_bayar, total_bayar, tanggal_bayar, keterangan) FROM stdin;
\.
COPY public.pembayaran (no, no_pesanan, bayar, belum_bayar, total_bayar, tanggal_bayar, keterangan) FROM '$$PATH$$/3332.dat';

--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (no, no_pesanan, kode_produk, kode_pelanggan, harga_jual, harga_beli, jml_pesanan, total_harga, tanggal_pesanan) FROM stdin;
\.
COPY public.pesanan (no, no_pesanan, kode_produk, kode_pelanggan, harga_jual, harga_beli, jml_pesanan, total_harga, tanggal_pesanan) FROM '$$PATH$$/3331.dat';

--
-- Data for Name: prodek; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodek (no, kode_produk, nama_produk, stok_awal, jml_terjual, stok_akhir) FROM stdin;
\.
COPY public.prodek (no, kode_produk, nama_produk, stok_awal, jml_terjual, stok_akhir) FROM '$$PATH$$/3327.dat';

--
-- Name: pelanggan_kode_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_kode_pelanggan_seq', 1, false);


--
-- Name: pesanan_no_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_no_pesanan_seq', 1, false);


--
-- Name: prodek_kode_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prodek_kode_produk_seq', 1, false);


--
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (kode_pelanggan);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (no_pesanan);


--
-- Name: prodek prodek_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodek
    ADD CONSTRAINT prodek_pkey PRIMARY KEY (kode_produk);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  