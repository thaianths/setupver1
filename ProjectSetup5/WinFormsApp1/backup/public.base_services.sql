PGDMP     *    2    
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
                postgres    false            �            1259    243791    base_services    TABLE     �  CREATE TABLE public.base_services (
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
    service_id bigint NOT NULL,
    service_name character varying DEFAULT ''::character varying NOT NULL,
    service_kind smallint DEFAULT '1'::smallint NOT NULL,
    i18n character varying DEFAULT ''::character varying NOT NULL,
    visible boolean DEFAULT true NOT NULL,
    kind_of_tariff smallint DEFAULT '0'::smallint NOT NULL,
    unit_of_basic_tariff smallint DEFAULT '1'::smallint NOT NULL,
    unit_name character varying DEFAULT ''::character varying NOT NULL,
    show_dimension smallint DEFAULT '1'::smallint NOT NULL,
    unit_of_service_tariff smallint DEFAULT '-1'::smallint,
    unit_service_name character varying DEFAULT ''::character varying,
    group_packaging character varying DEFAULT ''::character varying NOT NULL,
    max_cod real DEFAULT 0 NOT NULL,
    max_price_order real DEFAULT 0 NOT NULL,
    choicesp smallint DEFAULT '0'::smallint NOT NULL
);
 !   DROP TABLE public.base_services;
       public         heap    postgres    false            f           2606    246524 ,   base_services PK_25b0b4cef3ad3c9176bdad7f739 
   CONSTRAINT     t   ALTER TABLE ONLY public.base_services
    ADD CONSTRAINT "PK_25b0b4cef3ad3c9176bdad7f739" PRIMARY KEY (service_id);
 X   ALTER TABLE ONLY public.base_services DROP CONSTRAINT "PK_25b0b4cef3ad3c9176bdad7f739";
       public            postgres    false    222            h           2606    246734 ,   base_services UQ_25b0b4cef3ad3c9176bdad7f739 
   CONSTRAINT     o   ALTER TABLE ONLY public.base_services
    ADD CONSTRAINT "UQ_25b0b4cef3ad3c9176bdad7f739" UNIQUE (service_id);
 X   ALTER TABLE ONLY public.base_services DROP CONSTRAINT "UQ_25b0b4cef3ad3c9176bdad7f739";
       public            postgres    false    222           