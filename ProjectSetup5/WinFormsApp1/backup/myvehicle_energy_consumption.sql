PGDMP                 	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �           1259    247382    myvehicle_energy_consumption    TABLE     I  CREATE TABLE public.myvehicle_energy_consumption (
    my_vehicle_id bigint NOT NULL,
    energy_id smallint DEFAULT '1'::smallint NOT NULL,
    energy_name character varying DEFAULT ''::character varying NOT NULL,
    charge_person character varying DEFAULT ''::character varying NOT NULL,
    service_company bigint DEFAULT '0'::bigint NOT NULL,
    member_performed bigint DEFAULT '0'::bigint NOT NULL,
    km_level bigint DEFAULT '0'::bigint NOT NULL,
    service_datetime bigint DEFAULT '0'::bigint NOT NULL,
    energie_amount real DEFAULT '0'::real NOT NULL,
    service_cost real DEFAULT '0'::real NOT NULL,
    vat real DEFAULT '0'::real NOT NULL,
    evidence_paper character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    id integer DEFAULT nextval('public.ticket_inputpool_ticket_id_seq'::regclass) NOT NULL
);
 0   DROP TABLE public.myvehicle_energy_consumption;
       public         heap    postgres    false            �          0    247382    myvehicle_energy_consumption 
   TABLE DATA           #  COPY public.myvehicle_energy_consumption (my_vehicle_id, energy_id, energy_name, charge_person, service_company, member_performed, km_level, service_datetime, energie_amount, service_cost, vat, evidence_paper, member_created, member_updated, created_at, modified_at, status, id) FROM stdin;
    public          postgres    false    394   �       _           2606    247405 >   myvehicle_energy_consumption myvehicle_energy_consumption_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.myvehicle_energy_consumption
    ADD CONSTRAINT myvehicle_energy_consumption_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.myvehicle_energy_consumption DROP CONSTRAINT myvehicle_energy_consumption_pkey;
       public            postgres    false    394            �      x������ � �     