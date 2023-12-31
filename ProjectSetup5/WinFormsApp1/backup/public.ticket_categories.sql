PGDMP         5    
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
                postgres    false            n           1259    246060    ticket_categories    TABLE     r  CREATE TABLE public.ticket_categories (
    category_name character varying DEFAULT ''::character varying NOT NULL,
    category_field character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    portal_id bigint DEFAULT '1001'::bigint NOT NULL,
    category_id integer NOT NULL
);
 %   DROP TABLE public.ticket_categories;
       public         heap    postgres    false            o           1259    246074 !   ticket_categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.ticket_categories_category_id_seq;
       public          postgres    false    366            �           0    0 !   ticket_categories_category_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.ticket_categories_category_id_seq OWNED BY public.ticket_categories.category_id;
          public          postgres    false    367            V           2604    246417    ticket_categories category_id    DEFAULT     �   ALTER TABLE ONLY public.ticket_categories ALTER COLUMN category_id SET DEFAULT nextval('public.ticket_categories_category_id_seq'::regclass);
 L   ALTER TABLE public.ticket_categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    367    366            X           2606    246656 0   ticket_categories PK_cc295f1a157cb4549d780543394 
   CONSTRAINT     y   ALTER TABLE ONLY public.ticket_categories
    ADD CONSTRAINT "PK_cc295f1a157cb4549d780543394" PRIMARY KEY (category_id);
 \   ALTER TABLE ONLY public.ticket_categories DROP CONSTRAINT "PK_cc295f1a157cb4549d780543394";
       public            postgres    false    366            Z           2606    246866 0   ticket_categories UQ_cc295f1a157cb4549d780543394 
   CONSTRAINT     t   ALTER TABLE ONLY public.ticket_categories
    ADD CONSTRAINT "UQ_cc295f1a157cb4549d780543394" UNIQUE (category_id);
 \   ALTER TABLE ONLY public.ticket_categories DROP CONSTRAINT "UQ_cc295f1a157cb4549d780543394";
       public            postgres    false    366           