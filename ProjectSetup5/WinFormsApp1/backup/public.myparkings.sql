PGDMP         4    
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
                postgres    false            ?           1259    245186 
   myparkings    TABLE     �  CREATE TABLE public.myparkings (
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
    parking_id bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    lat real DEFAULT '0'::real NOT NULL,
    lon real DEFAULT '0'::real NOT NULL
);
    DROP TABLE public.myparkings;
       public         heap    postgres    false            _           2606    246546 )   myparkings PK_45b493a23feaded83738c17fb42 
   CONSTRAINT     q   ALTER TABLE ONLY public.myparkings
    ADD CONSTRAINT "PK_45b493a23feaded83738c17fb42" PRIMARY KEY (parking_id);
 U   ALTER TABLE ONLY public.myparkings DROP CONSTRAINT "PK_45b493a23feaded83738c17fb42";
       public            postgres    false    319            a           2606    246758 )   myparkings UQ_45b493a23feaded83738c17fb42 
   CONSTRAINT     l   ALTER TABLE ONLY public.myparkings
    ADD CONSTRAINT "UQ_45b493a23feaded83738c17fb42" UNIQUE (parking_id);
 U   ALTER TABLE ONLY public.myparkings DROP CONSTRAINT "UQ_45b493a23feaded83738c17fb42";
       public            postgres    false    319           