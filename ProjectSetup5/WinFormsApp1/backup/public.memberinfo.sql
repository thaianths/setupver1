PGDMP         4    
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
                postgres    false            <           1259    245101 
   memberinfo    TABLE     �  CREATE TABLE public.memberinfo (
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
    member_id bigint NOT NULL,
    group_id character varying DEFAULT ''::character varying NOT NULL,
    service_provider character varying DEFAULT ''::character varying NOT NULL,
    request_provider character varying DEFAULT ''::character varying NOT NULL,
    is_main boolean DEFAULT false NOT NULL,
    depots character varying DEFAULT ''::character varying NOT NULL,
    device_token character varying DEFAULT ''::character varying NOT NULL,
    my_vehicle character varying DEFAULT ''::character varying NOT NULL,
    driving_licence character varying DEFAULT ''::character varying NOT NULL,
    is_admin boolean DEFAULT false NOT NULL
);
    DROP TABLE public.memberinfo;
       public         heap    postgres    false            p           2606    246680 )   memberinfo PK_eb0ef87a76cbe44d03736e3858e 
   CONSTRAINT     p   ALTER TABLE ONLY public.memberinfo
    ADD CONSTRAINT "PK_eb0ef87a76cbe44d03736e3858e" PRIMARY KEY (member_id);
 U   ALTER TABLE ONLY public.memberinfo DROP CONSTRAINT "PK_eb0ef87a76cbe44d03736e3858e";
       public            postgres    false    316            r           2606    246886 )   memberinfo UQ_eb0ef87a76cbe44d03736e3858e 
   CONSTRAINT     k   ALTER TABLE ONLY public.memberinfo
    ADD CONSTRAINT "UQ_eb0ef87a76cbe44d03736e3858e" UNIQUE (member_id);
 U   ALTER TABLE ONLY public.memberinfo DROP CONSTRAINT "UQ_eb0ef87a76cbe44d03736e3858e";
       public            postgres    false    316           