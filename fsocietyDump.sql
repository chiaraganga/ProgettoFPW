PGDMP     -    7                z           fsociety    12.10    12.6     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    16393    fsociety    DATABASE     f   CREATE DATABASE fsociety WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE fsociety;
                postgres    false            �            1259    16396    utente    TABLE       CREATE TABLE public.utente (
    id integer NOT NULL,
    username character varying(20) NOT NULL,
    passw character varying(5),
    email character varying(30),
    nome character varying(15),
    cognome character varying(20),
    "città" character varying(30)
);
    DROP TABLE public.utente;
       public         heap    postgres    false            �            1259    16394    utente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.utente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.utente_id_seq;
       public          postgres    false    203            R           0    0    utente_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.utente_id_seq OWNED BY public.utente.id;
          public          postgres    false    202            �            1259    16402 
   videogioco    TABLE     �  CREATE TABLE public.videogioco (
    id integer NOT NULL,
    titolo character varying(30),
    genere character varying(20),
    descrizione character varying(500),
    url_foto character varying(50),
    prezzo double precision,
    nome_produttore character varying(40),
    data_di_rilascio date,
    sistema_operativo_min character varying(40),
    processore_min character varying(40),
    memoria_min integer,
    scheda_video_min character varying(40),
    sistema_operativo_cons character varying(40),
    processore_cons character varying(40),
    memoria_cons integer,
    scheda_video_cons character varying(40),
    utente_id character varying(20)
);
    DROP TABLE public.videogioco;
       public         heap    postgres    false            �            1259    16400    videogioco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.videogioco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.videogioco_id_seq;
       public          postgres    false    205            S           0    0    videogioco_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.videogioco_id_seq OWNED BY public.videogioco.id;
          public          postgres    false    204            �           2604    16399 	   utente id    DEFAULT     f   ALTER TABLE ONLY public.utente ALTER COLUMN id SET DEFAULT nextval('public.utente_id_seq'::regclass);
 8   ALTER TABLE public.utente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    16405    videogioco id    DEFAULT     n   ALTER TABLE ONLY public.videogioco ALTER COLUMN id SET DEFAULT nextval('public.videogioco_id_seq'::regclass);
 <   ALTER TABLE public.videogioco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            I          0    16396    utente 
   TABLE DATA           U   COPY public.utente (id, username, passw, email, nome, cognome, "città") FROM stdin;
    public          postgres    false    203           K          0    16402 
   videogioco 
   TABLE DATA             COPY public.videogioco (id, titolo, genere, descrizione, url_foto, prezzo, nome_produttore, data_di_rilascio, sistema_operativo_min, processore_min, memoria_min, scheda_video_min, sistema_operativo_cons, processore_cons, memoria_cons, scheda_video_cons, utente_id) FROM stdin;
    public          postgres    false    205   �       T           0    0    utente_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.utente_id_seq', 3, true);
          public          postgres    false    202            U           0    0    videogioco_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.videogioco_id_seq', 12, true);
          public          postgres    false    204            �           2606    16410    utente utente_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (username);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    203            �           2606    16412    videogioco videogioco_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.videogioco
    ADD CONSTRAINT videogioco_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.videogioco DROP CONSTRAINT videogioco_pkey;
       public            postgres    false    205            �           2606    16413 $   videogioco videogioco_utente_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.videogioco
    ADD CONSTRAINT videogioco_utente_id_fkey FOREIGN KEY (utente_id) REFERENCES public.utente(username) ON UPDATE CASCADE;
 N   ALTER TABLE ONLY public.videogioco DROP CONSTRAINT videogioco_utente_id_fkey;
       public          postgres    false    205    3014    203            I   �   x�e�1�0Eg�=AD���!Q�ԡb�bAH-�P%��/�H����m�g; �yR��z�} ����ZO����/��?5Zdn�9��R�&�^�|��K� ���>d��ТQ���7�E�*��l��[��kK,�;�Ņ�9��f�c`������i4��q���OS�      K      x��VKr�F]C��eR%B H�T6.ٴ>e)q$��"�&0$;0�� �x�,�#d��������{��|z��}��e���4�����$�F�Ժ�6t〈�٧���x),c������w��xîX�	RI�K�ז���U�W�Im��{BζAC#�s2�J��`]��pF���Sa�4�$M�^�$����]��ʤt%�/ı^�\u��k��c˥�o��A�R0��j�d_�H�^̴�e��f����Q����;ze��A:��Y���Q/$�n�z�0�F��L��&���F�I��h�r� �譳���;GFIN�/ijJdLI�4�^�+w�=���� ͵����4I����)7�˓+����� �+�y�w�:N.}]2��
xF����0�R��8�'��(<�m�c�ˍ������qnd��HK���ȫ�>�F[[�x_c�����"�"9�	��^��4��F�Y�_)�:�AGx�V�Â`��z&��H^*��y�D����u�h��o�P%�L�ȯ�]|/l2H������׍|ڧ�@�s�6?������3�4�D�m9%�^��2��rJ�c+$���w���c:�yO�Ìr��=v6��q�1v?{&��7��7��N��Iv#���O��0���%7���Zȓ�,��J��n��	H�0Aq�;�3�h�]40�|��+�^�A#�<3� ��*֡������Z���Z$ρ�ȃ��v_P
�콒�Y�S�_�5&.in���@d�cA[o�J�-��E,s��p���Ж�<U�&p�^6y��*7}� ��E0M��m7s�
���A��ȥO��2�!�FY����=�f�a�����1:�����6�n�	��(,z�J� �_�Uġ,�BF�h!<3�sc�]-�Q]�yՑj�5:*��ۅn6��Pꢗ���:K��T�f�&�NZ�C�,��2�ɇ��k$em:��A��+����7�η�GH��5�S�DPǽl�}��`r�z�<?T�6�gSf�`�\�/�ti��Πe)&M� �I~x���N��
�b4^non1ʓ�J�}�1���I�l�|ye��B�ތ!ktx�|
Z���L$8��V^pyGS^V�����F�Ί֗�00�xze���Pl`�r���E�Ɖ=J���'�̀�҂V�v,k��o��%�� /\���&�+���^��5:�G���[:�XŻ����0��z��!|��ˇ�>A��c:��9��(�=����D�#������D�     