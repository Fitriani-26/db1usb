PGDMP     7                
    z         	   Penjualan    14.5    14.5 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16742 	   Penjualan    DATABASE     n   CREATE DATABASE "Penjualan" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "Penjualan";
                postgres    false            ?            1259    16758    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16757    barang_id_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    214                       0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    213            ?            1259    16772 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16771    pembayaran_id_pembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_id_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_id_pembayaran_seq;
       public          postgres    false    218                       0    0    pembayaran_id_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_id_pembayaran_seq OWNED BY public.pembayaran.id_pembayaran;
          public          postgres    false    217            ?            1259    16751    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30),
    no_telp character(14),
    alamat character varying(50)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16750    pembeli_id_pembeli_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pembeli_id_pembeli_seq;
       public          postgres    false    212                       0    0    pembeli_id_pembeli_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;
          public          postgres    false    211            ?            1259    16744    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    no_telp character(14),
    alamat character varying(50)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16743    supplier_id_supplier_seq    SEQUENCE     ?   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    210                       0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    209            ?            1259    16765 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?            1259    16764    transaksi_id_transaksi_seq    SEQUENCE     ?   CREATE SEQUENCE public.transaksi_id_transaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaksi_id_transaksi_seq;
       public          postgres    false    216                       0    0    transaksi_id_transaksi_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaksi_id_transaksi_seq OWNED BY public.transaksi.id_transaksi;
          public          postgres    false    215            r           2604    16761    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    214    213    214            t           2604    16775    pembayaran id_pembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN id_pembayaran SET DEFAULT nextval('public.pembayaran_id_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN id_pembayaran DROP DEFAULT;
       public          postgres    false    217    218    218            q           2604    16754    pembeli id_pembeli    DEFAULT     x   ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);
 A   ALTER TABLE public.pembeli ALTER COLUMN id_pembeli DROP DEFAULT;
       public          postgres    false    211    212    212            p           2604    16747    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    210    209    210            s           2604    16768    transaksi id_transaksi    DEFAULT     ?   ALTER TABLE ONLY public.transaksi ALTER COLUMN id_transaksi SET DEFAULT nextval('public.transaksi_id_transaksi_seq'::regclass);
 E   ALTER TABLE public.transaksi ALTER COLUMN id_transaksi DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16758    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    214   ?*                 0    16772 
   pembayaran 
   TABLE DATA           e   COPY public.pembayaran (id_pembayaran, tgl_bayar, jml_barang, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ?+                 0    16751    pembeli 
   TABLE DATA           L   COPY public.pembeli (id_pembeli, nama_pembeli, no_telp, alamat) FROM stdin;
    public          postgres    false    212   d,                 0    16744    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    210   .-                 0    16765 	   transaksi 
   TABLE DATA           Q   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal) FROM stdin;
    public          postgres    false    216   ?-                  0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    213                        0    0    pembayaran_id_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_id_pembayaran_seq', 1, false);
          public          postgres    false    217            !           0    0    pembeli_id_pembeli_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 1, false);
          public          postgres    false    211            "           0    0    supplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);
          public          postgres    false    209            #           0    0    transaksi_id_transaksi_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaksi_id_transaksi_seq', 1, false);
          public          postgres    false    215            z           2606    16763    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    214            ~           2606    16777    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            x           2606    16756    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            v           2606    16749    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    210            |           2606    16770    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    216               ?   x?5????0E?7_?/?4ij??m|????q3?`?????띦50?p枙Q?lޔ??a$??\?	????J???uF拪
gJ?P&gLZ???6_??1<??:7?ᤨ?v?>?T??Хy?dL?''A3??WD??u?k??8P?ƾ?\}?[?????񉆯?????ǎw??Ş?e?rQYN?a????mL???|=??J??E?         }   x?M??? ?oܥ́?.???ik????A T1????(?1'??U-
s#???h?s???\?v?*????2n????*̍_??|?mք?Z?Y?Xc?? ?ύ??R?OV?,M??rb??,???0?         ?   x?-?=?0??9=EO?\?I??R????bhij@?=N?h???Ь??L{[9?:pY??e?.?/????J3?ړuJ6?^????&?7!??u?;Rt?؎y%?9,C??k?<1pPu?b+QT9??s???nYBE????j5?f?K̩?R??Ⱦ???Sd5?e??#s?T???N+J.??(~?U?         ?   x??1?  ?N?O? "??Ӓ???ta0?????~???qNz??o x??	?D???Y?5 	?=.#Ն?	.x?B????o??*ř`?b??<??<?Z]?????rgL?c??m?+5?P?`? h??wZ??0B?N˚?}?(?~)?         h   x?]???0?w??q?????s#?J?????p?hdf*@??g:g,H??t?h???km??Y˗@??_~??tbkJ?j/?{??=՝????????ى%K     