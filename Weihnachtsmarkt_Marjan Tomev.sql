PGDMP  ,                    {            market    16.1    16.1 F    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    16400    market    DATABASE     z   CREATE DATABASE market WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'German_Germany.1252';
    DROP DATABASE market;
             	   marketman    false            �            1259    16474    besucherstatistik    TABLE     �   CREATE TABLE public.besucherstatistik (
    statistik_id integer NOT NULL,
    anzahlbesucher integer,
    datum date,
    markt_id integer
);
 %   DROP TABLE public.besucherstatistik;
       public         heap 	   marketman    false            �            1259    16473 "   besucherstatistik_statistik_id_seq    SEQUENCE     �   CREATE SEQUENCE public.besucherstatistik_statistik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.besucherstatistik_statistik_id_seq;
       public       	   marketman    false    228            :           0    0 "   besucherstatistik_statistik_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.besucherstatistik_statistik_id_seq OWNED BY public.besucherstatistik.statistik_id;
          public       	   marketman    false    227            �            1259    16465    feedback    TABLE     �   CREATE TABLE public.feedback (
    feedback_id integer NOT NULL,
    beschreibung text,
    datum date,
    markt_id integer
);
    DROP TABLE public.feedback;
       public         heap 	   marketman    false            �            1259    16464    feedback_feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.feedback_feedback_id_seq;
       public       	   marketman    false    226            ;           0    0    feedback_feedback_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.feedback_feedback_id_seq OWNED BY public.feedback.feedback_id;
          public       	   marketman    false    225            �            1259    16411    markt    TABLE     �   CREATE TABLE public.markt (
    markt_id integer NOT NULL,
    marktname text,
    strasse text,
    stadt text,
    hausnr integer,
    plz integer,
    markt_datum_id integer,
    oeffnungszeit_id integer
);
    DROP TABLE public.markt;
       public         heap 	   marketman    false            �            1259    16410    markt_markt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.markt_markt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.markt_markt_id_seq;
       public       	   marketman    false    216            <           0    0    markt_markt_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.markt_markt_id_seq OWNED BY public.markt.markt_id;
          public       	   marketman    false    215            �            1259    16458 
   marktdatum    TABLE     �   CREATE TABLE public.marktdatum (
    markt_datum_id integer NOT NULL,
    datumstart date,
    datumende date,
    markt_id integer
);
    DROP TABLE public.marktdatum;
       public         heap 	   marketman    false            �            1259    16457    marktdatum_markt_datum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marktdatum_markt_datum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.marktdatum_markt_datum_id_seq;
       public       	   marketman    false    224            =           0    0    marktdatum_markt_datum_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.marktdatum_markt_datum_id_seq OWNED BY public.marktdatum.markt_datum_id;
          public       	   marketman    false    223            �            1259    16421    oeffnungszeit    TABLE     K  CREATE TABLE public.oeffnungszeit (
    oeffnungszeit_id integer NOT NULL,
    tage text,
    oeffnungszeit character varying(10),
    schliesszeit character varying(10),
    spezielle_tage text,
    oeffnungszeit_spezielle_tage character varying(10),
    schliesszeit_spezielle_tage character varying(10),
    markt_id integer
);
 !   DROP TABLE public.oeffnungszeit;
       public         heap 	   marketman    false            �            1259    16420 &   oeffnungszeiten_oeffnungszeiten_id_seq    SEQUENCE     �   CREATE SEQUENCE public.oeffnungszeiten_oeffnungszeiten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.oeffnungszeiten_oeffnungszeiten_id_seq;
       public       	   marketman    false    218            >           0    0 &   oeffnungszeiten_oeffnungszeiten_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.oeffnungszeiten_oeffnungszeiten_id_seq OWNED BY public.oeffnungszeit.oeffnungszeit_id;
          public       	   marketman    false    217            �            1259    16449    produkt    TABLE     �   CREATE TABLE public.produkt (
    produkt_id integer NOT NULL,
    produktname text,
    preis numeric(10,2),
    stand_id integer
);
    DROP TABLE public.produkt;
       public         heap 	   marketman    false            �            1259    16448    produkt_produkt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produkt_produkt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produkt_produkt_id_seq;
       public       	   marketman    false    222            ?           0    0    produkt_produkt_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produkt_produkt_id_seq OWNED BY public.produkt.produkt_id;
          public       	   marketman    false    221            �            1259    16431    stand    TABLE     g   CREATE TABLE public.stand (
    stand_id integer NOT NULL,
    standname text,
    markt_id integer
);
    DROP TABLE public.stand;
       public         heap 	   marketman    false            �            1259    16430    staend_staend_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staend_staend_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.staend_staend_id_seq;
       public       	   marketman    false    220            @           0    0    staend_staend_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.staend_staend_id_seq OWNED BY public.stand.stand_id;
          public       	   marketman    false    219            �            1259    16584 	   verkaufer    TABLE     �   CREATE TABLE public.verkaufer (
    verkaufer_id integer NOT NULL,
    verkaufer_vorname text,
    verkaufer_nachname text,
    telefonnr character varying(20),
    stand_id integer
);
    DROP TABLE public.verkaufer;
       public         heap 	   marketman    false            �            1259    16583    verkaufer_neu_verkaufer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.verkaufer_neu_verkaufer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.verkaufer_neu_verkaufer_id_seq;
       public       	   marketman    false    230            A           0    0    verkaufer_neu_verkaufer_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.verkaufer_neu_verkaufer_id_seq OWNED BY public.verkaufer.verkaufer_id;
          public       	   marketman    false    229            y           2604    16477    besucherstatistik statistik_id    DEFAULT     �   ALTER TABLE ONLY public.besucherstatistik ALTER COLUMN statistik_id SET DEFAULT nextval('public.besucherstatistik_statistik_id_seq'::regclass);
 M   ALTER TABLE public.besucherstatistik ALTER COLUMN statistik_id DROP DEFAULT;
       public       	   marketman    false    228    227    228            x           2604    16468    feedback feedback_id    DEFAULT     |   ALTER TABLE ONLY public.feedback ALTER COLUMN feedback_id SET DEFAULT nextval('public.feedback_feedback_id_seq'::regclass);
 C   ALTER TABLE public.feedback ALTER COLUMN feedback_id DROP DEFAULT;
       public       	   marketman    false    225    226    226            s           2604    16414    markt markt_id    DEFAULT     p   ALTER TABLE ONLY public.markt ALTER COLUMN markt_id SET DEFAULT nextval('public.markt_markt_id_seq'::regclass);
 =   ALTER TABLE public.markt ALTER COLUMN markt_id DROP DEFAULT;
       public       	   marketman    false    216    215    216            w           2604    16461    marktdatum markt_datum_id    DEFAULT     �   ALTER TABLE ONLY public.marktdatum ALTER COLUMN markt_datum_id SET DEFAULT nextval('public.marktdatum_markt_datum_id_seq'::regclass);
 H   ALTER TABLE public.marktdatum ALTER COLUMN markt_datum_id DROP DEFAULT;
       public       	   marketman    false    223    224    224            t           2604    16424    oeffnungszeit oeffnungszeit_id    DEFAULT     �   ALTER TABLE ONLY public.oeffnungszeit ALTER COLUMN oeffnungszeit_id SET DEFAULT nextval('public.oeffnungszeiten_oeffnungszeiten_id_seq'::regclass);
 M   ALTER TABLE public.oeffnungszeit ALTER COLUMN oeffnungszeit_id DROP DEFAULT;
       public       	   marketman    false    217    218    218            v           2604    16452    produkt produkt_id    DEFAULT     x   ALTER TABLE ONLY public.produkt ALTER COLUMN produkt_id SET DEFAULT nextval('public.produkt_produkt_id_seq'::regclass);
 A   ALTER TABLE public.produkt ALTER COLUMN produkt_id DROP DEFAULT;
       public       	   marketman    false    221    222    222            u           2604    16434    stand stand_id    DEFAULT     r   ALTER TABLE ONLY public.stand ALTER COLUMN stand_id SET DEFAULT nextval('public.staend_staend_id_seq'::regclass);
 =   ALTER TABLE public.stand ALTER COLUMN stand_id DROP DEFAULT;
       public       	   marketman    false    220    219    220            z           2604    16587    verkaufer verkaufer_id    DEFAULT     �   ALTER TABLE ONLY public.verkaufer ALTER COLUMN verkaufer_id SET DEFAULT nextval('public.verkaufer_neu_verkaufer_id_seq'::regclass);
 E   ALTER TABLE public.verkaufer ALTER COLUMN verkaufer_id DROP DEFAULT;
       public       	   marketman    false    229    230    230            1          0    16474    besucherstatistik 
   TABLE DATA           Z   COPY public.besucherstatistik (statistik_id, anzahlbesucher, datum, markt_id) FROM stdin;
    public       	   marketman    false    228   U       /          0    16465    feedback 
   TABLE DATA           N   COPY public.feedback (feedback_id, beschreibung, datum, markt_id) FROM stdin;
    public       	   marketman    false    226   \       %          0    16411    markt 
   TABLE DATA           s   COPY public.markt (markt_id, marktname, strasse, stadt, hausnr, plz, markt_datum_id, oeffnungszeit_id) FROM stdin;
    public       	   marketman    false    216   �b       -          0    16458 
   marktdatum 
   TABLE DATA           U   COPY public.marktdatum (markt_datum_id, datumstart, datumende, markt_id) FROM stdin;
    public       	   marketman    false    224   dm       '          0    16421    oeffnungszeit 
   TABLE DATA           �   COPY public.oeffnungszeit (oeffnungszeit_id, tage, oeffnungszeit, schliesszeit, spezielle_tage, oeffnungszeit_spezielle_tage, schliesszeit_spezielle_tage, markt_id) FROM stdin;
    public       	   marketman    false    218   �t       +          0    16449    produkt 
   TABLE DATA           K   COPY public.produkt (produkt_id, produktname, preis, stand_id) FROM stdin;
    public       	   marketman    false    222   �~       )          0    16431    stand 
   TABLE DATA           >   COPY public.stand (stand_id, standname, markt_id) FROM stdin;
    public       	   marketman    false    220   /�       3          0    16584 	   verkaufer 
   TABLE DATA           m   COPY public.verkaufer (verkaufer_id, verkaufer_vorname, verkaufer_nachname, telefonnr, stand_id) FROM stdin;
    public       	   marketman    false    230   ��       B           0    0 "   besucherstatistik_statistik_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.besucherstatistik_statistik_id_seq', 1, false);
          public       	   marketman    false    227            C           0    0    feedback_feedback_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.feedback_feedback_id_seq', 1, false);
          public       	   marketman    false    225            D           0    0    markt_markt_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.markt_markt_id_seq', 1, false);
          public       	   marketman    false    215            E           0    0    marktdatum_markt_datum_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.marktdatum_markt_datum_id_seq', 1, false);
          public       	   marketman    false    223            F           0    0 &   oeffnungszeiten_oeffnungszeiten_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.oeffnungszeiten_oeffnungszeiten_id_seq', 1, false);
          public       	   marketman    false    217            G           0    0    produkt_produkt_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produkt_produkt_id_seq', 1, false);
          public       	   marketman    false    221            H           0    0    staend_staend_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.staend_staend_id_seq', 2, true);
          public       	   marketman    false    219            I           0    0    verkaufer_neu_verkaufer_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.verkaufer_neu_verkaufer_id_seq', 1, false);
          public       	   marketman    false    229            �           2606    16479 (   besucherstatistik besucherstatistik_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.besucherstatistik
    ADD CONSTRAINT besucherstatistik_pkey PRIMARY KEY (statistik_id);
 R   ALTER TABLE ONLY public.besucherstatistik DROP CONSTRAINT besucherstatistik_pkey;
       public         	   marketman    false    228            �           2606    16472    feedback feedback_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (feedback_id);
 @   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pkey;
       public         	   marketman    false    226            |           2606    16418    markt markt_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.markt
    ADD CONSTRAINT markt_pkey PRIMARY KEY (markt_id);
 :   ALTER TABLE ONLY public.markt DROP CONSTRAINT markt_pkey;
       public         	   marketman    false    216            �           2606    16463    marktdatum marktdatum_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marktdatum
    ADD CONSTRAINT marktdatum_pkey PRIMARY KEY (markt_datum_id);
 D   ALTER TABLE ONLY public.marktdatum DROP CONSTRAINT marktdatum_pkey;
       public         	   marketman    false    224            ~           2606    16428 "   oeffnungszeit oeffnungszeiten_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.oeffnungszeit
    ADD CONSTRAINT oeffnungszeiten_pkey PRIMARY KEY (oeffnungszeit_id);
 L   ALTER TABLE ONLY public.oeffnungszeit DROP CONSTRAINT oeffnungszeiten_pkey;
       public         	   marketman    false    218            �           2606    16456    produkt produkt_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produkt
    ADD CONSTRAINT produkt_pkey PRIMARY KEY (produkt_id);
 >   ALTER TABLE ONLY public.produkt DROP CONSTRAINT produkt_pkey;
       public         	   marketman    false    222            �           2606    16438    stand staend_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.stand
    ADD CONSTRAINT staend_pkey PRIMARY KEY (stand_id);
 ;   ALTER TABLE ONLY public.stand DROP CONSTRAINT staend_pkey;
       public         	   marketman    false    220            �           2606    16591    verkaufer verkaufer_neu_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.verkaufer
    ADD CONSTRAINT verkaufer_neu_pkey PRIMARY KEY (verkaufer_id);
 F   ALTER TABLE ONLY public.verkaufer DROP CONSTRAINT verkaufer_neu_pkey;
       public         	   marketman    false    230            �           2606    16553 1   besucherstatistik besucherstatistik_markt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.besucherstatistik
    ADD CONSTRAINT besucherstatistik_markt_id_fkey FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 [   ALTER TABLE ONLY public.besucherstatistik DROP CONSTRAINT besucherstatistik_markt_id_fkey;
       public       	   marketman    false    216    228    4732            �           2606    16548    feedback feedback_markt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_markt_id_fkey FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 I   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_markt_id_fkey;
       public       	   marketman    false    216    226    4732            �           2606    16618    markt markt_markt_datum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.markt
    ADD CONSTRAINT markt_markt_datum_id_fkey FOREIGN KEY (markt_datum_id) REFERENCES public.marktdatum(markt_datum_id);
 I   ALTER TABLE ONLY public.markt DROP CONSTRAINT markt_markt_datum_id_fkey;
       public       	   marketman    false    216    4740    224            �           2606    16623 #   markt markt_oeffnungszeiten_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.markt
    ADD CONSTRAINT markt_oeffnungszeiten_id_fkey FOREIGN KEY (oeffnungszeit_id) REFERENCES public.oeffnungszeit(oeffnungszeit_id);
 M   ALTER TABLE ONLY public.markt DROP CONSTRAINT markt_oeffnungszeiten_id_fkey;
       public       	   marketman    false    218    216    4734            �           2606    16543 #   marktdatum marktdatum_markt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.marktdatum
    ADD CONSTRAINT marktdatum_markt_id_fkey FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 M   ALTER TABLE ONLY public.marktdatum DROP CONSTRAINT marktdatum_markt_id_fkey;
       public       	   marketman    false    4732    224    216            �           2606    16633 )   oeffnungszeit oeffnungszeit_markt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.oeffnungszeit
    ADD CONSTRAINT oeffnungszeit_markt_id_fkey FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 S   ALTER TABLE ONLY public.oeffnungszeit DROP CONSTRAINT oeffnungszeit_markt_id_fkey;
       public       	   marketman    false    218    216    4732            �           2606    16538    produkt produkt_stand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produkt
    ADD CONSTRAINT produkt_stand_id_fkey FOREIGN KEY (stand_id) REFERENCES public.stand(stand_id);
 G   ALTER TABLE ONLY public.produkt DROP CONSTRAINT produkt_stand_id_fkey;
       public       	   marketman    false    220    4736    222            �           2606    16528    stand stand_markt_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.stand
    ADD CONSTRAINT stand_markt_id_fkey FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 C   ALTER TABLE ONLY public.stand DROP CONSTRAINT stand_markt_id_fkey;
       public       	   marketman    false    216    220    4732            �           2606    16563    stand stand_markt_id_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.stand
    ADD CONSTRAINT stand_markt_id_fkey1 FOREIGN KEY (markt_id) REFERENCES public.markt(markt_id);
 D   ALTER TABLE ONLY public.stand DROP CONSTRAINT stand_markt_id_fkey1;
       public       	   marketman    false    216    4732    220            �           2606    16592 %   verkaufer verkaufer_neu_stand_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verkaufer
    ADD CONSTRAINT verkaufer_neu_stand_id_fkey FOREIGN KEY (stand_id) REFERENCES public.stand(stand_id);
 O   ALTER TABLE ONLY public.verkaufer DROP CONSTRAINT verkaufer_neu_stand_id_fkey;
       public       	   marketman    false    4736    220    230            1   �  x�M�m�5+�7{�Q�����:ާ�VO29�)(���szr����[~j}-���|���{��������'ʔ)�y���	���L���S�=%�kJE���q�����|����)n�g�|J�	��Fl���2˿'sJ��q���<?^���`4@�WY�bܕ�������w.��x5��d�O�y32��=��4�K���e&Ǿ!N��@U�	(���Dn��Uwg
��Z�{�_��l���s;�<��R�����l@����0�*W�%�\�$��R>��n����"��n�������2�2�R'+|��c
v
�V@��#���獨,�|]� ��l6�,aBX6;Sg�q��4㔷|�F>J�B4-�t��a��;I���)ӂ
���.���}:n��GW7��٢�[��	��6G�d��p�xz�m��j��%Y�fџ�����F��L	c��O��xZ���\�a�|麥�U��nQ�O�Fe<v҆\�b�̿��
���y%�\t��QB���"��f�?c�<vS��.���0���%�c��m�5�4Z�5���͍�F�w���ekeύ7���bMݳ�=Qk�����*6�Z{�怯k����i��f#diÈ�sܾ�8�1���꧞��vD8ݭK�T��������u����O���KBݫ��o6��)3��Q��w�حk��������3~�-p��A����s$�m�3��`�\���F�һ�f0�b�+3��V���(�8/}G5�@��|�Q���d��:�;LvO�aP���5�xLc(��5��N�)�-n;�sn���㥪�1ۤy�n�.��bS�`�1D�̰IO�v�A�g������d>�>簾/���K'�T[��
^�4=g�Ă�w���U��!�̈́�����fI��1a&)�.GIsb��U��}df�R���ƂxsO�P�0a���o���4��)�''`�;�k����<�ad�T�Rϗ#E;
3�;����.�@j�@2�	 �IeS2��I���Y��~ВK;�]dsI���T�̠d�řEc�!��=�*��S�r��/'Y�H�-�IȠ&���j�A�ݚ�ZL��(
'����A�|�ݹc�DU�r�W�J,3(E��=?'�$e��W��(q}���F+��G_��ѠH�;�����U��A�*��Q)��&����IrD	�t�^э@d �|r-ه�p�F�;L3 c}s8,3r����\E�Q����S���D���#tZ2W�_�h��1~;r.�('��|G�D1%>��~�&[�i�ۑI�
��h:U\7RZ��Ì�*�\�!��]ܱ+�Hia��ݑ�*b��i��U�*5_��y��O(�b�׷��I�,�v���,��wť| ��!��x��4q�j�|% '�T�=�߱�<����[�$L���wJ�Dqi�{��C�xS!�����fi{ao�	s�r!�A�Xq�޳_jEf@J����y��[�f�X��,Z�WM�*�ř�c�`��ٲ�cw�|�`T����D�]\⥝�kc�^\�^u(�t��`k*w^�5%a��.Z�a�������ON�+�1>�'�Aޗ(JƑ21��V3����rƁ�ghS��|:��A�hz���O�� R�3�kQ)z��o���}� V$��Y Jٜ56��6>%�CD3��#n��x�2A�ny#��-%p�#o=�1a�˻^��a�%r�a��C�dN>tR s|�=�}Uw������=��������      /   �  x�m�;�7�c�����E��ЁKv�@�����z�j4*]��p���z�K6:���x�c�{8�˻�v����i]>�/��������qa�\~y~zy|y�i��,�<�.�O�O�;����rſo�O�����������i����.�?||\/��O\\���Yϗ�[���ۺ������my��/�qWî��}�� k���|r�����z]q���M�K2���O��|p��xR>�*5��W]
��ɳk�����|�/4irt'������6?%�;����]��1��ÙO�������;��i��)��Dl�wc9~�W�R���YO�[�����aj�ш��82:w�A����j:�?�H��S�	��@�`�հ%RH�)��D!������2�������P������C����w�bhuߴ/�}��t-��bbSO��L1�*yU)��܏o��bs1RL�%䦋�bvC ��3�2�V��B��/�1H�X)��Q	�>*�jK�d"�ed��x~1�0�A��'T��Z2)RJ�}��D)�ż�)�9�H�T(MQގ���P�,��R�ԇc��g���ؤGdO���jWf�S>K�(GS0E.̑r��FkB��&L,�șr1��.���ަ@�<�4���ɍrwSx�ҩ�92�O���$ѽ0�p��,�(�J<��]"�d�z8:o����HY4�2tI��P��O��!�T��)�4�ҨtӜ���t��ok���ʦ�����bk03�xlM�TMIkE߭��ܲ�j�Z�=�����e���V�mN~��ڨ����ĥvj~_���k��o��)�ԂI� v�@-�&X Q�f������5�֖������n�Z5�>�wSW�yk��QaC���Ӹ{ꦝo�]g�a������ RO�"u��[��z1��>�ukyRQ�n:�6���eht,�r]���ق��ٸ�*�xЋnZ�� o��֪� �L�%����$�T����u9D���j���i��  �y�&��
t3� �X�nd��kY���1:H�Y؎��|�h����I��	Bxl'Cގ�Ox�IS˄�,�),@��>簗mpH�������;�u�[�"t2A a<UՁ�<�A���=�i	��x|��D��8Lp_�Kb����d�����g�����ȑ�6E�����Q q,�"��5�'Ӧ�R!�pj��8ȱ�>��*�=�R��B��3p��F��=j>�x!�[���u`C���V�9Y@��t�:��A�R��N|`䔍�Y4 GN��T��� � ����v�ZBr�F��b�#��Z4�I��[� Tr>��l��h�J��.y�ˢŕ�hZ�b��7����mp�%Ly��@L��rEI�$�y۵�@�\��&@'��7T��}r9�	��2OPE��\���T���<4Ƞ�/�l.�uuؓK�R��֛�;��N(}b}}���z�f�P�;��Lj�/��k�C$���z4t�� �䚦�R��M�ټ�N8p'��O%�*꾮��~@�\ێ�'�>O� ���A_{4����@����}���A���
�v4p���v��(�/�|H�۸�r�s�$;�|Y9��"m
0�6h������|�*�r�#�!��L�lD�O��LѨc@B�%խ�U���-
�@h>�H�m��=�*K�k ����4}壓�w� ���3��,n      %   m
  x��Zˎ�6<3�b��<�/6�ޓX`��Z�f�1����m���6�����Y� ��3�d>#S����vx~�~8���y8}{3O�����t8�G��x�l��xc���t8>�>������?_@�~���χ�	c�q�@�V��_���ϧ������/��������M0~"`V�yz_����x~?>��<�~�����$�!k-�������o���_�?�yz�����G��`�^�������SwxH�p� Q���q����m����#J��9]���:^ԉ�՛d�d���o������W����%�R��&K������p|��9��,əb�l�����p<��ƻ�L5�٠�m���>�k0 �A`�{\�5]����Y+Pܽ)��o��
8S������uB�@5f�e�@���%�C�7,uf����/��������F�I�TE0���I�4Ŏ���6t�����mp�
C����\u�|4w�@���F��^N�_���+ �!꼸>�w�9%<9�`q�u�Ǻ���A�Eq��%��C1�wI\^�kB�;C���WV�t�)�E�'@�qU;�%f>�C-T *�,.3�(fK<�UO�KepR �;X�}xv�Fي����cū]�{��Tۉy �i������1����� >}t� xī��^�Hi����;��5��q`R�#��V�^��6���=*`rƕ 	VմATu��`%��������#���-P��ZJ-��6c���X��:H�sC�P�CtC4D	iE�ל�IBV��%��=2	��V+��B�����ov����U<���@���q�ؗ�A�)@X<ݾB�m,���I�=�+�����<���;5�3]{� "�Z��3�
$�1J�[�)e��$��[A!-&x5�c��s��&���!
�"��R��`�*i��,[HM��=��
����JR�AO��ÀMI[������K��[�f�<�`@I�y�#���2N�HꙻFǠ������J��d@��沤�Om��j+x$�m�a�Tq&��JV�����9�Ar���!��%!���u�>u!L�m@N�f�ve�� �G�:߻�[d7�%J�$�b:p��G�Z���*�3��wʒ�xV����\���P�6 [)jd���N�b��S��ި��G�j�G��"=Q�5Y��%�Z %H������%J��MDA�ܛ���5��l���8��n'�($K���_M-y �A�Ru26�d+8HV+`ٛlj�:G�W �I]�ˮ�:
���ɾ	T�������A1$$ᑺŬo����2A�A(�<> �Q��m�}����  TA�T���]A�@�v/��a�P�ki��ȶ�!H5���;ݐ]D�A�fo�d'8�\ �%Sc 8! ��D+��m2P=���*���J)B��.S��g�\b�}��H�c`��K�EZ.�����k�>L���1���lKni^¾�m�`*U^zI�xg\r�$�:���ǣ��v眓�~�a���̚�J�P�<k���B�a�����X �H�\k��r�F�b=�%� , �`U�;-X���t���p�e�-�T�kٓ�:�ȵ^y����Hi,�T���G��/'��[�&l�س�MT+7����ؼ�r+��aA�>l�?J�5����]nɼ2��~��_�!qzݖ�2�(�#f�l�������;$��X<���3�|0�w�p���:;�|�q,�TKk9��â�i:�iZ��	?X ��K���g���^��u������q���9�lF����ꀳ@�-��8���b��i�@���\z䜂�/����ď]٪���@�]�����C[b�J��ިi��M" n:���"� �5�u����������2f��}���6e���s���y9.���Jv9C��`�f��~T�KjP�@�ȶ�����˙
!�%��{^��4J����s�^z�_B����n��:(3w�ٷFW����7�0x��(F�,h�)�%Yu-m�]}4��Ar�q%��`�
�*E'�H��1@�����W 8A� ^�T����؉����I����y6�%_>���N���75�t�e���`���J^C��"��r���,���۳�[�� ,DX?R_rh��XpĽ�ټ� �ද|�X���'�姛���B�{$�4�c1�a��޼.`�	�2����0���=Y�K��^{g?pԷ&Q@q,��|�Y�ܔ�d��ѽDyb�)X@����\̷��?����Wja�����7�oc�����4��C�6H��2�����Mz��7��B��.��k�#r2��m�,e��޾q�$R8Ly�͌���f�Rz_Y�d�`��q��(�o�<�A� nR�����P�b�v��gf��1ݫ�E����kZw�#L�(;l�we.�Ъ�qO8HQˁJ(��y(=��?J�sB規7(�%�����NW7��*��=�.L�403B�W��+�F�Yp*�����/4�2H�@�C�)L���9�^��/$�)�L���1�"[Mv��TxFU�v�ʮ������&��]��?M]���Zd�Oh��0W���."�tDP      -   w  x�]XA�-+
'{�}u/��u�@�7�U�"B���I����+#~�|Lr�,��=~
�K����k�s�D�J�~�?��'��|�z e�5�N�k��b?��6�ۃ��93h^����2i�CȵV�r��6����B��X��~$�I����b�>~d�sʿ�`����0Tzx%دщ�l�z��ޚ;���N���J<��&[��}<�=([ޟmۜ�+�L�\$����S��C��\q����N�'fX���イr�i��$��X'�X�H|�����+:��M�'+�eGUr,�Κ��9Hf����&l�$Y鋛{�EA��s����BՉ�~OJ��2U�:r�֡rn�XҼ"�U�T��DY�q�WU�x��C�u�X�oU�zM��6q�:��?Is�`sR�]?I��8uQ˺�X��Z���k�Pg~��I�鹵x֯	��n�]��SZԭ׊Q65���L7��K���M�����Ԟ~�"�jԜ/+yV-mR���0O��!mQ�:ҟ�8��uN�-������E��;�U�5����z�xz�0����m�?����띺f�4|�[]�g!G)n��A���?v���I=�n����HK��<�	-��At��)���z9��5��BZ�|=c=>��-8/5�B���>��G<Q+�{H�P��RT%i()�:�A:���T-�%��O����O]4��V�3��7
�#��m|L㹘9��uB���?�Qi<����7��ʲ��6:�G�5�o��N��B7Ơ�$�w?[7ix\֍�i��o��f�Y��R9��!=6�'Ӕ����M�e
͚��:�oV�-_U�7�G��<�~�����]�|Si�����;��%��_?ֆ�M��_f�]���E��2�z��*�܁ycVnK\L+@�tK�%�2.���*����h������ȬN�4=0�XJ��n�=���f8Zj�g�n�e�w�n��t]��pp�DQ��+~���x�gdsb#"��?8U�<k���V�ש₫@ᅖ�r��Bㅲ�+JjX��+O���@��������Pz%[N\�j���M'�ެ�y����o���5̩*٣��@ؔ0g�\��ia~���tNdj�0�
�4d�Ï:y'��X��WK��;�&f�.�)�*���S%����,90ﹻp� Mi�;��YuN�+�	*��E���9o��YF�$u�CO� 42K^�A��R�61�e�J�1@l���������A~��+Č�P��r9��z[���$��Fmª���ĉ����8�_@']@��@]
�Ϩ�f��+
.� M�(ɍ=�!V5y���+��##o�sa���q��.���.��@+�I������\0ޣ�`�|�����潺�8g��E��Ƃ���n0@�f��=�6 ����W�U��Z���"V=�0q�S6
U��eR�+��шUz�3��DP��zܵ|�h{]���ݦ����&���U� iV��P�ܽ�ϫ��E���k�r�w�\��X��Փ��v @�~���Ihm�]��:!�6k>s<Rn���悷�"�P�����T���֡q���ܜ��f��&�Kه�f́$�0��
����~n+ho��n9��摼z:�ݰ��<�L>X���P�<�W^���^ @s������h��5~z;t8�Pb(oǲ�e��|�,@�����峯D @W2d������ʭ�z�Y� }f��B��yfr�s�T9�|$�u�g�r�-������@��֖{��].ۋ�kB�s���k���x��E
�g�Jr�,@���'L�7VP�R����y�N��i @�xj��G�B���~�R�+�u^d�ׂ�>�:����l�М_ʣ�E�V�8�Ͻ���1�noP����GD�kܤ      '   �	  x��[�n\7]�Ņ�����*�n��h�h����-rF����'��s)�����￾������7�}��!�[L��O�ߞ��1_�����5a�|ѯ�_~|�~��W4J��O����^)^!_��_�m~3I�o_��}�{���ׯ��=���I���C�r��?����D]ߞ'lx�P���6����[Ї��n}��R�M�MkqQu� �%�:0��v��>t���<}}\�?�n�'z �G�[R,b�#��}[����G�8"��=P�< ��#q�}�������y�͔D���8�QTe�.�Bq&.Ӗ޶u�����L!���V��BMI��+��˱>���q#f균IeCP�N<�T��*@W�#��CL�L�\��E�����դ�>P�h�[<�)�U
co%�q�b�pa��Qa�3�������^(�����D�oz��ٰ�/��bw�35��3��%o�����`J|�۠OE��>���)Pn�רiac�IbJ�U�)t*q'^� ���s*SΔ(e��\6Puʔ�gZ��+z�T(�<��x2��J��	����pj���dT�(���SG��S��iPv|���5��9P�F�=�8�)G7I�G�p���s���Te��Q�dI6��VI��"S.�$�׭74�B٥��OȜ5+T�V�^�W��/��tJ�徉�e���S`�pz���������e����@�A��n��~�p#Sq)ja(�a�S"���I�j2l�NIT�B�n,�H!�T3;����M��B�N#��R5��RqXia	��hT� W1@j��SAfB��Y�:�2�H� �r�ф��*��U��
���P�����0qRg��D��<�ה� � ���;J(�T=�������8T�
��P��E� 3�Z�6 Ǿ8;������M�!�A��}V�O���jN�m�2�	��i����O$1�����M�n����|�%A3E+���2��p��r�(���P[Jo��PB�R��m}�[��4j~��G�`��:�q0Y��]�?1��N��oS�(=P�<�;�ɝ�o������lT��ݞe�l�j�'�ZꎱC��g��u-uN�z�^�SQϏ���+�Y�{�خJӨ/I��&�T��NB�m��x46U>CTP�>�3?\c����)�`��ʁH��
i�Ŏ�'x� Qn$^��W���׌L3Je�9�9�B�K(�Y-���hDX��ɏ�o4NBy8W��N�s�jT��4%�a\��ǠFt|��/X���$�D�t��Y��P�%�R��
����[�!%�Ţ,0N��H�c)�	SG:mUt;M�P�m�.�l ?zC���]`����ASN���iD��ˀ�K2���\|�x8���냶#�7�%�e�b,��c��ЕO�̾@5˹<�W2&N@P�=�G�� ����+��G�F`����rg-\p�f�ȇi�-�6(T����l:��=cwW�?f$�5@��VY+�7�&8c����6�C�A���E%�F�C��yd�`lO�j��+��w�!4�xO}S�F��͏k�ظ�ж�"�n+B����vF|Fal�8��](�Cp�Jڏ,M�T�&'3`��NW��w�=�B�V�	o��Դ���@� (�<��=�+Cp|Wkm��]u-�M���F	t���m�����n�b�>#�Mx��\�*�d9q��)+/�}�LT��! ϕj�Js|�AJ�$��	b=�]��KqKp'A0g3[��$q�a�����4�L�םo6�&��>� �kE6H�{)��Q���N���6����X� 7D�<K��K�tS ioі.��7�2���@ ę�bL�	�O�}�������H�q��:��lM]al9^��j�]�����5R�j�>��4B�R�e��~���n�Г���W���5�
]�p8��p5�a�r{�Zh��k���
��A`��DY/�� �ɝ����ku���B��  ������T!l�3U�����)�	!LB`�9��iZ�+1��%��0'�������~�X�+��f8��ν�O��0��7x��	uۦ<��k'���	u��eCu�קD��`qH��n���sr�3w�I��}-N���� �;S	g���w� 9�A��/@�j����g<bG$���5k�a�`����uȷ�7Cpp@Q���d�`<{--ڻ[$�َ+bA�Jv�l�44��)�ta�f�f֌C�]�۱����ڔ߯[���8Z�j�]8�!����*6��Pvx��9^.A�;[L�0��pӄx�j��`�BY�=�ʳ���q��+������8��޹3��؏8�1I]����q� �4!m�!t�3��L�1���	�ǿh�x�Q����5a�      +   �  x����n$7E㮯����7Å;��5`�p2�z��F��0�os��m'�mn��xY,��.�_u�[T�����������ϏOO����eɛ�KX~Zo���������n=�������������t^O����/������z^4l]��I��uI��/�7��Ǘ��ǷۇEu�e)������>}����Z���w����qU�������߿��`���&��lںNT�|}��~#����jU��=�F"��^�hb^��$�}u4�����heژnZEY��i�q����*X� ����ދ���|�A|d*؜Q|"N��I|��ŗ��\���>=>|�ؾ���&��V���$(���A%xf�݊��.���!H���F	���$!���[�%\GU 	���C1T	�Mi�4�n����IT�Ө�>�`���t��G��Y��NQ"�CL3�d1K,lT?�X$R���*���oYl�X,Y�t�މԏ4�$�ރ+yI�L֕MA�L[)�&(�"Ib��%JY�����EʶU%�\e�7�n7�e'Y�g�P�J���>}�����u�A2MX��s��XP��x�X��z�,����3Er�>_{ ��F�!7)��)N
���XT
M�}��K���L�j<�Q
Ө�UIR��}�t0	/�b�2I��X�BS{��IeQf��Rl�QRU��S�z�LB�v5Hef�F���ԭ9I��`�,u"���
���3�Jm$��&��{=H���ߺ�TS��j�Ҩ,6e�	@�(mF��I���kY��@�i,Y�Pk��w�d�6�dLe�� �����y:�֠V@�c�ߘ��&�рOG	�00��8��+��6����A��e-���gy�&�>!Q;nݨ]i�;�S�:4�ȝ������:�����k��R���Jev���_:NP,���N;Dмz��ü�<L�Q�@;O���z��cb���(h�e?���������8�@!`�~�X��5�+z�� %x�#�&�0o��;��q@��HkF�D	~Tx@x�r�X^�4��M�F=�V3�U-�L1sL��҅��^��+ 쓛	�טXD �5��g��b�}:X؃�5��0�Sl�� �&�a#K�5M`���QԿ,����a���$3�?x_c���K����D3�p*�������GD �5����L^p��@����ٰ�N9�v����51�Z�{́�U�U��{�7���:����E	M���	�
Î�x(W���\����v���I�~���a���7Sȯ�����ЯR����ke�����(����Z�GZa�1g����?a��L�e�*@+Sn�l��'7��V��,
m�]C�h�����[u��}�Ea���6̐�햛0�L_�a�j��5����`�{��\'��M��("��s�t      )   L  x�}�;�7D��S�	��ç��iʙ%[��g\~B����^L9r+n�*��a��:?ߟ�?~|8��.��nD�~�x\~�OO�W������xz:�[B��}�t=��/��������~��ȘQ�7��÷�dxs�[AZE�ޟ���zw��������>[C�^_�~ҹ��������1�ҁ��}��������������c��v���A�)|����`y�u�Ƴ+h]e�;���ap��'���G���ä�M���)#�pv*HuqvEj�G��/�H#�i�����̨9EUi�<���#sA^8�+r[����ܑG���<�M�=�َBsD!J��$���,*aS�e�}�(͝�P��g%z_���2Q����y_����Ps�%�F�:X��ZQ7^j���Q��u��Үm�]rG��'7�Ů�ڢq��+��j?A<�vkh.�[GNh��������;�mS�	}�y����{A������rM�x۽�Ǯ���j}b�;�`��e�F�Xx>2F��Q0���Q1�$#�>4�ݝ����|L�X�s�te=��p|&̅�3c�k���2+f���0�׳c����K+7\YLo����.v�!�Ql��,��r�er�/U�iһ�L,�{��E3���T�Z�~�Oq�ex�8�q�9�^��-��Ft����э;ޠ�>7��-NSD����
�"�H���� ������B��d�B�G�yҤ[��1�� U�i�\1ȫB�Ѱ�4�`��{�W0��ReYА�Z��4�6$�@�&ݖ� ���I7����(Y�E��Q�OE����,0IF-��>i�m��Y� ��7��~$>d]Ѓ�Z`�ER�&��J��M�1��Ǡh��7!#�q�Ym�� �R�Ln�J�eU2"I6[2�H6�$=JJ��4�$[�Ҥ��O��T��M��)�m���0+��|R���Etɾ� �Lv�*��ǁ)�&�i!�Mv3WD�f�69Lkr�2j���&���&-nJ��4Q�&����8YՉȓ�B��i���s�4����q-M���'�����׈�s�F������Ii�T�t����o� � ܨk      3   q  x��Xˎ�D]'_�/@�z�r�̰`�ذ�4W�~H=�h>�?��*�c'#�n/��]��]n��z�<�����`R���S.���~x{y�~�^?��_^nr[������ǰ�}�߿B�؎������L1L�8��~~�k~~}~�|�bbv����xEٛ����$ʦ�&���{7��̛כY������U4n���a����̓U�7OO���r�8?=I�=�����+�"��Д��T\bFC�y�
��_�����z<cо��1�e�0���<!�q��iʩ���ƶ��{�dl��b��tY�t �)e�κ�w����=t�=�Ah���0�-r4��xj����'k��8Ȕ����0:3���p���y� �P��8��ù��y?|�p����R�.�)��kɸ��k�Eq��I�\�����="b\o���^^�<aG�BG����)�����> ��M��rU냖w�7{���4->)ie���n:��\�ܜ�=�v�;� ��NV0+�f&4��jb�<*��nT9^M�����Fk�(�C':

*�{�̷rr/;�^�^Q
Q��G+��y�N�6v�/q���;�S��Q���kL�>�fR1�5f���m�T���<՞@�2�>�{ ��k���ǒߣ��6�vXU��;��C*H��(��E���>{j?��yf��\nd��Q�J����<;�޷뫱��A�F���m#9)=�b΢0i�r�O�p���{d�+Z�Lq�u��Q�������������?H탣٫d�3 "��JcF�2�á�sR ӧ����8)�)���	LW�.���V�.Ks����x
������(���@'?u��X�O��7��I�~��8��Gv�U}�~���G9�mw+h�͐�Ȇ��N�����V������D��<./��(~m#�#tZ�-1xX'�._�I��} t�֙��l��d1��ۢl),H�ǈ-��p�̜,QN�#%Zp�G\
����1���jU%q7{���[��'Y[h��"M�����>f���Z1x����͉]AYo�k�(i~<�v��ER|d��Y�)q�"6s� �uI�r�&.X�uU���h֫�+����9K��|ԑ�ݰcQ�R��Zg�Nٛ������}"H�dE�.=�WN�&Kt�
w0@��ģ�0�⾁�K|�y�o>�#
��#�0� �>�d���*�RS��QJN`�?�y�R�U ��FF	�cTOe,����(��L2s!�x��W��x�b'�k���Š��;�\`��x��VIaNVҸ	��r����ĺ�,.D�p���v��)�����/�GX�[�"�@)��R��	Y&K�=����">���o�q�+��r     