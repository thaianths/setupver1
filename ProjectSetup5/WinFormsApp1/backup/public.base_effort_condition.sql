PGDMP     $    2    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243729    base_effort_condition    TABLE     �   CREATE TABLE public.base_effort_condition (
    effort_condition character varying DEFAULT ''::character varying NOT NULL,
    effort_id integer NOT NULL
);
 )   DROP TABLE public.base_effort_condition;
       public         heap    postgres    false            �            1259    243735 #   base_effort_condition_effort_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_effort_condition_effort_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.base_effort_condition_effort_id_seq;
       public          postgres    false    216            �           0    0 #   base_effort_condition_effort_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.base_effort_condition_effort_id_seq OWNED BY public.base_effort_condition.effort_id;
          public          postgres    false    217            N           2604    246380    base_effort_condition effort_id    DEFAULT     �   ALTER TABLE ONLY public.base_effort_condition ALTER COLUMN effort_id SET DEFAULT nextval('public.base_effort_condition_effort_id_seq'::regclass);
 N   ALTER TABLE public.base_effort_condition ALTER COLUMN effort_id DROP DEFAULT;
       public          postgres    false    217    216            P           2606    246630 4   base_effort_condition PK_9f89f4f849879655325c948e645 
   CONSTRAINT     {   ALTER TABLE ONLY public.base_effort_condition
    ADD CONSTRAINT "PK_9f89f4f849879655325c948e645" PRIMARY KEY (effort_id);
 `   ALTER TABLE ONLY public.base_effort_condition DROP CONSTRAINT "PK_9f89f4f849879655325c948e645";
       public            postgres    false    216            R           2606    246844 4   base_effort_condition UQ_9f89f4f849879655325c948e645 
   CONSTRAINT     v   ALTER TABLE ONLY public.base_effort_condition
    ADD CONSTRAINT "UQ_9f89f4f849879655325c948e645" UNIQUE (effort_id);
 `   ALTER TABLE ONLY public.base_effort_condition DROP CONSTRAINT "UQ_9f89f4f849879655325c948e645";
       public            postgres    false    216           