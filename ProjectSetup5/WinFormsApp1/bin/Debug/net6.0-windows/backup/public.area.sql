PGDMP                 	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243686    area    TABLE     3  CREATE TABLE public.area (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    aid bigint NOT NULL,
    cid bigint DEFAULT '84'::bigint NOT NULL,
    aname character varying DEFAULT ''::character varying NOT NULL,
    ashort character varying DEFAULT ''::character varying NOT NULL,
    akey text[] NOT NULL,
    provinces jsonb DEFAULT '[]'::jsonb NOT NULL
);
    DROP TABLE public.area;
       public         heap    postgres    false            \           2606    246602 #   area PK_71e5b4aaf2e17aa710cd76f1d98 
   CONSTRAINT     d   ALTER TABLE ONLY public.area
    ADD CONSTRAINT "PK_71e5b4aaf2e17aa710cd76f1d98" PRIMARY KEY (aid);
 O   ALTER TABLE ONLY public.area DROP CONSTRAINT "PK_71e5b4aaf2e17aa710cd76f1d98";
       public            postgres    false    212            ^           2606    246808 #   area UQ_71e5b4aaf2e17aa710cd76f1d98 
   CONSTRAINT     _   ALTER TABLE ONLY public.area
    ADD CONSTRAINT "UQ_71e5b4aaf2e17aa710cd76f1d98" UNIQUE (aid);
 O   ALTER TABLE ONLY public.area DROP CONSTRAINT "UQ_71e5b4aaf2e17aa710cd76f1d98";
       public            postgres    false    212           