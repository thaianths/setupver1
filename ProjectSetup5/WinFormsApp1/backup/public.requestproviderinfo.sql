PGDMP         5    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            	           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            ]           1259    245647    requestproviderinfo    TABLE     k  CREATE TABLE public.requestproviderinfo (
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
    uid character varying DEFAULT ''::character varying NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    contact_name character varying DEFAULT ''::character varying NOT NULL,
    list_roles character varying DEFAULT ''::character varying NOT NULL,
    role smallint DEFAULT '0'::smallint NOT NULL,
    department smallint DEFAULT '0'::smallint NOT NULL,
    company_name character varying DEFAULT ''::character varying NOT NULL,
    bank_account character varying DEFAULT ''::character varying NOT NULL,
    business_status smallint DEFAULT '0'::smallint NOT NULL,
    business_license character varying DEFAULT ''::character varying NOT NULL,
    demand character varying DEFAULT ''::character varying NOT NULL,
    address character varying DEFAULT ''::character varying NOT NULL,
    tax_id character varying DEFAULT ''::character varying NOT NULL,
    images jsonb DEFAULT '{}'::jsonb NOT NULL,
    request_provider_id bigint NOT NULL,
    is_main boolean DEFAULT false NOT NULL,
    type smallint DEFAULT '1'::smallint NOT NULL,
    is_use_public_price boolean DEFAULT true NOT NULL,
    is_latlon boolean DEFAULT false NOT NULL,
    code character varying DEFAULT ''::character varying NOT NULL,
    min_order_per_mon bigint DEFAULT '0'::bigint NOT NULL,
    reconcile_type smallint DEFAULT '1'::smallint NOT NULL,
    transfer_fee real DEFAULT '5000'::real NOT NULL,
    percent_discount real DEFAULT '0'::real NOT NULL
);
 '   DROP TABLE public.requestproviderinfo;
       public         heap    postgres    false            p           2606    246488 2   requestproviderinfo PK_0367875722d9029eaf6524177d2 
   CONSTRAINT     �   ALTER TABLE ONLY public.requestproviderinfo
    ADD CONSTRAINT "PK_0367875722d9029eaf6524177d2" PRIMARY KEY (request_provider_id);
 ^   ALTER TABLE ONLY public.requestproviderinfo DROP CONSTRAINT "PK_0367875722d9029eaf6524177d2";
       public            postgres    false    349            r           2606    246702 2   requestproviderinfo UQ_0367875722d9029eaf6524177d2 
   CONSTRAINT     ~   ALTER TABLE ONLY public.requestproviderinfo
    ADD CONSTRAINT "UQ_0367875722d9029eaf6524177d2" UNIQUE (request_provider_id);
 ^   ALTER TABLE ONLY public.requestproviderinfo DROP CONSTRAINT "UQ_0367875722d9029eaf6524177d2";
       public            postgres    false    349           