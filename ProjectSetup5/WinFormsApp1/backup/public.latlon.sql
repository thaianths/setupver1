PGDMP         4    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            8           1259    245051    latlon    TABLE     K  CREATE TABLE public.latlon (
    id character varying NOT NULL,
    cid bigint DEFAULT '84'::bigint NOT NULL,
    original_address character varying DEFAULT ''::character varying NOT NULL,
    formatted_address character varying DEFAULT ''::character varying NOT NULL,
    original_formated character varying DEFAULT ''::character varying NOT NULL,
    country character varying DEFAULT ''::character varying NOT NULL,
    ward character varying DEFAULT ''::character varying NOT NULL,
    city character varying DEFAULT ''::character varying NOT NULL,
    district character varying DEFAULT ''::character varying NOT NULL,
    city_id bigint DEFAULT '0'::bigint NOT NULL,
    district_id bigint DEFAULT '0'::bigint NOT NULL,
    lat real DEFAULT '0'::real NOT NULL,
    lon real DEFAULT '0'::real NOT NULL,
    ward_id bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    street_number character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL
);
    DROP TABLE public.latlon;
       public         heap    postgres    false            _           2606    246592 %   latlon PK_6dbdea68fa6b740455c47c851cc 
   CONSTRAINT     e   ALTER TABLE ONLY public.latlon
    ADD CONSTRAINT "PK_6dbdea68fa6b740455c47c851cc" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.latlon DROP CONSTRAINT "PK_6dbdea68fa6b740455c47c851cc";
       public            postgres    false    312            a           2606    246802 %   latlon UQ_6dbdea68fa6b740455c47c851cc 
   CONSTRAINT     `   ALTER TABLE ONLY public.latlon
    ADD CONSTRAINT "UQ_6dbdea68fa6b740455c47c851cc" UNIQUE (id);
 Q   ALTER TABLE ONLY public.latlon DROP CONSTRAINT "UQ_6dbdea68fa6b740455c47c851cc";
       public            postgres    false    312           