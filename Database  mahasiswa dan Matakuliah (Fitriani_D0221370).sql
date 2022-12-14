PGDMP     8             
    
    z            siakad    14.5    14.5 5    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16402    siakad    DATABASE     i   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16434    dbmahasiswa    TABLE     ?   CREATE TABLE public.dbmahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50),
    jns character varying(20)
);
    DROP TABLE public.dbmahasiswa;
       public         heap    postgres    false            ?            1259    16433    dbmahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.dbmahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dbmahasiswa_nim_seq;
       public          postgres    false    216            .           0    0    dbmahasiswa_nim_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dbmahasiswa_nim_seq OWNED BY public.dbmahasiswa.nim;
          public          postgres    false    215            ?            1259    16404 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16403    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210            /           0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            ?            1259    16418    mhs    TABLE     x   CREATE TABLE public.mhs (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mhs;
       public         heap    postgres    false            ?            1259    16417    mhs_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mhs_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mhs_nim_seq;
       public          postgres    false    212            0           0    0    mhs_nim_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mhs_nim_seq OWNED BY public.mhs.nim;
          public          postgres    false    211            ?            1259    16425    mk    TABLE     y   CREATE TABLE public.mk (
    kelas character varying(30),
    idmk integer NOT NULL,
    namamk character varying(50)
);
    DROP TABLE public.mk;
       public         heap    postgres    false            ?            1259    16424    mk_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.mk_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mk_idmk_seq;
       public          postgres    false    214            1           0    0    mk_idmk_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mk_idmk_seq OWNED BY public.mk.idmk;
          public          postgres    false    213            ?            1259    16457    tdosen    TABLE     ?   CREATE TABLE public.tdosen (
    nidn integer NOT NULL,
    nama character varying(50),
    mkajar character varying(50),
    status character varying(20),
    nomorhp integer
);
    DROP TABLE public.tdosen;
       public         heap    postgres    false            ?            1259    16456    tdosen_nidn_seq    SEQUENCE     ?   CREATE SEQUENCE public.tdosen_nidn_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tdosen_nidn_seq;
       public          postgres    false    222            2           0    0    tdosen_nidn_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tdosen_nidn_seq OWNED BY public.tdosen.nidn;
          public          postgres    false    221            ?            1259    16443 
   tmahasiswa    TABLE     ?   CREATE TABLE public.tmahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50),
    jns character varying(30)
);
    DROP TABLE public.tmahasiswa;
       public         heap    postgres    false            ?            1259    16442    tmahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.tmahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tmahasiswa_nim_seq;
       public          postgres    false    218            3           0    0    tmahasiswa_nim_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tmahasiswa_nim_seq OWNED BY public.tmahasiswa.nim;
          public          postgres    false    217            ?            1259    16450    tmatakuliah    TABLE     ?   CREATE TABLE public.tmatakuliah (
    idmatkul integer NOT NULL,
    nmmatkul character varying(50),
    ruangan character varying(20),
    kls character varying(30),
    hari character varying(20)
);
    DROP TABLE public.tmatakuliah;
       public         heap    postgres    false            ?            1259    16449    tmatakuliah_idmatkul_seq    SEQUENCE     ?   CREATE SEQUENCE public.tmatakuliah_idmatkul_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tmatakuliah_idmatkul_seq;
       public          postgres    false    220            4           0    0    tmatakuliah_idmatkul_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tmatakuliah_idmatkul_seq OWNED BY public.tmatakuliah.idmatkul;
          public          postgres    false    219            }           2604    16437    dbmahasiswa nim    DEFAULT     r   ALTER TABLE ONLY public.dbmahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.dbmahasiswa_nim_seq'::regclass);
 >   ALTER TABLE public.dbmahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    216    215    216            z           2604    16407    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    210    209    210            {           2604    16421    mhs nim    DEFAULT     b   ALTER TABLE ONLY public.mhs ALTER COLUMN nim SET DEFAULT nextval('public.mhs_nim_seq'::regclass);
 6   ALTER TABLE public.mhs ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    212    211    212            |           2604    16428    mk idmk    DEFAULT     b   ALTER TABLE ONLY public.mk ALTER COLUMN idmk SET DEFAULT nextval('public.mk_idmk_seq'::regclass);
 6   ALTER TABLE public.mk ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    213    214    214            ?           2604    16460    tdosen nidn    DEFAULT     j   ALTER TABLE ONLY public.tdosen ALTER COLUMN nidn SET DEFAULT nextval('public.tdosen_nidn_seq'::regclass);
 :   ALTER TABLE public.tdosen ALTER COLUMN nidn DROP DEFAULT;
       public          postgres    false    222    221    222            ~           2604    16446    tmahasiswa nim    DEFAULT     p   ALTER TABLE ONLY public.tmahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.tmahasiswa_nim_seq'::regclass);
 =   ALTER TABLE public.tmahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    16453    tmatakuliah idmatkul    DEFAULT     |   ALTER TABLE ONLY public.tmatakuliah ALTER COLUMN idmatkul SET DEFAULT nextval('public.tmatakuliah_idmatkul_seq'::regclass);
 C   ALTER TABLE public.tmatakuliah ALTER COLUMN idmatkul DROP DEFAULT;
       public          postgres    false    220    219    220            !          0    16434    dbmahasiswa 
   TABLE DATA           =   COPY public.dbmahasiswa (nim, nama, alamat, jns) FROM stdin;
    public          postgres    false    216    7                 0    16404 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210   =7                 0    16418    mhs 
   TABLE DATA           0   COPY public.mhs (nim, nama, alamat) FROM stdin;
    public          postgres    false    212   Z7                 0    16425    mk 
   TABLE DATA           1   COPY public.mk (kelas, idmk, namamk) FROM stdin;
    public          postgres    false    214   ?7       '          0    16457    tdosen 
   TABLE DATA           E   COPY public.tdosen (nidn, nama, mkajar, status, nomorhp) FROM stdin;
    public          postgres    false    222   ?7       #          0    16443 
   tmahasiswa 
   TABLE DATA           <   COPY public.tmahasiswa (nim, nama, alamat, jns) FROM stdin;
    public          postgres    false    218   8       %          0    16450    tmatakuliah 
   TABLE DATA           M   COPY public.tmatakuliah (idmatkul, nmmatkul, ruangan, kls, hari) FROM stdin;
    public          postgres    false    220   ?8       5           0    0    dbmahasiswa_nim_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dbmahasiswa_nim_seq', 1, false);
          public          postgres    false    215            6           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209            7           0    0    mhs_nim_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mhs_nim_seq', 1, false);
          public          postgres    false    211            8           0    0    mk_idmk_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mk_idmk_seq', 1, false);
          public          postgres    false    213            9           0    0    tdosen_nidn_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tdosen_nidn_seq', 1, false);
          public          postgres    false    221            :           0    0    tmahasiswa_nim_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tmahasiswa_nim_seq', 1, false);
          public          postgres    false    217            ;           0    0    tmatakuliah_idmatkul_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tmatakuliah_idmatkul_seq', 1, false);
          public          postgres    false    219            ?           2606    16439    dbmahasiswa dbmahasiswa_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.dbmahasiswa
    ADD CONSTRAINT dbmahasiswa_pkey PRIMARY KEY (nim);
 F   ALTER TABLE ONLY public.dbmahasiswa DROP CONSTRAINT dbmahasiswa_pkey;
       public            postgres    false    216            ?           2606    16409    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            ?           2606    16423    mhs mhs_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY public.mhs
    ADD CONSTRAINT mhs_pkey PRIMARY KEY (nim);
 6   ALTER TABLE ONLY public.mhs DROP CONSTRAINT mhs_pkey;
       public            postgres    false    212            ?           2606    16430 
   mk mk_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.mk
    ADD CONSTRAINT mk_pkey PRIMARY KEY (idmk);
 4   ALTER TABLE ONLY public.mk DROP CONSTRAINT mk_pkey;
       public            postgres    false    214            ?           2606    16462    tdosen tdosen_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tdosen
    ADD CONSTRAINT tdosen_pkey PRIMARY KEY (nidn);
 <   ALTER TABLE ONLY public.tdosen DROP CONSTRAINT tdosen_pkey;
       public            postgres    false    222            ?           2606    16448    tmahasiswa tmahasiswa_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tmahasiswa
    ADD CONSTRAINT tmahasiswa_pkey PRIMARY KEY (nim);
 D   ALTER TABLE ONLY public.tmahasiswa DROP CONSTRAINT tmahasiswa_pkey;
       public            postgres    false    218            ?           2606    16455    tmatakuliah tmatakuliah_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tmatakuliah
    ADD CONSTRAINT tmatakuliah_pkey PRIMARY KEY (idmatkul);
 F   ALTER TABLE ONLY public.tmatakuliah DROP CONSTRAINT tmatakuliah_pkey;
       public            postgres    false    220            !      x?????? ? ?            x?????? ? ?         r   x?322467?t?,)?L?????I-O???2J??q?$?d?%fp:%楧'????9C?JC2?s?J????F??U??????%??0#,,9?J?2?2???x'???????? ?m#?            x?????? ? ?      '      x?????? ? ?      #   x   x?M?1
1F?zr??UO`?BPa?_Httw???FD?}?/??b?)V+L??Nu|*6??n?頙!???$Q,?9KO;g\)jz`????Gn????????h?V?;?`:W?|?i??{8,?      %   ?   x??A
?0???"'Ӭ\?*,X?????6????7d=ÌޛN?_??5?? 4?4?????T>? ?-???,M??????F=?\??u???guBA??dS?_??"?k??k???U?L???c??9?+?     