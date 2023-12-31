PGDMP         3    
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
                postgres    false                       1259    244232    depot_gate_location    TABLE     y  CREATE TABLE public.depot_gate_location (
    client_id bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    depot_id bigint NOT NULL,
    gate_name character varying DEFAULT ''::character varying NOT NULL,
    gate_address character varying DEFAULT ''::character varying NOT NULL,
    gate_handling_unit_ids character varying DEFAULT ''::character varying NOT NULL,
    gate_function character varying DEFAULT ''::character varying NOT NULL,
    gate_lat real DEFAULT '0'::real NOT NULL,
    gate_lon real DEFAULT '0'::real NOT NULL,
    gate_id bigint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    id integer NOT NULL
);
 '   DROP TABLE public.depot_gate_location;
       public         heap    postgres    false                       1259    244249    depot_gate_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.depot_gate_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.depot_gate_location_id_seq;
       public          postgres    false    258            �           0    0    depot_gate_location_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.depot_gate_location_id_seq OWNED BY public.depot_gate_location.id;
          public          postgres    false    259            Y           2604    246390    depot_gate_location id    DEFAULT     �   ALTER TABLE ONLY public.depot_gate_location ALTER COLUMN id SET DEFAULT nextval('public.depot_gate_location_id_seq'::regclass);
 E   ALTER TABLE public.depot_gate_location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            [           2606    246496 2   depot_gate_location PK_0b084332809bcab67b914af203e 
   CONSTRAINT     r   ALTER TABLE ONLY public.depot_gate_location
    ADD CONSTRAINT "PK_0b084332809bcab67b914af203e" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.depot_gate_location DROP CONSTRAINT "PK_0b084332809bcab67b914af203e";
       public            postgres    false    258            ]           2606    246746 2   depot_gate_location UQ_33cc9f452e768b4c158dd694c2f 
   CONSTRAINT     �   ALTER TABLE ONLY public.depot_gate_location
    ADD CONSTRAINT "UQ_33cc9f452e768b4c158dd694c2f" UNIQUE (gate_id, client_id, service_provider_id);
 ^   ALTER TABLE ONLY public.depot_gate_location DROP CONSTRAINT "UQ_33cc9f452e768b4c158dd694c2f";
       public            postgres    false    258    258    258           