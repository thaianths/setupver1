PGDMP     -    5    
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
                postgres    false            )           1259    244932    fixed_route_revenue_summary    VIEW     �  CREATE VIEW public.fixed_route_revenue_summary AS
 WITH price_list(route_id, price) AS (
         SELECT fixed_route_price_lists.fixed_route_id,
            sum(fixed_route_price_lists.default_cost) AS sum
           FROM public.fixed_route_price_lists
          GROUP BY fixed_route_price_lists.fixed_route_id
        ), fixed_route_detail(fixed_route_id, total_distance, total_waiting_time) AS (
         SELECT fixed_route_details.fixed_route_id,
            sum(fixed_route_details.seq_distance) AS sum,
            sum(fixed_route_details.seq_duration) AS sum
           FROM public.fixed_route_details
          GROUP BY fixed_route_details.client_id, fixed_route_details.request_provider_id, fixed_route_details.fixed_route_id
        )
 SELECT t.service_provider_id,
    t.driver_id,
    t.route_id,
    t.transport_id,
    r.request_id,
    d.fixed_route_id,
    p.price AS revenue,
    to_char(to_timestamp(((t.pickup_time / 1000))::double precision), 'YYYY-MM-DD HH:MI'::text) AS pickup_datetime,
    d.total_distance AS distance,
    d.total_waiting_time AS loading_time
   FROM (((public.requestpools r
     JOIN public.transport_info t ON ((r.request_id = t.request_id)))
     JOIN price_list p ON (((r.order_code_of_provider)::text = (p.route_id)::text)))
     JOIN fixed_route_detail d ON ((d.fixed_route_id = p.route_id)))
  WHERE (r.status = 2)
  ORDER BY t.service_provider_id, t.driver_id, (to_char(to_timestamp(((t.pickup_time / 1000))::double precision), 'YYYY-MM-DD HH:MI'::text));
 .   DROP VIEW public.fixed_route_revenue_summary;
       public          postgres    false           