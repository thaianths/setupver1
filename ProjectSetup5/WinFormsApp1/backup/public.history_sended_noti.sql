PGDMP     
    4    
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
                postgres    false            5           1259    245019    history_sended_noti    TABLE     �  CREATE TABLE public.history_sended_noti (
    id integer NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    message character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    type character varying DEFAULT ''::character varying NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL
);
 '   DROP TABLE public.history_sended_noti;
       public         heap    postgres    false            6           1259    245031    history_sended_noti_id_seq    SEQUENCE     �   CREATE SEQUENCE public.history_sended_noti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.history_sended_noti_id_seq;
       public          postgres    false    309            �           0    0    history_sended_noti_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.history_sended_noti_id_seq OWNED BY public.history_sended_noti.id;
          public          postgres    false    310            M           2604    246405    history_sended_noti id    DEFAULT     �   ALTER TABLE ONLY public.history_sended_noti ALTER COLUMN id SET DEFAULT nextval('public.history_sended_noti_id_seq'::regclass);
 E   ALTER TABLE public.history_sended_noti ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    310    309            V           2606    246636 2   history_sended_noti PK_adb46715976bb3556bd3bfe8f72 
   CONSTRAINT     r   ALTER TABLE ONLY public.history_sended_noti
    ADD CONSTRAINT "PK_adb46715976bb3556bd3bfe8f72" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.history_sended_noti DROP CONSTRAINT "PK_adb46715976bb3556bd3bfe8f72";
       public            postgres    false    309           