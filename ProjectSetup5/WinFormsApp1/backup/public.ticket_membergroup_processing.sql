PGDMP         5    
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
                postgres    false            r           1259    246088    ticket_membergroup_processing    TABLE     '  CREATE TABLE public.ticket_membergroup_processing (
    group_id integer NOT NULL,
    portal_id bigint DEFAULT '1001'::bigint NOT NULL,
    group_name text DEFAULT ''::text NOT NULL,
    member_process bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    category_id smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL
);
 1   DROP TABLE public.ticket_membergroup_processing;
       public         heap    postgres    false            s           1259    246101 *   ticket_membergroup_processing_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_membergroup_processing_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.ticket_membergroup_processing_group_id_seq;
       public          postgres    false    370            �           0    0 *   ticket_membergroup_processing_group_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.ticket_membergroup_processing_group_id_seq OWNED BY public.ticket_membergroup_processing.group_id;
          public          postgres    false    371            M           2604    246420 &   ticket_membergroup_processing group_id    DEFAULT     �   ALTER TABLE ONLY public.ticket_membergroup_processing ALTER COLUMN group_id SET DEFAULT nextval('public.ticket_membergroup_processing_group_id_seq'::regclass);
 U   ALTER TABLE public.ticket_membergroup_processing ALTER COLUMN group_id DROP DEFAULT;
       public          postgres    false    371    370            W           2606    246596 <   ticket_membergroup_processing PK_6e809759826b70e16f377918d61 
   CONSTRAINT     �   ALTER TABLE ONLY public.ticket_membergroup_processing
    ADD CONSTRAINT "PK_6e809759826b70e16f377918d61" PRIMARY KEY (group_id);
 h   ALTER TABLE ONLY public.ticket_membergroup_processing DROP CONSTRAINT "PK_6e809759826b70e16f377918d61";
       public            postgres    false    370            Y           2606    246804 <   ticket_membergroup_processing UQ_6e1a283cab56e791b64968fbe74 
   CONSTRAINT     �   ALTER TABLE ONLY public.ticket_membergroup_processing
    ADD CONSTRAINT "UQ_6e1a283cab56e791b64968fbe74" UNIQUE (member_process, category_id);
 h   ALTER TABLE ONLY public.ticket_membergroup_processing DROP CONSTRAINT "UQ_6e1a283cab56e791b64968fbe74";
       public            postgres    false    370    370           