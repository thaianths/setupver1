PGDMP     0    2    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243872    base_vehicle_cost    TABLE        CREATE TABLE public.base_vehicle_cost (
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    portal_code character varying DEFAULT ''::character varying,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    base_vehicle_cost_id integer NOT NULL,
    base_vehicle_cost_name character varying DEFAULT ''::character varying NOT NULL,
    base_vehicle_cost_group_id bigint DEFAULT '0'::bigint NOT NULL,
    base_vehicle_cost_group_name character varying DEFAULT ''::character varying NOT NULL
);
 %   DROP TABLE public.base_vehicle_cost;
       public         heap    postgres    false            �            1259    243889 *   base_vehicle_cost_base_vehicle_cost_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_vehicle_cost_base_vehicle_cost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.base_vehicle_cost_base_vehicle_cost_id_seq;
       public          postgres    false    227            �           0    0 *   base_vehicle_cost_base_vehicle_cost_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.base_vehicle_cost_base_vehicle_cost_id_seq OWNED BY public.base_vehicle_cost.base_vehicle_cost_id;
          public          postgres    false    228            V           2604    246383 &   base_vehicle_cost base_vehicle_cost_id    DEFAULT     �   ALTER TABLE ONLY public.base_vehicle_cost ALTER COLUMN base_vehicle_cost_id SET DEFAULT nextval('public.base_vehicle_cost_base_vehicle_cost_id_seq'::regclass);
 U   ALTER TABLE public.base_vehicle_cost ALTER COLUMN base_vehicle_cost_id DROP DEFAULT;
       public          postgres    false    228    227            [           2606    246900 &   base_vehicle_cost base_vehicle_cost_id 
   CONSTRAINT     v   ALTER TABLE ONLY public.base_vehicle_cost
    ADD CONSTRAINT base_vehicle_cost_id PRIMARY KEY (base_vehicle_cost_id);
 P   ALTER TABLE ONLY public.base_vehicle_cost DROP CONSTRAINT base_vehicle_cost_id;
       public            postgres    false    227           