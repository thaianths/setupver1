PGDMP         4    
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
                postgres    false            H           1259    245332    notification    TABLE     Q  CREATE TABLE public.notification (
    title character varying NOT NULL,
    message character varying NOT NULL,
    route_id bigint DEFAULT '0'::bigint NOT NULL,
    offer_id bigint DEFAULT '0'::bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    app_noti_id bigint DEFAULT '0'::bigint NOT NULL,
    view smallint DEFAULT '0'::smallint NOT NULL,
    type character varying DEFAULT ''::character varying NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false            W           2606    246638 +   notification PK_add1de6a5445a40d2e91a7f979d 
   CONSTRAINT     t   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "PK_add1de6a5445a40d2e91a7f979d" PRIMARY KEY (app_noti_id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "PK_add1de6a5445a40d2e91a7f979d";
       public            postgres    false    328            Y           2606    246700 +   notification UQ_02d4d381df8f6744700a088da57 
   CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "UQ_02d4d381df8f6744700a088da57" UNIQUE (route_id, offer_id, member_id, type);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "UQ_02d4d381df8f6744700a088da57";
       public            postgres    false    328    328    328    328           