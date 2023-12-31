PGDMP     1    4    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            ^           1259    245686 	   routeinfo    TABLE     
  CREATE TABLE public.routeinfo (
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
    route_id bigint NOT NULL,
    request_type smallint DEFAULT '1'::smallint NOT NULL,
    offer_id bigint DEFAULT '0'::bigint NOT NULL,
    driver_id bigint DEFAULT '0'::bigint NOT NULL,
    volume real DEFAULT '0'::real NOT NULL,
    weight real DEFAULT '0'::real NOT NULL,
    countofpackage smallint DEFAULT '1'::smallint NOT NULL,
    countofroute smallint DEFAULT '1'::smallint NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    distance_requests real DEFAULT '0'::real NOT NULL,
    duration smallint DEFAULT '1'::smallint NOT NULL,
    servicelevel smallint DEFAULT '1'::smallint NOT NULL,
    from_address character varying DEFAULT ''::character varying NOT NULL,
    from_lat real DEFAULT '0'::real NOT NULL,
    from_lon real DEFAULT '0'::real NOT NULL,
    file_name character varying DEFAULT ''::character varying NOT NULL,
    to_address character varying DEFAULT ''::character varying NOT NULL,
    to_lat real DEFAULT '0'::real NOT NULL,
    to_lon real DEFAULT '0'::real NOT NULL,
    start_time bigint DEFAULT '0'::bigint NOT NULL,
    end_time bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    route_core_id bigint DEFAULT '0'::bigint NOT NULL,
    source_type smallint DEFAULT 1
);
    DROP TABLE public.routeinfo;
       public         heap    postgres    false            o           2606    246532 (   routeinfo PK_332d401e8087c9a7b211ed1dad7 
   CONSTRAINT     n   ALTER TABLE ONLY public.routeinfo
    ADD CONSTRAINT "PK_332d401e8087c9a7b211ed1dad7" PRIMARY KEY (route_id);
 T   ALTER TABLE ONLY public.routeinfo DROP CONSTRAINT "PK_332d401e8087c9a7b211ed1dad7";
       public            postgres    false    350            q           2606    246744 (   routeinfo UQ_332d401e8087c9a7b211ed1dad7 
   CONSTRAINT     i   ALTER TABLE ONLY public.routeinfo
    ADD CONSTRAINT "UQ_332d401e8087c9a7b211ed1dad7" UNIQUE (route_id);
 T   ALTER TABLE ONLY public.routeinfo DROP CONSTRAINT "UQ_332d401e8087c9a7b211ed1dad7";
       public            postgres    false    350           