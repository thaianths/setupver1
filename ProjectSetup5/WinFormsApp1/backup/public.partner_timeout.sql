PGDMP     $    4    
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
                postgres    false            P           1259    245435    partner_timeout    TABLE     D  CREATE TABLE public.partner_timeout (
    partner_id bigint NOT NULL,
    partner_name character varying DEFAULT ''::character varying NOT NULL,
    partner_code character varying DEFAULT ''::character varying NOT NULL,
    timeout bigint DEFAULT '0'::bigint NOT NULL,
    status_code bigint DEFAULT '0'::bigint NOT NULL
);
 #   DROP TABLE public.partner_timeout;
       public         heap    postgres    false            R           2606    246548 .   partner_timeout PK_4608e5b5bc24a1c5aa128f551a0 
   CONSTRAINT     v   ALTER TABLE ONLY public.partner_timeout
    ADD CONSTRAINT "PK_4608e5b5bc24a1c5aa128f551a0" PRIMARY KEY (partner_id);
 Z   ALTER TABLE ONLY public.partner_timeout DROP CONSTRAINT "PK_4608e5b5bc24a1c5aa128f551a0";
       public            postgres    false    336            T           2606    246760 .   partner_timeout UQ_4608e5b5bc24a1c5aa128f551a0 
   CONSTRAINT     q   ALTER TABLE ONLY public.partner_timeout
    ADD CONSTRAINT "UQ_4608e5b5bc24a1c5aa128f551a0" UNIQUE (partner_id);
 Z   ALTER TABLE ONLY public.partner_timeout DROP CONSTRAINT "UQ_4608e5b5bc24a1c5aa128f551a0";
       public            postgres    false    336           