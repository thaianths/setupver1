PGDMP     (    3    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244613    depot_warehouse_layout_plan    TABLE     �  CREATE TABLE public.depot_warehouse_layout_plan (
    client_id bigint NOT NULL,
    service_provider_id bigint NOT NULL,
    depot_id bigint NOT NULL,
    area_id character varying NOT NULL,
    area_name character varying,
    area_address character varying,
    area_size_inm2 character varying,
    area_handling_unit_ids character varying,
    ares_polygon_id character varying,
    area_status character varying NOT NULL
);
 /   DROP TABLE public.depot_warehouse_layout_plan;
       public         heap    postgres    false            N           2606    246912 <   depot_warehouse_layout_plan depot_warehouse_layout_plan_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_warehouse_layout_plan
    ADD CONSTRAINT depot_warehouse_layout_plan_pkey PRIMARY KEY (client_id, service_provider_id, depot_id, area_id);
 f   ALTER TABLE ONLY public.depot_warehouse_layout_plan DROP CONSTRAINT depot_warehouse_layout_plan_pkey;
       public            postgres    false    279    279    279    279           