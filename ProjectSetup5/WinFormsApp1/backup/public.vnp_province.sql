PGDMP         5    
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
                postgres    false            }           1259    246255    vnp_province    TABLE     �   CREATE TABLE public.vnp_province (
    id bigint NOT NULL,
    "provinceCode" character varying DEFAULT ''::character varying NOT NULL,
    "provinceName" character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.vnp_province;
       public         heap    postgres    false            ~           1259    246262    vnp_province_id_seq    SEQUENCE     |   CREATE SEQUENCE public.vnp_province_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vnp_province_id_seq;
       public          postgres    false    381            �           0    0    vnp_province_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vnp_province_id_seq OWNED BY public.vnp_province.id;
          public          postgres    false    382            M           2604    246425    vnp_province id    DEFAULT     r   ALTER TABLE ONLY public.vnp_province ALTER COLUMN id SET DEFAULT nextval('public.vnp_province_id_seq'::regclass);
 >   ALTER TABLE public.vnp_province ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    382    381            Q           2606    246508 +   vnp_province PK_1bd8ebf731d5ea86dc798b17897 
   CONSTRAINT     k   ALTER TABLE ONLY public.vnp_province
    ADD CONSTRAINT "PK_1bd8ebf731d5ea86dc798b17897" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.vnp_province DROP CONSTRAINT "PK_1bd8ebf731d5ea86dc798b17897";
       public            postgres    false    381            S           2606    246868 +   vnp_province UQ_cd4a3f75787080714fd84f77c04 
   CONSTRAINT     r   ALTER TABLE ONLY public.vnp_province
    ADD CONSTRAINT "UQ_cd4a3f75787080714fd84f77c04" UNIQUE ("provinceCode");
 W   ALTER TABLE ONLY public.vnp_province DROP CONSTRAINT "UQ_cd4a3f75787080714fd84f77c04";
       public            postgres    false    381           