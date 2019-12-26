PGDMP     !                    w            jsmdb    12.0    12.0 }    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    jsmdb    DATABASE     �   CREATE DATABASE jsmdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE jsmdb;
                postgres    false            �            1259    17585    asignatura_activo    TABLE     o   CREATE TABLE public.asignatura_activo (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL
);
 %   DROP TABLE public.asignatura_activo;
       public         heap    postgres    false            �            1259    17520    asignatura_asignaturaprof    TABLE     �  CREATE TABLE public.asignatura_asignaturaprof (
    id integer NOT NULL,
    docente character varying(255) NOT NULL,
    periodo character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    grupo integer NOT NULL,
    matriculados integer NOT NULL,
    evaluaron integer NOT NULL,
    p9 numeric(3,2) NOT NULL,
    p10 numeric(3,2) NOT NULL,
    p11 numeric(3,2) NOT NULL,
    p12 numeric(3,2) NOT NULL,
    p13 numeric(3,2) NOT NULL,
    p14 numeric(3,2) NOT NULL,
    p15 numeric(3,2) NOT NULL,
    p16 numeric(3,2) NOT NULL,
    p17 numeric(3,2) NOT NULL,
    p18 numeric(3,2) NOT NULL,
    p19 numeric(3,2) NOT NULL,
    p20 numeric(3,2) NOT NULL,
    promedio numeric(3,2) NOT NULL
);
 -   DROP TABLE public.asignatura_asignaturaprof;
       public         heap    postgres    false            �            1259    17518    asignatura_asignatura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asignatura_asignatura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.asignatura_asignatura_id_seq;
       public          postgres    false    221            �           0    0    asignatura_asignatura_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.asignatura_asignatura_id_seq OWNED BY public.asignatura_asignaturaprof.id;
          public          postgres    false    220            �            1259    17531    asignatura_comentario    TABLE     �   CREATE TABLE public.asignatura_comentario (
    id integer NOT NULL,
    comentario text NOT NULL,
    polaridad numeric(3,2) NOT NULL,
    asignatura_id_id integer NOT NULL
);
 )   DROP TABLE public.asignatura_comentario;
       public         heap    postgres    false            �            1259    17529    asignatura_comentario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asignatura_comentario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.asignatura_comentario_id_seq;
       public          postgres    false    223            �           0    0    asignatura_comentario_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.asignatura_comentario_id_seq OWNED BY public.asignatura_comentario.id;
          public          postgres    false    222            �            1259    17400 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17398    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    17410    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17408    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    17392    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17390    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    17418 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17428    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17426    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    17416    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    17436    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17434 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    17496    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17494    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    17382    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17380    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    17371    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17369    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    17555    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25811    publicacion_pregunta    TABLE     +  CREATE TABLE public.publicacion_pregunta (
    id integer NOT NULL,
    id_user integer NOT NULL,
    pregunta character varying(500) NOT NULL,
    descripcion text NOT NULL,
    carrera character varying(500) NOT NULL,
    asignatura character varying(500) NOT NULL,
    activo boolean NOT NULL
);
 (   DROP TABLE public.publicacion_pregunta;
       public         heap    postgres    false            �            1259    25809    publicacion_pregunta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publicacion_pregunta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.publicacion_pregunta_id_seq;
       public          postgres    false    227            �           0    0    publicacion_pregunta_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.publicacion_pregunta_id_seq OWNED BY public.publicacion_pregunta.id;
          public          postgres    false    226            �
           2604    17523    asignatura_asignaturaprof id    DEFAULT     �   ALTER TABLE ONLY public.asignatura_asignaturaprof ALTER COLUMN id SET DEFAULT nextval('public.asignatura_asignatura_id_seq'::regclass);
 K   ALTER TABLE public.asignatura_asignaturaprof ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    17534    asignatura_comentario id    DEFAULT     �   ALTER TABLE ONLY public.asignatura_comentario ALTER COLUMN id SET DEFAULT nextval('public.asignatura_comentario_id_seq'::regclass);
 G   ALTER TABLE public.asignatura_comentario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    17403    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    17413    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    17395    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    17421    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    17431    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    17439    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    17499    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    17385    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    17374    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    25814    publicacion_pregunta id    DEFAULT     �   ALTER TABLE ONLY public.publicacion_pregunta ALTER COLUMN id SET DEFAULT nextval('public.publicacion_pregunta_id_seq'::regclass);
 F   ALTER TABLE public.publicacion_pregunta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �          0    17585    asignatura_activo 
   TABLE DATA           7   COPY public.asignatura_activo (id, nombre) FROM stdin;
    public          postgres    false    225   w�       �          0    17520    asignatura_asignaturaprof 
   TABLE DATA           �   COPY public.asignatura_asignaturaprof (id, docente, periodo, nombre, grupo, matriculados, evaluaron, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, promedio) FROM stdin;
    public          postgres    false    221   ;�       �          0    17531    asignatura_comentario 
   TABLE DATA           \   COPY public.asignatura_comentario (id, comentario, polaridad, asignatura_id_id) FROM stdin;
    public          postgres    false    223   �V      �          0    17400 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   hX      �          0    17410    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �X      �          0    17392    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �X      �          0    17418 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   fZ      �          0    17428    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   \      �          0    17436    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �\      �          0    17496    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �\      �          0    17382    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ]      �          0    17371    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �]      �          0    17555    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   �_      �          0    25811    publicacion_pregunta 
   TABLE DATA           o   COPY public.publicacion_pregunta (id, id_user, pregunta, descripcion, carrera, asignatura, activo) FROM stdin;
    public          postgres    false    227   Pa      �           0    0    asignatura_asignatura_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.asignatura_asignatura_id_seq', 1, false);
          public          postgres    false    220            �           0    0    asignatura_comentario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.asignatura_comentario_id_seq', 16, true);
          public          postgres    false    222            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    202            �           0    0    publicacion_pregunta_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.publicacion_pregunta_id_seq', 2, true);
          public          postgres    false    226                       2606    17589 (   asignatura_activo asignatura_activo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.asignatura_activo
    ADD CONSTRAINT asignatura_activo_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.asignatura_activo DROP CONSTRAINT asignatura_activo_pkey;
       public            postgres    false    225            	           2606    17528 4   asignatura_asignaturaprof asignatura_asignatura_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.asignatura_asignaturaprof
    ADD CONSTRAINT asignatura_asignatura_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.asignatura_asignaturaprof DROP CONSTRAINT asignatura_asignatura_pkey;
       public            postgres    false    221                       2606    17539 0   asignatura_comentario asignatura_comentario_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.asignatura_comentario
    ADD CONSTRAINT asignatura_comentario_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.asignatura_comentario DROP CONSTRAINT asignatura_comentario_pkey;
       public            postgres    false    223            �
           2606    17553    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    17462 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            �
           2606    17415 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            �
           2606    17405    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    17448 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    17397 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            �
           2606    17433 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            �
           2606    17477 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            �
           2606    17423    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                        2606    17441 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    17491 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            �
           2606    17547     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    17505 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    17389 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    17387 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    17379 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                       2606    17562 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224                       2606    25819 .   publicacion_pregunta publicacion_pregunta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.publicacion_pregunta
    ADD CONSTRAINT publicacion_pregunta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.publicacion_pregunta DROP CONSTRAINT publicacion_pregunta_pkey;
       public            postgres    false    227            
           1259    17545 /   asignatura_comentario_asignatura_id_id_049a03e5    INDEX     }   CREATE INDEX asignatura_comentario_asignatura_id_id_049a03e5 ON public.asignatura_comentario USING btree (asignatura_id_id);
 C   DROP INDEX public.asignatura_comentario_asignatura_id_id_049a03e5;
       public            postgres    false    223            �
           1259    17554    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    17463 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            �
           1259    17464 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    17449 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            �
           1259    17479 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            �
           1259    17478 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            �
           1259    17493 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    17492 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            �
           1259    17548     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    17516 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    17517 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    17564 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224                       1259    17563 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224                       2606    17580 Q   asignatura_comentario asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur    FK CONSTRAINT     �   ALTER TABLE ONLY public.asignatura_comentario
    ADD CONSTRAINT asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur FOREIGN KEY (asignatura_id_id) REFERENCES public.asignatura_asignaturaprof(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.asignatura_comentario DROP CONSTRAINT asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur;
       public          postgres    false    223    2825    221                       2606    17456 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2791    211    207                       2606    17451 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2796    209                       2606    17442 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2786    205                       2606    17471 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2796    209    215                       2606    17466 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    2804    215                       2606    17485 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2791    207                       2606    17480 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2804    213                       2606    17506 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    2786    205                       2606    17511 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2804    213    219            �   �  x�]VK��6\���	R�_^��LEz(щ]�L���bj�䋥AY~o��� ��h�P4�G���)��`���R�;����5��u��8�J~)���!_ȏ�����&�1�)�C7b�KN��v�8"�x��[��`��G2.\q�S��<X˒��D��<�q��J�3�+�1ߞȹ`"��������^Q�>08�j�8|:�r����e���ibg���N���fL��.��Lf���1ŕ3؏�@h�E���fD"�[#_�x����|�c4��� �F�t�(���bv���	��X��}{l��Mx�Y�n<J�n�`���_���@��bo����	��SG������� �5�B�8�|O�FUe������y=�9����K���TC��j��U���
X�#=ډtY�Qz�x�~˪��ޢ)��d��ͪ�F�6S�bpv�3�
WH�R�/���#}�81x2ORU��4<2 t|Ge�߅�e����(]���s`]՘n2Aw�ztuP��z$�q�@
U�b�v���ˤT��劘��̗\gD)�������Ȝ;�ͺ���}��c/� bn_�(�Nl���H�kՄD2��4�h�rQ"��wjr�r��,ǯ�B���z5�e�[�f�L�+Hr��?����0s�>�xN̤�B���#x�oE�d]�)u�{�8'iB~|]�3k��I�n�(q����c����`�$��@�WZ�b�p��L�� �u�.dg���u��"E�P�GH�xL�����k{�#$	(�$�6��n��@�n��)�H���M�.�$L���y�2�g�n �/������5}�I�&�o�RV�:$3�@5(�%,��D�4
�Df�y�fI7�U�D��,�d7�ڥ��|��߮\�$|9���a&��Z��q���H�n�y�m�&����o�Or_�ec�{B�r�c� N[�o��`�Y ��A��϶VаxG��?�T�I���f��('	P�k$�p+=
S� ��m��l��F:NѶی�dW��n{����^��7�,����#/e��D�0?�k�8{�_Dy��+Ԍ�⠰�"0�7+��~W�#�=r	�2n���k�A�$������U�s���&ƫZBW+�G��@1�5{Ngy��6���������z�r-�����K�^�G�f�Li(:G���o��3lP�,²gsZǳ,m��������l
���@�~�}�B�6�J��7�	����bËȘ�9ɗ�k[��ʡ>!�Y"��q"�Q[�r٢�^tt���+�`�!Qɬ�^��ڇ��mf�t{L���x�m[��=�,
�uT��͟biάw��br<��&"����c�6�%,!k�<K�v,��`�� �l���X�;�y���@VFj"D��X�{�vR�r�dBG('�7�<��.�G��h���̴      �      x���Kr�J�5
��Q�y�F�E �&DBLd��
$u���1�9��nT��zg�(4��p� � _�󛕱$Q��������f��{���z�Q����n���-��y훾������<l[�zf�<ɳ����_�vQ�WͶ�����eɬ�ٙ�{�ȋ�3�_��������w�W�J^���]�]����կ�z���E[�7�v_���͘ � �f��?\�=���e�s U��F/Y�o໹CP��@x�y�O])33�� "���u\&����e	_" h�W�ߝ�oS�����%�����]��z3���������G��/+`��?ޛ��4�����?۰p�r��L�:� ��c����Yɫ�����-���Kv/����!��T��N���"8�7|��We��ϖ����6��zuX6�Kʘĕ��ן��N=_�ۦ^��໗��_���VY~V/��Ի������������	DY��/ ���x�����O��r�*eg�>��R�g��"���ƥ��	G+,{�����+��!$�F���te�K5k`!�-��?ͯ�vP��M�PR܉y*��*Y�񶡿l�na�?KuY\�b�٢���n�~���ݾo޻�Ϻ�؍��r!��+��tj�|��`��1���|�o~�p|�a�&���AM�11�?�.z��%�<;[������l¶�*��h���&�Ff�����1�ӕp
!�wi�"������z����g�k���W���K8e���t���?��;�2�9�U��<��4��-]xe�/��ӿW�Ÿ<���[j���v��l���g�'	\#�<|�k�ֹ�W_n����'�=����dwc4y�1B��={�|��7�O�~�-:���|���%	^t�w�<�R�5Ye��9�d#�Wd7�L~f��fdS�܇O�cf`h"{9���6�S��~U�ڔ����r��Ǵ�Sz�����{�lt�^��n�l��v���k�w�r�X�M*��L�LZ6�Tt��D<����:���/���X-���ߗ�:�E�����Cl�u�������}>�}��S��:.��,��}��������g{�74 ������\/���_pB�񃆋%�[�.��y����[���~Eve��G�Ѣ���� ;�W�=`R�v��%��z���X��>c��g�KnB�G?��I�;��&UdS����A��~;���:���N8m�Z�O酰@����qDX�/p'��׳^��.���Kb�с�6�pFw>}���nyXp0ur�q'�[J�ơ�e�i�#����OX�\/��,�W���>��A��;F�%A�-a8V�o	�c���`)�����_�k
>8��?`�6�B���'a�Ql�}NX���[
������c��򢋳[��]�]���߳ގ�Ku��l�
=i�ѷ����\��5Z��C�k������G�HR�q��>�	���_.�>WI�I	�5�߆��}~�x�觇Ͱ;|��C��궿����Eb�/�]����.����Y&��>�ɇ_�z���f��k�p���8b;�v�\�mҭ���v������_��!��G9�s�G'�(mT)���M���أ���x�?�f���Ϧ�w�n���U��X
	Ŗ�U��/�x��f�֩~�/�&�dQ�C����p�(z�l��D�՟YM�d��z�H-G;��|��5f`���G�����e�x�WM�7����1�i��g�`v&����lt���b]���m ��b�oѵZ�7ZDXV�����M���}��?�#wz�/��/�b���
����?� m��{pX����`ܸ94���<`"ny���6֏�cgG�F��-�FJ�y
ZH���K���w�l�5f$��rs��%�_��\b&M��_�}_owo]�b׃y������BF�`-�> �5Zp���Q��6ȍޕ�� q r�I�%��WῨ�W��ݛf	���-�����߆�`��ٴr�O29|d#�%�y5Ǐ&���/��)9S�}�aVvA΢};4���>������v��p���R�
�<q��3XrxK1nl�|E�9%+�K8t�t�9�ߺ�9��x���+�3��q'�T%zN
~���`b��o���H��룸�/�.�^���C�b]/�m7�y���?ŷ���N/���͒���v2����Μo�2���V�g�;�zC�<(��GX6�#�`��C{O�a�~��FK|�V��������� ���
P�l�9���/Wp�ٶY��:_���ͱ��n�^4;�,������x߲z�tW�9I�I<�l6���^ȷ��)�9|@`KM$�{�^���Q�S�J�r�8�������5V;/X��G;�c9SPpt���wt��l�'%,��P����P �w�g�K��_�_���
��n���p�m[𭟁pp&�hٮ���{�>��!n���b�gQ����țבVEVT@�z��
�A]�nv��56����-�/�eC�a����Ţ�z�FJ��:i��i-����e�8�wn�+���*�P����&
k��`���6Q������Y����0�w?�	t&?DZ���y�8Ȍ�ؓ����#���;�����o�a9����_�RÀ��nӈ*��<[Bb+'ߞ|�^r{�ns9��ޛ���� �MX��ſ�OW2msI #=���KYJ�Y ��b�\`��x9!+�!]"od���/ѿ����D�AtQ.�-�%��󌋇��=`�?���c;SΖ�CT�s��	���鶻}����n��/:�������V��>�6��}�p�>��W/ղ>y���ʤ>��˂�@/�׃����a�Vs��5����0�1�ͱ����5�DIT��]<c-�|�w��7�\���
5����H NL�������t����Rfo��	� ���?b�p�3���������L{�ȃ��ѾP�4*�ǆ�/�$D^%���!�~�X�_
����9;�r�]9~�Ka��&s��9�@�& �m����ވ�\�$Ex)���� U����k����X&&�D���˯���t¥�S���WX/�-�~;�}�b����?�>Tѱy�����S�Ts�/f��!����M�2�Z.f��_DLW��7�4�2�	�6��$�����}�Y�R����S([قz�����
8z7�x��e�E��,f�/���^�Z�'@��g,wz9=�d��;̰���ȍh~�M�ֿ�}3]�li����ݶ�`�Q���֤�2����$�A�wSX��!K�&��_->d���Ͷݴ`;5�gMߕ//piR�w׼��٫E��M-��	s�"�h�.�.�E�O(�h�
�u&գ̵>�G��u��؂��$y��~v�X A_���|#n���"h�q�#2-��M��s�^�`A�K��t���r�q6�5ܢ��ϥG:b�f��B6��I;K���F��_R�D���¦>�x0��^�C�l��+}=J:V�(�����Pϕo�.���}+Δ,��ș���(������u8����ɿ�ˉqE���fy�6�,I����y�5u°W�&�P�\'+�+��5�(<�K�j�����w�H���aP�w;�����y���S�K��B�I\B,u�:���!����{��>�A��L�S��/�*=i��'K����:u6=K�i��|���؁5��6��o�w���5��"����[��6;XS�|ޑ�|�+R�e5[7ݖ�e���Ω�O/�����v�[��\��c�t+�Ϻ�O�y4��{���g��~��{
&\J��蘪#l{�,qZu��NSM��1��Ӑs�R8�k"���`$)�p����oB	&��5�N�^�IJ���v�<@XԞ�7�(�p!�%V��2�Rao#s�_!����߂/��� ��1"��> �v/COgS��AxwTE$~le�1�ͻ���vվu�A���������dJ|�!�Z����K���Cz�
�&ث�v؂��=����������'ߍon1���ZF�c��&�9�>��|�(�b����K�ݱ    �&5G���{���gJ��?�-3K���:����C�n�y	�	,0�}�z��#n�W[�n�ԫv����HqmG^�|�"�1ؾ޼H�g��ޚ��ِ��}��C�����J�U3��{�=������%�����2�iQ)�W��#n�����?�q�
-�RՓd����<�2���@^/��܋I�4E��w$�\ �%Tܯ׫�o����c@�Ce�ᅤ�ah�d*�?�>����M��*Y�����]BK!سu�kN,��%��7�I`Ӳ��M��t�&r���'`�h��aʽ�v�BIۊjIz�ڕQ��{ozbF�B�C��?e����.4����v��@�����~�Q����9 K�͠�n����e��E�aG���̇���t��bz�C�hy�/��]�����7,�%����2��0,,zV�d�O���xm����,�]��uh.��y��A��������ܦu�1���s0�8�ϸ��9u43��4TK���׿01,�՗����t|�	��]
�6�
�0�s��H��eZ�K�Z�~Х��BM��I\ &�q��vY��C&'�r��H���xʰ���p��e۬0��`�|�|� #�-�@͙��ZB H��6�{��x?%�T�?���,Dp7 ���4�eV��OP=�	�����ן�(њK��_¾1�)�������w�=s��F�����jSe ��~���q{����_�]��;[������R���Z}����?��G偫�Ĥi6��a�j���A|�n����ƭ$�lea�?�@�����2*��ӉG΍6�rs����P���6#[@�}1�G�i��|�[�R��Vjl �<\��~��x/j*ڽ�סB���w�	���~��n�?t��61� ��/{	����2)ϐ��⍞�A��1Ń7*���!]7?=Ţ{߷i���Q�.��z<џ�G��v��h�x�{�c�����3E�.��w�o�{��w�7r�->��M�;��%�̆�M7����vИH��^03��;`}o:1s�tK�W��#<�ڑ���l҂�Dl�+jU����x�F�F���|�6%�>!�p�RLЧ��'�d�H%�])��,0��߻>���Lع7�hS�~�Mw7���G�{��i���	n��8.qaX��X�f���~�k���Σ�B=5N���x��wqC�.ӊ"��a�o�����)�8�i{(��S'W���.��V$�F�l��V�
���l�+B:Oм0p0	I�Ⱛ_[N�M�H��&Af�������)���p���O��?�SvE�e������X:a`v� ei(�ó��1�g�C@&5jBp��^��L�_��̡^k�n�ۺ�s�.l�W�~QU#D�l;�=5'+�,�;ގڪ��C	.�M����V���!����_�89G�����"�8F�c�\�̹�P��C�5���Sr������l���=6ֽ�?'�䨄�����B��?�~G��sy-�F8�6I��������s1-��>c�3���F�1�]O16�7$*���v���"N�nN(��K�ȅ^Nq�0B���@	r	�r�W�	�M[a����޻�e�DeN'>��O4]�]�N;iY-,��:yד䑇�5Ѡu��C�[�{l��|�(��9>-��gr�C�+�� h�]�/Cy�U���ڦ'�~�v��pڠ9�Y9�6�,b>C�S?��9֖�������>�n��:��<�:�E>��B�f.��[ܬ�H��1I�@%�A}q�g�����P�a�Q�
@�7�R�`�a�J֜L09��V��U�sa�P�>�GGJ�}7_��P���,��K�I Q9�F����H������:������4�z��[���+]Z���u/,���
�,gT4E,�ܸ�c��bi�g��'T���zz?�3PLm�-��$��]���H��xهT�ɵ'0&b��߾J��HJe��$`e���b���C|�\�N�#p���|���q�{*6\ߞx!D=�v۾A�W<�Ձ���z��Hˠ����wL'�3_���}#
G�m27�n"�����]b �$��6	"�'��û��TZ�M�ŗc��`�a�D�;��(W�*��	,\�&�в�c��v��ܙ�����Rt��Fi&�t����	U�0������l���xѝ��2�!?l�*�VT?^��T�����Т/P^h��`.EX��&!�x���Ö6Qr� ��^vjsm�rz���
p�By��մ��e�:���U?� ��CΥJZ���ݥ�,�~Y�7�.Y����`�!=��ˠ����!��_>�8�h9ER��]��t�	)8
�
��-.��A����m�e�����m0��X�L�!�F�P��;���"e*FZ��ɂp��@;�>�||�X�[<m͢o�d�D���>$�t�?�ә�y�j��>;h`8o,f Ԍ���Z���z%*Y�fWZ�%�d2Q�)U��w>�|
q׼��܄.�%�wJ,�Ld�f
Zg�g��rH����<eOr��#���0w����������}�!��fц$�A�6��N���U����~KJ�c�N9��+Թ�
*���d��:�����+ZLB��#�G3(�JW��XKvy��a�8�a�hk���]�d FA�g�����Cn9���|9�����r���X$ĭ��K�K.��o`���B=��͊��R���V������QL1J�?��.���lH���V��>�2����ΓA���}����eM/>�FPX�ϲ)�Ƌ��ɖ�½S"K~TY�`y
ఙ4���mhC��3$56�pN�k3�j�[� ?ϐ~���O�URz,�R��O$�6��G�$R�2��ZSp*iCӿ�+˰R)'�b��]/�FZ�K��~��r���S�M4l�U��B�h%N���\(w���
�8n��d��6��6ˋ}��n�x���$�,��&*��V���ե9�b�+M�����u�]]�^�tq�I�~�H�M��W�ړNыv���̋l�Z�sq$����F7 f9976�S�r��U�)9�2`��k��O.���3�Q��2��	�2�1�Oe�Y��ɕ�O�� '�8��>��#:t�H���<:'�*L����jZx���!}=���bW���,$	��=-�H�k&�i�,�Ӝ�1ҿ�a��d�c	������4 �OL�b�~���cd��|�և�g2X������ʢ�H�a��t�������*3�IH9�*�I�jRݼt5�9 �4W]�ߺ���G�Xޚ�Y��3gcYw�y�e�@��h�y���GAO'�}��L+ =�e�")98��+�{�wLKZ��N�U~)�1z���d)�b&��B^��ԪE �_2H�9`iL���[p�N���nB�6�կ�3L�/������5y��� 
�o������1݀��4Qi���/��)�C�h�J�U�兤oӔ�͔�6��/HV��BgÄSh��8Y���'�>�GJȟZ���Jb����C2�Q[}��W��nTZ)UF�
����lGA�?����iRSnN�S9�X���U���R�AD.���gK�*��lm�^�su���l���ˑ�	<s�v;��q@<�P~�T����Ke����$!�I�$��Q�>���׵��ʅG)���KC)�LF8x�x�kw�K��&;�44��X�tb���,/�B#~��q�k�h	����
ąf�H- g�����^We�M`�7�gt�ˊ���3�~�����D�����ZF}%0i�WR��E��n�o_��������+KI%�G�H��G�	�ߗ�Xi��-�!�yQ�P�ϸ�S�3z�AL�TK���+�̏^���V�m�j��h����E�B[���}߾�t*};����$na�i��)�<�N=��懿�-~LmD̄�/N]�Z�rn3U ����:�n��gh9_�F�q�w�1�k��D!DhXE�#3��%>7۞Go�-Y    蕙��7�D� &�����v��7?���<7
�Y	>�����,��:x��D�"�81��s���ڽ7�$R]-G�g��n�pGe�Y�bd�����-?��R����T))�	A�i<�Z9H	�#U�����"ub;�:�3�P�u2��P]��[6�ݗkȜ�\T�yqA��l95q�}����0�,;"�ֶ>���b����;�Bf=S{���GL2j
k^��_Dk�$
��1���fwx?4;Q_)ɩ� 4�z`��[�m	��ȣ��5���x18�û��}����~�'�R�f4�a�̣(�O�]�RV>4x&�xW)8Uy�%�� e4'6���qB��.�ȃ�wg��m2fL�/��N��XlJ�~ۥ�l��{P~�;��+�����K����(ƀ�~�����~��q�1ڳQӆ獟�۠����r�C�g�UA%_�`t�%��J8��]^�1��]��dGSq$�����Kސo5P�R^���7A6��Ұ�T9���Ұ���@v;������Wh<�9�16�,�)�h:�V<���X
Up
s���]���(��!k`t߅��9�R���~�h�m�aAi�����Q�ɬq���|<j��ύ�R$�?�I]����\���O54rj��*[`����ӟT�{,vRWMP�<ǳ�zs[~?V���	9Iz#�ߦ\��	�JS��lGR��vG�x�8#�WS`s��}�k�˘(� e`*@
[R�^$�2�lA�.��Al8`[�Iא��bl��KtM����:Zta��R�HHc�,�i�Q����iB��3^=r*4)��>z	������W�F�!�^廛o���e^����j.�w)8��j�	����߉��P�
,G	|n�G`�nV?� p��&��`�5Č�ן�x5�8x�c�2�A�����"���}��J���<�ϛ�����'��7���َpvCΎ	=ke��DK��|�1���I.��3t�I��.[��-������x�]	�8i�"��4 ���)&��oFg����6�Qj{>C�,��|����#���=^�+���x�;re���;F�����rg�uӠL���׆�PhR������\����|I�8����|��}S�o�eH�L-������gq/d�-�����̕\���y*%/�	��)��'.�%��PL�z
6�%����YЪ��Z/��eG��I0y2"�E)A��FRܩ����TG��3��,W�G�.>V'%�%�h���_X@۶�� NT)IG���f���rGë�b�32"������%�[��[���K`�~E�4���B�4���	M9\��Uhwt\���kC�D˾����	�7���~=�Z��̛�j��~x�iu���%-���i�!`��z ]~
]������.y^�H�3�M��G��uQ��׋z��J�Ft���کG�>�?;�� ���Ǔ�O���N�.S!���˒h%D}��QDT�}:N��mzqv�n�&ŷ ��f5j�ЀO���������i�9��,�fB��0feK4������e�r �AL=f���U�|t��-�9�0�ݧ�s��*}�f��A8'���.��V�V�)�c�h�M�ƹ�n��6ɇ��C��`;���,p��'�� ���td�)�Q�{��2�kʑ)O�����p}�˓GU��e��F�xs�*�pv��5"��6]�9��bIB�nNx8���^F�D����*���urv�-��H���WVf���Ӱ��5���~7���J����Ѯ��0�k� [�x�q���e�4�=Ҷ�����`��I�1�ް���H�jT+��{�ŉ����/ ��8JEp���;-'Q»�z9`���~�/L5�An=}���p���SW<\Ϙk���yN�s֨z �������X�h&��p�l�X8q�	x�
<�g�)��:�[�D�mV���4�z���c�q�+�a�u��3w���>�ā4�¨D]췃�l��f�Q����b#�[�\�%7a?H˥�R��J��q�Y8ݝ�IJ���d@�?���AM���.�92�}U"=�����?o�R;�� ~�	q�"v��$���Y4��o��������_۷�Q��yʶ�oG��s�n�H����g��3ۏ��KV����<�V7
P���֐��};���48�~���4(����9�&?����3P<��G�q��j�yo��b�-S�3�Vr�GS+0Ly��A���mO$7'��|J����KS�o����1��!V��\�<���'#y��;���E+ϥ(5,�_6rg ���ޑT�oݲ�H͵�/��gQY=шO��	\x9����,q�N���hI�x'>�#�����{OJ�:O"TaY�]��a"V<����4H�4#ɐ2�J8�JD�� ��J��߆����n��K�_���!����h�Hv��3ܭ8?lY>��B�׿޼�.����'$�߁��t�-�N��_⑴mX�$z
�+���^��:�������)�qwT��wC�w�u�D5��O�\�^p����^އ>O���v'�<��S�}����39�k/�m��w�+<�p�P`=��o�~��8G�fQ#F�����z��H���#.��7��3vul$��<��fI-����{z��NB��$�&@���*��_��ŏ_�_�T�۟�����&͎%�������!V�4�}o�R��5����ޟ�a�o�p�A�wݩ�Ȳ#g�c
P��F�|�Od�3�c,�C�1@n���;˪�Y _%�ͿAR?2��DN�ab�
�z�v�4H�����婴o���%�OZQM%���խO�U�.�nz֕8�d/���Pr�da�J-���sG17�%�h��-^�S뛅N'�u8A��}�@��Z؞�pۙ_��u��X$<��D�6���2fE��h�"׮��đ�w�ѷ 9��(\������x��T"=��,��w�޻��2@�Yn2D#�$������z�o��P��^�n�+
#L:ʈ��bDK�8��$he��J8e|�(��-�O��WgI�EX���*��+�*����vj�a K��T�Ĩ�i��z�X�.�eb^�+�e�T;u�����dVJ�cH*�A���U���_�ߍ����8�c?7;��@(q��%	`���#�V��-�����>�筂��,�����I~��`��a����J�4-J��S1��9�j#�L�"����Lj��vNo��8����@�䈋}���i�8��>̙!FSS�E��������v�j��65�cRM�K+3�Y��h�Y7A������hH3�Z���t)��3�s��WbLqń1^i�'{�[�99pmr6�+g����kЅ�<�A�JdvR��#�If�k܀�>֞@`+��!8챹�I1V����v�����ԎzK�Íu��bQ��;��gA������.�S�S����
V;���������LnW�%�U9�4��"-g��Bǝ��@�C<�:�Qg*�Rj{<҅*�}���A��_�f���~�r�ԚN�����_в	�D�S~60�!�֯ m1�����O��_������D�V�7j��d��lK���umI�׫���(o8�t��6hQ��
�p�k��%�4@�U�]B�?��Ԉ�*��1322�ar
���օ/���*�d8@f(�oOx���ZI�	+�������v<-}{ _�+!�M�m7>�1�'́K5�X��s�7�U���%�v*���9����5vJ��ϱFNF�M�;?_���l��`Nf��ġ��"��3/)`���{p�-��󥪿��S{�z~'����n�ԫv��X����m�O�������(<f�o �n;�&%��m�G�	���q��K��7uZձ�L��P���}d�����e8J�V޸��s앲i�3��Zt����w�c�
�rBi�w�L �8ۢ� ��!���W>,&�}*���tN����%J�9n?Ou�*� ��y����.��>������P�R�    ���A���;	2M7g��N�t|�d���b�Z�/܋5AH���f���AX�
����D2-���޷hN��ߚ���L�"/E��5���=������H6�g��y}Z�7�^�����tm���q��<d���B�M}�9�����f?�FfN5�m�9��㵏o�l@���k���Ϡ*Yx�̓�γ���w^<"�bg��y�2�TF�4�Ĭ\=�-��A������9����ۅ����;ӵ4�7-#�A��L����/!|ܕ=���P��_-����aK5���7U霍��3�Y:�a�"���{z��p�t=� ��?�}���tp �t��l76h����A������)Q��`ck:�8�<ӃJ���z�S�O�]�x6s�o���[8R�׃*��0Հn?<��ސq�nN�rT����} �^4܌�����Oi�����R�et�t��\�Z��e�'��GG��������P#��'}�{��Ј��R�-#է|�aS���;Rg�5����K4�[����ÿ�;��)�;(_,��緊�sH�["��R_�z�g��[������������-��M\��Е�F��* +�
,%�(����;]� w��
M$��{�x�0�5(�Q/�FO%=;s�恋O�쥀�x�FR��W�H�g�Y��v�TӤ�!i,�XB�2��5�dȥ�`��y���B��g����x�]5%F
yW���|��R���lט�;��F0�^�%�o��6@E�[���p�������뾙��p��2l��e�Tr�T�Xeآ�<�U����vu��"�t�S�"�N�t!0I��h�}6��6�}�����#�9��K�P{���a`��)��;C�5��/2��,���A�(�e�W���2�m�f�����GSޖ���븈�
��l���KODP�g{*��fa��8\	6{蓐���e����wI'n�?���69����o���,���J=�S�p��>k��M<�#dy��@t�}W�yd�Ż��td+04����~`���|�� �G��r�)CC�'�=��<���}�|<�yd��G��yJP�ǯ�Q��b��J�Ѷ/�d��=6��` �B
~�X�ṍ<�gZ�$8c�ݶ2kD�!�*"�������B ��qo�=���+��Q�|`+!ֆ���l�R����F�&����cLJl��iI[���(Ǒ¤KxP�Ub�M�(�T'�jD2�tԫ�@cN��[W��Qu���D}v8W9�������������z6�>q4|0��[O�$�Uebf[�ȍ.r�Q���%�Z��`Q �j��'~�z�������A4y5�ae]�G�D)S�Q��U 2�Ko�Dg(�q3������o�'(Ŷʹ�X��B����R����a��?�[�k�	u8E�ז�a9d!�~���8��;&�O#.G�]�j-���I��?�4)�)-�A�-l_t��X>p�<�+PV�����ғ�`��%�rX�.q��3I\+��RR�]������ly\���;��gs9������(�yp�/�ܞ��G��GJ}��~`�hBLܕ}��lAC��:�����ּ�]fh;�(��ؖ�y��u�]떦r�D�)�
_l�?�w�lY㕏o=�zl�|Js�q�HQ���ϙ�!k�\�:�U�";7L�C]���w��Ț�j�Ce2>�Դ�Զ�K/�9�F�+u�)���DS<	�9);Tƞ�gL7���b 0\�� tnN��3lv�y6�.:ϊ�����I��~�nȯ��z�_'c]�j��N{/"RC���ީ��۞�w�8���Ë�̜r�\�s@Z��y �D�y \������s��?�/^�O�bڬ2�%j�V�P�,�������6/G�|����[v�� Q�?���D���ͷ�r��,4�fZLv�lɬ��SI[�@�\����[���J�/��n��TٸSb'a�QNC��;lx۹�U���O^(G�m�?�8����q��JL�9�BZ,i�b�C�s+��e���Dw*�p)�������&�t�i��R"�FcӉ?!��x�����h4l"�>�ف�1��`��
K`gδ�E��q����}^Ƈ�ԚZ�V�f��r'N��F��$`76lr���b�����s<�o��sbI�C7o����v��$_J'��[��M�a��0-�ɒ?��Ç��I'�<-C���Y`�g3��--�-&ǿNc�C�p�v+���N/� ��i�5MF��X�"�y���u�����I����Y�45�w���bF��|�]�#�^BЍ�����m�όhCn�3dx���φ�m��a�Vz�g�H�}�0���*3���㬰��C���i  "����R�9�	$�I�p���߱��y�yRf�L�_���zi��}��o�3 ݳ�}�)"�-��ַ��Yֶ��A½��4c��٨A ŒTj;���uk����\s�1�]�6�p�$��v�l��	�N�p1�Df`H �pm�{bn�[�1����^<�T>S|��=3ᑲZ�̏�c����H���a�?�SB����f���w!����A9��r�9���8���f������R�x�C|o�PF��,��ݪ�Q���5�D2%���r��O8�l��
���!'������h�ڭg��J?�>�+p ���`��?�qhP&�
��)���dC�H�vg.���Ў��Uˮ}�]�*��na�r��ԡXZP7D�WK+Y��^j����y4Z6YuT�~'f��kO�3�Œy��39�|6��7]�o�%:�4�*3�d����#G���F�oC�>����,O��̢�ܡpݽ&� 9�R,	��A���M�W�M��ʕ>f"�1(R��W��R��Dj5x|�G*W��;H�o��'#/VyΙ�r\��G� �	sl� f��KU@L�n��ſ:��x�:�r�`��ЦHv��bp ,r- ��6��b��h��6�ҽo�M�u�)F�J�>�ubm�.4�G�K6v^H��V��'��lҲ� ���m7\x��3G	�w8kM�KS2q87�Y�$��eȽ�({؏ �GH���QH�ì����a\9�����r��3v�8�7s���� �K<�>��$!{h�2��X]`�·z�h>����˳�f�~��%����iQ ҇����B� �vN��\g�Emǧ�4���pT˲�b$��MK�pL�56b��z�F̤BC�c'��b�1��)T�������J�H��>�s�pf���D��z�4��W�-;n�+�V��m��-Lݑ�Ȯ�?0-�u�Kdz�Z��B�_#�<���+g�פc�� ��b�z�j��{]�yh��{O���R�T�Sg*�XA���0���BU���K�4�����Q�U���Ms��GE��Fhe48�%�,�+�Xc:ڬ1U�%\��ڊ�=,w�ZU��4P"�|a��	�E�7��Ѭ9WR\�wd��<�Gr#=�\_�+�"yq�9K�_��R ������tuB�jyJ=�G	�xТ3G-M7�E(�=(��E%�_p�;����ݷ�w��͍�ox'e�9}�FH19�<Op'�_3�}{�+�`G�hA'E"ulzO0Op��ꄯ�v�d�+P�/�Pg�j>�{�NUH�`��
�� �oũv�.��y�����S�,�t*��YW�c:��&��26���4 4������C��o(B�X!?�yG�p��k	����s�Ă�m�f.�{^E�!|�ʨ�2P�a%h�x��%��;8� ��>���S��
Fm*�N���4��>譂�۫z�	n>�1N�̚��.�,Fǃ������R~���}hi�.���VV�ԵD�6e4�_z=�飷W��W���m������S����&�`���ן����y��x�6����]�2��Q�R��ѯ�r�����}���$B���]�|�{���K�`�v    ��e�K�/��ދ�.�~d�ϣc��vIѱL�e�P��_���:�gdͳ��*$p����W��|I�F�"�����Ta~������2"dwŞ��g0L��]�<I�{�m��q��F���һ~c��N�f۷� � S��#1�d��S�;]�x:D󜒱K�o����!T���ɟ!� �w_�ճ(�9<븎�&n�DW|�x��Mj1.��Uo��~��ߎ�툱�o7b�Hw��Z"��`~˖���y[��뾖�e������켖	������Y����Ũ�=�N#�h��a���׵t2Q|���h�#�Hǲ(ĬSҀȩ$l��>ϳn�������Z�0e��x\KT-u|� �.�<�E��\�R�%��`{�VS������ �o����~�wJ�5\��
[�*1*�Õ�D��U�|,�V����i��J��wVtH��*�d�h	6�b��8Xݟ����j��
t�(� ��l��TT��Q:	���F�<w\�A����4��
x6���e�-���#��<'O�X�5����Ke�PY�e܁����[v�N�[�[x�����sL~�� \��OMx1�/�F��
�xܥ�
�����SW�������q���e,�V�$r�Z<��Ԩ"
M82��u�գx���<F�"#Yg/���C|�|>�f��7K������2C�q�����E��+�>�(�� Rs�t��7US
3��r&���[b�p��78E�JQJ�����ߏƜ2��#r/&�M��g�FC=�l(ǆ�gg;,e@���	~����� �k��a��7��	����N�W]�����܊�v愩_yy.��M٦%��N��zǰMĝ��g��з��1#�FŠ�]��=�VN��ޖ�5�rO�?P�7�����ʴAz�>J�8���f
e��^I7X�g��u������7SM��p֍fz�_��o�M�s]ލ�r��E�ា���[7y^ bL�ү?�+���x�:Cpx$�x�O]}%<G�/=%�C�I1��N'�G���{7��^�����"������ZJ�~ʒ$w+��j� �g�d��~d�\`KψV\F�EZ��gfF���Z�d�+�W����W��v\,{�Cw"Ҧ6AO8�M+�3�k�#/^�"��q�0�X���)D-2�aJiJ�{�4�$ar8�8]&�rB!�@�+ȫ�r�&˞��G3�2F�k�)k�3ԩ�k�tRUU�\>9e�6h��L�4I8h�h>�����u�e�ц@LD'��z���XP��S�o��� Iy��C2̘J�@>՞, 3]�)�����]vY��scK���W����S:@�#@2_Уk�q>>�DK�M�V��9�_I��%!g
����-��m��X���d:�-��-���u�Fa��9�����p����a��o!�{o������v�����3N�p�(�H$��\M�����sj�ٴcA�B��lf�<�4qIB�����v��ã��RKv���m4��d2��F�18*{�4�}��~��D�����/��T��0�i��U�Z������e`���kC��˾���œ��s �zص�`t�u��!�x
7�`c�gcc��3⦼��O`S�g�a��>p��9ޅ��^~�E����!˼?��~�߱�A�e端�l.ښ{ �VI�=�9�{�$(ӡ�8���A�Qv7����W��).Ԙ'�N���-
X�Of��gF�j�DC^�m����F��
u�/z^���$��a�����jU#�P�k~Aj�B4a\�;���1�|f���q�e<��v�El}��as��v�xJ��s�-��ݲ!5F$�e�K ��k:n�[c�#�g�F�����ɼ�ފ6��q�z�,���.�	s�ɊF'4Ȑ��Ū)���h:fGI�9��B쀋\]�~Q?��W��g/�90���Ɛ�H�r*�}k�SQ�۝���z��ۇ4N�?)L.J�yP崌�Q�e�Ȇ�(,�T���S+C��5����r��8�0���=������+'�b�%
��߅9��A�Nery�ά�f��Rቒ}J�U�,|�;���Z�wZL���z�N����بz����n��f��ּu�n�=�&�e�	��R+#��e�%�}�g6N
ā//=�!ڦ��bM���C��',�YD��a\�߆w�5����BĪ��f%�iύ���j �(#=,I$�U�M�ń�D���O����p�N}�ҥE�
�Lۍ��RW0I���ѻ��X���=�H���8�z��/\�����惗0ck4m�rìMQ�wcu�2�vR	e]䱅n�t��.�Xp��,�n%b�jl��'�v@��x.��{�^�B���K,�~�܃]���1ƞԣ`���_�2xN�Y��R�T����zK�
��E��fw +�D����vrI�)�>g��{����)P��?�|pq�*H"Z<�Y�-��U�M�Bp����E���F��e1հ;+;�6�]�q�}W"����w£⹹P����D��oYA���'@̾a��_<
��h�-�W�U�7�`�]37�"7��:dm,���}p����9͍�l�{�<���DJ|��^��xr��s{��<#�A[�*�l�(���~ͷ-��1KI߼��(v1bP��!/��	���|�ͿI�Ђ}+4{�"����Xm�I�܃��;0f��p^���p�=���G�r��æ������g"+{���D s�. C�A��=���9d;��'��B8��	����&L�3Q�JR�����!gɠ:4��{B��<�"��>�zČ{ȓ���P�V\�Q �,;�F�	1@991�b���뀱\�SJ��m���<�D'�^K��4�8�0~J��2�򊑤����-�e_rv+8{�D���l�(��f�v*�������1��G�ؔ����15F;��S�irs$u��Pj�$�a�d�&��H��1v�fAD�9�*�T?�Ϣ9�r����EXַ���_>n���}��c���{Y��,�VJ�{�狾�_˩��O�T���;aRԗ����U�5FUZ�j�o4_�	f|���8�N���`��l���O��Z�\��<@�o�>���w�ZF�GZ��{��='e�w���k?j�K�,����"A�@��Z�������P�
#��h�W��cf(M��;Lx�z�7:�7���s��C�>M`?��Z2R�O�l}G���g�k��|���i:���h�U��p�l�`��VD���$(e��n�
�)^��zS\Q�z[�9�j���hZ���Kj����'U���L�y���,8�E�|T�:A��Oa�c��x8�|0_~���I�WZU�uPy�:�d�}��T$����n�)V�6�5�(6���D�ɸ����U��t����̂�*-���x�4��
�#�{H2��%�B�V}/P���I��6j:�Te<�!�j��T3\a�#��W
0v����,/ޱ.Kp�*%S#떛Cd��zi�%��::�ob�ј� ��L'�8ؘ��Q΂�I7$%/a�NԸc��B�G���aHn�����=��7c5����/A�9h3�^nx	MZ����m������fO����pQ�,1�Z��������»�A�]k�M8�x��Uo_NƘ���0+��=��#�c��� w�֐cQ<�x߬�0�D��4�n�e3�8��Իfu@w�z�F�O��5�n��ݾoOx�+!Eo��WF�b��Eo��U�	���	��[�@��ܬ��G`:t<kw���pП]As�g)��g:�6�*�F��Z�Y'�o�������pT���f��=��}4���%nx��`��o�I����ɺ���Asɣ���F]��ńh�x� �-!J�]�)�bdH��KCCG"� G���	%O4��6<�x��g�T�M���~+l=c�sy�n�-�i�Xz6	�I	��,��?����o��|ׁ���H��1���5���M�j��N��C��(꩟y���c&�����}�l0ia���i	^�Qo3+$    @����o�j����(Ձ[���,�Q��牊bpG�C�kCQPg/ى�)�=�$ )$f����D$rͦ���@@�x�eRޑ�t	U��^����ox�A,x�[���Z��z��~H/��{��y3x(ڣ��ğ%e�r�����W�fz��� �o$_��p^�[���bx���D#�]�R<��'�6wՍ�VF�d�5�<�W�e��y��I=���K���*{���eM�XT=*�!J̗�K�)�{�zQTY�ū��2���。xt�Q�r
�i���]�a�.�V��l=�ϔA�|ެpe������g�_� }B�M�:�%<�צ�|�����_4��1�fvb�vl_μ10A�ͺ\�p���?D{���<&S����!��l_�qf��ٞ(b���a=���s�5+�$��t�WԺ���d x~��,�&������7������Ĵ�p{�$���\���ww�+��٣K�w��I]���B�%�Ll�BUhÌ�NpK��Oo�:N ��ڜ%���g�	J��r�8o���2�IHgYX^b���⢛p�tX*2���P{�k�o�YhB�f���A�P��zU/��)�������K�����g#y�3��t�&"��"�m?4-e1ɚO�#���@mSaHUXh�G��o՗�*��n~��AE!�Lz� ��)>�Ǒ�9��D���M��V�Ʒ��vH��̄���q�t5��Ѥy�}��[�rOs"fC2J~d��F���;�I7��f#�<�n�>�lw���뼿rv����� &ߋ�n��ߴ��A���Ӄ�^o��6�g�{���'��*ԶC���9�K����s�u_����C;DY�z!CpQ��t2"|+��眻�Uw9w�0��=�V7�d��7;l��oS�Q��G��]�����d�� w�=����� z�8��w��Y�vr�GH�W��>�- �c�IT�ѭ����ؽ�ۍL��I�E��!M��|9��(H�H]5R�W����rȰ���kf�$��m3�++jP�F��~�_,2��d�:#��)Y<�6܌�N���=����%�{��.y���_.�!��<�V('�4�����tY���A	Q1؜��Kߺ�V/8v?�"+l��N���ęy�=F��֍7�b 3M�H%TWd]S��s���׿�ܧS�&P�1'A'4�+��t���M7ME٢�a�>|즢�1�':۹,[6R�K����ZQ>�� �n��"U��K����}�r�Î�U��JW��#�$e�q���I��g��0=>>er���	���vyO^�,�g�e�{�ogQ�Sɬ�_ �}�>�/{ֳt�e�,�0{�$����O��At���H��7g_��%��R&��.�-�]�@9<X7�7��8��E2�J�d��0��Wey��`��sbR�2^��؃�zr�Cҳ:�^u�����q�"�߼wsnh��		�"甐���Q�ך�E�����%��S��.£$��j��N�I-:���gE���!T�� R��/k�6�
=���]oW(|��)�@F�ش������E572���4޶*��i������O����	�@!�35Cw8����$y��i�i��0#��& a�ղ�T4SB��+b�����~�|��B,�F������[%]�rO�i�JX�$���'Nucʇ�t9��V�Ȯ&\�ꖺ,a�����ʫQSHmU�#�w�L��<p��S��%��#�=;Sp�јH����evC5�{���X����7)r|�BG��{��WS�r��G�m|�$����y��t�'{���^mX�^�$�Jq��N� ,5�.�B�$z�<˯��QŜ�L��W�tM���g�0#�������=GDi��ģ�*gAi��U��V�xF��jf�/p/�vU�Cd�6�_�y@�9�R9��)T�#s�Fh�e�`@���taz�|�-��)t����t8��347x}`wB�Vt4����&�(�'�ֳ����|���^�N�֜��s<s'��/[@�f<�����u�}n�(ӌ��'�����+������_Lw�����>���V 1�&���э��Oy���Pw#Ġ�(�J��	T�'}T��ޒ��}��$�-\hJ�����H) vy��b�ѕ��_;�9�\Z�M�'���e�|K��9�k$6q�y期}	ߢu��w	��#�1VܤPU�h^�r(�>Wt�a�$�]�֌��V&����:+h��L�A2U.�~Z�B���o
Gnp��U�����P��6o�Q�v@6�>Kp�jOJu�y"��\?��jSR�Y��S�m��8&�q&&�M u���p�a�::�����:�e�g�n�OJ����5�%�qr���->�=C�g=�p+J�w�oG\���\����I�l�Ci�D�zb�<2x:��IO��|�� ��zZ�cN�-����3�<��2ff�*�<��ɽkVЯ��k����c5����$Pg)1Absi�
W������o�@,�	����;�H���Q2��ʩ�,7��YB���+���%R�-��@�ts��+m;��C<G��y.!8�TR=���r����c9��[%�R�$}U�[I�C�0ܐ�~�g���*�u�5�[T\�f���'�O�g��sp=�(/�������lŌ����>�]����T�����`~p۬�Nl4���r��1%t����?���5Ÿ��QҦ��e�m6�}���	 �݇���9W��顋��^�_���M�(��r%MF�km������Sr��vj��o����)�B��*�	O��ؾ���a�j�`X�W8��H8z������u�)���������N�����;,�&m�D�U���fz��m��u�[h��B/?n��.J��%,i�>�W��w�k�|��݆�/�Ejr�
e��dMW�x�Y��S�̸��#4�4�;���TwʉF3xtҲ	�m
Ypf�j���K���~���E��o<by��+t��E���y:N���"�������s�މ��Fې���8��yٹ��<�r�i�9�݃7&�>#���Ub%G}�x�Q݁��r8�#8k����d�@���>(����e���iGZm2�+q�����ك�Sy�3J�rf��ȈDDȥ�v�$�J8�eE��t\�����W㍩9�i�28s���e1�	-�$�F��=Zz��$bx���6e�h�ɦR�E����.��������k/l�u��j��9ڝ�X�@��7���]*G���g�G�� �����WN���8�~��f]v=�������S�鰪>�p�31O��o+��$Uj�ӥg4��r�$��hߝr���z^��I�ّ��a�y���Hc�o�Li����h��Ld�3@���������BU>��K�����I�H���&>w�TzQ���0~t�f����%�^� �[������)�M�8a=b�9�}�	I�7=G� ���+�X-|��ب(96Rs{h>�]P���9ׇ�D��ݝ� �遄G��X/���č�k�[�ߺ���5�.3�<p�3e�W�wa�,��!�K3	G�%�O�nz��c��2��"v��χ���휹>Gt/ܺ�oM�����@�t��i��.T7��[@�d����ē/m�+�����|�몗~��iش.���?���9y��vD�P.�~EGbb/�FA"�(��ޅ�q�*>����t�:�)�p� ��лc~�בE��+w��~N��;�T�(�1
�d��u<�U�T���cK���A��3���"��9�d���t$��A ��.���x,W�hH��g��'�����Ǔ����ϊ�a��{y��GY8^�[�iN���}�&�c�[�����'C�ka�YI����A�a�A����(J����[�$0Y�,��q� �j ;�`�t����r��C/��SWO�\:��I�Od������:ҹ��/��zy��SR̡� ���z�z�0LO�Dզ}��p1    ��d�Ȼ��Z)3˷�R}�����������t�p��Ir�u=J��߿��u�똛�j���LjϥZI����$|�O A�� ~��ʱj���W8`i�����A�U�cu�op(`[c	ɻ;��U.C�k��)�)���6:�6�{v�o�L-��
[,��]U�'T��J��.�h��N�!�����=.���j1��MT��bty��H?���uH|��l�4q���ڤ���y���Ʒ�����3��v���Dc^��t;z�$�y2(bČ� �����Þ�����,�C�<f.R�k������"����m�C���]�p�c�vyIN�J��bI"ǾXt��k�h��ŏɭ������O5X92�(R�-�q�y&��QeY���u�1JWN�'n2?.�r%'&��Q`����P��O�����
|p��'\J7�Xc�Y}�1
��b�R�L�>AP�jP_9��(a��H<��n8)}��`�N��(�I�4�I[C(:ĩa�+���V�Ho~��� r��pp�1�
����ïR�CV�Q
��>hx��2�����-�$Nu���$���B�dúYl�p���a���r��Y�S/���@z�?�]3o>�YU}��Rs�x3�C��i�;��]��RKd�Md֘&;>�b���%�|��YjS�����TF&�S��`�8��
"\�3���2f}�<t�3�?�K���xW!�B�V0��.�˞qł]�0�f��>�b'����5�p~PTO	6?V��q:�D��3�Ι���SQ�Tg^�E�l��������n\�EM/D�eXo�p�7wY�o!�~nم����V��>�m�v�&@�2���kn�l���\��TK��'W\��
��7aN�-�|�Hg�*t�E�?)?{�9�moh�_55�B�	z=Xe:�'R�&�&F�U���]R���HB�f�X��ܴ�_���f�������f�o0b̿�<��?�Ȉ�SD��.�2�6��h�ˑj�(�Ŵ�,�o�8 Y|Ȕ�7�ߕU��'���N��J��+�����@ZI�{�_��Kt	m�Y�A�����lG#n�-x5p�{ҥ�o�'��׿vځ���J)	t�3�A�27��ʜ��S�W\A-g/9�?�cih0��
XY���I���Ѭxi��2�.5t;]KtZ+3k?���2�n�2y����kxM6�t"G�	�	K�/�$���+WV�Ng�P;F�U�=��:�t��,!�$)��3?+*���+�ȣ-�t4�4\?o��o�[�fy������?K�S1�p�G`VNWQ���>�iw~T�GLXuC����W��d������:�ן�85��M�sPB���A���%��Kb�J�]��4 ̿�r�UqFOs6�-���!����͔���Xe$6)��f�:Eφ�p�U����I��S��%\`}�k��%�R�W�!�j���fp��"M�2
O�Q1�U�T��q�3�*y) �` ��PR�Z�\X�y�j�ob���]'�hI� �<�)�]+	�'�MI:��{;�M����i��h������Ԛ����y�0%o���X�1<��ng�=���Bw��8E�š�ڐf8J3���i}�`���ݍ)`j�̓F��1A!�y�,�D�q�A��"�o�Xy2"nG�g
l�4y�S�@�U(�hi��롡��}��D��:�NՌ�bF:	�L��\�RЬw���2z�Z����ђhL���/$l����ȓ�&��p;��������v���`c���"�~#l*Ԏ"��?*8Jp"���G�޼�?�rᦉ���V��^]7$����+pO�@����?�~�N�v	��?�k ���v�4�0-�Z���GǞT��u���xb�2t�4��P��DM�幄��e��\��%��Z3�q"������R�F�����ɂ�8 �E�����E���<��,��f5��4O�I5a]L���������7`�^�˯�P���|� ��?�ԇ�Т��,fb�r����޽�@�3���K�E(Y�@�ҜC�IP����_ �{w�ͨ�m�s�0��*xI,�/pñ�Ao�LqH
p�>�6�=����	�����nl�;}��G�ȭ�I����A��o^�W�A��ɻ6L������Mr+lK"�ÜI6� N��S�\��r�>��nA?*"lw����\O���\���J=s�b⿒�4�Yϕ;`��}�酪;	5KNA��G[�<��r|=���(��f���&��Gn�i���糖�x���)�CC�h��r�eېz���K��;�KFY?���з<)�R���",���	�������.5�-���Emv�?�K,�Z�׿�4T!��x	���������|�k����e�R�$j~Əh�.�2|���q�	�ȶ6�&�_μfE�!� ��M�_I��4/��fw�����̐�E�D?�I�{_6�����S�����p��s����K��߅�Pg�H��VW>��7�+a#�^�w�L��t��~ܝw���2�&!��OlTT+�YD����R���ʚ5��lc������*6w�:UxXk��<�$	h�&\\ߡ�R�L��5�	��D�_�m��Y��-ءk{���
���~�V�>6�k�_�X���j�p zvTwrD���p�5�f�5�9�s��%]�g9���A��A���~�{�gS�v�P>�%2�#**0E�: �ہto��댲��c�����U4�I�L3*�:��F�D���.�����>����Bd����Y�.{Bk��jt�m��-������J��Ot6$3�qG�߁��NB�
>.t�](z�R���,q�-�n�D?ڧ��vp���\Z��\W������?y9��.v��]���N��YlbH*E��\%mqW��U�I8eq���	�~e�1�GʇWT繒C�H��_�C�*t$��i츥$ӲEV�y�ɢ-*bL�SD�����ǻ�:��Y�<W��J31M d������v/�l,��8��$:�O=��kW�\��u_�p@����lB�?�ױ��YD��'����s���L�l3�c�~��5�^	*aOU.K`<�pSf�	�[�1�E&3�xpQ/�~���9�*��E<Y����� y&)N�p�>�׻���\&�S�����ѻѯ�����lh0kLI"�TiIn�M5���3�g^�J�,,e�������.���׿����e	b�R+�N�[��OV�4ى�1���؋>�AO�����`�@�65\ο��܈$C�n�4N������V�(q\5�q5�4S�}��SD[~?��&1%�
%�s4:)�ȼ��h"���	���cGQl��<0�����,5��M˛Q�A�~ȱ��,�V���c��3�xy�vME8�Y���.n�U��f'� H �5U_��r�o0W�9ǚ��G+}�)�>�]W�/�17�8����M{� c���x��ed���I��l)_�3�����'�?&�Gy��ทX���m��|�|��Iu�S`��!@'Vk��[�a���}�]�o��'��oo�/��G���S����d�Dv�hC�]8#�	������ǎ�qd��o�����D�[�u�Ke�'Q���b�}λuS��m�c��hR�E�؊A���vMJ�ۆ��w_��A-�o�C����5�%Y��Z�c�*4��<vC�D7��$Z���6���?1�=�*lc����DI�y�Da�<�
^{oW(#�x���^A���ᚆ/=y�vD���#K��@���iO�"����ϸ����a��q�!v^b^�(�ȫEĲ	�䀹�莀�J������9���u(�r�z��&��4�B�""�����`�ʷ�a��pe(��	����Ju��C��'=�,h�����CAI-nŔ�c6T�F��JnzrE��{5����_��fΛ�>�Ei��X�O�%��k�)�    VX�  �XAV������B<3
��tK�L����D���k6L'x 9=�����q�������!(`�����|�����Qܖrŗuh<��~����u��"�ɛ1+c�=#� u�L�U}��,����0�E1,x>�L:�8�_���0�O�n�s=�B:y?��`<��Q�Y�Xr:�2�k4ʵdX�D�*6���D� �7AC���t=�P ��2����Q#Qُ}�@]�q�N�Cr2H���v�VJ!�H��p^,�z�,ɕP�b�`C�s�y)�FQ/��w�TW(�>�7���a_�f�k)�0��ǥ�1W�� ��k�k��|8L����y��uĩ|!S��s��\����֐>E��=�<z�Y�R��QZ��|��{���E��.��哟�0S^����2�?��{�Z{���U%@S�C�T�Rө�ܰ���\����.�V/ۖ���l�=��3�)Il�xdL��m4�5!�4�H?c*^�/�o�+�T3�����e�ߨ'�CQ%�|�C�D�z~�ΐ����bGw5�vL{s\��F�ۣ*�����|(�ў���w���x��j�ȧ��e�@�v�^�V���������]�ڄ9�U�	X-���`�`�,1��{֢e}9ʳ���Ɣ&T�M�N� ��M:�
ו|p��l�Xm��|���!&[�m��I������Y�,?|0�T^���.�j1���9��U��gW�aȜ;�Y�<�_��K�Fo���-&%�*���яE`�mo����:�K�D6�eQXy	�:�_\r�x�T~!L�	����g�[ W���P �+8��� S���:᷽��A-���x�4��l�$��՚�I��>(����YP�R�su��w�v��L�����9�T�G�i$#�=x˥�\Ӱ��\M`�J[��>��h0iebg���K��m�=�~\FQ\R����,B��l�K�yJ��
@�>������d�B.OJ�Ԓ�5�x�l7�D�&1 �M댹	����#h�����2��xcC^G�R������B�����-�")�-Y�~�|�e��)�_ˍK�>�i	����}<T^�F�QLNU�xe_�׋�-|tc��.8P����&��`#�/��վ��,�9�}eRM��W!�y2�%X������:T�ɷ�U�n.��� fp��s��U`�PY�|5�[��`�͓��U`�\uZ}�h�/��W�)͓!�ud�Y�'�~ב�T���ydO��#�͆T��f�#��yϼ|+�Y|6�e�O:�@G�댝�qTF!.��z��ia/Ǒ�p��k֝�fR��$��~��x��T����#Y�
![.J�\�?K3ܞ+n�$(X��@jH�ݱ����lӯEJE���c�א".�p�[�PhS;b��1�zs�!@��eU�ȴ��F�{��Q�'���FW7�+T^G^9G{��"0ߓP�L����KeL��'��S��۪���"54"�Ž ��<nV��V��~˜�x��	ww��+&���>�pˇV3ٚ��m���&����e>ڴ��(��o�̍��$T�9��ܫ�翎'?���jވV�xJϦF
�D�D2ڦ˺��"�����M�%:mm��LPFH9\�kX�ٹϱ�P\�S5b����x����`ҰšBd���ݣ0���"��I�?ў�2ӗJ��m�D�̓��݃Řo�v�06��ڏ�W����L3�<�I�&	��2�\��ٞ4:�����L�˞4�w0��{��_8�������9��UY�q�HL���p,��B�UsB'&�o��6M���G��A�e��nڏq�62�����2��l��M�5O�U��eC��N�������~�r�U�1�|�l�Z�ϴ˙O��q�;��'�D�ķf�±b��R�$>3�-C����l�V�G��x{��Q�Q�@\i_j� ������1�gJ0�o]�_��3C��)��.�4��3�V=s#:�?ܼ��Vz��$w�P����^kr}����I�N�K��#���r�O��(��c֋%��w�U��0x�ň\��� ���P&���I%���.��s��\��+
of�5��P�@�R���;�)�f�N3&�?�'گ���Wy�����[��)����ޮX��`�n��uC@��>R{v*��ĸ�$�s%LF�H���Sk��5����lE���S�<���4����sI�e��c�4�4�G1�ģB�B��� g�i�H�t����)}E��M&����عQ�ǜ��!
�Ȭ�FA"|�
�)��u��=�L�2�W�)a�cL����<gZ�Pc��(ў:�R:J��$�K��E�Dolu�s��x���k:�c�*�qT�]��L*ݒ��N��B@R�+2���9���j����8A=><K !�{0xA�2�]��CʽO2��,O^�<M*����I�#Ӎ�
�J�<
poI*au�޼�A�օ���xO��!�b+i�IT�W���ؚ��f>�����7DK�	���}skl�\��DW&j��_��"�O݊O`6d��Wծ�\�Ϥ��Z��SJ���U��ˏվ>���e�M������'�}7�).o"���r	]dۢT�/��ϛS�����]7��F�������)*�4LV���\6+�`&t��2fX�k����nѧ��k�!�w�>�8#ǣ�s߾�	�U�"r�X� k��'n�%+f���G�ڔCi�y:�T��"������i�����vPIͧ�M�C�=�}Sׇ�M$���d��g�yIuZ�bK�=�- ��x�P��w�����p�{:�έd�?��-�j�F�B���d��6�d�����G)J�	�+�D.����FS�L��6.g�|#�kp�Gi�-�A�1���>�T�g��5x9�j��_f��@@Q�G}5A���p.�2���T��d��}�`@V43}F�K��Ni條��K����>��hm�m��o��T[���Kkѹ"�6��� ��j��7�[�87�T��Y�k ��w�DO �\�4�w�,�@J�~���U�'�lQӦV�8��I`��_m�p����.�������}�s��� V��)	��9Sz�cd�39L&$�����{~��S� �j��ʹ��zi-%㮹�T���j��ѧ�XU��o���U���]�s$�X�(�QcL�\�`h�[dZE
o��W9������X#���u�_��Fݑu��sPA\`�K�`��Q���MS�qΔ�o�i'��]��&R��{"�tCG�T���B��g��V�ۦ]��e�0���V�����jF�&��HNv�;4�73�O8͔Y'���I$�O��l�&/�~�[J��Z�.�]|4�)sX�Z��W��!�ڴ��b�ѷK�"D'���7�sHT�Ť<�)�R?��c,B0t�Ԟ�>d���Qϰ��%�����AUjbXBn:
�0 �gO�QO���׹y�R���G&$�� m�Hͻ��l�e��\L��NT�d�H*�i'.�:�4t�(�}ߠ a���s��j��MuJ��E?�Q|��5��K�D f�t`z�C��:��+�L C��\5���� ���I�/�9#�ܽ�g��0~_� ��Y*䟰�1�d�3��X��R����8&��Ĺ�W��8�X�dO'
�m�s`^xH&k�T�4���~i����&\���=�v�pa�Nyҫ����/ejd;ėDĜɃ; �H�Z[�z�z$�S��ĴODu�lDQU��ʥ�9u}�D���K��md��v�Y��I�Q�@�λj����$7���ږ�Ԓ�5Y�R������AR��;0�����,6���m�M�n�<���s��N���Ü�Ls��ld��!�v.�"�f��
]����(Z	X����77�Ϋ��=���{	-,�����i_��	{��X���6�*{������Z���d��aƷ9��R���ޡ�kK��im@z���U��yE>C��I�W.�g7�	����XP�J�̑3ʡ���B������{��K��i׵uE��=    _�6ӄ/�H6!ө�BSn�{�9�ٿ��ƢZl�7��:�؝y�i1O��Jn�wtΉ:����}\%SSq.�^�3o����l����cWǄ��3XeV�~�/���+�/rm�.W�2�^�\�X��n�w.�'�4�~�+^V�~�k�i���p�Kv^B�.�-�?��Rmm�I֨�����Β�pg�S��DON�a�+\W�K��`Θ�����,�M���lV�i~��Y�e�M�y��
����B�F������=�'	 �ą�oj>=�Z޻���v�����-�^�؜{7<q�裸��L�0����@Ǐf�^�5������Q�I��x����Ӊ7J6�Q�C/�A��bd��������ږ�n��(�j$:���o�)g@����RH����~ċ��~Fz��D�#��Vz$t��%p��|�DpsLͭH��|~��M�hG�
!�"6m4�}%��Q�Λ��SU��v"FL��>���O���y�p	we�S}X=�|��)]�5Rf`I�\�PJ=����Jn����cG�dM�uO��`Pê����������3����[�ܢ�C��FQý����Y����B�Z:��.�dǮ����&u�����S�ٱ�_v��
��� �<�K�:^Ǳ���=��^��!O�p���fv�� i�XG�+���Ц��v�k��a&�Z%�D��Y��a#���l�1�V�gKf�������e.2�ͻݬJ��˧�X3�L:�Yi�L#:6�T�$O������e-����GOw��2��)E���THK1d�\��͑]���q��^�@���oR��4ّ�
�7�W�PO���f�6�*)'&e,�|(9�G8=j��Ok����[��4��.���ɑF��3޿A)��#���i�.I^=��۠ ��eG2�/�#	$Uu^��-���Rcr��K���<n�)s�7�W��Lr�a8:T;T �=� ��srAj<�
6/����Ο�w���oJ���ߤ�/uc��}�����o��&T뼏��+����AG�F:�$yB�?�u��3���}��k(�d�g�}̷��p���{Saj��K<�%Q{*׷D���늜�%`����"i��_k4����F�G�dz�YE_�J��צ�\���a]���8kl�?��3ԲFYR���X����"Qە0J�OW8��g�g�����`��_��37��Ddya�,��Gv(��y����yg"ѤYC�}[j�+���Λ���#����p2Sx̶�����ݟIL}�)yc�!�X�@�Rl�.l�[�'�v�Z���<�$����s�
oZQ�*�^X �g�:��i�9��"�/�kæs�2^iҳ����
tjU*����n2n��\�|zO���x�L���2a�Xgٶp2M���lQ?�(��3l�^��P���,D�����{�5⁖I� /�M�r�Xn?��gu��!�^{|G�f�Y�6D/#X��g�߬����L.�LӽI�Y�-�XDDW<�x}@<]`xώZ��'.eaKf���☦���`����R������k���'^�OE�R�x����c8�.��h<��Y��S�S)��V#!$��N� 11��Ѹyߊ�Ce���8�y��:}Z�!�2PV����'��j�"w&�F�Js���,�"�X�,d(B��0�vS�p�n�*M{v����e� �@=�F�4������:��pu�CP����r����K�#���8�c�T�����������ɩ��±Q��,����`h���h��fA�%��Ds)�o�����[J��id��};4p�5���KH��+x�=�`4f�֮��wA�=P,�0��0�� �7���4G��7��đ��C
U�Y�Px�ި�t�����t�z������#����/��ǁ�@	�'�"����ۆ���L!�+�yC�]`�?�Gt��G�����CF�9 ~9�T��9��Y������6g>P�\b���H�z ��Z�{�\�d�7m����B�֫��_��8��sdu�t�p��@��_���g{��wpf��C��&��K�e�4��|OJg2��V��N�)���k��\s�ap'V��$
	�c.'�M����������-�X��k�0E7�Sg�q��'��q}	D�Nӭ�gX��&q 87�%׊�f^$a���
���_���碠���\Њ\�O��~hg�K�!h��an�"���1��lm���s�:�Ҧ�#=���Fѧ��`"���^��e��ͩ0��`��oj썝\.����]�)XV��t��rQ0,��C��X���s���q�K:X^�7$OQ�N��AM
�F��v���X򜥒��o�-)U?i�S�6�%E�*W 7������Zq00g�t�՝W8O�\7���4r��\�̢��~a��H�������=4�P���<pP}�t�aN9[�GWu�q.�<�F���?E���q�ߏ��G�����M����K�8�/}��0��6�I�9��9��Y�+� ?���ֆxCRM�/��V���܆_B}s�y �/h)���(���Ts'*h�PP<V�/�y�gνqwJ�g�o#O��׬��.�9r��̿�f�R��4�t��(O�i2;�Ӷ����L�׬`�YfX��V���q�k����H�k:�
�L`i�V����<ŉ�mͺ Q�W�J6�\)��-T|GN�_�}S�n9r�b��['��#����/0�G��I�CB���[���
<Spmq�yd��#�̹\�ӻ�+�0�v؜В>4�BŘ�0�bI��egڪۣ:דs6����j@�<��V��#�\�Q��c���v}���t9�:��{�1dܜȦY��
�����}H�W8膕�1�h���.Z����wr�ep���q�tff��闬]�qވU����7�2rH��&c?}\�X߁#��ı�3&��fB��!�,���ڼ;�T�~��FAN���0��;�
�t:^�"#��L�?��?d#t�߄�}������L���zDWޡw����Jƈ��@w4`��aF�WQ�w<�8�D#7�<bǱ����u�h�/�v��f8i�⟫��>,�?p���?��L�cKBm"�hF���5����b呞��&X�.ծ��^p�5��=������*;X�yɻ{��A�:���������S(3`V�|�LG���C�:�� �a �f�MJ�bW\�|7�o\���Y
�t����<֯��g��C���$:��SR�.}�^Rá�Jݑ�V��C�F+-˅@!k�,�Lm���L��I������r�aE��V/���bw��g����(�P`�a�L�P�WyX�Zz�e��Z`�TM��*�+�����۶�ެW�����3�L�-�Mh,�N��5~���ӹn���Iړ^��T��L���DX���)��lP0�2�DeG1Z��Y�~������� 8��v7O�N�� ���*���&	R����?�G�ս�5ߣ3�/����l�^��e�>����{[�"��,���ĩS(vk��,����ϸ�����,���oB��x��SUY̴5UI1_�o"���j��4�I3%.,ߺ��d��ÿ5��x�{ }�����M��eIRDM����6<�'�ue��yЕJӨ6��C��f���]�<)A���J�]G��Es��Ѭc:���^냊�/~����"������g [�v����y�~-�#�m���M#`S��K��]�bX�I��w��}z*��ړ������d�I+]���DCKF �w���:�4��sM��~����;�bۆ0h��*��CW�Q4WH�Yr�yě ��╨�z��E�	ۘ�(5�z|K��\qP�):T��vm��3�i\��jQʠZ�11i�d��P#
�(����h���T�)|i����ོ�~L��r�a�I��Sj���{�����R�id�/��i�hkP�m�n17�z>5X��y�g@Ƽ�h!y��|"    �����9�f<��{��pG���{���[�Ƥ�޸V��,�Y���N�D{f�ԭ��V�i����QѼ��Fd8�1���E3fq �`H`q��⹤�Yn_O0��-��b�,�~���i�mX����Ձ�B=�"�{~�y�K��O�6(�$�����Z��S�K���Q��c�<����{+
�3#�|��]��]\�=c�m�l�������؂MS����%���-��G�zm��g����a#~�MMiY��?�HK�R9~�֚h5�o��F�Ik�md^,���.[_NP���t�?�7�z>r�e�w͝�Q��V6�U#3*�P�]或{"�QZVs����L�hJ�t�P�\�[�m��K���aM��.o��y�}�:wV���Мv���z���M��}�f��DU�{=s�BYU����$�g[���.[�&�t6�0�I2���+x5�Ce���03���,�r՗J]�F|]�<�ne�1'�Qly�h���&��G>�tM��M�᱄�J��NsƩ檿����u��F ���v���B��F{`>�l��v�C���Chp�f`�Dm짶�н�OJ�6+���I�b�a�($vVǔ���1�I楰 V�D���m��6ǆ�c)}+R4Ϭ����*t���o�zo6,*�A7���pge��85�f��!-�b�!uCm�wL�"�<���H>]����Xj�w���y�J,5'�BY:�Z�r!z�t������7/D\(�\�Q�k�SP����W~�ҳ���6x23��IR_�I>b����;11 �2�Kk��jQӢ��ȧ)/�����l�H�%���H�`��Z��/�:i�@o0g��7 6*Q�T���x%���bA��o9�+a��b��dɀ������7�E��$�V*��Gm�(2{"�Hm��\$�$��Ƭ�싡i�>��~��|�t!�=�
?�Ǆ9^���u�YG�GJw�b�^/-�F���@���!��Vo�aN���;o��d4���	���Y���)���%r��b� ڴV�GHFRHG�� �%�v4�ǎ�<�P@�I�D�E�c�
3C'�D��VYW�2D*��3�¨��B/��G�[M��������8���r0LP��R��5Oi*y���&�k�-�VtV�߹�t�� X3iaU/��*i4�L�cr�M���i�ge�ׇ�$*��]�a���o�?�f�Dn��Xx�bb^Lpg8e�����z��"��;��uׁ�NBa�� D��-�Y �ƫ�=v��e k�^������� T����[�}M~c�W<�<�j-����&Nj)��I9w��E(���5���6���B��ϙ�(=�W�4�o�T���g���$�{�ƍ 汖�G��ߟ�˃�L�0w{/'������8]�RI�RM@::2�S�yY ̷-��p��W.�Y� f0�؃�_m?�ܑ���;(���pL�G	hLT˔s�ʇ��^��=�X�V>�3�:��b~h[�����۩ىlXL<Nu�*��R�w���� �32�|~�V4#��1-
�aD)lԍo��\xO�.��C���3ѴC��	�:�-^��j�zEr��Pk�g ���7K��G
�r�]��b���)	�#���C/�}����xV�tϐX$ъ���P�yu��(��J6H��><1�N����v��REB��>��dX�y�u�o'8g�m��p"ލٲ=��E�>-����fn�[R]�o���y��_ג �O�W������/�"��lĜ_`�k!p�\��3�@*˟h�	�x�q��L��<B�.^�:�Q��6k1�=�,��R�^��� l9,�8v���*�����y�!��~4�w�����)�_u�H��jɁ�	s�D�
a�)N�ʧ�@<P9PB\�)k~U��$��֥���[�*:3�	��_�W�-��k��)_��#�����^~�.�r_�hn�,&�O�%�˾�Dd��d���W��w<���S̹Ɋ��k`�f�U�e0�g�#WI��օH�����΅�NLa,���B�W�e���*>;��,҉���q�;ͻ��p����jخ!��!̿a:���5\�]Z�s��.���)���P�p='�~WN���	/��L�� ���t�mVNrz��+��m���sZ�uN�/�/�I�_t_x�`��s:�{ӥo�3NV��O��ש1��E|KG��}�G���qr���<�xh�Qs@z���#�Ʉ���EkI�EI���#����*��APo��zs4�xay/��[fkYe9��X��pwJ2$a�i�(LL=�������꓊t>���ˏP-���X�ؽ�K���7�.�"����e�^�s��jP��&<:�!U����#g/'�H�WZ�$�"�ʲ9�����B��ġ��}/oe�K��\W�W�J����i8��[�*�ҷG�2�����\t�;?�^T&�)�0͊ ���xZ��$�uh��7��	N%R��eK�5�v����b����j	ōD~KǪ��ܑU�t��@R�04RpV�8%�J~c��P��rb��zY9y��fwF㎚�#���hӮ�r��ՙqVKN#9Ҡ5�����B	����&d٬��}���ʦ����^;\B�'Jc�U��>swsXaW3��r][L\���$6�1U��r7��lW �a���͐��9FY�g���&>�!��07�����ԡ���,��.���h۝�wD+۹9��9h����Σdx5��<	)��l>�u�T�\T�8e�1�p.L����x8�$�Nf�Q�fINj`�xX(�?�� ���C]OƬ��i����0��' �l�~\ԫ�� {j����pC�W��0M���<�,�R&� ��^��Go+iY�5)Q=�I��RH����0
򼶛�c^��?m�ċ�����fݨ&p��M%ʸ�,BA(>&��Z�����ݏ��b�h/-H����D��K}�9B�|�Ŷޚ�
� 4j<���M�>�^�?��k���5�&���6x�`��0�5�c�E�s�4��x\���ABŷ��a; ?�m�m�F;���D���c�_����l�_u�F���
N�ޕ�]��"V�Ҋ�1;mT���ࡄA���f�6&�A#����wh�?F����/��תm/�c^��ł��#(;+f�	
(�rv5��E�!���`��~d��I�i��W�.؏7򸱳���y���X�����"$�Ԡܙ�B�+�9Jc��v����
��&:"���9�A[��z�����ܕBN�L7�F3����B��*u!K����_���=��)C7��þ�̻6VT�:UD΋``�m:6�[m��f�iA��o�r��^�	�nӜ�W�W�X�0>P3��W^Ϳp �cLi������2�ʐ���G�E��P��<�ћ�@:H�w�ݛ��e��S�����4t|��h���v�����҇�%�	!�[���K=��/K��$XXb��a�-��Rs-�ِq*�'�s��4(!�́ޮ�^��Do��W�3��1�Ս��JWܐ�0(�t<귑�}u��P'0�Ϗ.�)?B"_�o{?�/�6ciL�%��c�E�j4o|��m�윰��:�ip�='_Wb��,k���`h����3$���e�^6�\�=��v��Te�m̢���Cl��W�E�-,[��6��L5Dx���hv�=W��oٞ{Ah����\V:1��/���m�I������E��z�� �9���.�kϥ���=��Y��
���ݾ�Ë��/�p�Ȥn�Q$s]�i��0���|�˫��{w�����Ȅj�����~m!Xd�s�@��Jͩ�l���y�QYp�E�O�Z�I��#����Y9'2��f�9�	�o�� ��9O�i�C�R�x	(����[t˼.�i��V �GX�7.TB`�)^���X�m2"�Q�8��Z2��[HN_����ǫ}��b��%�E�gTd���~�zk>��|*F@�ޘM�F���j�Ї�J��&�T�z�g-;N�]Ĭ]���N3@�ǂ�nϚ�
������M�n�>�@�74z+�D�ῢh�4�I!	*%�Z 	  �IaI�i��8T��O�k2��Q��)�~E��"V)�ǡ�v]ݛ�mUVt��EG��V�9�R:�]�[nJ�M�ޠ`�YW��I�e�!��bJGU%r*����8ƻ<T�����IIL�U#w�\W�!��ۅ�c�͸0����ݯQ�F�����%&�����<:�g��D�c�h��D��~F�VJ�'dd����k��^ϟ�.�+�L�nG�^!��Z ��M�z��`�v���V��f#�Yp���٦�;�T�./�~1Hk>|л~I��B1O6ΈH�oS_;˴�Ǆ��T�rʬ��2��	���_��8ߛ���x.L�,k�'g%���+���8B�.���Եe�L�1x����i��s�x��+��#�N�Z��k[z ��M���u��=����P�*xO����"�A�)uS\N�sy�n�	q�i�#�1�˹9n���Ϫ����SO��*���Ch}2��%���0�k���-�-�/��r��Ο�n^G{�MX�?�s�=�d3[;��z�y�E�^�zuHA��0v��񝜣����ο(1ї�|�_P���=F�X�]��+��Aك����ZQu��g��9p�	V�B:��y�ky�E�'r��x�L!�a�=���`�r6�e�$/T�K�Db�aJ���b�%Di���>��};��OK�!A�J1�<��X�Fv�K�R-��DL�!��_���`���R@�NsO��?OA��`��X=n��

IPh���HŇE�1x��nZ�z\��N���M���ZNx6.G�k��^I�������y�h ]X�7�F�5L�U��K;8s플��B�vYQ�*ϧm�(M7_!(���
�jBJ�;Y2�5��S[���ٵnr%v�|��\!K^.�왎W��([��lc�-fQ�q��ؒwƏ�qGQA���r�&n)�S�Ҧ}���s���^�ی,&�!��tU�"�3B����8ǁ�2�o¥aM�jFE�k����;���L�R6ƹ��E�@W�P����!�Q�)�S�ۄx���[X@�u>��k�>v�|%�{�Vܔ���E
-x���R�=C��ʁ�{e�ٍ��- ]&6I�	G������_�>���&M9�)Q����?Jh����)���E�d�a��mdT��Sl�m'���;�]�q��Eq�*��2�w�68�96�c��K��~��F%V�.�6��U���L���6��M�>�W�p*�"oF����*Z�푖��ao+�!HL�v�'p��Ot���wM<�����o5f�Zp"�L@":L-ң��.�9v��V�	���j�r��V�R����i���}�ɓF��n�u��C��U�V~�y]�[��1Bz�sے�A���y���"��Q���i2�;f/��Rr����G�i�{9>���u�bDIהN_�:��:�n��z���K�,��I�Aк=����E���m��nz��\%Pu�z�C��~0�M�
!��<�t�sruL����zF +���9E�txA(���/v�������Uࢊ����]>�"�ӥץ��..J�y���8��,#��c�:o�S+%.gy�9x&T��1m�Ϻ9fk�[!�v��x��+��kq���
���>�'E`����01�k�?:�hM�DNm8������۹>J*/c��|���*�`i��*�+�촃f��n%���n��~ g��j�5Y�������;�=w���r���4SeP뽃���呏��Db¸��W�ͯ�ys]��,V��C�d��38�J�}Q�zꉁ�.zۮ5j�Q��,e�~3fL�%� +��"-v=ĞV^�\�W���p�5���J��_[w��P�O�e1�"rR]��e䴁��\��A��5����j��1L��ǻ�<��~C�>n[�zV�^·���Y�w����#qd e�6Ʃ�w�j��|��L D|��_��yWIR@�K�|R2���T�RգJ�c�����*�G�K)W;�$QO��Zx�0��$��@�"`6m:�ګW�^<l��a���LYqXA���0��j%�n�L�#�����S�?���,O"ہ,�IͶi�-r�l��|+p��>�E{�v�H���]^)�)���D�>�O�y�M��D�.y{#��,w^�N���l�����o�97����V����ny��-�r>6�/��9��ư���~ ���Q{՚DחDr#��8r Gv�M�Om�jauޓ�!v�}��u����bɫ�]q���|������      �   �  x�uSK��0]˧�8�`�6U��"{6��aDɒG*�mr��a.�'���l�S��u{�^"eG�,���I��&�>Y�����NF\�<��8y�ޑ��$�<vIbM1O(����ă_��j�U��S_����[OW&&m9J���p P���'+��3t�E�_�9k~�@�9�E�8p�Eb�O+�i�j{�V�z�4x�B	qe�$�`���8��o.�
�Fvr���7N��N���1�eM��[.���%�o�\��؞���$#ǂԬUW�����0��g��V(�'�=���.�0��ߋ%.��-|Θ� 7����U��j��9L/�$3���۫n��i���C�XG��Ѽ����͝8v�.~X�����V�	q��ˬ��ܽU_��+�1��_�X's5�`x'��ЌYN�`�yħ����~�ٕ5�; � X��K�6۾j�'��B�?ส��<f"A      �      x������ � �      �      x������ � �      �   �  x���K��0@��)8��|ۮ�#��6� �訷�8�t�;�ɱS�O7�z-n�/��ħ)�o1�������+*�����_4�R6 >���W����&��<a4�q�vRN�h'أ�S,

�Ċ�G��ɲ�a�L��m˃����H)�2�:�T�������GӀ��Ӗ����X>��� O@ǵ�J��#U��q�n�X��7-`ꕱ�I���(����z��O�Ձ5�h�UlIֳO�ځ0F�R��z���1�#L�:C`EO���~t��9�'l�F]��&a5�
FA	�aW(hJ���3ܷ��8s���	[��W$]6�jL7Ͱ���53X���Ï���}M?��{�~���7��U��`��[�U""�"����l��F,!�ޔ)�~�Zk�'`�m��Eb��%R�$��K�Xɥ�7S_���L      �   	  x�u��n�0�����w��k�D��]�R�j���i���@�ӏ3�3b,K�����?��)�������#j4 r5�Ө����Z=6
�w1^�b�yN�=I��a-�*şI<pC�y��~�MA Z-�Z�i�����a��0�P�k�O�)��T�>(e�S�k�8�iŕ�:CO����L� +����8��ԽL-~��-�4�m�lLu��l��۔O����K��������6N�Fˁ?!^>��P��w�N5x�p�^)�ܚD�7�!f ֐Ņ슣(��	Ef{��(���U�U�İ��Kє�uT�jgqX�ɡ?k��@&~�w��=�[�E�՞7GS<�eT�UyhzOL|Q���AAa�͋5�<�(���"*2y����(�v�I{�W�� Z6D��	j�U�6���_�Ī>��u�����D�5�����ƾ�}f��n�$�!�Q��ߧwa���& ���n frA�(��xu����y2�����,�	-��c�CWU�����      �      x������ � �      �      x������ � �      �   N   x�3�420��54"#C++##=C#C3]3N#���Ԣ���ԤDNC��j�Ĕ��%+����XNNC�=... G��      �   �   x�U�K�0Dמ� ʟ��1!Km�	RoOD��ݼ�ķI2��b�6cC��J�I�E3���L[�n��Ѱ����Y�K�_��<���8��̵��ԫl�8��_YL�8�e��S1����(�C��b1�~��
�rxHH      �   �  x���ݎ� ���S��a��r�X�C��Al�o?��mN�8��X�k/6@��!�!��h�
!�.:�U�zxC��f���80.��	Wf�G
zDV��\{7K0C��,�	֝o��p����fu����z�g(P,O�؃A��Ӧ���ogZ�|xפ�YR��Wfr�`��qK�x/1��*��W�`z��bT�bAn�cm�h�m��4�R�^��SwvhӮ}��f��PdE�Slo\wH�\��Q�3%Ŏ�~�D`A�������b>2�*��B�H )�GK��م-ޒ�Ρ�C�r)�l�Z���]M�a*]cC�A�v�L�C�����@7��M� f
��r߀m$��ѯPX��F��������w��#6�yLY=�y���|(��.��j�����D��T����xy�
 �pLqVcR#uA��]0ze���7�g�j��K�yꈢc�8�w�1M���g%����KjrŊ�?����o�.      �   �  x�͒ݎ�0���)�@�$&�h(��QPBb�7��'����7TU���\��љ�oι^ǻ����n�C���<�l.�.�ۄ��DD	���C<�E���D����<��l���&�4�q���_+�0�*9�e�S���u[��ԩ�X'�P��%���j���Ƶ_�}5���.�_�:������'a�f�(?��e��=9��mC,��@)	���'wO�k���n�s��0k�`��2�i.-)p����x��/����c�a�Xy�|I
�ZL���y�?���>���i�� ������6���7k,ʭ�.�ذ��`}j��e1����ؽ����ro�H�4*�(��E{���ȫ�ј���Q`�
Ć3���33 o� ���`�����|:���|̝      �   �   x�U�A�1�םS��o��!����d�8;����w'W����LD�B�%�ץ[��c��Yi�bM&8�>��n��*��#I�_WO;'���v�������J�t@���#e���,����tW��k�QB�pL:ֈʩ�}����VĦ5�{��c��0Z�~�M��NW��to��/7����#�cA�L��tXt]��Dd�     