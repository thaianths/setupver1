PGDMP     9    4    
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
                postgres    false            c           1259    245809 	   sparepart    TABLE     �  CREATE TABLE public.sparepart (
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
    sparepart_id bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    sparepart_group_id bigint NOT NULL,
    manufacturer character varying DEFAULT ''::character varying NOT NULL,
    sparepart_name character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    product_code character varying DEFAULT ''::character varying NOT NULL,
    export_date bigint DEFAULT '0'::bigint NOT NULL,
    start_date bigint DEFAULT '0'::bigint NOT NULL,
    price real DEFAULT '0'::real NOT NULL,
    files jsonb DEFAULT '[]'::jsonb NOT NULL
);
    DROP TABLE public.sparepart;
       public         heap    postgres    false            a           2606    246610 (   sparepart PK_789eeb0fb033d412e3e0ce7bbca 
   CONSTRAINT     r   ALTER TABLE ONLY public.sparepart
    ADD CONSTRAINT "PK_789eeb0fb033d412e3e0ce7bbca" PRIMARY KEY (sparepart_id);
 T   ALTER TABLE ONLY public.sparepart DROP CONSTRAINT "PK_789eeb0fb033d412e3e0ce7bbca";
       public            postgres    false    355            c           2606    246816 (   sparepart UQ_789eeb0fb033d412e3e0ce7bbca 
   CONSTRAINT     m   ALTER TABLE ONLY public.sparepart
    ADD CONSTRAINT "UQ_789eeb0fb033d412e3e0ce7bbca" UNIQUE (sparepart_id);
 T   ALTER TABLE ONLY public.sparepart DROP CONSTRAINT "UQ_789eeb0fb033d412e3e0ce7bbca";
       public            postgres    false    355           