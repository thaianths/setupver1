PGDMP     3    4    
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
                postgres    false            _           1259    245724    sequenceinfo    TABLE       CREATE TABLE public.sequenceinfo (
    seq_id bigint NOT NULL,
    request_id bigint NOT NULL,
    stoppoint_type smallint NOT NULL,
    seq_index smallint DEFAULT '0'::smallint NOT NULL,
    route_id bigint DEFAULT '0'::bigint NOT NULL,
    distancetonext real DEFAULT '0'::real NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    kind_of_plan integer DEFAULT 2 NOT NULL,
    transport_id character varying DEFAULT ''::character varying NOT NULL,
    latofstoppoint real DEFAULT '0'::real NOT NULL,
    lonofstoppoint real DEFAULT '0'::real NOT NULL,
    seq_index_new smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    should_arival_time bigint DEFAULT '0'::bigint NOT NULL,
    changedpickup_datetime character varying DEFAULT ''::character varying NOT NULL,
    route_core_id bigint DEFAULT '0'::bigint NOT NULL,
    should_arival bigint DEFAULT '0'::bigint NOT NULL,
    order_code_of_provider character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.sequenceinfo;
       public         heap    postgres    false            ]           2606    246618 +   sequenceinfo PK_8c75285b953273e701e1642293f 
   CONSTRAINT     o   ALTER TABLE ONLY public.sequenceinfo
    ADD CONSTRAINT "PK_8c75285b953273e701e1642293f" PRIMARY KEY (seq_id);
 W   ALTER TABLE ONLY public.sequenceinfo DROP CONSTRAINT "PK_8c75285b953273e701e1642293f";
       public            postgres    false    351            _           2606    246786 +   sequenceinfo UQ_63a7572be58dd1892acd29a4294 
   CONSTRAINT     t   ALTER TABLE ONLY public.sequenceinfo
    ADD CONSTRAINT "UQ_63a7572be58dd1892acd29a4294" UNIQUE (seq_id, route_id);
 W   ALTER TABLE ONLY public.sequenceinfo DROP CONSTRAINT "UQ_63a7572be58dd1892acd29a4294";
       public            postgres    false    351    351           