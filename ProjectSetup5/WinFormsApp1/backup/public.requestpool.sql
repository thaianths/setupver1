PGDMP     0    4    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9 
    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            Z           1259    245579    requestpool    TABLE       CREATE TABLE public.requestpool (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    request_id bigint NOT NULL,
    transport_id character varying DEFAULT '1'::character varying NOT NULL,
    order_code_of_provider character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    sender_phone character varying DEFAULT ''::character varying NOT NULL,
    sender_name character varying DEFAULT ''::character varying NOT NULL,
    pickup_lat real DEFAULT '0'::real NOT NULL,
    pickup_lon real DEFAULT '0'::real NOT NULL,
    pickup_address character varying DEFAULT ''::character varying NOT NULL,
    pickup_time bigint DEFAULT '0'::bigint NOT NULL,
    receiver_phone character varying DEFAULT ''::character varying NOT NULL,
    receiver_name character varying DEFAULT ''::character varying NOT NULL,
    drop_lat real DEFAULT '0'::real NOT NULL,
    drop_lon real DEFAULT '0'::real NOT NULL,
    drop_address character varying DEFAULT ''::character varying NOT NULL,
    request_type smallint DEFAULT '1'::smallint NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    package_name character varying DEFAULT ''::character varying NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    reason character varying DEFAULT ''::character varying NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    rlength real DEFAULT '0'::real NOT NULL,
    rwidth real DEFAULT '0'::real NOT NULL,
    rheight real DEFAULT '0'::real NOT NULL,
    rweight real DEFAULT '0'::real NOT NULL,
    rvolume real DEFAULT '0'::real NOT NULL,
    handling_unit_id bigint DEFAULT '0'::bigint NOT NULL,
    cod real DEFAULT '0'::real NOT NULL,
    request_total_price real DEFAULT '0'::real NOT NULL,
    in_depot_id bigint DEFAULT '0'::bigint NOT NULL,
    route_id bigint DEFAULT '0'::bigint NOT NULL,
    service_id bigint DEFAULT '0'::bigint NOT NULL,
    offer_id bigint DEFAULT '0'::bigint NOT NULL,
    opt_payer smallint DEFAULT '0'::smallint NOT NULL,
    is_insurance boolean DEFAULT false NOT NULL,
    extra_service_id jsonb DEFAULT '[]'::jsonb NOT NULL,
    kind_of_request smallint DEFAULT '1'::smallint NOT NULL,
    baggage_weight smallint DEFAULT '0'::smallint NOT NULL,
    request_code character varying DEFAULT ''::character varying NOT NULL,
    payment_info jsonb DEFAULT '[]'::jsonb NOT NULL,
    tracking_number character varying DEFAULT ''::character varying NOT NULL,
    shop_id bigint DEFAULT '0'::bigint NOT NULL,
    my_service_id bigint DEFAULT '0'::bigint NOT NULL,
    external_code character varying DEFAULT ''::character varying NOT NULL,
    driver_id bigint DEFAULT '0'::bigint NOT NULL,
    partner_status character varying DEFAULT ''::character varying NOT NULL,
    sequence_id smallint DEFAULT '1'::smallint NOT NULL,
    id integer NOT NULL,
    cod_fee real DEFAULT '0'::real NOT NULL,
    return_fee real DEFAULT '0'::real NOT NULL,
    insurance_fee real DEFAULT '0'::real NOT NULL,
    shipping_fee real DEFAULT '0'::real NOT NULL
);
    DROP TABLE public.requestpool;
       public         heap    postgres    false            [           1259    245645    requestpool_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requestpool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.requestpool_id_seq;
       public          postgres    false    346            &           0    0    requestpool_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.requestpool_id_seq OWNED BY public.requestpool.id;
          public          postgres    false    347            �           2604    246413    requestpool id    DEFAULT     p   ALTER TABLE ONLY public.requestpool ALTER COLUMN id SET DEFAULT nextval('public.requestpool_id_seq'::regclass);
 =   ALTER TABLE public.requestpool ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    347    346            �           2606    246620 *   requestpool PK_8ffba4c83d27eaa4b4b6b93302f 
   CONSTRAINT     j   ALTER TABLE ONLY public.requestpool
    ADD CONSTRAINT "PK_8ffba4c83d27eaa4b4b6b93302f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.requestpool DROP CONSTRAINT "PK_8ffba4c83d27eaa4b4b6b93302f";
       public            postgres    false    346            �           2606    246704 *   requestpool UQ_08ce7557cfc622ad3dae8627572 
   CONSTRAINT     �   ALTER TABLE ONLY public.requestpool
    ADD CONSTRAINT "UQ_08ce7557cfc622ad3dae8627572" UNIQUE (request_id, transport_id, order_code_of_provider, tracking_number);
 V   ALTER TABLE ONLY public.requestpool DROP CONSTRAINT "UQ_08ce7557cfc622ad3dae8627572";
       public            postgres    false    346    346    346    346           