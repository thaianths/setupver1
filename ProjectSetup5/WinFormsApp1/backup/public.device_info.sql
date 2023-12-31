PGDMP     )    3    
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
                postgres    false                       1259    244618    device_info    TABLE     �  CREATE TABLE public.device_info (
    id integer NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    device_token character varying DEFAULT ''::character varying NOT NULL,
    type character varying DEFAULT 'mobile'::character varying NOT NULL,
    os character varying DEFAULT 'android'::character varying NOT NULL,
    app_version character varying DEFAULT ''::character varying NOT NULL,
    build integer DEFAULT 0 NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    device_info jsonb DEFAULT '{}'::jsonb NOT NULL
);
    DROP TABLE public.device_info;
       public         heap    postgres    false                       1259    244633    device_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.device_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.device_info_id_seq;
       public          postgres    false    280            �           0    0    device_info_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.device_info_id_seq OWNED BY public.device_info.id;
          public          postgres    false    281            M           2604    246396    device_info id    DEFAULT     p   ALTER TABLE ONLY public.device_info ALTER COLUMN id SET DEFAULT nextval('public.device_info_id_seq'::regclass);
 =   ALTER TABLE public.device_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    280            Y           2606    246640 *   device_info PK_b1c15a80b0a4e5f4eebadbdd92c 
   CONSTRAINT     j   ALTER TABLE ONLY public.device_info
    ADD CONSTRAINT "PK_b1c15a80b0a4e5f4eebadbdd92c" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.device_info DROP CONSTRAINT "PK_b1c15a80b0a4e5f4eebadbdd92c";
       public            postgres    false    280            [           2606    246716 *   device_info UQ_1b2954bfdb2d38b4ae800109cec 
   CONSTRAINT     �   ALTER TABLE ONLY public.device_info
    ADD CONSTRAINT "UQ_1b2954bfdb2d38b4ae800109cec" UNIQUE (device_token, member_id, type);
 V   ALTER TABLE ONLY public.device_info DROP CONSTRAINT "UQ_1b2954bfdb2d38b4ae800109cec";
       public            postgres    false    280    280    280           