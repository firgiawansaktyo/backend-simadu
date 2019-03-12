PGDMP         6                w            siavipala_db    10.5    10.5 �   f           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            g           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            h           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            i           1262    65543    siavipala_db    DATABASE     �   CREATE DATABASE siavipala_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE siavipala_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            j           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            k           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    65544    aktivitas_harian    TABLE     �   CREATE TABLE public.aktivitas_harian (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.aktivitas_harian;
       public         postgres    false    3            �            1259    65547    aktivitas_harian_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aktivitas_harian_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.aktivitas_harian_id_seq;
       public       postgres    false    3    196            l           0    0    aktivitas_harian_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.aktivitas_harian_id_seq OWNED BY public.aktivitas_harian.id;
            public       postgres    false    197            �            1259    65549    aktivitas_harian_patroli    TABLE     �   CREATE TABLE public.aktivitas_harian_patroli (
    id integer NOT NULL,
    aktivitas_harian_id integer NOT NULL,
    kegiatan_patroli_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ,   DROP TABLE public.aktivitas_harian_patroli;
       public         postgres    false    3            �            1259    65552    aktivitas_harian_patroli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aktivitas_harian_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.aktivitas_harian_patroli_id_seq;
       public       postgres    false    3    198            m           0    0    aktivitas_harian_patroli_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.aktivitas_harian_patroli_id_seq OWNED BY public.aktivitas_harian_patroli.id;
            public       postgres    false    199            �            1259    65554    anggota    TABLE     <  CREATE TABLE public.anggota (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    email character varying(200) NOT NULL,
    no_telepon character varying(20) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    kategori_anggota_id integer
);
    DROP TABLE public.anggota;
       public         postgres    false    3            �            1259    65560    anggota_id_seq    SEQUENCE     w   CREATE SEQUENCE public.anggota_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.anggota_id_seq;
       public       postgres    false    3    200            n           0    0    anggota_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.anggota_id_seq OWNED BY public.anggota.id;
            public       postgres    false    201            �            1259    65562    anggota_patroli    TABLE     �   CREATE TABLE public.anggota_patroli (
    id integer NOT NULL,
    anggota_id integer NOT NULL,
    kegiatan_patroli_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.anggota_patroli;
       public         postgres    false    3            �            1259    65565    anggota_patroli_id_seq    SEQUENCE        CREATE SEQUENCE public.anggota_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.anggota_patroli_id_seq;
       public       postgres    false    202    3            o           0    0    anggota_patroli_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.anggota_patroli_id_seq OWNED BY public.anggota_patroli.id;
            public       postgres    false    203            �            1259    65567    artifisial_param    TABLE     �   CREATE TABLE public.artifisial_param (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.artifisial_param;
       public         postgres    false    3            �            1259    65573    artifisial_param_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artifisial_param_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.artifisial_param_id_seq;
       public       postgres    false    3    204            p           0    0    artifisial_param_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.artifisial_param_id_seq OWNED BY public.artifisial_param.id;
            public       postgres    false    205            �            1259    65575    cuaca    TABLE     �   CREATE TABLE public.cuaca (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.cuaca;
       public         postgres    false    3            �            1259    65581    cuaca_id_seq    SEQUENCE     u   CREATE SEQUENCE public.cuaca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.cuaca_id_seq;
       public       postgres    false    3    206            q           0    0    cuaca_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.cuaca_id_seq OWNED BY public.cuaca.id;
            public       postgres    false    207            �            1259    65583    curah_hujan    TABLE     �   CREATE TABLE public.curah_hujan (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.curah_hujan;
       public         postgres    false    3            �            1259    65589    curah_hujan_id_seq    SEQUENCE     {   CREATE SEQUENCE public.curah_hujan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.curah_hujan_id_seq;
       public       postgres    false    3    208            r           0    0    curah_hujan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.curah_hujan_id_seq OWNED BY public.curah_hujan.id;
            public       postgres    false    209            �            1259    65591    daops    TABLE     �   CREATE TABLE public.daops (
    id integer NOT NULL,
    provinsi_id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.daops;
       public         postgres    false    3            �            1259    65594    daops_id_seq    SEQUENCE     u   CREATE SEQUENCE public.daops_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.daops_id_seq;
       public       postgres    false    3    210            s           0    0    daops_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.daops_id_seq OWNED BY public.daops.id;
            public       postgres    false    211            �            1259    65596    desa_kelurahan    TABLE     �   CREATE TABLE public.desa_kelurahan (
    id integer NOT NULL,
    posko_id integer,
    nama character varying(400),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    kecamatan_id integer
);
 "   DROP TABLE public.desa_kelurahan;
       public         postgres    false    3            �            1259    65599    desa_kelurahan_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.desa_kelurahan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.desa_kelurahan_id_seq;
       public       postgres    false    212    3            t           0    0    desa_kelurahan_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.desa_kelurahan_id_seq OWNED BY public.desa_kelurahan.id;
            public       postgres    false    213            �            1259    65601    dokumentasi    TABLE     -  CREATE TABLE public.dokumentasi (
    id integer NOT NULL,
    kegiatan_patroli_id integer,
    url_file character varying(500),
    tipe_file character varying(200),
    deskripsi character varying(900),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.dokumentasi;
       public         postgres    false    3            �            1259    65607    dokumentasi_id_seq    SEQUENCE     {   CREATE SEQUENCE public.dokumentasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dokumentasi_id_seq;
       public       postgres    false    3    214            u           0    0    dokumentasi_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dokumentasi_id_seq OWNED BY public.dokumentasi.id;
            public       postgres    false    215            �            1259    65609 	   hak_akses    TABLE     �   CREATE TABLE public.hak_akses (
    id integer NOT NULL,
    nama character varying(300) NOT NULL,
    menu character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hak_akses;
       public         postgres    false    3            �            1259    65615    hak_akses_id_seq    SEQUENCE     y   CREATE SEQUENCE public.hak_akses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hak_akses_id_seq;
       public       postgres    false    3    216            v           0    0    hak_akses_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.hak_akses_id_seq OWNED BY public.hak_akses.id;
            public       postgres    false    217            �            1259    65617 	   hasil_uji    TABLE       CREATE TABLE public.hasil_uji (
    id integer NOT NULL,
    patroli_darat_id integer NOT NULL,
    nama_pengujian character varying(400) NOT NULL,
    hasil character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hasil_uji;
       public         postgres    false    3            �            1259    65623    hasil_uji_id_seq    SEQUENCE     y   CREATE SEQUENCE public.hasil_uji_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.hasil_uji_id_seq;
       public       postgres    false    218    3            w           0    0    hasil_uji_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.hasil_uji_id_seq OWNED BY public.hasil_uji.id;
            public       postgres    false    219            �            1259    65625    hotspot    TABLE       CREATE TABLE public.hotspot (
    id integer NOT NULL,
    satelit_id integer NOT NULL,
    kegiatan_patroli_id integer NOT NULL,
    deskripsi character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.hotspot;
       public         postgres    false    3            �            1259    65628    hotspot_id_seq    SEQUENCE     w   CREATE SEQUENCE public.hotspot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hotspot_id_seq;
       public       postgres    false    3    220            x           0    0    hotspot_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hotspot_id_seq OWNED BY public.hotspot.id;
            public       postgres    false    221            �            1259    65630    hotspot_sipongi    TABLE     �   CREATE TABLE public.hotspot_sipongi (
    id integer NOT NULL,
    tanggal date,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.hotspot_sipongi;
       public         postgres    false    3            �            1259    65633    hotspot_sipongi_id_seq    SEQUENCE        CREATE SEQUENCE public.hotspot_sipongi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hotspot_sipongi_id_seq;
       public       postgres    false    222    3            y           0    0    hotspot_sipongi_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hotspot_sipongi_id_seq OWNED BY public.hotspot_sipongi.id;
            public       postgres    false    223            �            1259    65635 	   inventori    TABLE     �   CREATE TABLE public.inventori (
    id integer NOT NULL,
    nama character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.inventori;
       public         postgres    false    3            �            1259    65638    inventori_id_seq    SEQUENCE     y   CREATE SEQUENCE public.inventori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.inventori_id_seq;
       public       postgres    false    3    224            z           0    0    inventori_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.inventori_id_seq OWNED BY public.inventori.id;
            public       postgres    false    225            �            1259    65640    inventori_patroli    TABLE       CREATE TABLE public.inventori_patroli (
    id integer NOT NULL,
    kegiatan_patroli_id integer NOT NULL,
    inventori_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    jumlah_unit integer
);
 %   DROP TABLE public.inventori_patroli;
       public         postgres    false    3            �            1259    65643    inventori_patroli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventori_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.inventori_patroli_id_seq;
       public       postgres    false    3    226            {           0    0    inventori_patroli_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.inventori_patroli_id_seq OWNED BY public.inventori_patroli.id;
            public       postgres    false    227            �            1259    65645    kadar_air_bahan_bakar    TABLE     �   CREATE TABLE public.kadar_air_bahan_bakar (
    id integer NOT NULL,
    nama character varying(200),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 )   DROP TABLE public.kadar_air_bahan_bakar;
       public         postgres    false    3            �            1259    65648    kadar_air_bahan_bakar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kadar_air_bahan_bakar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.kadar_air_bahan_bakar_id_seq;
       public       postgres    false    3    228            |           0    0    kadar_air_bahan_bakar_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.kadar_air_bahan_bakar_id_seq OWNED BY public.kadar_air_bahan_bakar.id;
            public       postgres    false    229            �            1259    65650    kategori_anggota    TABLE     �   CREATE TABLE public.kategori_anggota (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.kategori_anggota;
       public         postgres    false    3            �            1259    65656    kategori_anggota_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_anggota_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kategori_anggota_id_seq;
       public       postgres    false    3    230            }           0    0    kategori_anggota_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kategori_anggota_id_seq OWNED BY public.kategori_anggota.id;
            public       postgres    false    231            �            1259    65658    kategori_kondisi_vegetasi    TABLE     �   CREATE TABLE public.kategori_kondisi_vegetasi (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 -   DROP TABLE public.kategori_kondisi_vegetasi;
       public         postgres    false    3            �            1259    65664     kategori_kondisi_vegetasi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kondisi_vegetasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.kategori_kondisi_vegetasi_id_seq;
       public       postgres    false    3    232            ~           0    0     kategori_kondisi_vegetasi_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.kategori_kondisi_vegetasi_id_seq OWNED BY public.kategori_kondisi_vegetasi.id;
            public       postgres    false    233            �            1259    65666    kategori_patroli    TABLE     �   CREATE TABLE public.kategori_patroli (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.kategori_patroli;
       public         postgres    false    3            �            1259    65669    kategori_patroli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kategori_patroli_id_seq;
       public       postgres    false    3    234                       0    0    kategori_patroli_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kategori_patroli_id_seq OWNED BY public.kategori_patroli.id;
            public       postgres    false    235            �            1259    65671 	   kecamatan    TABLE     �   CREATE TABLE public.kecamatan (
    id integer NOT NULL,
    kota_kab_id integer,
    nama character varying(400),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.kecamatan;
       public         postgres    false    3            �            1259    65674    kecamatan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.kecamatan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kecamatan_id_seq;
       public       postgres    false    3    236            �           0    0    kecamatan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kecamatan_id_seq OWNED BY public.kecamatan.id;
            public       postgres    false    237            �            1259    65676    kegiatan_patroli    TABLE     �   CREATE TABLE public.kegiatan_patroli (
    id integer NOT NULL,
    kategori_patroli_id integer,
    tanggal_patroli date,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.kegiatan_patroli;
       public         postgres    false    3            �            1259    65679    kegiatan_patroli_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kegiatan_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kegiatan_patroli_id_seq;
       public       postgres    false    3    238            �           0    0    kegiatan_patroli_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kegiatan_patroli_id_seq OWNED BY public.kegiatan_patroli.id;
            public       postgres    false    239            �            1259    65681    keterangan_lokasi    TABLE     �   CREATE TABLE public.keterangan_lokasi (
    id integer NOT NULL,
    nama character varying(1000) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.keterangan_lokasi;
       public         postgres    false    3            �            1259    65687    keterangan_lokasi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keterangan_lokasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.keterangan_lokasi_id_seq;
       public       postgres    false    3    240            �           0    0    keterangan_lokasi_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.keterangan_lokasi_id_seq OWNED BY public.keterangan_lokasi.id;
            public       postgres    false    241            �            1259    65689    kondisi_karhutla    TABLE     �   CREATE TABLE public.kondisi_karhutla (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.kondisi_karhutla;
       public         postgres    false    3            �            1259    65695    kondisi_karhutla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kondisi_karhutla_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kondisi_karhutla_id_seq;
       public       postgres    false    242    3            �           0    0    kondisi_karhutla_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kondisi_karhutla_id_seq OWNED BY public.kondisi_karhutla.id;
            public       postgres    false    243            �            1259    65697    kondisi_sumber_air    TABLE     �  CREATE TABLE public.kondisi_sumber_air (
    id integer NOT NULL,
    patroli_darat_id integer NOT NULL,
    sumber_air_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    latitude double precision,
    longitude double precision,
    panjang double precision,
    lebar double precision,
    kedalaman double precision
);
 &   DROP TABLE public.kondisi_sumber_air;
       public         postgres    false    3            �            1259    65700    kondisi_sumber_air_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kondisi_sumber_air_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.kondisi_sumber_air_id_seq;
       public       postgres    false    244    3            �           0    0    kondisi_sumber_air_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.kondisi_sumber_air_id_seq OWNED BY public.kondisi_sumber_air.id;
            public       postgres    false    245            �            1259    65702    kondisi_tanah    TABLE     d  CREATE TABLE public.kondisi_tanah (
    id integer NOT NULL,
    patroli_darat_id integer NOT NULL,
    tanah_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    latitude double precision,
    longitude double precision,
    luas double precision,
    kedalaman_gambut double precision
);
 !   DROP TABLE public.kondisi_tanah;
       public         postgres    false    3            �            1259    65705    kondisi_tanah_id_seq    SEQUENCE     }   CREATE SEQUENCE public.kondisi_tanah_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.kondisi_tanah_id_seq;
       public       postgres    false    246    3            �           0    0    kondisi_tanah_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.kondisi_tanah_id_seq OWNED BY public.kondisi_tanah.id;
            public       postgres    false    247            �            1259    65707    kondisi_vegetasi    TABLE     a  CREATE TABLE public.kondisi_vegetasi (
    id integer NOT NULL,
    patroli_darat_id integer,
    vegetasi_id integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    kategori_kondisi_vegetasi_id integer,
    luas_tanah double precision,
    latitude double precision,
    longitude double precision
);
 $   DROP TABLE public.kondisi_vegetasi;
       public         postgres    false    3            �            1259    65710    kondisi_vegetasi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kondisi_vegetasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.kondisi_vegetasi_id_seq;
       public       postgres    false    3    248            �           0    0    kondisi_vegetasi_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.kondisi_vegetasi_id_seq OWNED BY public.kondisi_vegetasi.id;
            public       postgres    false    249            �            1259    65712    kota_kab    TABLE     �   CREATE TABLE public.kota_kab (
    id integer NOT NULL,
    daops_id integer,
    nama character varying(400),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.kota_kab;
       public         postgres    false    3            �            1259    65715    kota_kab_id_seq    SEQUENCE     x   CREATE SEQUENCE public.kota_kab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.kota_kab_id_seq;
       public       postgres    false    3    250            �           0    0    kota_kab_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kota_kab_id_seq OWNED BY public.kota_kab.id;
            public       postgres    false    251            �            1259    65717    level_pengguna    TABLE     �   CREATE TABLE public.level_pengguna (
    id integer NOT NULL,
    pengguna_id integer NOT NULL,
    hak_akses_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.level_pengguna;
       public         postgres    false    3            �            1259    65720    level_pengguna_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.level_pengguna_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.level_pengguna_id_seq;
       public       postgres    false    3    252            �           0    0    level_pengguna_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.level_pengguna_id_seq OWNED BY public.level_pengguna.id;
            public       postgres    false    253            �            1259    65722    lokasi_patroli    TABLE     1  CREATE TABLE public.lokasi_patroli (
    id integer NOT NULL,
    kegiatan_patroli_id integer,
    desa_kelurahan_id integer,
    latitude double precision,
    longitude double precision,
    suhu double precision,
    kelembaban double precision,
    kecepatan_angin double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    cuaca_pagi_id integer,
    cuaca_sore_id integer,
    cuaca_siang_id integer,
    curah_hujan_id integer,
    ffmc_kkas_id integer,
    fwi_id integer,
    dc_kk_id integer
);
 "   DROP TABLE public.lokasi_patroli;
       public         postgres    false    3            �            1259    65725    lokasi_patroli_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.lokasi_patroli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.lokasi_patroli_id_seq;
       public       postgres    false    3    254            �           0    0    lokasi_patroli_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.lokasi_patroli_id_seq OWNED BY public.lokasi_patroli.id;
            public       postgres    false    255                        1259    65727 
   migrations    TABLE     n   CREATE TABLE public.migrations (
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3                       1259    65730    navigation_menus    TABLE     �   CREATE TABLE public.navigation_menus (
    id integer NOT NULL,
    name character varying(500),
    display_name character varying(500),
    link text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.navigation_menus;
       public         postgres    false    3                       1259    65736    navigation_menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.navigation_menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.navigation_menus_id_seq;
       public       postgres    false    3    257            �           0    0    navigation_menus_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.navigation_menus_id_seq OWNED BY public.navigation_menus.id;
            public       postgres    false    258                       1259    65738    patroli_darat    TABLE     m  CREATE TABLE public.patroli_darat (
    id integer NOT NULL,
    aktivitas_masyarakat character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    curah_hujan_id integer,
    potensi_karhutla_id integer,
    kondisi_karhutla_id integer,
    keterangan_lokasi_id integer,
    lokasi_patroli_id integer
);
 !   DROP TABLE public.patroli_darat;
       public         postgres    false    3                       1259    65741    patroli_darat_id_seq    SEQUENCE     }   CREATE SEQUENCE public.patroli_darat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.patroli_darat_id_seq;
       public       postgres    false    3    259            �           0    0    patroli_darat_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.patroli_darat_id_seq OWNED BY public.patroli_darat.id;
            public       postgres    false    260                       1259    65743    patroli_udara    TABLE     J  CREATE TABLE public.patroli_udara (
    id integer NOT NULL,
    confidence integer,
    distance integer,
    kegiatan character varying(255),
    radial integer,
    keterangan character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    lokasi_patroli_id integer
);
 !   DROP TABLE public.patroli_udara;
       public         postgres    false    3                       1259    65749    patroli_udara_id_seq    SEQUENCE     }   CREATE SEQUENCE public.patroli_udara_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.patroli_udara_id_seq;
       public       postgres    false    3    261            �           0    0    patroli_udara_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.patroli_udara_id_seq OWNED BY public.patroli_udara.id;
            public       postgres    false    262                       1259    65751 	   pemadaman    TABLE     �  CREATE TABLE public.pemadaman (
    id integer NOT NULL,
    patroli_darat_id integer,
    latitude double precision,
    longitude double precision,
    luas_terbakar double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    luas_dipadamkan double precision,
    hasil_pemadaman character varying(900),
    tipe_kebakaran_id integer,
    pemilik_lahan_id integer
);
    DROP TABLE public.pemadaman;
       public         postgres    false    3                       1259    65757    pemadaman_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pemadaman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pemadaman_id_seq;
       public       postgres    false    3    263            �           0    0    pemadaman_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pemadaman_id_seq OWNED BY public.pemadaman.id;
            public       postgres    false    264            	           1259    65759    pemilik_lahan    TABLE     �   CREATE TABLE public.pemilik_lahan (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nama character varying(200)
);
 !   DROP TABLE public.pemilik_lahan;
       public         postgres    false    3            
           1259    65762    pemilik_lahan_id_seq    SEQUENCE     }   CREATE SEQUENCE public.pemilik_lahan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pemilik_lahan_id_seq;
       public       postgres    false    3    265            �           0    0    pemilik_lahan_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pemilik_lahan_id_seq OWNED BY public.pemilik_lahan.id;
            public       postgres    false    266                       1259    65764    pengguna    TABLE     F  CREATE TABLE public.pengguna (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    email character varying(300) NOT NULL,
    password character varying(200) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    remember_token character varying(100)
);
    DROP TABLE public.pengguna;
       public         postgres    false    3                       1259    65770    pengguna_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pengguna_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pengguna_id_seq;
       public       postgres    false    3    267            �           0    0    pengguna_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pengguna_id_seq OWNED BY public.pengguna.id;
            public       postgres    false    268                       1259    65772    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false    3                       1259    65775    permissions    TABLE       CREATE TABLE public.permissions (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255),
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3                       1259    65781    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    270    3            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    271                       1259    65783    posko    TABLE     �   CREATE TABLE public.posko (
    id integer NOT NULL,
    kecamatan_id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.posko;
       public         postgres    false    3                       1259    65786    posko_id_seq    SEQUENCE     u   CREATE SEQUENCE public.posko_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posko_id_seq;
       public       postgres    false    3    272            �           0    0    posko_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posko_id_seq OWNED BY public.posko.id;
            public       postgres    false    273                       1259    65788    potensi_karhutla    TABLE     �   CREATE TABLE public.potensi_karhutla (
    id integer NOT NULL,
    nama character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.potensi_karhutla;
       public         postgres    false    3                       1259    65794    potensi_karhutla_id_seq    SEQUENCE     �   CREATE SEQUENCE public.potensi_karhutla_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.potensi_karhutla_id_seq;
       public       postgres    false    3    274            �           0    0    potensi_karhutla_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.potensi_karhutla_id_seq OWNED BY public.potensi_karhutla.id;
            public       postgres    false    275                       1259    65796    provinsi    TABLE     �   CREATE TABLE public.provinsi (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.provinsi;
       public         postgres    false    3                       1259    65799    provinsi_id_seq    SEQUENCE     x   CREATE SEQUENCE public.provinsi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.provinsi_id_seq;
       public       postgres    false    3    276            �           0    0    provinsi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.provinsi_id_seq OWNED BY public.provinsi.id;
            public       postgres    false    277                       1259    65801    role_navigation_menu    TABLE     �   CREATE TABLE public.role_navigation_menu (
    id integer NOT NULL,
    role_id integer NOT NULL,
    navigation_menu_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 (   DROP TABLE public.role_navigation_menu;
       public         postgres    false    3                       1259    65804    role_navigation_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_navigation_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.role_navigation_menu_id_seq;
       public       postgres    false    3    278            �           0    0    role_navigation_menu_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.role_navigation_menu_id_seq OWNED BY public.role_navigation_menu.id;
            public       postgres    false    279                       1259    65806 	   role_user    TABLE     b   CREATE TABLE public.role_user (
    pengguna_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.role_user;
       public         postgres    false    3                       1259    65809    roles    TABLE       CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255),
    description character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3                       1259    65815    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    3    281            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    282                       1259    65817    satelit    TABLE     �   CREATE TABLE public.satelit (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.satelit;
       public         postgres    false    3                       1259    65820    satelit_id_seq    SEQUENCE     w   CREATE SEQUENCE public.satelit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.satelit_id_seq;
       public       postgres    false    3    283            �           0    0    satelit_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.satelit_id_seq OWNED BY public.satelit.id;
            public       postgres    false    284                       1259    65822    sebaran_hotspot    TABLE     D  CREATE TABLE public.sebaran_hotspot (
    id integer NOT NULL,
    hotspot_sipongi_id integer,
    latitude double precision,
    longitude double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    html character varying(255),
    provinsi character varying(500)
);
 #   DROP TABLE public.sebaran_hotspot;
       public         postgres    false    3                       1259    65828    sebaran_hotspot_id_seq    SEQUENCE        CREATE SEQUENCE public.sebaran_hotspot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.sebaran_hotspot_id_seq;
       public       postgres    false    3    285            �           0    0    sebaran_hotspot_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.sebaran_hotspot_id_seq OWNED BY public.sebaran_hotspot.id;
            public       postgres    false    286                       1259    65830    sosialisasi_penyadartahuan    TABLE     -  CREATE TABLE public.sosialisasi_penyadartahuan (
    id integer NOT NULL,
    patroli_darat_id integer,
    latitude double precision,
    longitude double precision,
    kegiatan character varying(1000),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 .   DROP TABLE public.sosialisasi_penyadartahuan;
       public         postgres    false    3                        1259    65836 !   sosialisasi_penyadartahuan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sosialisasi_penyadartahuan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.sosialisasi_penyadartahuan_id_seq;
       public       postgres    false    287    3            �           0    0 !   sosialisasi_penyadartahuan_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.sosialisasi_penyadartahuan_id_seq OWNED BY public.sosialisasi_penyadartahuan.id;
            public       postgres    false    288            !           1259    65838 
   sumber_air    TABLE     �   CREATE TABLE public.sumber_air (
    id integer NOT NULL,
    name character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sumber_air;
       public         postgres    false    3            "           1259    65841    sumber_air_id_seq    SEQUENCE     z   CREATE SEQUENCE public.sumber_air_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sumber_air_id_seq;
       public       postgres    false    289    3            �           0    0    sumber_air_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sumber_air_id_seq OWNED BY public.sumber_air.id;
            public       postgres    false    290            #           1259    65843    tanah    TABLE     �   CREATE TABLE public.tanah (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tanah;
       public         postgres    false    3            $           1259    65846    tanah_id_seq    SEQUENCE     u   CREATE SEQUENCE public.tanah_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tanah_id_seq;
       public       postgres    false    291    3            �           0    0    tanah_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tanah_id_seq OWNED BY public.tanah.id;
            public       postgres    false    292            %           1259    65848    test    TABLE     �   CREATE TABLE public.test (
    id integer NOT NULL,
    nama character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.test;
       public         postgres    false    3            &           1259    65851    test_id_seq    SEQUENCE     t   CREATE SEQUENCE public.test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public       postgres    false    293    3            �           0    0    test_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;
            public       postgres    false    294            '           1259    65853    tipe_kebakaran    TABLE     �   CREATE TABLE public.tipe_kebakaran (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nama character varying(200)
);
 "   DROP TABLE public.tipe_kebakaran;
       public         postgres    false    3            (           1259    65856    tipe_kebakaran_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tipe_kebakaran_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipe_kebakaran_id_seq;
       public       postgres    false    3    295            �           0    0    tipe_kebakaran_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipe_kebakaran_id_seq OWNED BY public.tipe_kebakaran.id;
            public       postgres    false    296            )           1259    65858    vegetasi    TABLE     �   CREATE TABLE public.vegetasi (
    id integer NOT NULL,
    nama character varying(400) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.vegetasi;
       public         postgres    false    3            *           1259    65861    vegetasi_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vegetasi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vegetasi_id_seq;
       public       postgres    false    297    3            �           0    0    vegetasi_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vegetasi_id_seq OWNED BY public.vegetasi.id;
            public       postgres    false    298            �           2604    65863    aktivitas_harian id    DEFAULT     z   ALTER TABLE ONLY public.aktivitas_harian ALTER COLUMN id SET DEFAULT nextval('public.aktivitas_harian_id_seq'::regclass);
 B   ALTER TABLE public.aktivitas_harian ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �           2604    65864    aktivitas_harian_patroli id    DEFAULT     �   ALTER TABLE ONLY public.aktivitas_harian_patroli ALTER COLUMN id SET DEFAULT nextval('public.aktivitas_harian_patroli_id_seq'::regclass);
 J   ALTER TABLE public.aktivitas_harian_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �           2604    65865 
   anggota id    DEFAULT     h   ALTER TABLE ONLY public.anggota ALTER COLUMN id SET DEFAULT nextval('public.anggota_id_seq'::regclass);
 9   ALTER TABLE public.anggota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �           2604    65866    anggota_patroli id    DEFAULT     x   ALTER TABLE ONLY public.anggota_patroli ALTER COLUMN id SET DEFAULT nextval('public.anggota_patroli_id_seq'::regclass);
 A   ALTER TABLE public.anggota_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            �           2604    65867    artifisial_param id    DEFAULT     z   ALTER TABLE ONLY public.artifisial_param ALTER COLUMN id SET DEFAULT nextval('public.artifisial_param_id_seq'::regclass);
 B   ALTER TABLE public.artifisial_param ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            �           2604    65868    cuaca id    DEFAULT     d   ALTER TABLE ONLY public.cuaca ALTER COLUMN id SET DEFAULT nextval('public.cuaca_id_seq'::regclass);
 7   ALTER TABLE public.cuaca ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            �           2604    65869    curah_hujan id    DEFAULT     p   ALTER TABLE ONLY public.curah_hujan ALTER COLUMN id SET DEFAULT nextval('public.curah_hujan_id_seq'::regclass);
 =   ALTER TABLE public.curah_hujan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            �           2604    65870    daops id    DEFAULT     d   ALTER TABLE ONLY public.daops ALTER COLUMN id SET DEFAULT nextval('public.daops_id_seq'::regclass);
 7   ALTER TABLE public.daops ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            �           2604    65871    desa_kelurahan id    DEFAULT     v   ALTER TABLE ONLY public.desa_kelurahan ALTER COLUMN id SET DEFAULT nextval('public.desa_kelurahan_id_seq'::regclass);
 @   ALTER TABLE public.desa_kelurahan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            �           2604    65872    dokumentasi id    DEFAULT     p   ALTER TABLE ONLY public.dokumentasi ALTER COLUMN id SET DEFAULT nextval('public.dokumentasi_id_seq'::regclass);
 =   ALTER TABLE public.dokumentasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            �           2604    65873    hak_akses id    DEFAULT     l   ALTER TABLE ONLY public.hak_akses ALTER COLUMN id SET DEFAULT nextval('public.hak_akses_id_seq'::regclass);
 ;   ALTER TABLE public.hak_akses ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            �           2604    65874    hasil_uji id    DEFAULT     l   ALTER TABLE ONLY public.hasil_uji ALTER COLUMN id SET DEFAULT nextval('public.hasil_uji_id_seq'::regclass);
 ;   ALTER TABLE public.hasil_uji ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            �           2604    65875 
   hotspot id    DEFAULT     h   ALTER TABLE ONLY public.hotspot ALTER COLUMN id SET DEFAULT nextval('public.hotspot_id_seq'::regclass);
 9   ALTER TABLE public.hotspot ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            �           2604    65876    hotspot_sipongi id    DEFAULT     x   ALTER TABLE ONLY public.hotspot_sipongi ALTER COLUMN id SET DEFAULT nextval('public.hotspot_sipongi_id_seq'::regclass);
 A   ALTER TABLE public.hotspot_sipongi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            �           2604    65877    inventori id    DEFAULT     l   ALTER TABLE ONLY public.inventori ALTER COLUMN id SET DEFAULT nextval('public.inventori_id_seq'::regclass);
 ;   ALTER TABLE public.inventori ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            �           2604    65878    inventori_patroli id    DEFAULT     |   ALTER TABLE ONLY public.inventori_patroli ALTER COLUMN id SET DEFAULT nextval('public.inventori_patroli_id_seq'::regclass);
 C   ALTER TABLE public.inventori_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            �           2604    65879    kadar_air_bahan_bakar id    DEFAULT     �   ALTER TABLE ONLY public.kadar_air_bahan_bakar ALTER COLUMN id SET DEFAULT nextval('public.kadar_air_bahan_bakar_id_seq'::regclass);
 G   ALTER TABLE public.kadar_air_bahan_bakar ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            �           2604    65880    kategori_anggota id    DEFAULT     z   ALTER TABLE ONLY public.kategori_anggota ALTER COLUMN id SET DEFAULT nextval('public.kategori_anggota_id_seq'::regclass);
 B   ALTER TABLE public.kategori_anggota ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            �           2604    65881    kategori_kondisi_vegetasi id    DEFAULT     �   ALTER TABLE ONLY public.kategori_kondisi_vegetasi ALTER COLUMN id SET DEFAULT nextval('public.kategori_kondisi_vegetasi_id_seq'::regclass);
 K   ALTER TABLE public.kategori_kondisi_vegetasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            �           2604    65882    kategori_patroli id    DEFAULT     z   ALTER TABLE ONLY public.kategori_patroli ALTER COLUMN id SET DEFAULT nextval('public.kategori_patroli_id_seq'::regclass);
 B   ALTER TABLE public.kategori_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            �           2604    65883    kecamatan id    DEFAULT     l   ALTER TABLE ONLY public.kecamatan ALTER COLUMN id SET DEFAULT nextval('public.kecamatan_id_seq'::regclass);
 ;   ALTER TABLE public.kecamatan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236            �           2604    65884    kegiatan_patroli id    DEFAULT     z   ALTER TABLE ONLY public.kegiatan_patroli ALTER COLUMN id SET DEFAULT nextval('public.kegiatan_patroli_id_seq'::regclass);
 B   ALTER TABLE public.kegiatan_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238            �           2604    65885    keterangan_lokasi id    DEFAULT     |   ALTER TABLE ONLY public.keterangan_lokasi ALTER COLUMN id SET DEFAULT nextval('public.keterangan_lokasi_id_seq'::regclass);
 C   ALTER TABLE public.keterangan_lokasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            �           2604    65886    kondisi_karhutla id    DEFAULT     z   ALTER TABLE ONLY public.kondisi_karhutla ALTER COLUMN id SET DEFAULT nextval('public.kondisi_karhutla_id_seq'::regclass);
 B   ALTER TABLE public.kondisi_karhutla ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            �           2604    65887    kondisi_sumber_air id    DEFAULT     ~   ALTER TABLE ONLY public.kondisi_sumber_air ALTER COLUMN id SET DEFAULT nextval('public.kondisi_sumber_air_id_seq'::regclass);
 D   ALTER TABLE public.kondisi_sumber_air ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            �           2604    65888    kondisi_tanah id    DEFAULT     t   ALTER TABLE ONLY public.kondisi_tanah ALTER COLUMN id SET DEFAULT nextval('public.kondisi_tanah_id_seq'::regclass);
 ?   ALTER TABLE public.kondisi_tanah ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            �           2604    65889    kondisi_vegetasi id    DEFAULT     z   ALTER TABLE ONLY public.kondisi_vegetasi ALTER COLUMN id SET DEFAULT nextval('public.kondisi_vegetasi_id_seq'::regclass);
 B   ALTER TABLE public.kondisi_vegetasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            �           2604    65890    kota_kab id    DEFAULT     j   ALTER TABLE ONLY public.kota_kab ALTER COLUMN id SET DEFAULT nextval('public.kota_kab_id_seq'::regclass);
 :   ALTER TABLE public.kota_kab ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250            �           2604    65891    level_pengguna id    DEFAULT     v   ALTER TABLE ONLY public.level_pengguna ALTER COLUMN id SET DEFAULT nextval('public.level_pengguna_id_seq'::regclass);
 @   ALTER TABLE public.level_pengguna ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    253    252            �           2604    65892    lokasi_patroli id    DEFAULT     v   ALTER TABLE ONLY public.lokasi_patroli ALTER COLUMN id SET DEFAULT nextval('public.lokasi_patroli_id_seq'::regclass);
 @   ALTER TABLE public.lokasi_patroli ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    254            �           2604    65893    navigation_menus id    DEFAULT     z   ALTER TABLE ONLY public.navigation_menus ALTER COLUMN id SET DEFAULT nextval('public.navigation_menus_id_seq'::regclass);
 B   ALTER TABLE public.navigation_menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    257            �           2604    65894    patroli_darat id    DEFAULT     t   ALTER TABLE ONLY public.patroli_darat ALTER COLUMN id SET DEFAULT nextval('public.patroli_darat_id_seq'::regclass);
 ?   ALTER TABLE public.patroli_darat ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    260    259            �           2604    65895    patroli_udara id    DEFAULT     t   ALTER TABLE ONLY public.patroli_udara ALTER COLUMN id SET DEFAULT nextval('public.patroli_udara_id_seq'::regclass);
 ?   ALTER TABLE public.patroli_udara ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    262    261            �           2604    65896    pemadaman id    DEFAULT     l   ALTER TABLE ONLY public.pemadaman ALTER COLUMN id SET DEFAULT nextval('public.pemadaman_id_seq'::regclass);
 ;   ALTER TABLE public.pemadaman ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    263            �           2604    65897    pemilik_lahan id    DEFAULT     t   ALTER TABLE ONLY public.pemilik_lahan ALTER COLUMN id SET DEFAULT nextval('public.pemilik_lahan_id_seq'::regclass);
 ?   ALTER TABLE public.pemilik_lahan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265            �           2604    65898    pengguna id    DEFAULT     j   ALTER TABLE ONLY public.pengguna ALTER COLUMN id SET DEFAULT nextval('public.pengguna_id_seq'::regclass);
 :   ALTER TABLE public.pengguna ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267            �           2604    65899    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    271    270            �           2604    65900    posko id    DEFAULT     d   ALTER TABLE ONLY public.posko ALTER COLUMN id SET DEFAULT nextval('public.posko_id_seq'::regclass);
 7   ALTER TABLE public.posko ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272            �           2604    65901    potensi_karhutla id    DEFAULT     z   ALTER TABLE ONLY public.potensi_karhutla ALTER COLUMN id SET DEFAULT nextval('public.potensi_karhutla_id_seq'::regclass);
 B   ALTER TABLE public.potensi_karhutla ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    274            �           2604    65902    provinsi id    DEFAULT     j   ALTER TABLE ONLY public.provinsi ALTER COLUMN id SET DEFAULT nextval('public.provinsi_id_seq'::regclass);
 :   ALTER TABLE public.provinsi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    277    276            �           2604    65903    role_navigation_menu id    DEFAULT     �   ALTER TABLE ONLY public.role_navigation_menu ALTER COLUMN id SET DEFAULT nextval('public.role_navigation_menu_id_seq'::regclass);
 F   ALTER TABLE public.role_navigation_menu ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    279    278            �           2604    65904    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    282    281            �           2604    65905 
   satelit id    DEFAULT     h   ALTER TABLE ONLY public.satelit ALTER COLUMN id SET DEFAULT nextval('public.satelit_id_seq'::regclass);
 9   ALTER TABLE public.satelit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283            �           2604    65906    sebaran_hotspot id    DEFAULT     x   ALTER TABLE ONLY public.sebaran_hotspot ALTER COLUMN id SET DEFAULT nextval('public.sebaran_hotspot_id_seq'::regclass);
 A   ALTER TABLE public.sebaran_hotspot ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    286    285            �           2604    65907    sosialisasi_penyadartahuan id    DEFAULT     �   ALTER TABLE ONLY public.sosialisasi_penyadartahuan ALTER COLUMN id SET DEFAULT nextval('public.sosialisasi_penyadartahuan_id_seq'::regclass);
 L   ALTER TABLE public.sosialisasi_penyadartahuan ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    288    287            �           2604    65908    sumber_air id    DEFAULT     n   ALTER TABLE ONLY public.sumber_air ALTER COLUMN id SET DEFAULT nextval('public.sumber_air_id_seq'::regclass);
 <   ALTER TABLE public.sumber_air ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    290    289            �           2604    65909    tanah id    DEFAULT     d   ALTER TABLE ONLY public.tanah ALTER COLUMN id SET DEFAULT nextval('public.tanah_id_seq'::regclass);
 7   ALTER TABLE public.tanah ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    292    291            �           2604    65910    test id    DEFAULT     b   ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);
 6   ALTER TABLE public.test ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    294    293            �           2604    65911    tipe_kebakaran id    DEFAULT     v   ALTER TABLE ONLY public.tipe_kebakaran ALTER COLUMN id SET DEFAULT nextval('public.tipe_kebakaran_id_seq'::regclass);
 @   ALTER TABLE public.tipe_kebakaran ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    296    295            �           2604    65912    vegetasi id    DEFAULT     j   ALTER TABLE ONLY public.vegetasi ALTER COLUMN id SET DEFAULT nextval('public.vegetasi_id_seq'::regclass);
 :   ALTER TABLE public.vegetasi ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    298    297            �          0    65544    aktivitas_harian 
   TABLE DATA               L   COPY public.aktivitas_harian (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    196   `�      �          0    65549    aktivitas_harian_patroli 
   TABLE DATA               x   COPY public.aktivitas_harian_patroli (id, aktivitas_harian_id, kegiatan_patroli_id, created_at, updated_at) FROM stdin;
    public       postgres    false    198                    0    65554    anggota 
   TABLE DATA               k   COPY public.anggota (id, nama, email, no_telepon, created_at, updated_at, kategori_anggota_id) FROM stdin;
    public       postgres    false    200   \                 0    65562    anggota_patroli 
   TABLE DATA               f   COPY public.anggota_patroli (id, anggota_id, kegiatan_patroli_id, created_at, updated_at) FROM stdin;
    public       postgres    false    202                   0    65567    artifisial_param 
   TABLE DATA               L   COPY public.artifisial_param (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    204   J                0    65575    cuaca 
   TABLE DATA               A   COPY public.cuaca (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    206   �      	          0    65583    curah_hujan 
   TABLE DATA               G   COPY public.curah_hujan (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    208   �                0    65591    daops 
   TABLE DATA               N   COPY public.daops (id, provinsi_id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    210   
                0    65596    desa_kelurahan 
   TABLE DATA               b   COPY public.desa_kelurahan (id, posko_id, nama, created_at, updated_at, kecamatan_id) FROM stdin;
    public       postgres    false    212   o                0    65601    dokumentasi 
   TABLE DATA               v   COPY public.dokumentasi (id, kegiatan_patroli_id, url_file, tipe_file, deskripsi, created_at, updated_at) FROM stdin;
    public       postgres    false    214   �                0    65609 	   hak_akses 
   TABLE DATA               K   COPY public.hak_akses (id, nama, menu, created_at, updated_at) FROM stdin;
    public       postgres    false    216   %                0    65617 	   hasil_uji 
   TABLE DATA               h   COPY public.hasil_uji (id, patroli_darat_id, nama_pengujian, hasil, created_at, updated_at) FROM stdin;
    public       postgres    false    218   B                0    65625    hotspot 
   TABLE DATA               i   COPY public.hotspot (id, satelit_id, kegiatan_patroli_id, deskripsi, created_at, updated_at) FROM stdin;
    public       postgres    false    220   �                0    65630    hotspot_sipongi 
   TABLE DATA               N   COPY public.hotspot_sipongi (id, tanggal, created_at, updated_at) FROM stdin;
    public       postgres    false    222   �                0    65635 	   inventori 
   TABLE DATA               E   COPY public.inventori (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    224   ,                0    65640    inventori_patroli 
   TABLE DATA               w   COPY public.inventori_patroli (id, kegiatan_patroli_id, inventori_id, created_at, updated_at, jumlah_unit) FROM stdin;
    public       postgres    false    226   ~                0    65645    kadar_air_bahan_bakar 
   TABLE DATA               Q   COPY public.kadar_air_bahan_bakar (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    228   �                0    65650    kategori_anggota 
   TABLE DATA               L   COPY public.kategori_anggota (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    230         !          0    65658    kategori_kondisi_vegetasi 
   TABLE DATA               U   COPY public.kategori_kondisi_vegetasi (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    232   [      #          0    65666    kategori_patroli 
   TABLE DATA               L   COPY public.kategori_patroli (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    234   �      %          0    65671 	   kecamatan 
   TABLE DATA               R   COPY public.kecamatan (id, kota_kab_id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    236   �      '          0    65676    kegiatan_patroli 
   TABLE DATA               l   COPY public.kegiatan_patroli (id, kategori_patroli_id, tanggal_patroli, created_at, updated_at) FROM stdin;
    public       postgres    false    238   �*      )          0    65681    keterangan_lokasi 
   TABLE DATA               M   COPY public.keterangan_lokasi (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    240   �*      +          0    65689    kondisi_karhutla 
   TABLE DATA               L   COPY public.kondisi_karhutla (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    242   R+      -          0    65697    kondisi_sumber_air 
   TABLE DATA               �   COPY public.kondisi_sumber_air (id, patroli_darat_id, sumber_air_id, created_at, updated_at, latitude, longitude, panjang, lebar, kedalaman) FROM stdin;
    public       postgres    false    244   �+      /          0    65702    kondisi_tanah 
   TABLE DATA               �   COPY public.kondisi_tanah (id, patroli_darat_id, tanah_id, created_at, updated_at, latitude, longitude, luas, kedalaman_gambut) FROM stdin;
    public       postgres    false    246   �+      1          0    65707    kondisi_vegetasi 
   TABLE DATA               �   COPY public.kondisi_vegetasi (id, patroli_darat_id, vegetasi_id, created_at, updated_at, kategori_kondisi_vegetasi_id, luas_tanah, latitude, longitude) FROM stdin;
    public       postgres    false    248   9,      3          0    65712    kota_kab 
   TABLE DATA               N   COPY public.kota_kab (id, daops_id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    250   �,      5          0    65717    level_pengguna 
   TABLE DATA               _   COPY public.level_pengguna (id, pengguna_id, hak_akses_id, created_at, updated_at) FROM stdin;
    public       postgres    false    252   �/      7          0    65722    lokasi_patroli 
   TABLE DATA                 COPY public.lokasi_patroli (id, kegiatan_patroli_id, desa_kelurahan_id, latitude, longitude, suhu, kelembaban, kecepatan_angin, created_at, updated_at, cuaca_pagi_id, cuaca_sore_id, cuaca_siang_id, curah_hujan_id, ffmc_kkas_id, fwi_id, dc_kk_id) FROM stdin;
    public       postgres    false    254   �/      9          0    65727 
   migrations 
   TABLE DATA               6   COPY public.migrations (migration, batch) FROM stdin;
    public       postgres    false    256   0      :          0    65730    navigation_menus 
   TABLE DATA               `   COPY public.navigation_menus (id, name, display_name, link, created_at, updated_at) FROM stdin;
    public       postgres    false    257   �5      <          0    65738    patroli_darat 
   TABLE DATA               �   COPY public.patroli_darat (id, aktivitas_masyarakat, created_at, updated_at, curah_hujan_id, potensi_karhutla_id, kondisi_karhutla_id, keterangan_lokasi_id, lokasi_patroli_id) FROM stdin;
    public       postgres    false    259   �6      >          0    65743    patroli_udara 
   TABLE DATA               �   COPY public.patroli_udara (id, confidence, distance, kegiatan, radial, keterangan, created_at, updated_at, lokasi_patroli_id) FROM stdin;
    public       postgres    false    261   �6      @          0    65751 	   pemadaman 
   TABLE DATA               �   COPY public.pemadaman (id, patroli_darat_id, latitude, longitude, luas_terbakar, created_at, updated_at, luas_dipadamkan, hasil_pemadaman, tipe_kebakaran_id, pemilik_lahan_id) FROM stdin;
    public       postgres    false    263   7      B          0    65759    pemilik_lahan 
   TABLE DATA               I   COPY public.pemilik_lahan (id, created_at, updated_at, nama) FROM stdin;
    public       postgres    false    265   |7      D          0    65764    pengguna 
   TABLE DATA               e   COPY public.pengguna (id, nama, email, password, created_at, updated_at, remember_token) FROM stdin;
    public       postgres    false    267   �7      F          0    65772    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    269   �8      G          0    65775    permissions 
   TABLE DATA               b   COPY public.permissions (id, name, display_name, description, created_at, updated_at) FROM stdin;
    public       postgres    false    270   z9      I          0    65783    posko 
   TABLE DATA               O   COPY public.posko (id, kecamatan_id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    272   i<      K          0    65788    potensi_karhutla 
   TABLE DATA               L   COPY public.potensi_karhutla (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    274   �<      M          0    65796    provinsi 
   TABLE DATA               D   COPY public.provinsi (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    276   �<      O          0    65801    role_navigation_menu 
   TABLE DATA               g   COPY public.role_navigation_menu (id, role_id, navigation_menu_id, created_at, updated_at) FROM stdin;
    public       postgres    false    278   �=      Q          0    65806 	   role_user 
   TABLE DATA               9   COPY public.role_user (pengguna_id, role_id) FROM stdin;
    public       postgres    false    280   �=      R          0    65809    roles 
   TABLE DATA               \   COPY public.roles (id, name, display_name, description, created_at, updated_at) FROM stdin;
    public       postgres    false    281   >      T          0    65817    satelit 
   TABLE DATA               C   COPY public.satelit (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    283   �>      V          0    65822    sebaran_hotspot 
   TABLE DATA               ~   COPY public.sebaran_hotspot (id, hotspot_sipongi_id, latitude, longitude, created_at, updated_at, html, provinsi) FROM stdin;
    public       postgres    false    285   �>      X          0    65830    sosialisasi_penyadartahuan 
   TABLE DATA               �   COPY public.sosialisasi_penyadartahuan (id, patroli_darat_id, latitude, longitude, kegiatan, created_at, updated_at) FROM stdin;
    public       postgres    false    287   P?      Z          0    65838 
   sumber_air 
   TABLE DATA               F   COPY public.sumber_air (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    289   m?      \          0    65843    tanah 
   TABLE DATA               A   COPY public.tanah (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    291   �?      ^          0    65848    test 
   TABLE DATA               @   COPY public.test (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    293   �?      `          0    65853    tipe_kebakaran 
   TABLE DATA               J   COPY public.tipe_kebakaran (id, created_at, updated_at, nama) FROM stdin;
    public       postgres    false    295   �?      b          0    65858    vegetasi 
   TABLE DATA               D   COPY public.vegetasi (id, nama, created_at, updated_at) FROM stdin;
    public       postgres    false    297    @      �           0    0    aktivitas_harian_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.aktivitas_harian_id_seq', 6, true);
            public       postgres    false    197            �           0    0    aktivitas_harian_patroli_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.aktivitas_harian_patroli_id_seq', 134, true);
            public       postgres    false    199            �           0    0    anggota_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.anggota_id_seq', 18, true);
            public       postgres    false    201            �           0    0    anggota_patroli_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.anggota_patroli_id_seq', 346, true);
            public       postgres    false    203            �           0    0    artifisial_param_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.artifisial_param_id_seq', 3, true);
            public       postgres    false    205            �           0    0    cuaca_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cuaca_id_seq', 4, true);
            public       postgres    false    207            �           0    0    curah_hujan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.curah_hujan_id_seq', 3, true);
            public       postgres    false    209            �           0    0    daops_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.daops_id_seq', 430, true);
            public       postgres    false    211            �           0    0    desa_kelurahan_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.desa_kelurahan_id_seq', 1618, true);
            public       postgres    false    213            �           0    0    dokumentasi_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dokumentasi_id_seq', 112, true);
            public       postgres    false    215            �           0    0    hak_akses_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.hak_akses_id_seq', 1, false);
            public       postgres    false    217            �           0    0    hasil_uji_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hasil_uji_id_seq', 125, true);
            public       postgres    false    219            �           0    0    hotspot_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.hotspot_id_seq', 135, true);
            public       postgres    false    221            �           0    0    hotspot_sipongi_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hotspot_sipongi_id_seq', 30, true);
            public       postgres    false    223            �           0    0    inventori_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.inventori_id_seq', 5, true);
            public       postgres    false    225            �           0    0    inventori_patroli_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.inventori_patroli_id_seq', 141, true);
            public       postgres    false    227            �           0    0    kadar_air_bahan_bakar_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.kadar_air_bahan_bakar_id_seq', 3, true);
            public       postgres    false    229            �           0    0    kategori_anggota_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.kategori_anggota_id_seq', 4, true);
            public       postgres    false    231            �           0    0     kategori_kondisi_vegetasi_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.kategori_kondisi_vegetasi_id_seq', 2, true);
            public       postgres    false    233            �           0    0    kategori_patroli_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.kategori_patroli_id_seq', 3, true);
            public       postgres    false    235            �           0    0    kecamatan_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.kecamatan_id_seq', 864, true);
            public       postgres    false    237            �           0    0    kegiatan_patroli_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.kegiatan_patroli_id_seq', 130, true);
            public       postgres    false    239            �           0    0    keterangan_lokasi_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.keterangan_lokasi_id_seq', 2, true);
            public       postgres    false    241            �           0    0    kondisi_karhutla_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.kondisi_karhutla_id_seq', 2, true);
            public       postgres    false    243            �           0    0    kondisi_sumber_air_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.kondisi_sumber_air_id_seq', 143, true);
            public       postgres    false    245            �           0    0    kondisi_tanah_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.kondisi_tanah_id_seq', 141, true);
            public       postgres    false    247            �           0    0    kondisi_vegetasi_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.kondisi_vegetasi_id_seq', 152, true);
            public       postgres    false    249            �           0    0    kota_kab_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.kota_kab_id_seq', 330, true);
            public       postgres    false    251            �           0    0    level_pengguna_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.level_pengguna_id_seq', 1, false);
            public       postgres    false    253            �           0    0    lokasi_patroli_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.lokasi_patroli_id_seq', 4, true);
            public       postgres    false    255            �           0    0    navigation_menus_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.navigation_menus_id_seq', 17, true);
            public       postgres    false    258            �           0    0    patroli_darat_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.patroli_darat_id_seq', 12336, true);
            public       postgres    false    260            �           0    0    patroli_udara_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.patroli_udara_id_seq', 24, true);
            public       postgres    false    262            �           0    0    pemadaman_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pemadaman_id_seq', 122, true);
            public       postgres    false    264            �           0    0    pemilik_lahan_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pemilik_lahan_id_seq', 3, true);
            public       postgres    false    266            �           0    0    pengguna_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pengguna_id_seq', 11, true);
            public       postgres    false    268            �           0    0    permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.permissions_id_seq', 140, true);
            public       postgres    false    271            �           0    0    posko_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posko_id_seq', 4, true);
            public       postgres    false    273            �           0    0    potensi_karhutla_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.potensi_karhutla_id_seq', 3, true);
            public       postgres    false    275            �           0    0    provinsi_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.provinsi_id_seq', 64, true);
            public       postgres    false    277            �           0    0    role_navigation_menu_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.role_navigation_menu_id_seq', 4, true);
            public       postgres    false    279            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 29, true);
            public       postgres    false    282            �           0    0    satelit_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.satelit_id_seq', 2, true);
            public       postgres    false    284            �           0    0    sebaran_hotspot_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sebaran_hotspot_id_seq', 871, true);
            public       postgres    false    286            �           0    0 !   sosialisasi_penyadartahuan_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.sosialisasi_penyadartahuan_id_seq', 1, false);
            public       postgres    false    288            �           0    0    sumber_air_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sumber_air_id_seq', 2, true);
            public       postgres    false    290            �           0    0    tanah_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tanah_id_seq', 2, true);
            public       postgres    false    292            �           0    0    test_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.test_id_seq', 1, false);
            public       postgres    false    294            �           0    0    tipe_kebakaran_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipe_kebakaran_id_seq', 2, true);
            public       postgres    false    296            �           0    0    vegetasi_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vegetasi_id_seq', 6, true);
            public       postgres    false    298            �           2606    65914 6   aktivitas_harian_patroli aktivitas_harian_patroli_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.aktivitas_harian_patroli
    ADD CONSTRAINT aktivitas_harian_patroli_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.aktivitas_harian_patroli DROP CONSTRAINT aktivitas_harian_patroli_pkey;
       public         postgres    false    198            �           2606    65916 &   aktivitas_harian aktivitas_harian_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.aktivitas_harian
    ADD CONSTRAINT aktivitas_harian_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.aktivitas_harian DROP CONSTRAINT aktivitas_harian_pkey;
       public         postgres    false    196            �           2606    65918 $   anggota_patroli anggota_patroli_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.anggota_patroli
    ADD CONSTRAINT anggota_patroli_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.anggota_patroli DROP CONSTRAINT anggota_patroli_pkey;
       public         postgres    false    202            �           2606    65920    anggota anggota_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.anggota
    ADD CONSTRAINT anggota_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.anggota DROP CONSTRAINT anggota_pkey;
       public         postgres    false    200            �           2606    65922 &   artifisial_param artifisial_param_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.artifisial_param
    ADD CONSTRAINT artifisial_param_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.artifisial_param DROP CONSTRAINT artifisial_param_pkey;
       public         postgres    false    204            �           2606    65924    cuaca cuaca_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cuaca
    ADD CONSTRAINT cuaca_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cuaca DROP CONSTRAINT cuaca_pkey;
       public         postgres    false    206            �           2606    65926    curah_hujan curah_hujan_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.curah_hujan
    ADD CONSTRAINT curah_hujan_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.curah_hujan DROP CONSTRAINT curah_hujan_pkey;
       public         postgres    false    208            �           2606    65928    daops daops_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.daops
    ADD CONSTRAINT daops_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.daops DROP CONSTRAINT daops_pkey;
       public         postgres    false    210            �           2606    65930 "   desa_kelurahan desa_kelurahan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.desa_kelurahan
    ADD CONSTRAINT desa_kelurahan_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.desa_kelurahan DROP CONSTRAINT desa_kelurahan_pkey;
       public         postgres    false    212            �           2606    65932    dokumentasi dokumentasi_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.dokumentasi
    ADD CONSTRAINT dokumentasi_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.dokumentasi DROP CONSTRAINT dokumentasi_pkey;
       public         postgres    false    214            �           2606    65934    hak_akses hak_akses_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hak_akses
    ADD CONSTRAINT hak_akses_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.hak_akses DROP CONSTRAINT hak_akses_pkey;
       public         postgres    false    216            �           2606    65936    hasil_uji hasil_uji_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.hasil_uji
    ADD CONSTRAINT hasil_uji_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.hasil_uji DROP CONSTRAINT hasil_uji_pkey;
       public         postgres    false    218            �           2606    65938    hotspot hotspot_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hotspot
    ADD CONSTRAINT hotspot_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hotspot DROP CONSTRAINT hotspot_pkey;
       public         postgres    false    220                       2606    65940 $   hotspot_sipongi hotspot_sipongi_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.hotspot_sipongi
    ADD CONSTRAINT hotspot_sipongi_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.hotspot_sipongi DROP CONSTRAINT hotspot_sipongi_pkey;
       public         postgres    false    222                       2606    65942 (   inventori_patroli inventori_patroli_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.inventori_patroli
    ADD CONSTRAINT inventori_patroli_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.inventori_patroli DROP CONSTRAINT inventori_patroli_pkey;
       public         postgres    false    226                       2606    65944    inventori inventori_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.inventori
    ADD CONSTRAINT inventori_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.inventori DROP CONSTRAINT inventori_pkey;
       public         postgres    false    224                       2606    65946 0   kadar_air_bahan_bakar kadar_air_bahan_bakar_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.kadar_air_bahan_bakar
    ADD CONSTRAINT kadar_air_bahan_bakar_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.kadar_air_bahan_bakar DROP CONSTRAINT kadar_air_bahan_bakar_pkey;
       public         postgres    false    228            	           2606    65948 &   kategori_anggota kategori_anggota_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.kategori_anggota
    ADD CONSTRAINT kategori_anggota_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.kategori_anggota DROP CONSTRAINT kategori_anggota_pkey;
       public         postgres    false    230                       2606    65950 8   kategori_kondisi_vegetasi kategori_kondisi_vegetasi_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.kategori_kondisi_vegetasi
    ADD CONSTRAINT kategori_kondisi_vegetasi_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.kategori_kondisi_vegetasi DROP CONSTRAINT kategori_kondisi_vegetasi_pkey;
       public         postgres    false    232                       2606    65952 &   kategori_patroli kategori_patroli_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.kategori_patroli
    ADD CONSTRAINT kategori_patroli_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.kategori_patroli DROP CONSTRAINT kategori_patroli_pkey;
       public         postgres    false    234                       2606    65954    kecamatan kecamatan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kecamatan
    ADD CONSTRAINT kecamatan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kecamatan DROP CONSTRAINT kecamatan_pkey;
       public         postgres    false    236                       2606    65956 &   kegiatan_patroli kegiatan_patroli_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.kegiatan_patroli
    ADD CONSTRAINT kegiatan_patroli_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.kegiatan_patroli DROP CONSTRAINT kegiatan_patroli_pkey;
       public         postgres    false    238                       2606    65958 (   keterangan_lokasi keterangan_lokasi_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.keterangan_lokasi
    ADD CONSTRAINT keterangan_lokasi_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.keterangan_lokasi DROP CONSTRAINT keterangan_lokasi_pkey;
       public         postgres    false    240                       2606    65960 &   kondisi_karhutla kondisi_karhutla_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.kondisi_karhutla
    ADD CONSTRAINT kondisi_karhutla_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.kondisi_karhutla DROP CONSTRAINT kondisi_karhutla_pkey;
       public         postgres    false    242                       2606    65962 *   kondisi_sumber_air kondisi_sumber_air_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.kondisi_sumber_air
    ADD CONSTRAINT kondisi_sumber_air_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.kondisi_sumber_air DROP CONSTRAINT kondisi_sumber_air_pkey;
       public         postgres    false    244                       2606    65964     kondisi_tanah kondisi_tanah_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.kondisi_tanah
    ADD CONSTRAINT kondisi_tanah_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.kondisi_tanah DROP CONSTRAINT kondisi_tanah_pkey;
       public         postgres    false    246                       2606    65966 &   kondisi_vegetasi kondisi_vegetasi_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.kondisi_vegetasi
    ADD CONSTRAINT kondisi_vegetasi_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.kondisi_vegetasi DROP CONSTRAINT kondisi_vegetasi_pkey;
       public         postgres    false    248                       2606    65968    kota_kab kota_kab_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kota_kab
    ADD CONSTRAINT kota_kab_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.kota_kab DROP CONSTRAINT kota_kab_pkey;
       public         postgres    false    250                       2606    65970 "   level_pengguna level_pengguna_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.level_pengguna
    ADD CONSTRAINT level_pengguna_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.level_pengguna DROP CONSTRAINT level_pengguna_pkey;
       public         postgres    false    252            !           2606    65972 "   lokasi_patroli lokasi_patroli_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_pkey;
       public         postgres    false    254            #           2606    65974 &   navigation_menus navigation_menus_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.navigation_menus
    ADD CONSTRAINT navigation_menus_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.navigation_menus DROP CONSTRAINT navigation_menus_pkey;
       public         postgres    false    257            %           2606    65976     patroli_darat patroli_darat_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_pkey;
       public         postgres    false    259            '           2606    65978     patroli_udara patroli_udara_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.patroli_udara
    ADD CONSTRAINT patroli_udara_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.patroli_udara DROP CONSTRAINT patroli_udara_pkey;
       public         postgres    false    261            )           2606    65980    pemadaman pemadaman_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pemadaman
    ADD CONSTRAINT pemadaman_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pemadaman DROP CONSTRAINT pemadaman_pkey;
       public         postgres    false    263            +           2606    65982     pemilik_lahan pemilik_lahan_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pemilik_lahan
    ADD CONSTRAINT pemilik_lahan_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.pemilik_lahan DROP CONSTRAINT pemilik_lahan_pkey;
       public         postgres    false    265            -           2606    65984    pengguna pengguna_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pengguna
    ADD CONSTRAINT pengguna_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pengguna DROP CONSTRAINT pengguna_pkey;
       public         postgres    false    267            /           2606    65986 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    269    269            1           2606    65988 #   permissions permissions_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_unique;
       public         postgres    false    270            3           2606    65990    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    270            5           2606    65992    posko posko_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posko
    ADD CONSTRAINT posko_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posko DROP CONSTRAINT posko_pkey;
       public         postgres    false    272            7           2606    65994 &   potensi_karhutla potensi_karhutla_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.potensi_karhutla
    ADD CONSTRAINT potensi_karhutla_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.potensi_karhutla DROP CONSTRAINT potensi_karhutla_pkey;
       public         postgres    false    274            9           2606    65996    provinsi provinsi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.provinsi
    ADD CONSTRAINT provinsi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.provinsi DROP CONSTRAINT provinsi_pkey;
       public         postgres    false    276            ;           2606    65998 .   role_navigation_menu role_navigation_menu_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.role_navigation_menu
    ADD CONSTRAINT role_navigation_menu_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.role_navigation_menu DROP CONSTRAINT role_navigation_menu_pkey;
       public         postgres    false    278            =           2606    66000    role_user role_user_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pkey PRIMARY KEY (pengguna_id, role_id);
 B   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_pkey;
       public         postgres    false    280    280            ?           2606    66002    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    281            A           2606    66004    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    281            C           2606    66006    satelit satelit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.satelit
    ADD CONSTRAINT satelit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.satelit DROP CONSTRAINT satelit_pkey;
       public         postgres    false    283            E           2606    66008 $   sebaran_hotspot sebaran_hotspot_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.sebaran_hotspot
    ADD CONSTRAINT sebaran_hotspot_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.sebaran_hotspot DROP CONSTRAINT sebaran_hotspot_pkey;
       public         postgres    false    285            G           2606    66010 :   sosialisasi_penyadartahuan sosialisasi_penyadartahuan_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.sosialisasi_penyadartahuan
    ADD CONSTRAINT sosialisasi_penyadartahuan_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.sosialisasi_penyadartahuan DROP CONSTRAINT sosialisasi_penyadartahuan_pkey;
       public         postgres    false    287            I           2606    66012    sumber_air sumber_air_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sumber_air
    ADD CONSTRAINT sumber_air_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sumber_air DROP CONSTRAINT sumber_air_pkey;
       public         postgres    false    289            K           2606    66014    tanah tanah_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tanah
    ADD CONSTRAINT tanah_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tanah DROP CONSTRAINT tanah_pkey;
       public         postgres    false    291            M           2606    66016    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public         postgres    false    293            O           2606    66018 "   tipe_kebakaran tipe_kebakaran_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipe_kebakaran
    ADD CONSTRAINT tipe_kebakaran_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipe_kebakaran DROP CONSTRAINT tipe_kebakaran_pkey;
       public         postgres    false    295            Q           2606    66020    vegetasi vegetasi_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vegetasi
    ADD CONSTRAINT vegetasi_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vegetasi DROP CONSTRAINT vegetasi_pkey;
       public         postgres    false    297            R           2606    66021 M   aktivitas_harian_patroli aktivitas_harian_patroli_aktivitas_harian_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.aktivitas_harian_patroli
    ADD CONSTRAINT aktivitas_harian_patroli_aktivitas_harian_id_foreign FOREIGN KEY (aktivitas_harian_id) REFERENCES public.aktivitas_harian(id);
 w   ALTER TABLE ONLY public.aktivitas_harian_patroli DROP CONSTRAINT aktivitas_harian_patroli_aktivitas_harian_id_foreign;
       public       postgres    false    3047    196    198            S           2606    66026 M   aktivitas_harian_patroli aktivitas_harian_patroli_kegiatan_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.aktivitas_harian_patroli
    ADD CONSTRAINT aktivitas_harian_patroli_kegiatan_patroli_id_foreign FOREIGN KEY (kegiatan_patroli_id) REFERENCES public.kegiatan_patroli(id);
 w   ALTER TABLE ONLY public.aktivitas_harian_patroli DROP CONSTRAINT aktivitas_harian_patroli_kegiatan_patroli_id_foreign;
       public       postgres    false    198    3089    238            T           2606    66031 #   anggota anggota_kategori_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.anggota
    ADD CONSTRAINT anggota_kategori_id_foreign FOREIGN KEY (kategori_anggota_id) REFERENCES public.kategori_anggota(id);
 M   ALTER TABLE ONLY public.anggota DROP CONSTRAINT anggota_kategori_id_foreign;
       public       postgres    false    200    230    3081            U           2606    66036 2   anggota_patroli anggota_patroli_anggota_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.anggota_patroli
    ADD CONSTRAINT anggota_patroli_anggota_id_foreign FOREIGN KEY (anggota_id) REFERENCES public.anggota(id);
 \   ALTER TABLE ONLY public.anggota_patroli DROP CONSTRAINT anggota_patroli_anggota_id_foreign;
       public       postgres    false    200    202    3051            V           2606    66041 ;   anggota_patroli anggota_patroli_kegiatan_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.anggota_patroli
    ADD CONSTRAINT anggota_patroli_kegiatan_patroli_id_foreign FOREIGN KEY (kegiatan_patroli_id) REFERENCES public.kegiatan_patroli(id);
 e   ALTER TABLE ONLY public.anggota_patroli DROP CONSTRAINT anggota_patroli_kegiatan_patroli_id_foreign;
       public       postgres    false    3089    238    202            W           2606    66046    daops daops_provinsi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.daops
    ADD CONSTRAINT daops_provinsi_id_foreign FOREIGN KEY (provinsi_id) REFERENCES public.provinsi(id);
 I   ALTER TABLE ONLY public.daops DROP CONSTRAINT daops_provinsi_id_foreign;
       public       postgres    false    276    210    3129            X           2606    66051 2   desa_kelurahan desa_kelurahan_kecamatan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.desa_kelurahan
    ADD CONSTRAINT desa_kelurahan_kecamatan_id_foreign FOREIGN KEY (kecamatan_id) REFERENCES public.kecamatan(id);
 \   ALTER TABLE ONLY public.desa_kelurahan DROP CONSTRAINT desa_kelurahan_kecamatan_id_foreign;
       public       postgres    false    236    3087    212            Y           2606    66056 .   desa_kelurahan desa_kelurahan_posko_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.desa_kelurahan
    ADD CONSTRAINT desa_kelurahan_posko_id_foreign FOREIGN KEY (posko_id) REFERENCES public.posko(id);
 X   ALTER TABLE ONLY public.desa_kelurahan DROP CONSTRAINT desa_kelurahan_posko_id_foreign;
       public       postgres    false    272    212    3125            Z           2606    66061 ,   hasil_uji hasil_uji_patroli_darat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasil_uji
    ADD CONSTRAINT hasil_uji_patroli_darat_id_foreign FOREIGN KEY (patroli_darat_id) REFERENCES public.patroli_darat(id);
 V   ALTER TABLE ONLY public.hasil_uji DROP CONSTRAINT hasil_uji_patroli_darat_id_foreign;
       public       postgres    false    3109    259    218            [           2606    66066 +   hotspot hotspot_kegiatan_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotspot
    ADD CONSTRAINT hotspot_kegiatan_patroli_id_foreign FOREIGN KEY (kegiatan_patroli_id) REFERENCES public.kegiatan_patroli(id);
 U   ALTER TABLE ONLY public.hotspot DROP CONSTRAINT hotspot_kegiatan_patroli_id_foreign;
       public       postgres    false    3089    238    220            \           2606    66071 "   hotspot hotspot_satelit_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.hotspot
    ADD CONSTRAINT hotspot_satelit_id_foreign FOREIGN KEY (satelit_id) REFERENCES public.satelit(id);
 L   ALTER TABLE ONLY public.hotspot DROP CONSTRAINT hotspot_satelit_id_foreign;
       public       postgres    false    3139    283    220            ]           2606    66076 8   inventori_patroli inventori_patroli_inventori_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventori_patroli
    ADD CONSTRAINT inventori_patroli_inventori_id_foreign FOREIGN KEY (inventori_id) REFERENCES public.inventori(id);
 b   ALTER TABLE ONLY public.inventori_patroli DROP CONSTRAINT inventori_patroli_inventori_id_foreign;
       public       postgres    false    224    226    3075            ^           2606    66081 ?   inventori_patroli inventori_patroli_kegiatan_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventori_patroli
    ADD CONSTRAINT inventori_patroli_kegiatan_patroli_id_foreign FOREIGN KEY (kegiatan_patroli_id) REFERENCES public.kegiatan_patroli(id);
 i   ALTER TABLE ONLY public.inventori_patroli DROP CONSTRAINT inventori_patroli_kegiatan_patroli_id_foreign;
       public       postgres    false    238    3089    226            _           2606    66086 '   kecamatan kecamatan_kota_kab_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kecamatan
    ADD CONSTRAINT kecamatan_kota_kab_id_foreign FOREIGN KEY (kota_kab_id) REFERENCES public.kota_kab(id);
 Q   ALTER TABLE ONLY public.kecamatan DROP CONSTRAINT kecamatan_kota_kab_id_foreign;
       public       postgres    false    236    250    3101            `           2606    66091 =   kegiatan_patroli kegiatan_patroli_kategori_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kegiatan_patroli
    ADD CONSTRAINT kegiatan_patroli_kategori_patroli_id_foreign FOREIGN KEY (kategori_patroli_id) REFERENCES public.kategori_patroli(id);
 g   ALTER TABLE ONLY public.kegiatan_patroli DROP CONSTRAINT kegiatan_patroli_kategori_patroli_id_foreign;
       public       postgres    false    238    3085    234            a           2606    66096 >   kondisi_sumber_air kondisi_sumber_air_patroli_darat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_sumber_air
    ADD CONSTRAINT kondisi_sumber_air_patroli_darat_id_foreign FOREIGN KEY (patroli_darat_id) REFERENCES public.patroli_darat(id);
 h   ALTER TABLE ONLY public.kondisi_sumber_air DROP CONSTRAINT kondisi_sumber_air_patroli_darat_id_foreign;
       public       postgres    false    259    244    3109            b           2606    66101 ;   kondisi_sumber_air kondisi_sumber_air_sumber_air_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_sumber_air
    ADD CONSTRAINT kondisi_sumber_air_sumber_air_id_foreign FOREIGN KEY (sumber_air_id) REFERENCES public.sumber_air(id);
 e   ALTER TABLE ONLY public.kondisi_sumber_air DROP CONSTRAINT kondisi_sumber_air_sumber_air_id_foreign;
       public       postgres    false    244    289    3145            c           2606    66106 4   kondisi_tanah kondisi_tanah_patroli_darat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_tanah
    ADD CONSTRAINT kondisi_tanah_patroli_darat_id_foreign FOREIGN KEY (patroli_darat_id) REFERENCES public.patroli_darat(id);
 ^   ALTER TABLE ONLY public.kondisi_tanah DROP CONSTRAINT kondisi_tanah_patroli_darat_id_foreign;
       public       postgres    false    3109    246    259            d           2606    66111 ,   kondisi_tanah kondisi_tanah_tanah_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_tanah
    ADD CONSTRAINT kondisi_tanah_tanah_id_foreign FOREIGN KEY (tanah_id) REFERENCES public.tanah(id);
 V   ALTER TABLE ONLY public.kondisi_tanah DROP CONSTRAINT kondisi_tanah_tanah_id_foreign;
       public       postgres    false    291    3147    246            e           2606    66116 F   kondisi_vegetasi kondisi_vegetasi_kategori_kondisi_vegetasi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_vegetasi
    ADD CONSTRAINT kondisi_vegetasi_kategori_kondisi_vegetasi_id_foreign FOREIGN KEY (kategori_kondisi_vegetasi_id) REFERENCES public.kategori_kondisi_vegetasi(id);
 p   ALTER TABLE ONLY public.kondisi_vegetasi DROP CONSTRAINT kondisi_vegetasi_kategori_kondisi_vegetasi_id_foreign;
       public       postgres    false    248    232    3083            f           2606    66121 :   kondisi_vegetasi kondisi_vegetasi_patroli_darat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_vegetasi
    ADD CONSTRAINT kondisi_vegetasi_patroli_darat_id_foreign FOREIGN KEY (patroli_darat_id) REFERENCES public.patroli_darat(id);
 d   ALTER TABLE ONLY public.kondisi_vegetasi DROP CONSTRAINT kondisi_vegetasi_patroli_darat_id_foreign;
       public       postgres    false    248    259    3109            g           2606    66126 5   kondisi_vegetasi kondisi_vegetasi_vegetasi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kondisi_vegetasi
    ADD CONSTRAINT kondisi_vegetasi_vegetasi_id_foreign FOREIGN KEY (vegetasi_id) REFERENCES public.vegetasi(id);
 _   ALTER TABLE ONLY public.kondisi_vegetasi DROP CONSTRAINT kondisi_vegetasi_vegetasi_id_foreign;
       public       postgres    false    297    3153    248            h           2606    66131 "   kota_kab kota_kab_daops_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.kota_kab
    ADD CONSTRAINT kota_kab_daops_id_foreign FOREIGN KEY (daops_id) REFERENCES public.daops(id);
 L   ALTER TABLE ONLY public.kota_kab DROP CONSTRAINT kota_kab_daops_id_foreign;
       public       postgres    false    3061    250    210            i           2606    66136 2   level_pengguna level_pengguna_hak_akses_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.level_pengguna
    ADD CONSTRAINT level_pengguna_hak_akses_id_foreign FOREIGN KEY (hak_akses_id) REFERENCES public.hak_akses(id);
 \   ALTER TABLE ONLY public.level_pengguna DROP CONSTRAINT level_pengguna_hak_akses_id_foreign;
       public       postgres    false    252    216    3067            j           2606    66141 1   level_pengguna level_pengguna_pengguna_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.level_pengguna
    ADD CONSTRAINT level_pengguna_pengguna_id_foreign FOREIGN KEY (pengguna_id) REFERENCES public.pengguna(id);
 [   ALTER TABLE ONLY public.level_pengguna DROP CONSTRAINT level_pengguna_pengguna_id_foreign;
       public       postgres    false    3117    267    252            k           2606    66146 3   lokasi_patroli lokasi_patroli_cuaca_pagi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_cuaca_pagi_id_foreign FOREIGN KEY (cuaca_pagi_id) REFERENCES public.cuaca(id);
 ]   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_cuaca_pagi_id_foreign;
       public       postgres    false    254    3057    206            l           2606    66151 4   lokasi_patroli lokasi_patroli_cuaca_siang_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_cuaca_siang_id_foreign FOREIGN KEY (cuaca_siang_id) REFERENCES public.cuaca(id);
 ^   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_cuaca_siang_id_foreign;
       public       postgres    false    206    3057    254            m           2606    66156 3   lokasi_patroli lokasi_patroli_cuaca_sore_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_cuaca_sore_id_foreign FOREIGN KEY (cuaca_sore_id) REFERENCES public.cuaca(id);
 ]   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_cuaca_sore_id_foreign;
       public       postgres    false    206    3057    254            n           2606    66161 4   lokasi_patroli lokasi_patroli_curah_hujan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_curah_hujan_id_foreign FOREIGN KEY (curah_hujan_id) REFERENCES public.curah_hujan(id);
 ^   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_curah_hujan_id_foreign;
       public       postgres    false    254    208    3059            o           2606    66166 .   lokasi_patroli lokasi_patroli_dc_kk_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_dc_kk_id_foreign FOREIGN KEY (dc_kk_id) REFERENCES public.artifisial_param(id);
 X   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_dc_kk_id_foreign;
       public       postgres    false    254    204    3055            p           2606    66171 7   lokasi_patroli lokasi_patroli_desa_kelurahan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_desa_kelurahan_id_foreign FOREIGN KEY (desa_kelurahan_id) REFERENCES public.desa_kelurahan(id);
 a   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_desa_kelurahan_id_foreign;
       public       postgres    false    254    3063    212            q           2606    66176 2   lokasi_patroli lokasi_patroli_ffmc_kkas_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_ffmc_kkas_id_foreign FOREIGN KEY (ffmc_kkas_id) REFERENCES public.artifisial_param(id);
 \   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_ffmc_kkas_id_foreign;
       public       postgres    false    204    3055    254            r           2606    66181 ,   lokasi_patroli lokasi_patroli_fwi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_fwi_id_foreign FOREIGN KEY (fwi_id) REFERENCES public.artifisial_param(id);
 V   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_fwi_id_foreign;
       public       postgres    false    204    3055    254            s           2606    66186 9   lokasi_patroli lokasi_patroli_kegiatan_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lokasi_patroli
    ADD CONSTRAINT lokasi_patroli_kegiatan_patroli_id_foreign FOREIGN KEY (kegiatan_patroli_id) REFERENCES public.kegiatan_patroli(id);
 c   ALTER TABLE ONLY public.lokasi_patroli DROP CONSTRAINT lokasi_patroli_kegiatan_patroli_id_foreign;
       public       postgres    false    3089    238    254            t           2606    66191 2   patroli_darat patroli_darat_curah_hujan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_curah_hujan_id_foreign FOREIGN KEY (curah_hujan_id) REFERENCES public.curah_hujan(id);
 \   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_curah_hujan_id_foreign;
       public       postgres    false    208    3059    259            u           2606    66196 8   patroli_darat patroli_darat_keterangan_lokasi_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_keterangan_lokasi_id_foreign FOREIGN KEY (keterangan_lokasi_id) REFERENCES public.keterangan_lokasi(id);
 b   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_keterangan_lokasi_id_foreign;
       public       postgres    false    3091    259    240            v           2606    66201 7   patroli_darat patroli_darat_kondisi_karhutla_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_kondisi_karhutla_id_foreign FOREIGN KEY (kondisi_karhutla_id) REFERENCES public.kondisi_karhutla(id);
 a   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_kondisi_karhutla_id_foreign;
       public       postgres    false    259    3093    242            w           2606    66206 5   patroli_darat patroli_darat_lokasi_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_lokasi_patroli_id_foreign FOREIGN KEY (lokasi_patroli_id) REFERENCES public.lokasi_patroli(id);
 _   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_lokasi_patroli_id_foreign;
       public       postgres    false    3105    259    254            x           2606    66211 7   patroli_darat patroli_darat_potensi_karhutla_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_darat
    ADD CONSTRAINT patroli_darat_potensi_karhutla_id_foreign FOREIGN KEY (potensi_karhutla_id) REFERENCES public.potensi_karhutla(id);
 a   ALTER TABLE ONLY public.patroli_darat DROP CONSTRAINT patroli_darat_potensi_karhutla_id_foreign;
       public       postgres    false    3127    274    259            y           2606    66216 5   patroli_udara patroli_udara_lokasi_patroli_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.patroli_udara
    ADD CONSTRAINT patroli_udara_lokasi_patroli_id_foreign FOREIGN KEY (lokasi_patroli_id) REFERENCES public.lokasi_patroli(id);
 _   ALTER TABLE ONLY public.patroli_udara DROP CONSTRAINT patroli_udara_lokasi_patroli_id_foreign;
       public       postgres    false    3105    254    261            z           2606    66221 ,   pemadaman pemadaman_pemilik_lahan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pemadaman
    ADD CONSTRAINT pemadaman_pemilik_lahan_id_foreign FOREIGN KEY (pemilik_lahan_id) REFERENCES public.pemilik_lahan(id);
 V   ALTER TABLE ONLY public.pemadaman DROP CONSTRAINT pemadaman_pemilik_lahan_id_foreign;
       public       postgres    false    3115    263    265            {           2606    66226 -   pemadaman pemadaman_tipe_kebakaran_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pemadaman
    ADD CONSTRAINT pemadaman_tipe_kebakaran_id_foreign FOREIGN KEY (tipe_kebakaran_id) REFERENCES public.tipe_kebakaran(id);
 W   ALTER TABLE ONLY public.pemadaman DROP CONSTRAINT pemadaman_tipe_kebakaran_id_foreign;
       public       postgres    false    263    295    3151            |           2606    66231 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    3123    269    270            }           2606    66236 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    3137    281    269            ~           2606    66241     posko posko_kecamatan_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.posko
    ADD CONSTRAINT posko_kecamatan_id_foreign FOREIGN KEY (kecamatan_id) REFERENCES public.kecamatan(id);
 J   ALTER TABLE ONLY public.posko DROP CONSTRAINT posko_kecamatan_id_foreign;
       public       postgres    false    272    3087    236                       2606    66246 D   role_navigation_menu role_navigation_menu_navigation_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_navigation_menu
    ADD CONSTRAINT role_navigation_menu_navigation_menu_id_foreign FOREIGN KEY (navigation_menu_id) REFERENCES public.navigation_menus(id);
 n   ALTER TABLE ONLY public.role_navigation_menu DROP CONSTRAINT role_navigation_menu_navigation_menu_id_foreign;
       public       postgres    false    257    3107    278            �           2606    66251 9   role_navigation_menu role_navigation_menu_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_navigation_menu
    ADD CONSTRAINT role_navigation_menu_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 c   ALTER TABLE ONLY public.role_navigation_menu DROP CONSTRAINT role_navigation_menu_role_id_foreign;
       public       postgres    false    3137    278    281            �           2606    66256 '   role_user role_user_pengguna_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_pengguna_id_foreign FOREIGN KEY (pengguna_id) REFERENCES public.pengguna(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_pengguna_id_foreign;
       public       postgres    false    267    280    3117            �           2606    66261 #   role_user role_user_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_user
    ADD CONSTRAINT role_user_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.role_user DROP CONSTRAINT role_user_role_id_foreign;
       public       postgres    false    281    3137    280            �           2606    66266 N   sosialisasi_penyadartahuan sosialisasi_penyadartahuan_patroli_darat_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sosialisasi_penyadartahuan
    ADD CONSTRAINT sosialisasi_penyadartahuan_patroli_darat_id_foreign FOREIGN KEY (patroli_darat_id) REFERENCES public.patroli_darat(id);
 x   ALTER TABLE ONLY public.sosialisasi_penyadartahuan DROP CONSTRAINT sosialisasi_penyadartahuan_patroli_darat_id_foreign;
       public       postgres    false    3109    287    259            �   �   x�-�I
�0E��)t�@�}%��i��F���l��U�A ����v�Of���@c �M%f#�K�d<���.�ks�B����~^���ը�f���k3i`:�b,a�f���4���)�R���Y́G�2}���e+�L���Ԍ����J��;)�̌@B      �   ?   x�mɱ 1����ن0K��#�wi%f��j�z�F{
/sf��o��A�~����/ܫ�         �   x�m��
�@E��W��dֺj�]T
�
n�48���¿ﴂ(����\ߞ���b���C�w0t�;�.��3#)�����oKL�4Xv�8�+]�|m�t�wp9Cj��h����؏�mV\!	(�q��M�;��k�D����(&I�K�+�ϰJ���@�         -   x�361�4�44��420��50�5�T04�22�21�&����� R	�         .   x�3�,NMI�K��".cΒ̼��L(א�(5/%1ʍ���� d�         4   x�3�LN-J����".#�$ �<1�7��M�K)�K��M83J��1z\\\ U|>      	   .   x�3�,J�KI����".#��Ԕļt(ט�$3/==ʍ���� c�         U  x�eU�n�0=�_�/h�P��(Цivn���f�B��;C�C�x�8˛EI��j5� �5x��!IrB���5tP3\<�n�����`�c2$�Rݵ�o��l0S1"�p��E���Y&A�t��ʰ$��T�AJH7��z}zd Kʂ�Y�A��K��P�����NT������� �!ï%���#���528�4��=����Ŗ�d�:�2.|�b�l�.�ʸ�ԝ�HٱԈ��Ez��|G�L�g1��z��y�F!_ ��3���4׎<�Lc�Q���uݭ?U�=<�^����S"#�3Θ"h�:�,i����>u���ߺ�#3R�!��a|qdzn2��Fz�{.�}��/.���?���uzg�V�}4.h�i3KyD�������1�4I����g��k�[�pYQ\af��L�U�gKV�
C9��}o4�W���8$�r̒�Ch�3�b���Ɍ(m����k����b��ߕY$~�]�Ya��=&�8b�o�.=�
{Y��]��*P��9�m�mϦ�Ei��j�V�!a��Π�|��Q��^:[U�xb�j��J)�<�F��nM˔T�h�u�ŗ����W=�퐔���E��]��8n�`��{Q��E�!Y��7��me�`{�>�gP��r�i7�/��y�4��{/`��	����ts&���aR�|EeX��gVR�������@E����~�ż!�ڏK���x�~�Y���xx�5#ˑ���g��9���d������k�;Cq����J2�C|ƻ���v�b���B;CD�#����m�i���3�����L����&N��N]o( �ْ
�\��o4bw������vz            x��[�n�H�}��
>�TW�K�ԣU�b�`�n�˼�J�Ds�����ƉH�B���4����ƛb������8�G]G�����U��o�~ң���]Gwsg�(pE��ۺ��C�W�ƊK��~��/=��N��,eY���CM�^����[�~�1�
�����2� ��z���>:�m=�����d+H!(����~�=i)��,K��%EwxA��-v;~�?��6��5T����� |�x=W�ssv��[F�aփ���n"#��OH���?�c�w%kn��j�l���?���T[/����`�l�/�p�Zo��y�[����p�,2[=�l<������M,�B6�׍{8�o�I��0�A�ڝlS��z_�V�A°<־a��qy T�,�r7�g�g^^a�2�:0 w��Y��~�Dm�s��!��	�����j�H��M=xo�K����S�B�5���G%
v3,/s���~Σ�έ��|C���>ۿC������i�n�m2D�	�O��C3JO�tn�=XB���5[�]>�C�༐m��y��Lc�37�����a�X!�͊�/q��t�G���}5�59��D*����\�ְ��j��\VH�iuGa�yI�) �T�ޡ�{^Ø]h�����������il4��ݺ-��#M�����^[��d�X���ӿ�v�2l����~�n�<Rn�{R㫧�&��^p��9�5�0��!�	�����̽��C�q�5��(��D}�.�T�콰�l#'یFϖb���$���6$��fK����P�pb~2�L����+����j�� �я��z��'�� �Id���v��;��O���v?�"c��e4���0Gֶb@f��	/�E�g�?�չj�+����r�F�wd�%�[ x�Qt��W�Ĳ�@n�-2	?�a���y���ɹ[��xT&&�� F���eѷ��K@���T�-��OLH��*�%^�����p�64�Ўr��U��Ǻ�;���!'	�7OV�v�R,�l�z�<�$З���#E�W�����r�(�r�Z3���o�w���,)͹8����R���un=s��2V�����z+6��F��Ο��ف��>EwT`�����/��C(�kWY���pEa��KLa���@4F�����q�|�h�0�����Fn��_� �v\0�dz����U��~�s�hOU;7(��ږ3m������?� ma��[�����z��:\�-����J�<�:�3�I���*�	a0�ЯK��*o���?S���c�����F%��"pP�~M����L�٫�cB�up^�'���,م��}��C�ʽ�f%�D�"���+�opM.�ŭ�v]��7�.1TSt�~vB@'$⅞7ڿ�(�>칖��n�m���x���o�Y��И��翨��'�8`{2a
պ�.���Q�j3��	)��Ν�/#��w~��g�=TKYN���� �2�����/e���o-qk"vIe��m��P�d�(Z��+3o���a�#�FUe�^����'{����½�{�J c�&�Q�+J�y��M��K"�����q"��2{�,g\��Hʴ�y�GԄG���J*h#��Y�a�1r��Y�U
�);��)��조C������.�i�_��|"��}�R�=�cE�ᭉ�&��K`���>�jb
g����G�G8����)|hڞ�����v��#����=�ؑb��gx)��+�&&V�
jy-�J�"l�Һ�$t[�~���&�`T~��n�����5b�QCj9ԁ�ѹ'Jހ���!��с
KxQ��U�mWX�
X:�\����z&�%�[jg� [��@9G���a]B&T����2��X7�<���ԅDL,��&-�24���i'R�W�&z�Ƒ)���"�ʄ �����U��C��	t=D�zr�8��p?XE�~��,K�ZF�H�LTo?G$�����+(~�
�DҺ]I��)LA*$��S`g���R����r�W.3��.�$%iz�'�*@��+c���H5F�b��ؼ��C�\�����OT�]��+^dtW�o����"~ϯ��W8.�a+B�V���W��Ծ&��"+����~��MTz�	��i�Gw\�w�%���Ƌ"An͗
N���Eu���z�#?@��b���
m���e�~�^���fN�D���|�s��!��p�J(���} ڜk� �	���|�O�ȣ�T6�M�n�Y����d��K�i��)�s4�a�F����9�u!\pD���*A!�m��_�~�h��ᣥ>��9⺇s@��j�6����W_����*��t�.t"\bO��v��3��I���%n�"a��_(IdD�Y�ZNd�O�l�St��aN�j��I	��̶�^l�L���XoC�wN����~��񹳂Wsr��	��D�Gϭ��Km ]
�8�D�GC5�_x���x5&�Z~���T8I�UJ����ņ�����^B�O��A����^���mg��H�BE(��Ch�-d�w��ۥӕ�>:�J�pPB���;�(b�u{mlo�?(���c��W*�0N��\�/1��m��#!}�.-��t����h�	ilPm��h\�@�9�"rei�[�e}��
;!6L�v�A��Y�[=\�A�	�3*?¤�R�����t|V��KT%�� N9R�*:{���iS!(G��6�����T�Ɉ�@�:�i��� g�T���Ui3_� !qQ #g��ڲib���}ya'�<9N��BlaU.j�S��J^��ض�wX��pŁ�;�S�Ci���2X8:���z�����n���T8
�"�-S~e.0����G?���0	)D6�rh��)a*-��t�����L�!H�#�4�,���0���P�0[Hϭ=3��b�6Z���	7���Pt��Y�1<D+�EK�������6���a��|F�
S��bf����[��x�(Y�
݉}�U���S!)�y�miٰ0�f�-�O�PwGne��]��J@]m|*ЬK��Lg�g��%H(��<&����p!{�����՘�!n"��0���g�/���|��u�Y
p�Te;�mf�n�̈P&Tb��}	m+� �j
�- n�!ܹm-��M�k�B�UI�7\��۷��� �8~͕�g�T���KQ%NrЮU �;ڻ��/���
S��S��c��_ZĞ
_)`��^��3ra��B�^��D���,H�.L�:�����~棠��S�e{�wgR��X���=�T�J{xY(�S�s�<�{j����s���w�o�C(k��mҢm4R�C*3�V�lƏ�m���D�]�x'�x��ބ�Cx;��z=��˖��:|JK�)��'�,0�F���94!�@���^�/r�$dV�Ϧ)�v��B*$a�dvm�9�״��Θ�mR����uqP���.CJ��|ź���T�J}N��׭Kav �+���J7���ɓ��M(��n�}�~���8x$���a��O0/>��BC�:�@F����Z#Ug3A�~f;����2�����q�S�#ӣ`� ޗm�������KA�p=ͧ�;�. ����g
���yW\A��_�'׻-��6��Ec�-�����^GS8/Ȥ��i��sg�K!��v���2)���7��}�����(E7�`�[
�fR���S�T�'Lw!�q:��p�7�l�_,S_�h�;���ص;�l�otY�Z�I������J��uI��.�V�Fjz��~]`df��~�*��������ʤƗC�[��ZMb�R��U#�qw�S��YbF��h��mJ~�9:��\Bel�%!*�A���Lj�e:�a��O��m�1:JG�La��n&U�7��u@���?���9�oF~�Rs�,&&����B��Kp!A��9��6������{'Ͼ�� t��ìL(�z��we�G�YK�q���㏐��[w���z���`Z�V]s�,�>�M)3=�ƨO`	B0�J�_Gb��!�� =  y���K�|2!;�怜(:9ԕ+��|�he����rMտ�#��`��V�/�Ə���c�x�q��x]�f�#ȜXふ��a� �t5
�P��h\�Wr b���KQ|CWF�3Y�w!ϴ쩶C
��kg�) ���N�S��ق�^��`({�}I���FO^���!S��2�k�3�:$A>�	Fֱ�Ӽj��rs���������K��b[4"rc{;Gk�hM&Aޛ����Î�[b�-�	�aFr����+� T?�	��=~�=�P�v<,��� ����0<�[��U5\g�<:����&v,t�18S��J�Q<��aQtɉm9� e��c���ʄ;˜�T�"Z.̈��+Rށ�����F&�r"�\`Ɨ*3�=�C,_&�'@W�,� !к]�A�T<�^��x�&eV�z�mWs�,4s�ҳ�8��o�Yu��vh��^��,V��.�I�' X.����o�&Kc@}`��܎B��&�8�Tu��2����|�+{�:o|)پ�fڦc.hݯd�ٚl�!Ƈ3����Kj �uǄ����]�K�{w��F(�b��N�\�0� ����̲/}���9�Rm�1cJ{vx�"�CB�IH�3J%lb�`|��!�6�"�f>sJ��=Fx�%[Ls��EV7���6q?=Rfّ�d�Sd�K�,�1V}�TC���ם�+4�ir}�So%�|t~��`�1��}��H	sx!G�}�(�W�HI���2��dĄ4�5z=.*6u�)~���rË�y%n���D��U�Ѯ�?��S����&k����N���25�N�d�B�eG����u�r
]|%���|��DA�ٛ���x�W�����ֿj
NU��/���h���O�s��2���fҹS��=�pǉ��;;�`&��&�	���	]
|hŹ0�e����D��o���'�p�"Sn�3�����LG����]�̾tl�R� �7��|�S���ȣ�yP)������"����^.�����_E��$V��xMw�lW�;KJ����V�g��6_yhf�Z��C�ď%��(S�k
\}�����P���\	���O�2�� �2��lMl���3��܎��T �X�^p�l]�L��j�.A��WB����O)�`��/�Ǩ+���V<����	2˰��tʔT�7��/ut�*���>�2?���W�J�3�vi�/���k�3QQ�!P�Ѡ�2�^����<�6��NpB� (�DI�mr�ǂIɂq��Ԕ8xQ������7UQ�ӫ�z����P��WhR�UQ�`�P0c�ю��K"a��`F���Z�/��؝v3?�>�E�p���/0��_!�!�W!�0Y��n
�-Fa��c��qa`��T��L�a=��&q7x]��A�e
扙���|�ӹ��gUn�׽mU{��Ͷ{�X��� ���ە.��U<)�>>R��\���G`��'��t��CU���g��X�[ԏuw_	��?�(7'Ɂ3��iVf>� ����s�w����c��>�['`K�.�ˡn¨_�TJ	����o4�K5l��`�$��G_MH����y�5�B�j��E��{e<�a�)�_�U^΅a�t����I�U��t.�'�2[���N�1e`C8��?��!��_�"���9ڝ��g���~>��?�FY�֬$�w����U�9���fi�p�_���ު�1Q~,��Ϲ?{Ø��<�>�0}@��8 bT��|�A�<6��K�3j��U_��.w���R+Sܛ�g��Es$!FJ5��e+�͗��e�e���oF���������3�u�         T   x�344�44��L���Һ��&�f��&zy霙����� fHjqIf^�X�����R��H��R�������� �W� &#            x������ � �         H   x�342�44266���TJ�M,VN-J,N����
ީE�y�F���F��
�&VF�V&�ĸb���� �O         J   x�m˱	�0�Z��8���B� �	���n�1LF�=�^�f�:�q�f���h�^t�A�����{��
E�         (   x�36�420��54�50Bb*�[��YX`����� A
�         B   x�3���O��Q)�,����".c�`I~���OT�*��X2��M-��S�M�����qqq �         B   x�mɱ�0��Px�@-�+p��f����v@�^�ўs��,���3�z6�����!�         .   x�3�J�KI����".#��Ԕļt(ט3$3/==ʍ���� WK�         =   x�3�����".#N�ļ��ĜD���L��1P��2�(1;�*d���SS���� �@      !   #   x�3��N-��K��".#Τ���(/F��� ��}      #   4   x�3��M�K�,���".#΀Լ���Č�<��1gHjQAbJ)����� �S-      %   �
  x��Y�r�H>+O��x�ߦ�Q2�8���ȳ�\ZK�IQ,�].��| (tSqj�0� �n�����������v��?~��1�:9;ب'�2�u��畘ү޶磒2>�pi��FMջֺજ~m���k]u�?���E�g�Ѷ ���Vy�~m�_wчz�6��,��窽!���Nx��]�+6ģ���T���W�ek|�t�U⿛{%��Xp�k䂫�_�����T�����-T�֍�T�a俶$�E9��"=��5�Z5v�j�\��)+������ڎN��c�;�=����0;*'`��7��ڏ�c�y�K��	ƃ����Ny���Δ,�����������������?�����<�A(��P��U_��3X_�_�XT�������8n{�v����Oթw�m�ʚ_�=D&�(���s�^f!Rĥ��}����������5�~I ��l��3�R�H�)56ڶ����p�E"f�v!��dEAң�!/j��n��T���9�vW]ԮI����*�O�"1�/��H����6��_����wB�d"�gޛ)+ٸS_��.����w�8zB��I����/�W����G8f����Q;�k�ll\FJg����,t$G)πgk�J	��~���̻ eӕ$��隉��:z��/�D�x���!��Yʴm5Tc����ᐱ�?\�KCmM�x��R��eE�؜O��hj����� de��=�8�V��T���9�y��Cu�9�BΞ��qP��ɜ����$4z/�_���k�\�ڍp��H�� ���E`2K�͒����;��6y9�9BUW��Gf]��2�~R�>�{fQ�����!���3����l���?dߣ�>06�C�	�!�5�
�<��nJ�T���d
�l������^2C	��pA�k��l
�
�}}�}f��I��L�>q)����$Uz�ONe2l�'��W������ћ7�?=�4���h��Zx�[a���R���	-4s�`Dhې���;�oPLpb�zdd��-��pY��9��ݓw��2E���> ;&8?P��]�*��O<��/�=Jw=�5p������%���3y�H6Ƭp��A�NsF]lsV^̼���a��#���&�Dj�H���B�"QoZ[�ș���� ��r��}=7�ʰF����^�2 ���yL��r�}�Vf�I2�ҕq�2�҃@��(�t�_��fI�P,��f��D�t�z��%u������a�#i��8D(\S�Qʧ�a�_w\�[�8�̢� l�k��[�6���B�جr�8eD@��[������GԠ�<�e3�`�\SǩfcHӦm�B�i5������f2�ӛ�,.��᷏W�uX�<� )vT;��Wo()���@�L�U�PdIbt
0#�Y���/�[�#��	�X�$�ruE�as��5���3�O���Δ[A�4�%5>�-o��H�g�?+5f�t�]u���p���#�FU$P	�p��9�8`%Ɏ����,�ŀ}��X�d�3�$�:B��Ӥ1�?����W�u9��CU�%��S�he�x�B)V̒0Я���Bk�T	��(���Y�^允�{)��)ǋ�& �V�(H_���� �R�����waQ�Kj�0P�#��$�P1��$���;{L`����f�3��)��G�C=�`�c�Oo����4��d�Z�s�i,7����~�RA�P�~j��õ�2Y�3�h�?�.lr�4������1��!�5M�N�s���V��\7a%Xu�^0�� ��B�f�'wt�2���青�k9�ު�S����5[Cu��[n,�n���*�~��	�"��vp�����d�hfC��hfuw�� ӝ}v�i���6J�Z)e��a8Ϊb�X���J����RtUm�Т�۽��f�űׂ��~�4=��҃����S��u}��$d=�"�J�*܊�W��YU�a�����+����:��?�`�UU�Fb�&W��\��,�H�7L����WM[����4��L/f�)�A.)Y
�t�l�?�O?����=�&(����M`m��)���[�:�χ�]n�.e���Hi��~�� ����I@U9��T&禽�f���`�p���m�`�)�.�0ۖRV�[�n��Ͻr(]��G���J6_���Oۺy���|@A�ڟ��Oe����Nژp��^I��cٞ���ׅ�ɾ*i�h�cC��*�ŷ3�����(��\2�L�A�F���*x��^��RwJ��%p���2��a��*�Hj/G��3K��I��z"�_�;G�)J-������q��"ٯ�����ɴ��_��J��0��Zy�K�lnYK~��>�Y��������(�x\�Rr[�0Txb.Ϊv��Ǻ\�J��Q�+�Gܼ�.��a��H/E��e�~�Z?�#�{v{�Š��v�G�}[(�D"�al�ԩ�_�AI�x�'�]����!���ɕz��q���ˋW�!;M�k{�HW!�5� S��u�ü+���iBcd+��Uf�ǌ`�S���2I`�\�=�C��+꟝�]
:�2W��("{J���U�=,�ti������Ϛi)Q������i�w�V����$(��1`n�HUL+<މ͠DYL�����������!x����{��ݿ�q      '   J   x�m���0��] �vSA2��A��w:�LeSx8����X��Q����Ɓ�'D8�ƺ�P!k�:;73�  �:      )   Y   x�5˱� F���	Lt�4��x� l�&���7��,�5�v����..lo~qc��h��9u�@�Љ�qC����{� ���      +   +   x�3�,J,O�S�N,�(-�I��".#Τ���bt�=... �E      -   D   x�m̱�@��p ����Z��:,;��,��$��d`,�b.������7)��~�o=�����      /   H   x�m̱�0�X����[�\�����78��n2�ՠ��8�r�ZcT�O���L�G0F�
w� ��      1   D   x�mȱ�0��=8�c�����@J�<�@e�ly�ƹTk��!��zŃ c0�t�_�5�����      3   �  x�uU�n�0=�_�/$��Z���IM����f�B���H�$����ϛ7�$AT��4&Y����7>��,$o�W=zy	y)�'�������+o^V*�,z����y�IB)E7m�|�b��1�i����*u���<^�Y�l�*T)���On�Ϧ�x������"_տ�� U(�6!�٠�rW��(΋�L%�2u<&W��P�ŧ ��N�!]Y|R1�m��x8�&Mk�(U�:��C�K]�مA��x��.��	� ���T��ϼ��꺈}��>�"��:�%;�3pP  ��f��;���U�;�-p���k�G���L�y���^{d�t��΋r��������jz�B�}u<��ۖ����)=J�
3���D�q�%k�^��1#�ܭaz	�FZR���fz���eG�8�S������&E�U:��e0�/�B����L�}�/���2���V�}��#`�,�I\�ހ�Q�	p:����w6ŻJi� �[��-�E{uv���xQ�D���REj�SZ��v�O���2SZF,� ���r��#_�g6AQ��6��)���!���>���|�C�,C�=v(��W�z!L(�县-:e��̋��?�p�)+ѯg�U����}��LWOv�j'{i?�q>����ʤk���+ן���ػ|=�MP��ʝ�ٕ��$�۪���ܵ㼞��$�������pg�U۫��Jy�<�%2���p���O���/�s��      5      x������ � �      7   M   x�m���0k{
��7v��,�B��^���)
|P����8�ze�e܊�p�y4灜Q3��}��T�|0|      9   �  x����n�(��vf������HB׎�R��63N{VZUZ��3��a�jK�e�2N� �:z7{������������~�B)�ٕ�Z�N~z/���]��o��r��TJ�u2b��~j���p2�Ɉ�^�Ʉ�wY;�ζ��R����nv}�
$5<y��v�2Y�����w�n�#[#=ɥ�܇��/7�C�?�B��;oV�KB�g�&ӣp��q��)��<��=|$�kK� ��o��K�I)!92}sk@�����Ǯ�H'	=�] &Z�?Z׌�X�b8\N_?C5� �z���]���
1��jpP6!�Rʚ����j�g�s�����Ec�ғ���R��(Bk�u�?]�gcH�s]?�yzIY���� 7����P/Q+��1y�"���L�t��dF�N@�S��nv�O�&�<��p���Ŕ��qK�B�~��A�Wq�T������rc��FbC�I�����Ri���[��lu>w��\Ks�i�
�n�p���T��`�g�2*[7>��s�:t˳��sh�g�W��Pq^���)�kp�>����@j��ȮvW8U�:A%��qx%KZ�m��e��x�Px�����
���.-A�5"���3��$��Ѓ��+BjBJ��AeB����������}���Ν�2=1�Ϳ��ةD�+
j����Zќ>�?*$�L�7���y[� �	����nP�}%T��D-�s�
��� �?e0�e �,Ew��	=w5)���e^�6���܀�x�U�J�(XJ�g��i?��B��$E���<>_���F
5Mcŭw}=a`�0�NS��� 9�I��x∮�@�f��Y��&L"�0~����麤%�
�W���Cn��mC���=4|���Ч�WI}d(l�yi������ x�4��!n1A���dU�̀Y3^�>|�*�1�SUӂ�����2P��d��1����=9hD	�p������˺��R�q&���D�Pdđ��j�jw����ex�?��=��Z&8�J�T/\[ǭy�nÃ��h��.xMCm�lU�J����6]��n]j����S},Gu�l��dTY
�,/����
DE�#LA#N�G��"_)Zl����2��C8t�-9�e���8b`Y��AB�5���rq]�G�)�/J"Pǝ.pѽ�`N���w���F6��PDT�ׄA���x��k�΀��?ψN���¾����y�m�T��	������P�PY����J�d���C�4.�a2�yyme6UzO!!	7iب7=�繑j� x?
՞�w����4w�����<,Ď�֟�J�9c,	� ��֘ү=�̓�*��V�RX����Ţ�:: 2v���w�lh�����{<|��)�'Ph��:�4��2�����В����ܶ}�9�Bhmo��҉���*��8]���0/J�.
�s�-�m���������� k��      :   �   x��ν�0����*z��
h�4QC��X���QZ�R�~� �����|BBK��wz������<�G����#�D�QH9�I���,�eL,������<!Y�r ���w��R�:��d[�M\��֜R^����ժ%o���xuV7��zj�-2��aR~!�O�Z0���q      <   >   x�34266�LJ-J�O��V(I�K��420��50�5�T04�22�21�*��i�&\1z\\\ ��Q      >      x������ � �      @   ]   x�m�;
�0�zs
/���ŨI�9l
?��+��z߈���/}@ u�!���rA��Vi5V�C��� �t��*k5�#�y[�.��cnɍ�      B   )   x�3�����ܔ�<.#(7%#1/���Kͫ����� &�      D   $  x���Mo�@E�ïp���dբF-��A�t�*�D���ڝ.��ܗ�͹��2�x����$��o�Ҧ����\�`c�Ꮚ��Z5G\'�X��?;� ��wpx�jǑ�tJ\���K��BL�y	
4Q.o�Q��d�z.��:��,���d�Y��[!���w�G�wG�F0B���U	t��u�ִ�l�+*+.�F�MD�C,��6a�L���bY&���jl軉L���p���S�\Dѫ�*tw�y`d�os����rW�V�S	���bS݆�Sv+�Ɗ�� s�`      F   �   x�=���0���0�u���.���"��cR�}���K'��gؗ:���Y�j������ϸ���3���b���K��K��w/+R�g�.t�]��8+Κ����������������~������9V      G   �  x����n�0���)x��l��U��v��Rn�x+E$������3�NR�[�K�3�i�5�o�c�>W����(�����UwQ�gP�_���t̓5�>O�x�G�M[�1�?Z)zI�ߺ\�J�S6{��ӥ�ٴU�!�^����r	+�Y�J��E�{�P�ϗj	)I�n�e�el�a`H[�X�GF���e�״�WQu�`@��4i�iN���N���4���n:���.��A�qp�X�_�Wֽ(�?t�G�.�2b�;d-��#XD�r��q���$zQ�O�r@4K@��D�t��ƿ�ʚ��R8Y��+9�\,& �m@.����N��xn���D���d5��qI��]�g0n�7�C<���[Y����G�~����7�+��@�3Eg�z`M5=�^j1�']�2�}�Q���MS��`�6�,9߅���f��.,!�p@��:��)�U<Ab�V<`��_jʛ�k���K_��af��k�=@�a��I�y��1��@�f�}������躢��΅�CF����]�JL$ݾy#���4�ܘH���F�W�)<�N�Ɛ�Ty=ū�̀	u�C�&� ?�$,j2���z^o��]q3�q��o/�Up0���<k�M�e��Ys
�^{
��D^%����/}N�:�X_H��*�!�x�E��ol�Ux2��JO�{nfpX�)�a�C�pk��c}<����j*�e��=��X���I���h�=����j��̳�      I   +   x�3�4�0�,�/��W�J�I�V�H,*-H,��"�=... �k
]      K   .   x�3�,J�KI����".#��Ԕļt(ט�$3/==ʍ���� c�      M   �   x�m�A
�0EדS�)��DͲ���.݌%�)����ǯ������g�BO1Q�G(As����S���w4���u����ʡ
4.���mXb��~fc��l�Y�'}h�����(��@)��J9]:YnX�P9��f��;�x�5
�9j���l�1���jivJH�X8����k��~oSt      O   +   x�3�42�44�420��54�54S02�21�20�&����� �'	9      Q       x�3�42�24�42�2�4��24�1z\\\ 6��      R   p   x�32�,H�KO/�K�/I-JIL+I,��
)���b�8�-t�tͬLͭL���q�s�d��$���dr�d�*@٤�b�������Y\R�X�_���#��=... ��<�      T   (   x�3���OT0����".#ΒԢ�D����D�P� �a	�      V   x   x��η�0К��Hb�����q���Q��@z��xD1�(pv�98��B�:����\ ]'���f9Y+j�y�4����61
��b�2���(��{�&�ߣ>��y�[�5ZkQ7:�      X      x������ � �      Z   #   x�3�,H,�,��".#��Ҽ��L(7F��� ���      \   #   x�3�LO�M*-��".#����L�=... ��
�      ^      x������ � �      `       x�3��!����.#(ϱ$��+F��� �j      b   N   x�3���I�I�K��".#� �<3+*`�Y��������S��X5*��,��L9Ӂ�r�<3����l(7F��� ��     