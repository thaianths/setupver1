PGDMP         3    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                        1259    244210    depot_collection_orderpool    TABLE     >  CREATE TABLE public.depot_collection_orderpool (
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
    collection_order_id bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    po_code character varying NOT NULL,
    note character varying NOT NULL,
    kind_ofcollection character varying DEFAULT 'purchase_order'::character varying NOT NULL
);
 .   DROP TABLE public.depot_collection_orderpool;
       public         heap    postgres    false            Z           2606    246686 9   depot_collection_orderpool PK_f80a409793c038cee2748e0445c 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_collection_orderpool
    ADD CONSTRAINT "PK_f80a409793c038cee2748e0445c" PRIMARY KEY (collection_order_id);
 e   ALTER TABLE ONLY public.depot_collection_orderpool DROP CONSTRAINT "PK_f80a409793c038cee2748e0445c";
       public            postgres    false    256            \           2606    246722 9   depot_collection_orderpool UQ_1c78224533ea04a6dbe342cc9cc 
   CONSTRAINT     y   ALTER TABLE ONLY public.depot_collection_orderpool
    ADD CONSTRAINT "UQ_1c78224533ea04a6dbe342cc9cc" UNIQUE (po_code);
 e   ALTER TABLE ONLY public.depot_collection_orderpool DROP CONSTRAINT "UQ_1c78224533ea04a6dbe342cc9cc";
       public            postgres    false    256            ^           2606    246836 9   depot_collection_orderpool UQ_9a25d6cfb754abd301a0685b624 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_collection_orderpool
    ADD CONSTRAINT "UQ_9a25d6cfb754abd301a0685b624" UNIQUE (collection_order_id, request_provider_id);
 e   ALTER TABLE ONLY public.depot_collection_orderpool DROP CONSTRAINT "UQ_9a25d6cfb754abd301a0685b624";
       public            postgres    false    256    256           