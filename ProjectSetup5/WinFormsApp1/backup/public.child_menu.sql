PGDMP     6    2    
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
                postgres    false            �            1259    243951 
   child_menu    TABLE     O  CREATE TABLE public.child_menu (
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
    child_id bigint NOT NULL,
    path character varying DEFAULT ''::character varying NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    meta jsonb DEFAULT '{}'::jsonb NOT NULL,
    parent_id bigint DEFAULT '0'::bigint NOT NULL,
    is_mobile boolean DEFAULT false NOT NULL
);
    DROP TABLE public.child_menu;
       public         heap    postgres    false            ]           2606    246632 )   child_menu PK_a2be17f32379f42236bc0dbacbc 
   CONSTRAINT     o   ALTER TABLE ONLY public.child_menu
    ADD CONSTRAINT "PK_a2be17f32379f42236bc0dbacbc" PRIMARY KEY (child_id);
 U   ALTER TABLE ONLY public.child_menu DROP CONSTRAINT "PK_a2be17f32379f42236bc0dbacbc";
       public            postgres    false    235            _           2606    246846 )   child_menu UQ_a2be17f32379f42236bc0dbacbc 
   CONSTRAINT     j   ALTER TABLE ONLY public.child_menu
    ADD CONSTRAINT "UQ_a2be17f32379f42236bc0dbacbc" UNIQUE (child_id);
 U   ALTER TABLE ONLY public.child_menu DROP CONSTRAINT "UQ_a2be17f32379f42236bc0dbacbc";
       public            postgres    false    235           