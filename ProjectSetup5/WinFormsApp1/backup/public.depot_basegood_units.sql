PGDMP         3    
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
                postgres    false            �            1259    244137    depot_basegood_units    TABLE       CREATE TABLE public.depot_basegood_units (
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    name character varying NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    id smallint NOT NULL,
    basegood_unit_id smallint NOT NULL
);
 (   DROP TABLE public.depot_basegood_units;
       public         heap    postgres    false            �            1259    244144    depot_basegood_units_id_seq    SEQUENCE     �   CREATE SEQUENCE public.depot_basegood_units_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.depot_basegood_units_id_seq;
       public          postgres    false    251            �           0    0    depot_basegood_units_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.depot_basegood_units_id_seq OWNED BY public.depot_basegood_units.id;
          public          postgres    false    252            O           2604    246388    depot_basegood_units id    DEFAULT     �   ALTER TABLE ONLY public.depot_basegood_units ALTER COLUMN id SET DEFAULT nextval('public.depot_basegood_units_id_seq'::regclass);
 F   ALTER TABLE public.depot_basegood_units ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            Q           2606    246654 3   depot_basegood_units PK_c80ccfa91a6a3dff5dd7259a9a3 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_basegood_units
    ADD CONSTRAINT "PK_c80ccfa91a6a3dff5dd7259a9a3" PRIMARY KEY (id, basegood_unit_id);
 _   ALTER TABLE ONLY public.depot_basegood_units DROP CONSTRAINT "PK_c80ccfa91a6a3dff5dd7259a9a3";
       public            postgres    false    251    251            S           2606    246740 3   depot_basegood_units UQ_2d54e9450d29ed713304610ef42 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_basegood_units
    ADD CONSTRAINT "UQ_2d54e9450d29ed713304610ef42" UNIQUE (request_provider_id, name);
 _   ALTER TABLE ONLY public.depot_basegood_units DROP CONSTRAINT "UQ_2d54e9450d29ed713304610ef42";
       public            postgres    false    251    251           