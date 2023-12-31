PGDMP     '    4    
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
                postgres    false            R           1259    245451 	   promotion    TABLE       CREATE TABLE public.promotion (
    id integer NOT NULL,
    portal_id bigint DEFAULT '0'::bigint,
    promotion_id bigint NOT NULL,
    "desc" character varying DEFAULT ''::character varying NOT NULL,
    limit_order bigint DEFAULT '0'::bigint NOT NULL,
    rule character varying DEFAULT ''::character varying NOT NULL,
    from_time bigint DEFAULT '0'::bigint,
    to_time bigint DEFAULT '0'::bigint,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint
);
    DROP TABLE public.promotion;
       public         heap    postgres    false            S           1259    245467    promotion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.promotion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.promotion_id_seq;
       public          postgres    false    338            �           0    0    promotion_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.promotion_id_seq OWNED BY public.promotion.id;
          public          postgres    false    339            M           2604    246411    promotion id    DEFAULT     l   ALTER TABLE ONLY public.promotion ALTER COLUMN id SET DEFAULT nextval('public.promotion_id_seq'::regclass);
 ;   ALTER TABLE public.promotion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    339    338            Z           2606    246690 (   promotion PK_fab3630e0789a2002f1cadb7d38 
   CONSTRAINT     h   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT "PK_fab3630e0789a2002f1cadb7d38" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.promotion DROP CONSTRAINT "PK_fab3630e0789a2002f1cadb7d38";
       public            postgres    false    338            \           2606    246714 (   promotion UQ_1227013bca6804cf7c972526721 
   CONSTRAINT     m   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT "UQ_1227013bca6804cf7c972526721" UNIQUE (promotion_id);
 T   ALTER TABLE ONLY public.promotion DROP CONSTRAINT "UQ_1227013bca6804cf7c972526721";
       public            postgres    false    338           