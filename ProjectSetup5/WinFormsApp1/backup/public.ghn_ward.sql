PGDMP         4    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            .           1259    244954    ghn_ward    TABLE     &  CREATE TABLE public.ghn_ward (
    id bigint NOT NULL,
    "DistrictID" bigint DEFAULT '0'::bigint NOT NULL,
    "WardCode" character varying DEFAULT ''::character varying NOT NULL,
    "WardName" character varying DEFAULT ''::character varying NOT NULL,
    "NameExtension" text[] NOT NULL
);
    DROP TABLE public.ghn_ward;
       public         heap    postgres    false            /           1259    244962    ghn_ward_id_seq    SEQUENCE     x   CREATE SEQUENCE public.ghn_ward_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ghn_ward_id_seq;
       public          postgres    false    302            �           0    0    ghn_ward_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ghn_ward_id_seq OWNED BY public.ghn_ward.id;
          public          postgres    false    303            M           2604    246402    ghn_ward id    DEFAULT     j   ALTER TABLE ONLY public.ghn_ward ALTER COLUMN id SET DEFAULT nextval('public.ghn_ward_id_seq'::regclass);
 :   ALTER TABLE public.ghn_ward ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    303    302            R           2606    246664 '   ghn_ward PK_d5efc4f4a440c1f1d38994ad6ec 
   CONSTRAINT     g   ALTER TABLE ONLY public.ghn_ward
    ADD CONSTRAINT "PK_d5efc4f4a440c1f1d38994ad6ec" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.ghn_ward DROP CONSTRAINT "PK_d5efc4f4a440c1f1d38994ad6ec";
       public            postgres    false    302            T           2606    246876 '   ghn_ward UQ_dbce7140bef6f57e0345243f376 
   CONSTRAINT     x   ALTER TABLE ONLY public.ghn_ward
    ADD CONSTRAINT "UQ_dbce7140bef6f57e0345243f376" UNIQUE ("DistrictID", "WardCode");
 S   ALTER TABLE ONLY public.ghn_ward DROP CONSTRAINT "UQ_dbce7140bef6f57e0345243f376";
       public            postgres    false    302    302           