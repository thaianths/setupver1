PGDMP                  	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false                       1259    244672    driver_payment_agreement    TABLE       CREATE TABLE public.driver_payment_agreement (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    responsi_member_id bigint DEFAULT '0'::bigint NOT NULL,
    advance_pay real DEFAULT '0'::real NOT NULL,
    basic_wage real DEFAULT '0'::real NOT NULL,
    add_basic_wage real DEFAULT '0'::real NOT NULL,
    add_pay real DEFAULT '0'::real NOT NULL,
    pay_per_workingday real DEFAULT '0'::real NOT NULL,
    pay_according_overtime1 real DEFAULT '0'::real NOT NULL,
    pay_according_overtime2 real DEFAULT '0'::real NOT NULL,
    pay_according_overtime3 real DEFAULT '0'::real NOT NULL,
    pay_according_overtime4 real DEFAULT '0'::real NOT NULL,
    remark character varying DEFAULT ''::character varying,
    status smallint DEFAULT '1'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint
);
 ,   DROP TABLE public.driver_payment_agreement;
       public         heap    postgres    false            �          0    244672    driver_payment_agreement 
   TABLE DATA           �  COPY public.driver_payment_agreement (portal_id, portal_code, customer_id, client_id, country_prefix, service_provider_id, member_id, responsi_member_id, advance_pay, basic_wage, add_basic_wage, add_pay, pay_per_workingday, pay_according_overtime1, pay_according_overtime2, pay_according_overtime3, pay_according_overtime4, remark, status, member_created, member_updated, created_at, modified_at) FROM stdin;
    public          postgres    false    284   �       e           2606    246698 7   driver_payment_agreement PK_kk9d234025ac5aa026da7e95cbb 
   CONSTRAINT     ~   ALTER TABLE ONLY public.driver_payment_agreement
    ADD CONSTRAINT "PK_kk9d234025ac5aa026da7e95cbb" PRIMARY KEY (member_id);
 c   ALTER TABLE ONLY public.driver_payment_agreement DROP CONSTRAINT "PK_kk9d234025ac5aa026da7e95cbb";
       public            postgres    false    284            �      x������ � �     