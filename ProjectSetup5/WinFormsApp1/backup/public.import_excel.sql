PGDMP         4    
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
                postgres    false            7           1259    245032    import_excel    TABLE     v  CREATE TABLE public.import_excel (
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
    import_excel_id bigint NOT NULL,
    code character varying DEFAULT ''::character varying NOT NULL,
    name character varying NOT NULL,
    owner_id bigint NOT NULL,
    type character varying DEFAULT 'requestpool'::character varying NOT NULL,
    options jsonb DEFAULT '{}'::jsonb NOT NULL,
    value jsonb DEFAULT '[]'::jsonb NOT NULL
);
     DROP TABLE public.import_excel;
       public         heap    postgres    false            \           2606    246676 +   import_excel PK_e434d70685cd1733062f71b5c64 
   CONSTRAINT     x   ALTER TABLE ONLY public.import_excel
    ADD CONSTRAINT "PK_e434d70685cd1733062f71b5c64" PRIMARY KEY (import_excel_id);
 W   ALTER TABLE ONLY public.import_excel DROP CONSTRAINT "PK_e434d70685cd1733062f71b5c64";
       public            postgres    false    311            ^           2606    246880 +   import_excel UQ_e434d70685cd1733062f71b5c64 
   CONSTRAINT     s   ALTER TABLE ONLY public.import_excel
    ADD CONSTRAINT "UQ_e434d70685cd1733062f71b5c64" UNIQUE (import_excel_id);
 W   ALTER TABLE ONLY public.import_excel DROP CONSTRAINT "UQ_e434d70685cd1733062f71b5c64";
       public            postgres    false    311           