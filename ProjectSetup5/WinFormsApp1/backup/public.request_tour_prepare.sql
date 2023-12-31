PGDMP     0    5    
    	    
    {            dev24_source #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            X           1259    245569    request_tour_prepare    VIEW     "  CREATE VIEW public.request_tour_prepare AS
 SELECT (r.client_id)::integer AS client_id,
    r.customer_id,
    r.request_provider_id,
    r.package_name,
    t.pickup_time,
    t.drop_time,
    to_char(to_timestamp(((t.pickup_time / 1000))::double precision), 'YYYY-MM-DD HH24:MI'::text) AS pickup_datetime,
    ((("left"(to_char(to_timestamp(((t.pickup_time / 1000))::double precision), 'HH24:MI'::text), 2))::integer * 60) + ("right"(to_char(to_timestamp(((t.pickup_time / 1000))::double precision), 'HH24:MI'::text), 2))::integer) AS pickup_hour_time,
    to_char(to_timestamp(((t.drop_time / 1000))::double precision), 'YYYY-MM-DD HH24:MI'::text) AS drop_datetime,
    (r.request_id)::integer AS request_id,
    concat_ws(':'::text, r.rwidth, r.rlength, r.rheight, r.rweight, r.handling_unit_id) AS size,
    concat_ws(':'::text, ' ') AS property,
    r.rwidth,
    r.rlength,
    r.rheight,
    r.rweight,
    r.handling_unit_id,
    t.pickup_lat,
    t.pickup_lon,
    t.pickup_address,
    t.drop_lat,
    t.drop_lon,
    t.drop_address,
    t.tdistance,
    r.count_of_parcels,
    (t.transport_id)::integer AS transport_id,
    to_char(to_timestamp(((t.created_at / 1000))::double precision), 'YYYY-MM-DD HH24:MI'::text) AS created_date,
    t.created_at,
    t.service_id,
    r.kind_of_tariff,
    r.kind_of_request,
    t.sender_name,
    t.sender_phone,
    t.receiver_name,
    t.receiver_phone
   FROM (public.requestpools r
     JOIN public.transport_info t ON ((t.request_id = r.request_id)))
  WHERE ((t.request_id = r.request_id) AND (r.status = 0));
 '   DROP VIEW public.request_tour_prepare;
       public          postgres    false           