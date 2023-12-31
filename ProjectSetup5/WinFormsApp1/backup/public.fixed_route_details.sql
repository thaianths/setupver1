PGDMP     5    3    
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
                postgres    false            !           1259    244770    fixed_route_details    TABLE     ]  CREATE TABLE public.fixed_route_details (
    client_id bigint DEFAULT '1'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    request_provider_id bigint DEFAULT '1'::bigint NOT NULL,
    id integer NOT NULL,
    start_addr character varying DEFAULT ''::character varying NOT NULL,
    end_addr character varying DEFAULT ''::character varying,
    end_lat real DEFAULT '0'::real NOT NULL,
    end_lon real DEFAULT '0'::real NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    route_seq_id smallint DEFAULT '1'::smallint NOT NULL,
    fixed_route_id smallint DEFAULT '1'::smallint NOT NULL,
    staytime1_in_minute smallint DEFAULT '0'::smallint NOT NULL,
    staytime2_in_minute smallint DEFAULT '0'::smallint NOT NULL,
    start_lat real DEFAULT '0'::real NOT NULL,
    start_lon real DEFAULT '0'::real NOT NULL,
    seq_distance real DEFAULT '0'::real NOT NULL,
    seq_duration real DEFAULT '0'::real NOT NULL
);
 '   DROP TABLE public.fixed_route_details;
       public         heap    postgres    false            "           1259    244794    fixed_route_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fixed_route_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.fixed_route_details_id_seq;
       public          postgres    false    289            �           0    0    fixed_route_details_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.fixed_route_details_id_seq OWNED BY public.fixed_route_details.id;
          public          postgres    false    290            P           2604    246397    fixed_route_details id    DEFAULT     �   ALTER TABLE ONLY public.fixed_route_details ALTER COLUMN id SET DEFAULT nextval('public.fixed_route_details_id_seq'::regclass);
 E   ALTER TABLE public.fixed_route_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    289            b           2606    246670 2   fixed_route_details PK_dca1b255279f7df2017473e83f9 
   CONSTRAINT     r   ALTER TABLE ONLY public.fixed_route_details
    ADD CONSTRAINT "PK_dca1b255279f7df2017473e83f9" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.fixed_route_details DROP CONSTRAINT "PK_dca1b255279f7df2017473e83f9";
       public            postgres    false    289            d           2606    246754 2   fixed_route_details UQ_3f136379d96ca3fb93670e75469 
   CONSTRAINT     �   ALTER TABLE ONLY public.fixed_route_details
    ADD CONSTRAINT "UQ_3f136379d96ca3fb93670e75469" UNIQUE (fixed_route_id, route_seq_id);
 ^   ALTER TABLE ONLY public.fixed_route_details DROP CONSTRAINT "UQ_3f136379d96ca3fb93670e75469";
       public            postgres    false    289    289           