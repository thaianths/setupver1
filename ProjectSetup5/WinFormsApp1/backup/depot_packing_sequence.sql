PGDMP                 	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244479    depot_packing_sequence    TABLE     �  CREATE TABLE public.depot_packing_sequence (
    layer_id bigint DEFAULT '0'::bigint NOT NULL,
    basegood_id bigint DEFAULT '0'::bigint NOT NULL,
    stack_id bigint DEFAULT '0'::bigint NOT NULL,
    countofparcels bigint DEFAULT '0'::bigint NOT NULL,
    bin_id character varying DEFAULT ''::character varying NOT NULL,
    id integer NOT NULL,
    x_begin smallint DEFAULT '0'::smallint NOT NULL,
    y_begin smallint DEFAULT '0'::smallint NOT NULL,
    z_begin smallint DEFAULT '0'::smallint NOT NULL,
    x_end smallint DEFAULT '0'::smallint NOT NULL,
    y_end smallint DEFAULT '0'::smallint NOT NULL,
    z_end smallint DEFAULT '0'::smallint NOT NULL,
    route_id smallint DEFAULT '0'::smallint NOT NULL,
    request_ids character varying NOT NULL
);
 *   DROP TABLE public.depot_packing_sequence;
       public         heap    postgres    false                       1259    244501    depot_packing_sequence_id_seq    SEQUENCE     �   CREATE SEQUENCE public.depot_packing_sequence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.depot_packing_sequence_id_seq;
       public          postgres    false    270            �           0    0    depot_packing_sequence_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.depot_packing_sequence_id_seq OWNED BY public.depot_packing_sequence.id;
          public          postgres    false    272            R           2604    246394    depot_packing_sequence id    DEFAULT     �   ALTER TABLE ONLY public.depot_packing_sequence ALTER COLUMN id SET DEFAULT nextval('public.depot_packing_sequence_id_seq'::regclass);
 H   ALTER TABLE public.depot_packing_sequence ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    270            �          0    244479    depot_packing_sequence 
   TABLE DATA           �   COPY public.depot_packing_sequence (layer_id, basegood_id, stack_id, countofparcels, bin_id, id, x_begin, y_begin, z_begin, x_end, y_end, z_end, route_id, request_ids) FROM stdin;
    public          postgres    false    270   �       �           0    0    depot_packing_sequence_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.depot_packing_sequence_id_seq', 1, false);
          public          postgres    false    272            [           2606    246554 5   depot_packing_sequence PK_4da52168a15fc01964b906e6189 
   CONSTRAINT     u   ALTER TABLE ONLY public.depot_packing_sequence
    ADD CONSTRAINT "PK_4da52168a15fc01964b906e6189" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.depot_packing_sequence DROP CONSTRAINT "PK_4da52168a15fc01964b906e6189";
       public            postgres    false    270            �      x������ � �     