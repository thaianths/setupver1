PGDMP         5    
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
                postgres    false            {           1259    246246    vnp_district    TABLE     $  CREATE TABLE public.vnp_district (
    id bigint NOT NULL,
    "provinceCode" character varying DEFAULT ''::character varying NOT NULL,
    "districtCode" character varying DEFAULT ''::character varying NOT NULL,
    "districtName" character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.vnp_district;
       public         heap    postgres    false            |           1259    246254    vnp_district_id_seq    SEQUENCE     |   CREATE SEQUENCE public.vnp_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.vnp_district_id_seq;
       public          postgres    false    379            �           0    0    vnp_district_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.vnp_district_id_seq OWNED BY public.vnp_district.id;
          public          postgres    false    380            M           2604    246424    vnp_district id    DEFAULT     r   ALTER TABLE ONLY public.vnp_district ALTER COLUMN id SET DEFAULT nextval('public.vnp_district_id_seq'::regclass);
 >   ALTER TABLE public.vnp_district ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    380    379            R           2606    246694 +   vnp_district PK_fbfc26b692a510c55ebf3e6f2fa 
   CONSTRAINT     k   ALTER TABLE ONLY public.vnp_district
    ADD CONSTRAINT "PK_fbfc26b692a510c55ebf3e6f2fa" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.vnp_district DROP CONSTRAINT "PK_fbfc26b692a510c55ebf3e6f2fa";
       public            postgres    false    379            T           2606    246870 +   vnp_district UQ_cf1576da48b1074a3c2a5ff7377 
   CONSTRAINT     r   ALTER TABLE ONLY public.vnp_district
    ADD CONSTRAINT "UQ_cf1576da48b1074a3c2a5ff7377" UNIQUE ("districtCode");
 W   ALTER TABLE ONLY public.vnp_district DROP CONSTRAINT "UQ_cf1576da48b1074a3c2a5ff7377";
       public            postgres    false    379           