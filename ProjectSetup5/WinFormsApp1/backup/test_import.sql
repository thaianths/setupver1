PGDMP                 	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �           1259    247414    test_import    TABLE     �   CREATE TABLE public.test_import (
    status_code character varying COLLATE pg_catalog."C.utf8",
    "desc" character varying COLLATE pg_catalog."C.utf8"
);
    DROP TABLE public.test_import;
       public         heap    postgres    false            �          0    247414    test_import 
   TABLE DATA           :   COPY public.test_import (status_code, "desc") FROM stdin;
    public          postgres    false    395   a       �      x������ � �     