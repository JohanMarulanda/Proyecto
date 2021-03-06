PGDMP         2                  x            jsmdb    12.0    12.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    222            �            1259    25839    asignatura_recomendacion    TABLE     �   CREATE TABLE public.asignatura_recomendacion (
    id integer NOT NULL,
    asignatura character varying(255) NOT NULL,
    profesor character varying(255) NOT NULL,
    top integer NOT NULL
);
 ,   DROP TABLE public.asignatura_recomendacion;
       public         heap    postgres    false            �            1259    25837    asignatura_recomendacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.asignatura_recomendacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.asignatura_recomendacion_id_seq;
       public          postgres    false    231            �           0    0    asignatura_recomendacion_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.asignatura_recomendacion_id_seq OWNED BY public.asignatura_recomendacion.id;
          public          postgres    false    230            �            1259    17400 
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
       public         heap    postgres    false            �            1259    25822    publicacion_comment    TABLE     �   CREATE TABLE public.publicacion_comment (
    id integer NOT NULL,
    autor character varying(100) NOT NULL,
    text text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    pregunta_id integer NOT NULL
);
 '   DROP TABLE public.publicacion_comment;
       public         heap    postgres    false            �            1259    25820    publicacion_comment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publicacion_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.publicacion_comment_id_seq;
       public          postgres    false    229            �           0    0    publicacion_comment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.publicacion_comment_id_seq OWNED BY public.publicacion_comment.id;
          public          postgres    false    228            �            1259    25811    publicacion_pregunta    TABLE     +  CREATE TABLE public.publicacion_pregunta (
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
           2604    25842    asignatura_recomendacion id    DEFAULT     �   ALTER TABLE ONLY public.asignatura_recomendacion ALTER COLUMN id SET DEFAULT nextval('public.asignatura_recomendacion_id_seq'::regclass);
 J   ALTER TABLE public.asignatura_recomendacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �
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
       public          postgres    false    212    213    213            �
           2604    17431    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    17439    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    17499    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    17385    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    17374    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    25825    publicacion_comment id    DEFAULT     �   ALTER TABLE ONLY public.publicacion_comment ALTER COLUMN id SET DEFAULT nextval('public.publicacion_comment_id_seq'::regclass);
 E   ALTER TABLE public.publicacion_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    25814    publicacion_pregunta id    DEFAULT     �   ALTER TABLE ONLY public.publicacion_pregunta ALTER COLUMN id SET DEFAULT nextval('public.publicacion_pregunta_id_seq'::regclass);
 F   ALTER TABLE public.publicacion_pregunta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �          0    17585    asignatura_activo 
   TABLE DATA           7   COPY public.asignatura_activo (id, nombre) FROM stdin;
    public          postgres    false    225   ��       �          0    17520    asignatura_asignaturaprof 
   TABLE DATA           �   COPY public.asignatura_asignaturaprof (id, docente, periodo, nombre, grupo, matriculados, evaluaron, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, promedio) FROM stdin;
    public          postgres    false    221   X�       �          0    17531    asignatura_comentario 
   TABLE DATA           \   COPY public.asignatura_comentario (id, comentario, polaridad, asignatura_id_id) FROM stdin;
    public          postgres    false    223   �c      �          0    25839    asignatura_recomendacion 
   TABLE DATA           Q   COPY public.asignatura_recomendacion (id, asignatura, profesor, top) FROM stdin;
    public          postgres    false    231   l      �          0    17400 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �m      �          0    17410    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �m      �          0    17392    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �m      �          0    17418 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �o      �          0    17428    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �r      �          0    17436    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �r      �          0    17496    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   s      �          0    17382    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �s      �          0    17371    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   It      �          0    17555    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    224   �v      �          0    25822    publicacion_comment 
   TABLE DATA           Y   COPY public.publicacion_comment (id, autor, text, created_date, pregunta_id) FROM stdin;
    public          postgres    false    229   �z      �          0    25811    publicacion_pregunta 
   TABLE DATA           o   COPY public.publicacion_pregunta (id, id_user, pregunta, descripcion, carrera, asignatura, activo) FROM stdin;
    public          postgres    false    227   �z      �           0    0    asignatura_asignatura_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.asignatura_asignatura_id_seq', 1, false);
          public          postgres    false    220            �           0    0    asignatura_comentario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.asignatura_comentario_id_seq', 54, true);
          public          postgres    false    222            �           0    0    asignatura_recomendacion_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.asignatura_recomendacion_id_seq', 97, true);
          public          postgres    false    230            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    202            �           0    0    publicacion_comment_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.publicacion_comment_id_seq', 1, true);
          public          postgres    false    228            �           0    0    publicacion_pregunta_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.publicacion_pregunta_id_seq', 15, true);
          public          postgres    false    226            "           2606    17589 (   asignatura_activo asignatura_activo_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.asignatura_activo
    ADD CONSTRAINT asignatura_activo_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.asignatura_activo DROP CONSTRAINT asignatura_activo_pkey;
       public            postgres    false    225                       2606    17528 4   asignatura_asignaturaprof asignatura_asignatura_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.asignatura_asignaturaprof
    ADD CONSTRAINT asignatura_asignatura_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.asignatura_asignaturaprof DROP CONSTRAINT asignatura_asignatura_pkey;
       public            postgres    false    221                       2606    17539 0   asignatura_comentario asignatura_comentario_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.asignatura_comentario
    ADD CONSTRAINT asignatura_comentario_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.asignatura_comentario DROP CONSTRAINT asignatura_comentario_pkey;
       public            postgres    false    223            )           2606    25847 6   asignatura_recomendacion asignatura_recomendacion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.asignatura_recomendacion
    ADD CONSTRAINT asignatura_recomendacion_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.asignatura_recomendacion DROP CONSTRAINT asignatura_recomendacion_pkey;
       public            postgres    false    231            �
           2606    17553    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            �
           2606    17462 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    17415 2   auth_group_permissions auth_group_permissions_pkey 
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
       public            postgres    false    207            
           2606    17433 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    17477 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    17423    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    17441 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    17491 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    17547     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    17505 &   django_admin_log django_admin_log_pkey 
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
       public            postgres    false    203                       2606    17562 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    224            &           2606    25830 ,   publicacion_comment publicacion_comment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.publicacion_comment
    ADD CONSTRAINT publicacion_comment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.publicacion_comment DROP CONSTRAINT publicacion_comment_pkey;
       public            postgres    false    229            $           2606    25819 .   publicacion_pregunta publicacion_pregunta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.publicacion_pregunta
    ADD CONSTRAINT publicacion_pregunta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.publicacion_pregunta DROP CONSTRAINT publicacion_pregunta_pkey;
       public            postgres    false    227                       1259    17545 /   asignatura_comentario_asignatura_id_id_049a03e5    INDEX     }   CREATE INDEX asignatura_comentario_asignatura_id_id_049a03e5 ON public.asignatura_comentario USING btree (asignatura_id_id);
 C   DROP INDEX public.asignatura_comentario_asignatura_id_id_049a03e5;
       public            postgres    false    223            �
           1259    17554    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            �
           1259    17463 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                        1259    17464 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    17449 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    17479 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    17478 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    17493 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    17492 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    17548     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    17516 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    17517 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    17564 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    224                        1259    17563 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    224            '           1259    25836 (   publicacion_comment_pregunta_id_195bcd84    INDEX     o   CREATE INDEX publicacion_comment_pregunta_id_195bcd84 ON public.publicacion_comment USING btree (pregunta_id);
 <   DROP INDEX public.publicacion_comment_pregunta_id_195bcd84;
       public            postgres    false    229            3           2606    17580 Q   asignatura_comentario asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur    FK CONSTRAINT     �   ALTER TABLE ONLY public.asignatura_comentario
    ADD CONSTRAINT asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur FOREIGN KEY (asignatura_id_id) REFERENCES public.asignatura_asignaturaprof(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.asignatura_comentario DROP CONSTRAINT asignatura_comentari_asignatura_id_id_049a03e5_fk_asignatur;
       public          postgres    false    221    223    2841            ,           2606    17456 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2807    211    207            +           2606    17451 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2812    211            *           2606    17442 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    205    2802            .           2606    17471 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2812    209            -           2606    17466 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2820            0           2606    17485 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2807    207            /           2606    17480 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2820    213    217            1           2606    17506 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    219    2802            2           2606    17511 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2820    219            4           2606    25831 I   publicacion_comment publicacion_comment_pregunta_id_195bcd84_fk_publicaci    FK CONSTRAINT     �   ALTER TABLE ONLY public.publicacion_comment
    ADD CONSTRAINT publicacion_comment_pregunta_id_195bcd84_fk_publicaci FOREIGN KEY (pregunta_id) REFERENCES public.publicacion_pregunta(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.publicacion_comment DROP CONSTRAINT publicacion_comment_pregunta_id_195bcd84_fk_publicaci;
       public          postgres    false    229    227    2852            �   �  x�]VK��6\���	R�_^��LEz(щ]�L���bj�䋥AY~o��� ��h�P4�G���)��`���R�;����5��u��8�J~)���!_ȏ�����&�1�)�C7b�KN��v�8"�x��[��`��G2.\q�S��<X˒��D��<�q��J�3�+�1ߞȹ`"��������^Q�>08�j�8|:�r����e���ibg���N���fL��.��Lf���1ŕ3؏�@h�E���fD"�[#_�x����|�c4��� �F�t�(���bv���	��X��}{l��Mx�Y�n<J�n�`���_���@��bo����	��SG������� �5�B�8�|O�FUe������y=�9����K���TC��j��U���
X�#=ډtY�Qz�x�~˪��ޢ)��d��ͪ�F�6S�bpv�3�
WH�R�/���#}�81x2ORU��4<2 t|Ge�߅�e����(]���s`]՘n2Aw�ztuP��z$�q�@
U�b�v���ˤT��劘��̗\gD)�������Ȝ;�ͺ���}��c/� bn_�(�Nl���H�kՄD2��4�h�rQ"��wjr�r��,ǯ�B���z5�e�[�f�L�+Hr��?����0s�>�xN̤�B���#x�oE�d]�)u�{�8'iB~|]�3k��I�n�(q����c����`�$��@�WZ�b�p��L�� �u�.dg���u��"E�P�GH�xL�����k{�#$	(�$�6��n��@�n��)�H���M�.�$L���y�2�g�n �/������5}�I�&�o�RV�:$3�@5(�%,��D�4
�Df�y�fI7�U�D��,�d7�ڥ��|��߮\�$|9���a&��Z��q���H�n�y�m�&����o�Or_�ec�{B�r�c� N[�o��`�Y ��A��϶VаxG��?�T�I���f��('	P�k$�p+=
S� ��m��l��F:NѶی�dW��n{����^��7�,����#/e��D�0?�k�8{�_Dy��+Ԍ�⠰�"0�7+��~W�#�=r	�2n���k�A�$������U�s���&ƫZBW+�G��@1�5{Ngy��6���������z�r-�����K�^�G�f�Li(:G���o��3lP�,²gsZǳ,m��������l
���@�~�}�B�6�J��7�	����bËȘ�9ɗ�k[��ʡ>!�Y"��q"�Q[�r٢�^tt���+�`�!Qɬ�^��ڇ��mf�t{L���x�m[��=�,
�uT��͟biάw��br<��&"����c�6�%,!k�<K�v,��`�� �l���X�;�y���@VFj"D��X�{�vR�r�dBG('�7�<��.�G��h���̴      �      x�̽Kv�ʱ6ڦF��9�"��W"!�$!��lպc�s���p�˽3��؍GFd|�/����E���1322�_�����Qo��G�^7?���G�84���o���I�����m��I�$�6���E=_5ۦ���v�%�rfg�I"kgJ�������w�#�?�W/�lWo�}=ow�k����~���M���_��.C3&@#H��9���_���d��@)�Q�#��|7w��G��W��ԕ23S�""l��_�e��i�Z�� ��?���,�L�#�/�?K싛��]��z3���������G��/+`���7}�i`]���a�h匝��t ��6U�p�FV�j�72}л��<y��X9];�����֩�-��X��V~*˗|�<|4����׫òY_(cWn�_�W�z�n�M����w/�),?�K��UV�ߕ�Kh6�n�����m7���bQ�l���8�;��� ��~,J�s�S)�MrD�R�=�u��Ky�Ҍ��߄��=a���J~rɩ���2���|�f,D��������5߀���Ф%EI�S���S��:،ņ����A�	�.�eqŋIf��_w�y���7�}߼w�u_#�W	
��B �O����X;x�Ha���YH[����5_�,�~�k����dx�h�_K*�;[�����s6a����~4�}�{�}#3KA��M�p�N!$�.�:!����_@q���?�]3_w��e=_�)[v�y��*Z���0�����O%��	)ix�.�2��|��ʼ7���`l R��?���f��/�Y�$p������j�_}���n�Gp������ǋ���h�c��={�|��7�O�~�-���|���%	^t�w��d)rMZ٢4��2�Dz#��wViF:ս�}�8f�&җ�[Ku�;u��O%�M�5�{�/' 8ئ5��C�{<�7�܃f[�q��nv�f;o���ן;�[`����JfRNg�gҲ������&bq���/�xh��X~�m�jٷ_����.P����b[���o�%�~��T��O��x�tV���֮^׿����Ѐ��6���m����O8��x��bI�V*�	�j�,���֗t��GD*��H>ڏ�E���X\�
��*�+�/qv��Ux`Y^�q�O�܄��~:#;�wf�L�H�j��&0/�9}	Q\��LvRNk�V�Sz�-%y�nt�V��	�����W=����҅�Xs4`��;���O����[�L�\e�4KɘA?���8-Z�����U�����e��l��ֿ1�/�w�DK��"a�WǗ��1vx X�s�0�o�a�������d�Y���W-	ˎ|��sBK܇ޒ�o�FdD[^��]��Rm�2H��7~�z;r.�����Zz��"��|/��p-����5�q����#X$)ܸ�v��Z�?{���$Τ8��~���w|_�/�� ���=8{�n�,�ˋ[$t��5`I�J�����\�e�0ilC�G>���w�͚��.��WM~�vb�и�ۤ[t�Aw����.�W��dx/�<sv�脣����sH�U&�h�u��w��f��ͪ�1�M�����?�����.�?�:��X��f�֩*~�Bp���{G�v�h�=S4�Or���ﬆ_2�v=h�����v6��#0�f��h���2X<᫦�x��s=�f9����t�@��}�ޙ�q9[������ ܴ[t�-�Vkxq��E�e����ݾ���oj�K���ӳlx1�~��U�#+��f����u3��`�/�A�qsh�}�qy�@��x�n�m�Ǝ+���-�FJ�q
ZH���2�]�b��ƈ�Yn[���7�K����{�k�������Z�zP���]��B��e�� �F��*���ѻҰ @�7)>r�~���>R��to�%�C;0�����)�c��A���i�PN29|�#�����ɢ��7g�4,@����Y�o�|�w s6U;����D��)q� �����k����[�rc���'��)X�8ЭS�I�}p�U���X�$�څeY�����='��mdP1p��7�?C3����z/n�a������14,����v�p<�[|����Bn�T�֓�ܝt�x����7/�
?����A2�²�x9 [6��{�����6Z���P݌��ް�^ � 4��:�#����>\���f�f��|	�G7�$���z�LH�Yp)�����߲z�tgi�$�$�d6���~/�e�mJ؇ol��o�#�?���0(��?+_`/�^�1�yA��h?��������v޾�+��`+\8Iain�\����K�����~l+P
��ۺC�۶`[?��LVѲ]�%+�H}$����To�\ŘϢ��/�7�#������$��A]�67�as�ͿoCs��E�l(:?\^��X4S��H)�]'u�3��:}IF_V���}�p]X���|D�������Wu����H�G����<^@�޽��L6�DZ���y!9�汝����§�ί 8�����eX΢���'����=)m�QE�������˓��%��H�������-�,؞���4��H�]���% ��i K�/E)	f��=X.6���.'D%٥K�,$_���������E��o����B|���=`�osyq�Aϔ�%���Ճ����y�E�$V�t�ݾ����{����i��u�y������D���|ܹ%��K5�O�n�2�k�� ����p���qذV�X�z�6���¦&1�"� �
v0g�/�2����3���?�����R��P��,�������<ɾYlaMW��Le��O�pЋ�U��Pu	;83q�I�k�����^�� ��E�� ���
Ʊay�:	�W	"��w�j?c��ׯ?�����9;�8���⥰�F�9��5�@�&( �m�U?ͽ-9�A��(���� e���K�\qC�c���R!Ͼ^~�k��N���&�`��zQ��"���a���Kǽ��~h�!��)���&N�d
���d��Z�Y��-h�˔r��s~1\�Rd߈�h� �&\���'QO��G��e(@��"���Bي��,
.� �V�ѻ�/��Y�X4��bF�����5��zd�9{vAs��Ó>A68��[	���O����W�o�3��-M`�9X�m�� �.J�VMʎj�0�AY�DkP��V�zH��	�������M�m�l�M�S%xV�]�x�K�b�����^-��oj)�P�)Vm�E����hv`	��6P!RgBRQ-�\�|�KY�x�_@�d`�$�+@�<H�� A[���l#n���"$h�q*��o�&��9;B/�0!ʩ�Z�F����r��<l�k�E�+�kK�.t�Z�B�tf9�v�Rϵ�>���D��|`Sz<pw/� ^��啾%+s�WK���G����x���tߊ3%�7r�2��9p!���:��zf��dr�_Q��Y^�M.K�"*WƸ��:aتHn��Z'+�WN�5U/<�K�j�����w�H��nP�w;�����y�f!������'q	1�5��j�RH�#˜�>�E��LlS��/�*���Ó%���Z�:��%�6Zt��A������^�z߷���;�[Ě~q�����k��6;XS�|ޑ��W� �j�n�-�e��ۿ���O/�����v�[*9q��ܩ(��G��&�u4�{���g��~��{
&\JZ��q��T�kg�Ӭ#?4;M9i.��)��9�/��󽦢b���$�|{9�M(A%ջfu@�	�˫#	)�u�n�p���P(Fх��(��w���
{����[����-���/�f#Bxlp��e��l�>v��e�>��`���}�]�o�7.�v���������sp���,�T^�KV�cb��Zo�-�@�����?<?�O�������ͥe�?V�m�5G���Y��]6}��;Vפ�huu���ԙR�����+KE    i-t>�[�/��b�%'��`�]
�b{��[mM��uS��m��B��ڎ�By�"�1_�^�{�3W\��L
�l�����Clo��$֪�Ql=i��������i��z\��䲏(�ʫ��7zU#�O$�T�V�z"��b&�<��L�8/��3�bNMQ��\.��J���U׷�M[�1�СV�ᅤ�ah��Rv.}t�}��U�|9 3h/����\�g��ל��֗�8g��H��ܠoⵧ�4���>U��Y.�w�.Ph�p�m��$�m��(�ֽ7=UF�B�C�����~�@�u=��;D�]�?�hi���n?����E����f�h�T���i4�I�aG���ȇ�����ݏX1=�!�����pݮ�``[�&��{�Ve�J+�"7,,zV�d�Op��Z������Yb�t���\*�C�yr9�n���c�։����	�\�4>��+����Pri���3ѯa`X��/C/�����V߻
�l*���;uGRu,�К]�b��&�jJR'q�|�-��e�|����I�#��^�K���T%���-�f��8�����d ���O 5gz<"m	 y�K�y�����$~
�)�!�Y&��n ZE=i�af��oP=��I������ќK��̏ ��'R'%�3�/b�b���If�[��u��fm�����u9n�;�a�k�k��bg�]�S�ߴ�>�Ji�N�fߣ�gm��@��<pՖ4�A�10�_�}�>���M�� $۸��Q���������?�AS\Fe�z:���h�-7�J��"�� ��s��f�ȸ�������!�/r+W�U�J��Ң������������KqJ��{7��<0�����.P�C7_b��I��w��H�'�r���ᚊ7zv�~�ި�F�t���%����HÐ�D�|t9W�������>A��G��3�����F��E�)�bKy�^�����?꾑�lq�5%氲��3<7��Q�@V����D�˷z������{Ӂ�ӧ[�����a_>H"�G�Ѥ���+jU����Xz�o#�U>k�q�Q
�{)�S�f��@�Uć���KV(����/`��|&v�7j���k^~~�G�����Mp{���V]=U�nk�[�W���n��tc��xN�\�3�|~��s��h����8۳��P�<�E�?���aW���*�:vQ��rZmC�5�C-��7x�}�Z���E���ݶ�a�SJ2�m�5�L��x��5F��r�MF>0����)���L�68�k�mX��=���輲=�<������9�[ez5�x;jT��%\�H��׫��6�'�R��������7\-,��c���ɵ@8�J�o�YfQuZ�&0�l2[`��[��ꟓ�V}勝h_�Aj�돦�Q9��9a���o�u��Ћ�Z|/��XJpH�������^��H�bl9o��a�>��{Å�O����G�������{�N�K�Rx�������!��
c�s���w��l�ʜ%pa;�Z�tڛ��[�A�ɻ>�/[���W�߅M�n��U>�����1����i)ǿ�CbFQ_@����$xެ�]t�6=���ڡ���q�r�2�F,b>Ò�~�i�րe2-��r<���׿`�T0³ �����,\X�L>[��^H��q�%�J�F}8��\�ef!=�h���*o^�4AO~�J֜�8퉗:A�)�-��*!�
���GGܣ}7_��P̙3�uK�� �6"�����=��U���u^~��V�i�+�~�j���\�����{ׯ�`��qV����+�.X`�q!j�����|M�$��vpJ����Gz�x�8>��7Q�]$��"��ɵ�..m�7r/����d���e���b苀��0	:���	k���	u���Ah(|}�����4�m�.\Q���՟o�{#-����1@�{�n1����J7Ƥn4�C�y"��&D�Jt�m�T����oƊ{Sir3�Oppߨ��	�u��F<�yK�,�TJ������v��ܙ���L])�TR�������I��aL��-�yp�T�4?�U�46�enCv2�U�(#���h����F_ a϶����0Қ\џAH�2k��:Qb�z��Iwe3v�sm1rz�����s�B+��hӡ�<u>
��~`JkN��K%�
6K���<���o�]�T�g_A?�Az���Aa2%C��TϷ~�D�l���f��8�f҉�sJ��!����v#xf�_M�c���۠��v�vC|��}�Ԓ��r��/b�־B�x����A�1v`�#U�
��	x�k}�e\��݇��C��S�$�aqC~z�yL.�(��5�ܻV���Gfu�%X���+M��r2����iD�;���n>�~׼�K�	\4H4�A!�
{��B\�KdG�=�LLXv�a"����D��VR9ҮSq�#O����{߽�) �9�wB�lmB$?�b��ǨT��@�-�פ��6�)R�ƅ�P�"I)��ߥj�+ZB�����,���/�κ<H7.^�d���5dO�>QR #�����d��~�}�[�2�L�^�B/ �?��,�!���V�>�I�K&��o@N������T���Rf��V��������ȧ�W��y�BG�7,<ČQ���->�2��<|Ɠ��!9��&VV�Y���m�`�;˪�+/�Z']VJ5�����}`y
�=3��ԿgC[��3$Y+I�sL�kG�j,��7���3���h��S0���C)���'���k�}2��SpJ�hC��+�R[&�b��^/�FZ�K��~��b���S�&�c�<s�!��6�q.����
��m��d���l�6ˋ���n8y��Ť�S��&J�1����ez3.�b(�&6�r�u�ƅ����?��l���~�pHZ�5�ߑ@���6p�������5���B����F7 f�67V�S�rd�U�)9�µ?�`5]k'�Q6�;�����o�#��NN�u��ɕ�M�� '�8��>��#:t�H�<�<�&�*L���jZ���we��}�υ@��q��=-��yk$�i�,�Ә�1�:L�� nɺ�.Qy�l�W':L�b�~�ڣg��|�ֻ�g"X�)�@�feQ�K��0�t��ە�])3қG1�*�I;��jR^���f���o��W�=uLoM���kQc�t�"�e�@��
��`�[��CM0�|#�f. z~��b�oHpFyW��Z��gYK����%G��a"�������wS�TQ�h�怩iP�?�w,���sJ��vZư�~E�ab}1խ]����è�`��P�`0���]�X-9.7�$=�(ڼr=qJ��1M�ry�l�����l�c����fQaU-t68�&C�8��$����RS�R�*Ӈ�&}|�B�r?d+y���k7*��,�?V���FA�?��@ߩRSnN8� ���l����.(�`���I������l���_����+0���S��9�3'r�c����#���`��'�^�|���v���L�$9]�������y]K�ް�\x�b�i�4�R�d���B�o�v����b���Pp� �C�΀������b.4�_v��4�h	e-��<$�M�d�@�F�E��ݣZ�8�=�x���+^V�`4��i�ӆ�
K��KZ�ꀑ�T��Y��FUx�-T�}%��^2"~R+�h�"��y��^��1��[J��E��b�n���g��=�T��H]����`Z�e+�1R���H؈F�"� �-F��o_{:�>��O��r��7�^/�ؔX��F=�X�[��D���/N]�Z�rn3�Ԉ��<��_�;Ԝ/p��8�D���[]*!Dh�y�#3��%>6S��nϣ7D����uݕ��5���L@uC�i��q+f~h �	i�3�z�#S�*�]h�t�Õ��)"$�81    ��s��ڽ7XI�LU���@�n,����޳��H)�?����-'?�V��7�g$����(����tg�AJ���ld�7����!��I�DE9f�D�C����\�/W�9�w9����f�rj�h�f!��a0Y$"��ޡ�9]����;OBj=S}��)���dx�:a���$I��cN�����~hv�gR�Q�h�)�@��KÍ	��Ȣ'�5��s�G����]U�.�4�p,���@�X��:���(
�|b����-�I.�U
�GUަF��v�2���Fi�8�\z�hd�����Y=����|�vn'�?&�$s��R�l�mz�~�6��+�����K����?�� ��f�M�q#��[��c$�l�6ĴA.鉼j�\./�kH�4�*��k�n��h	g ���
0f�����hΌ�x:�5tT��R��r�9@NdCa,uK�@���>��D�q��V�B5��ϑް��wa�X���#�Kų�ˈҤPN�0�ȩ�Ł	�\[VF�]i@�)e���c8E��)����ù�٣��>`�����uPSMtn�="��x�'��KhZ��TCkt(�q�e�3�9��I����bo�p���r<��W���c���!���7R�2�<����2@[�vD�>owD1�g�Ej
lN��o_��E��2xI��k��R�-!UO;@�u����.�_�Al8�Z�Iא����f��KtM��`��gRLJ�S,Hc�L�i�Q�����<��3��q�5)��>z��^�T��+@yl�����۰�>��LC�����.9���F�����N��p�8����]*���p�����`�4Ĉ���X5�8�jǄ�A�'gs9D��K��ɿ�<j!+y�>o�.>��r=_�g7�����^kըM4e��G�M��L0��ϝ)ǚ���,�S)�l|��S�+A'Q�w�:��(��}h�I���2��@���-��M�h�c���Ux[���x2g�uCJ�����V�0%:z�����rg��A�T�]���Р,g���SjI�֍��K
��g��h�+d	��T�v\��T�	��|�B&^�ȀGx\9�e�=�G�R���j��iy�bY��t��!BY�C����i=u^ ��M�ɓQ�Y$?jDn�ϸ?��:L��)�\�?�wq[��P����7_bm��Qy���O`�Q�wX�;��ߑ���W�n�.xo9>`����M��.gO��L��7�6D�3ep]�U���@�ïQ�,����S'<�$S���k�g�lW�v��יV'zP�Y�����=L�U��O�kC?����`��K����.�͵���(��C?�$�zQ/��D*b]n�ן;���'t᧠G��S#�x��iG��)�a(��d���`?܇2�O�iA١N/���ڤ� �٬F��I$ܔ�������4䜕���fB���g��h�,@�gHq��m�H�5e ܃�z�&]���|t��-�ٿ0�݇�s��*}�f��8'���.��V�V�)�c�h�M�ƹ[o�����ׅ�[aT���jj����� ��Mud�)�Q�{��2�jʐ)O����p}�˓�?��e��F�xsüzpv>�5*l=^m��s��e$	q�9�ávn��2/����p\'�a7^�����2}�G8��E��YJ����SO�*��JnFR!aR�l��q��������X��n�ͼ��O�.�r��ۨ��F��nټ7[�Q�k�_�{Jn�Q(�c_>�i9���A�)�q�G���QO�����'���a�G��1�8u�� �u��I��+���#@pr��FՓ �'��V�`_��G3y_��j���Aw�#\�	\+��πS>ku�{E�T�۬�zo� �����]�ɯȆ���܉�y~y@�#^��Qu����_�i�Gm�n��<oQpɧ���u���Ss������F�p�;W���Oj�h������j��G�pqͱR�g%��K��p���/��� ����:)ܾ��%6I24sͻ�G웯��~`�z������n1z�"���(�A�\,���3q��,xe�Q?w��ۡ���b��Ѫ�Fj�<��2_�o$�G����/?��S�]?G��G׷�p��/��n�j�j�qo��b�K�3y)�p_Gs�*PLy��E��K�m;���O�	>%W�g���݈5˅��1���V.�L�<���/F�49wh��!�V���T��?l�����;~7xGT��u�rEj��I&����z|Z����#��� ���D� �-i���7qT��D�d:�E�ޓ�NhYX�LW?.�0�+����P,�4#ʐ2�Ij@�84��Q�U��J�WfN�#,�d���JOX��Yc�5����D�	d�`�L�}_�z� ���OLH¿/�[5���_��mX�$څ��wy/n{�us~w����(ս������C��QN��S�����K
��}��t��lw23��|���zؓú���6��Nq'�#	7���}�v��ˀs0�m5b/�	��i��\��Ww�E0R���[}�yt�=�Li�� �;�b�A��̉(�� ����9ڠRS�Up^�@C�(��ݾ_hnkg_�4�������M�n�X!(����ZbN�9����<k~���5��S�ȴ#g�1��vq�r>�'���1�~�!� �����eV�,_%�ͿAT?2j�ˉ
�-�e��+p�����@Y���;<6P��Ҿ!�Bk��|Ҋj(9�%�n�mW!�Ⱥ�W���^T4�ץ��xga�JM���<16�)�h��-^�S󛅕���p�\'�J�Կ�\��pۙ'_�u��tJ�Hx��xmF�a����h�"׮���Hѻ��%@NgD
�)��G�`�cj3�J#��H"z��M��n?��h��ш(�Kw�d��^�~.��X^�f�+#Lʈ��bDK�:��$hf��L8E|�(��-�O9�WgI%h���o"UܷW�76T����>�� �&
�)׉Q~;�RO��1�]&���u}į���#P��A���_���JK��a�GR��^*X�e��Xi��X>�s�3o���E���^� �/��70ˌ����3��G}��[n}YJ�鉓���j�I���3񮐭@��SQ��9�j�#����-D@W=T�O0���t�9�y_��ZE�&G������L�9\^�e�1���b/������a\�{e3v����Ѽ��23������%p�8�j������y�,nH��J`:�Zt��L�)��T�W@��|	8'G�MCΆ���l��2c�Й�m��������Hw���7`���'��s�sF{�.}P����?������p佐�Qo)�q���W,���`�`g��Yd�|x��Ǫ����*�#���N�+��~�׿�IquY�X�f��최�嬢�^� qb(u�e��L�#���c�P��6|�6H��k���6���b.�ZS�iS���1�� -��H�y1��w<h�	���n�������5�NM�`�^P��m.��f15����Pᖄ{�*a��T�Sv��K7�A��GW���_�_/���w����H��q��^V��+#�@�&��*�n]������n�OA�d��*�8���̕��¿(^,����g��Ƿ�eP��	o�m��>��=ah���-�˾ٮ�7d/Y�S�- 68�)o����i�~�5�d4^���;�/Ed�Z6�9�]������CBmg)`����{0�-N��󥬿��S{�zv'����n�ԫv������m�O�����eˑ{��� ��vMJL���'���("\y[��7�oj��a��"�!'U��XQ���e8J�V^���r�d��g�i���>����`4���� �q�E�A_C�6b^y����)	�j�9��R/K�s�~��P-d�T��P?�\��������s[��n����0�I�i�9;�v.S�G�N��g��@&�Y�½X�D9��l֫z�ů �\-    \�C�e7����i=�K� ����	>Wĥȕ�Ɯ�f?�g��y}X�7�������tm���q��<d���B�N}�9�����FO#3���6���q{���"1�����3J�,���0���,s|���ȵ�9<C^�<��<O1+W�e6=�|~1&>��}��Yq�ug���`�F�i��8�ןɟ��<�8�/�)����� 5
"�e�3�[<��&�r�2�����hօN���+����|�Ꞟ�;������c`�g���ap���NCuM���_q��H51������C6l�����.e0���ɓc�:���r>������{65��[���R����ɕ�*�Cv4�O拆�1�y�|�)	���0�-��YF�M������z4;����o�*n���B�������NC#.4�Kʶ�lT���"��ߌ�;C�q%*F�xo}i���?�����/��n��[����%g���T�W�^�]2|�4� 6�ᔰT�X���Ѽ��������R���w�@`�S������|��t��k�uP���� Xy�����?ꅔ����gg�\�<p�i�� ��H�1���2���_.�����4)fH��+����}M92)&h�4��O8]hz#�������H!U��/�8P���p�Y��,r����]��J *���n�g��9߽��Q��\�SfP�aso��(C���������(��Z�T�WZ7�ա�	�|�PNy6�t;���$�w�!�����}0����#�$g�Kܐ{��ݡc���u3d����tF�Ӗ�~���ڒ��(����L�'�T����l]�&�j᪸�4$��Y�8�S�
�R���ϗ��yn�|�p	|?Ҵ?k��+p0-�?��m��]fG!�Oߋ��R�B �~q!�=��,��Q%6�F�z�gI/8~T".���i��칂�Y��lq|��W#:.��T]�Yh��O��eV�opK-XT��?8?�Vy9G�S��^�t��'�l�b�(�����B�#ɇT�GsT��tت��Y#Vi95�5A��R�슜�V�b���<-��y5����.4�T�-�KW��.rB�Yn"�D��Wo/�	
�R���0A�j���V$�:Ƣ����+�pE$����zթ�d�m^[��d���d<G��v�ƬN#.G,��Ý-����+z���>`6�n&�N��&�o�\��NN����e�H_�r����5�ϔ� ~���Ģ��SA�Dc��;�����l/�_t:*��r|�(ZmA6X5�I$8��NË����p�U�{J�ܳ�����c���E�j�^���!w�#Ѽ��x�;�(ш�����u�%��F������^�̏vǥ��]�x��[��
h�'߇�y�OW�^�P����`����D��ʓ��p���|Hb6S`�n�]Y3�@2,[���@\S�Ԥѥ���th���J���cj�`%�L�IX��I���2�,>��<	�߻�� ��GP�B�%݄YA���!����![��O��=5vpC~���C�:l$�6��p��X������}�s�Xpx����N HݼTZ�(TZ���^7`������5�x�iY�x����'j��!��4/5���_m�r4�0�K���e�9)�� ��h�(|���f��&�Ȼ�4`fe�����b�&��j���>��1�0�{
�DtQB3��~x۹�H:���N�8��a�DXAҏB����[ያ,W%�w���a�Kq��H�*�4�IF�N#u��R�M4c��M�A��prx�R�Gs�Q�)��Q��!��x����o����^�>��ʔt(]��-�-��nԥHlpc����g����#�'1�4�\�n�����zq��N�oN�'�
�saZ*"��9����ˤ�s����B��,�f3?��XjSL�ʛ�h��U5�LizF)_�2�i�D}�"���G뮓��F�t���\�����P����NQ��gQ�u9b�08�x}���������6>C���t|6�a�'�Yi�������,g~���':0"����v s:K>������V����:j�ukt �*�\q�(6���Q�
z���>�P�l%Ԏ'.�8/x���U �ev�Ga�q�
�	�}��H����P�#%L�3��]8i������eS�珵�ҷ(G�ǲ�-��]r�.a�(�(�|�<�[���$J���:W.��e��1+��������X.�cX-����M�Tu��#�!�R��qPO��WW�<��20��aW�d5�h�p�j�R��N
�_ ��8ob���î�����;r�b79�N��TFBg��6��.����5Y9J��|������q&����e���<���x���b;1~R���(+��f��("
�B��|�@`Y�ͫ\̬��C
��}��WA���cA��A��@J��jdDʞ|{�̢���R4ϋ��A��n!ͫ���>.�tW9�]�nrZڒi�`��Q�2�쑸<Q�a�[5�����j�K������hI�0[^`揺'� �k�.��uu�����4�������l0쒱h^�v�G$�s@K
J���!ظo�M�Y��*�	�m���#{d`�dc�z�mU�|8��hA'-k0���n������N�Yk��z�ȒeA��+��i%[���B? V2��9`:���;��\q�@j��<ԋc&N��6��`�Ņչ{qɃ�SW�p0��� �K<L��~���51J5�.�M�Ce�4�����e����BS�y���8�S�����i���%�������+r�H���6���v/;L�p5Ⱥii N�F���b���!�.�N����J>���p�����A�
�.R��O�[�;W�ąL�1g��;Q��fG��k5XQ_�OT��5����5�lp�Wx(�	6^h���R����?�y���Z�1�I�)tU�Ym*c�<�X���C���["Ԕ��
% ������R�5~V.N�
0w^J���s��F˂(vn������+
�8���ʡܒz�����1	k\���q�������e�(j�0C���a򔮜�)O��L����2���X����伢��R��Y�Rke �o5U�N�$\��b���֩���
�w�;�U���oT�!k� ����=Eh��nr	��6b�ޤ
:wВA�����!žߡ�y�2lP�h&1��$�H�����S,�U�~�g<Q���c�����ٞ���Y��H�T@cR�48R��Ns�Q�9���Ak;u���S�<u%�9��O	��w4��k1zi h.�S6�C��oH����;!���W��kq����s�Ľ��������U�#�}��OR����:mV�j�6�_2��|����0ܰ8�;c5���-��Ī;a�+�~gP}������
>�W���|4�D*�d�Wt�e1:)�-ĨHM��B�������H?B3Y�$���(����aO_�����Zi�X��b��������?��@�>��_�[$����ݾc�mv����2ԫQ�R���G|2QB����>]�RR����l������N�^Q�0�
t(���G��
m��@E�rk
��ѰLQ\R4,S�2�����B�Q=L�2�n��$�����Pu�ǡ>�������`��;��t�9�E"#a���]����T� ��*�	o�W�Yy��#��]/)xF�}j,�"Dq���X4�o��ݽ��V�Ҋq� (\U�'����/GE����o^bDh��'
()��ò��\!OaE��}-I�L�]-ĴI��=vZD��;�ᱣ��<�������QN����׵��ۑ"Q�C?��(䴓/IYDf�K��iX`儾�f۷\�#�z�̹.�9����0^��Q���Sغ����P.�%���n5E�I �͐.�ۖ}�8�D�Fj��i�� ='^�t�    k+/'QN�E\��(V�ʁ�~_,b���#�ﰣѣqi���f�"�1n>����qtn�}1����9��2@Q�D�/���1%byK�Y-��j��E;���
x6�Z�����w&�q	��'��L���p8����|�,��J`~7:0���ݱ����>�NS��a��_b��O�g%����d��Y���[zU��o�z�E5���	z�yG�+\��A'6�vM����F�UV\1��^7�[=�� 3�����rl����<eF��E�\�4x0�׿YY�|ﱲ<oH�+3���Y����O����&��Âf�i:B�;	)���Q9�&F-���Z@����+�2�������1��f���c�&Z�3Ʉ!ca6$l��<��;�p�U�#�[O,4��������yض�l�<!�_��iϖK|���v�s+{�����7�[�Fh-yz
l��0�I�hf��<��q��/�(aZ�2�(5�h� ����8�������^lX���{�Q%L"�+�Hh����?F�f
-��!^�Zb��u����m�7S��	��?�F�\vns:P�w���n��)��z���qg� �$XW���z��|N����$K���W�>��x(.����=v:�9����������_�+]���'��;�����sdn%q�|�����A�/]� l�N�˨�������ޡ�~��ɵ�S�R����#a�#.�=WZu"b���!����ydŋS�~3.��v�2�BT~���(Pч���$��ȗ��TN��))ty&4� S�,L�J��nW>���K��PN�r_�����*�p���9�A�b�T3Q߲�H�#��T̵Ȭ#-?� bb ʍJ/�Rd��POFy�|H�;�{ɠ3c��Z:�>�,���	J/s;xW(�\V=�ocl)q?�j��p�zJ�Z����]k�i��ڢ���W� ɮa)_��s�o��'V*��΅�m~�̻�����e������J�ǆ������eS��B����?�#����a9�ޒW?p5��B�����вiÂ�^������y�������}���z����G����nx�4#�L&'Q:�2G�0�7%�LC�i�V�?}�S@���L����.���<d�Y� �\F��6�ĸ�ۯ_<�8���]���n�nw?�d���'���ظ$�~S^މ�eO`S�g�I��}�(Ps,���^~�Id�Gr�D��C�vc8���w�g�����?�����ƛU��q�D�^�ԅJZm�Mt9�.p�k���w���U�s
�K�ēq�T��M
X��˴�����?f3|��F��=2�Tx����>�H��W��-�U�FV�����ɠI��Gq�＊n�̜q��!���)��Ӂ�~���v�e��C�|+𔪪�1dwˆB�)k_��^�q+f�������8z4*�JN����;N�h3�Ձ���Nqv�M�[_�f��Uh�}KS$3��hF�ϙ	�.ru��Em�ך_�f�=��@�F�¢�==,����mNI����|����x��K����ԘeN�(�k�tHl�;-qb$U�׫~Ys��`6�n'����c�GM������I��7��waNQ:��O�9=dgV}3ߡE��$�	`~���������&�WJ=a�H|�6�:8������ckݮ�y�ItA�A�Z��|&��@�я�x�>�K�x��}�l1U��ǡǉ��!��@6x��@xI+�߅��di�.o�/����j ф��������T&,'b,n�E�J/���+��7\�,�#�+�UHfڅm���I-��ޕc ��,#ݧ���<_��DǗ�����?���0S���W%Q�U�jlb�e�/�u��������vG%�ˮ�c��G׷�p����鑴`�SC�a�%��[N�:-JJ�@9�?Rn@{�Ӿ�@e,�B:�o�RZuť����e��a�}d���n�Q�Fh1G��_�[�߄�P9:��������ճZCh�z�!g��`g�f��d��|8��Nx��6�`W�z�A�-+h�q���7���_G����np�Q��
f�rC�긹*י#�$�l��c���i���?
W��U;�KGbp�������p!��L�o�BxF�oU)U�F
�7�k�m����b�$+y��l(v����/��	�ܲ���߇$}h����m�J,�d���I�܃��;0f���\���p$ηmi~Ӗ�a��1�en �Ȋ�v�wBs.�<�#bO�LO�,���`'��B
d�u.��7��hHP"��MΒA?jh�����i�y�E�}z���'��PHTL�t��~��y#����`t�Ih@�o,@_��)�
E�2o�Bs������٬4-,�y�u�2��IFB��--Yr(){�b#�����P4����B픔��-v�R��c��+��z�U��h�_H�e���I�ԗ�Z����"��	�&�}e�ݦYP��<LM��6�Y4�W"�k���v��
���Absw��C�As6�^�%�_���4�g��/���mȔ�4)�,�&y}��hq|[���Q�����F�S��/��i�pJz�DiO����g�Q�d��E�U]]tG��C�n�nzǺ���H���eáσ�cY�R�_�Q�_
���׋ո�؜=��+Gww&/C2Ifi�7�Y1`3���4��fl�੆��\ߤj��5"��t}��<��\ly�f�FӾ����T_��)�l�n6���s���kj�q$�2g�{�@<���b�'� d��� �I�t�8�v����m^iMq�V�[!	�$�DdF�i�%�+��ba\��dJ�f�2��	��3�'��G��DU|��=��O��X�IF�uҪR��=I$��'n^"2��w�M1��y�A�l>�?��G���M�a�)dPr��>�%�`Z����'M#�Цq�a#��_�*�i�����ʶs��C��2=G�VU_�˅+l�u�J����׿���;�e	
��chd�rg_�L=g*�Y���љO=���^z��r2���@0A��;��I�!/AT'ʈ1�K��g���9��k�����=��7c5��dr�G�����Y�� \+�}>���s���S��i���D���bZb����D[ϩ�܅w��A�]k�M8�o��)f�������*��=��=��c�v��@9�ڐ}Q<�x߬�:��y�n��.��jq�ҩw���"5�{B��k��.�}ߞ8�VB2�N�mA��(z��ˏP{�7)fR��ڭ�`q�̬��W`{:�k+��԰ӟMA��׳��3�N^�pc-ᬃ�7�U��y�e82��g	��Þ��>�~y�|2��OPT�7�$VRs�d]{�����Q��&�Q���@>!�0�sǰ%x	��<�������=�Ȼ�6Þj.~B�3� ��g�ϻ��R�k���Ji�1Ϲ�@�b�Rs<�[��%L�h
X���M�nq\=h,P3��cn��]�n�ԫv�������%�<�;��{̤��/1���@�������i`�6�B��K�#U�&KF��[���s=O��;�e�_3:;xd'z��s�M R�,H\j~"�Ulk4������QNIy�ҥK���
�������9�c�q�oD�����\�8�h�\���0��=��J�]^�+y�;��?1�����|#�:V�+�Rޢ(�FÃ���Lit�J�P�L�m�W���4��4dfT\(�=Lr8�S�N�h�_2�/ݳZ8.��#�C�5qQQ���M�/�G��y�zbJY�2���2HE���st�Q��r
�i���]�a���V���zB=S�#�/�_�'g�#�l#S�ExNs�d39�6�gc�4M��� ����.Ƈ�����\5��濽sq�K>��mЎAc&^��<�s��RcR%r&��z
e�$�aFL�}�:�,e�	��乙@F�9�:�A�, 
�E�8p���ҧCE�E�U�� �8..^ �`L��    �"��ƃ����tz���:�$�u٬W�2ٛ�jN���@�s0d���?�^6�[_$_̤i0>���L0��H�����[>5-仾u��2a��6~�R_����/��3�
ScD&�B:a�n��5>��6�9��ؑ(@���w+P�)�ęIj�S�X�Eh�Ejhʭ�fNP��@��4�!�?P��6���U�NtEn��ȳ����.�ݢo�:�������R%�e��� ��oZ�ˠ��K3�����~�D�� !�≨�
Y�к�%�gz��Q`q�)X�����:�C�O�Q��;����R:�ι�%�f����W��ׯ�I�x:_�U˪�y^LiB�Þ$z�j��d8���<)�.�y�?��� ?�� ��b����F��sm�����G�v�ܴ �c��kТ[7?}�Z��o72�Bx�u��(%���嘊,��V� `�nƄF o�������83�ʹTVT����N�A�X�>[�#�#�E�ߝ���irypkn��ᄀ��K����8n��A2=����	9��'��(�R�b�GP��:����wP����������9A5�{e�̏,R0S���΃(�L�d	�����k
�nR�9��Z	��3�d�qqEtXr���ح��0�Q�����~۳�T��LX��ia}�����PF���@=��y�[ׇ;7m�x��%*���{��U��ﰋ�g#i�YkQ�U��FFD�Y�`��w�.˻��`@���\��D�a\uґ�ɟ� 6\)�Dj���3I7�ݜk��a�}����y#BS:�9Xs3a�;��/^2�IO�A��X}�m�3��"�v��x㹛�+h�.�.�@P�5b��F����ː�ɗ�5l�4{4IETrn&W|��F�զ�L/-~D���+aiR�����;����+�Թ2Avl�J�`���a^0	k���+"���'�<fZH�z����'�`Rrr��ѓ2�T�*�T`�+V�a�/RLӎS����c�tvc��rWW�g	�d'��g�$;�j�q�)$��gvl<��q�p��� ��Y	os5�z�P�h�#��3�qUq<I~Y����f4w�e�:�o�\O��OZ�~�U���t�ȴA��XgpY���F��˯��Q�@�LtK�O�M���w��v`�E�Wq�"�4A'�h��Y�gjH%8�dN��]ͅ0��K�]�Hǹ�{ �<�T>5n�P.�"��~�@Ƭ��(�S�uar�|������:�^�j-u��1ŝph��OG��*��ֳ����|���K��J8��9�}"1�,��- u3��<����Ʋ{��3�h>��~kB^l�?���係�{�b�SQNvK��T.�9V�� 4��6����I�MS�w7BLNb�d ���\�@��w�{%��c�\���[%2��B��5/ΐ��q��;,����u��y�Y,�!^j<4 ���K:-4#�&J�Q�ϛ�s��%j��~��<>b?a�-Zet�����#P�fa�:g�^r�<v�Z3�~[�~���2�ُ���("��rI/�jJN�)x�A2��l���"��5]g.���`��}�YU�G>���r>A�Y�����W|�Ȥ7pL��LL��@�N!���0��O����칎n�鱸c58y�����U�#?�8�4Jl1��'q�e���v���~����m���Ȕ�?��=!��Nc6��6��뉉��^�S{/Y����b뫤'bm���^��>���n��53;U��OO�M���vE}_S���7&7����Nu�t�<U���%76ĩ���o�@,�	�����;��YHk8��g��?�A�����Q�h"M��2u�</��.n�С3$�wx,�\α���[�k<���P�~�T[T��6�*�J����a��y������l�f�&m��l�Q�A�w>	�@�����Og���$�(zS!2�SwԦ���h	��s�1񡙱�ڏܦ��vR�4�a(qu�U�?b#[�T.���;LF�aZ�� �|�H��I��0D/ILIBi�17m���L2��������H�j�(S�<;Gu�~ȷ�=E(�J��ͧ�������r��b:��ݼSt{0���h�w��:�Uzd�1I��d�F�CCxL��B`I��AM?s���݆�/�E�r�
��3����ʠ,���~g\�������iߝ��}1�"�v�gz!��6j����׽ya,��y��^D�q�N��J-��i���*6J�}#�g)�މr<����a�*V����1A\���ه�]�Q2yl���vм��{����Τ�ix�p��0�qh�Nt}N����|��N�5t���W#manQ(��G���3�m� ��B�tFq6�bFS,�T�J] �(K�)_V�.�X�"��	f^�S�'bpe��v��Ǚ��{�D;�~�,�{4OiS�ڙ ��O�,�B2�ΤS�4��S~F*G�$��`$'h�gf��V>��ީ�����y��A�h�㊇�F��6fR���Ǳ:�,�����z��f]v=��������a�Ʀ��Tt��4�2�-�L����e���h��e�:���ߝ&����z^��I�ّ�� S��.���m�u$�p"먅�P�dؿ�}�ӕP��B@q���?<�fT��o�M��Az�̤<D�4�M��ϖ���@�z~�USќg^�1 ��|��8��*: �P������Z���>ߨ(�7Rs{h>�]�\�2�S�׳�PH��t� iNO�9*�J�^7Z�q0ֽ����j+��V��U�1{?�CB1z̒%�4�f$-Q2�遪�m ��&*��֯����F�y�h�򷁦���V���t��i�P/T7��[@����1P�ē-m�'���ɋl�몗>��������~�
U��~N^���lu�_ѐ��e�K\7b�U���L	zizI��j
+�=P�E��q1��@�Z�W�sEyF��;�T��1
��ny�,6Ox#�'\����ΆA�@;��w�Ɵ��eu�9�d"AvJg�z@jbD���C˕}bd�1��Il��8D�rp��t����A�,�����#5��DT��V�c��oz|�ٞ����8��v �ד.��0ͬ����GC����/+�_Q��Լ�Z� 0i�,j�vA!i_#��`����r�ᦗ�ۈ)$�O�(\:���J�H�;���j	��H羒Bw����OI1�z��m0�:e�г]`x��6��禑�[~h�Ⱥ��Z�I��Q^7}�aw�k��n���nk*�4IN7�E!�������}pcS���{9�De)�V�j4�;d>_�$����R^pև6n�� K$k�����t����5�����e��.� �c��_keB޵Pq`�����]��߄��Nb���=���22�򍉁���,�)t��o<L�K,�g��S.��t=�Y���v"���kLI���*l��)D��ب#�:
�z
���\8�#2�g��� 1�	?�0yw;�D�s�<B
1bD}�����aOG�O	̔��!�6��ܨ)�[]� Alys�E�6�Pi�b�4�kTɉ�d�.�$rl4B3
Ӌ��r�[��E���o=8���ƞ�� �Z�TGY�ܯFY�,nvu�
b�|���!N2?W�r&'����Z��]�S�WXb^r8@+�M�|�fg&�n�Z-0���̴nE�c��Ř��m����1��*T����ˌ�@�a�wÑ���k����"K��5Ԛ�J�h��֕�_���X�7�t1R��7��2��CB7h�|�S*z�j�7�B�z�Oy��]9a�T�[���95��}��<�0o+%[]�<���Ҙ\�l���(D82�J`���[ 5�w(M��?Th�6�����E�+�D&�D.1�dG�]V�v�m	&�m2K=m���Χ�R?$\j	t�8��=Μ���N>�Q��{c�e���]�w,UXQ!�m�Z��qƂM���>�J��z1���Jpyk�|侏�)A�{    �!R>
����&��eJ��6&Uęo9no���W�^=t��Ժi<!�ϻ����A� n����>�[���[v�X͕�P�~��	� h!"��.��v̆�M�źKՄyyr�e�AT�W�	s�$o����jT��-:�}�I�ً�c�#�J�UCs�*DI���ju��|"�mR�xs��I�i-�%��.�D�i��z��h`�U��\ %�Ͷ��Pc5�`�Y����~��y��ӧ�^)�.�2�6��|��WF��Ⲷ,����,�dJ���we�H�$�>d2r��}E�yY~H� ���#^�DאЖ�4Vp�cY�v4�mނU��/���)�yb�м}�k���XU[iI�j�u��s?)w��58)�&�G\A�I/9�?b�cjh0��
XY���I�Յ�9�҇�{�s]2��u��h�Vf�~|�!��e~ݠe�$�2�b�1�Cu)p��(ſL�E�'�\Y)�u�/O���V�� 4"uT�%��a� S$�V��������(��#[[��h�������n�� zͲ���@��ߥѩ�*�P�#0+��(M&Z>�i+wx(G��j�Z�-�䯲��v���ɏy��?�+06j*��7q�N	yV��R9��P�.�i��w��i@��gž����4,��Z|*>!5�k�&)E��"V)�2{�:��\�ݪrr��$T�)X�.0�>�5]�����+�!�j���fpD�!�2�Eg)p�Ro���T
3&�x) �L�f()�	��\X�q�j�o�V��26	��)ES �]41�V�O�P$�h���`�WO �ll��Y�hOe���+����R�c(��ΐ{P�vo�Bw��8E��!�d[f8*���i}�`���ݍ)`j��'���WƄ�\g)2����"��2�U��dT�E�ɱ́�FO9��,�gK�1^����$Ꜩdt"T��3j�/�ҙRs��U29������j�+�Rʌ�T��o���B�m��VyR��vh�vzo9 `����+�F��	�������)Q;��of���(�����5{��0sC\��&�B ��*��$��:=��2N��,�*���OЁ_���]����H9x>��M;�����ѱ'�]r���&�3�A@��T	W�_��N�� tB�\BGD$VU�̊��p�r�8��|��XO��A��F�����&�b�g�o�giw�h�hq���ٳ�/���܊��x4�h��b$�g�aL��'��E���I�hBU����}e\��y�-<�+�dz���Y�ގv��zJ���"�(u(�ҘC�bL�*Ѿ  �J�ͨ�.�h�0`JU��I_��c'_��N	�!)���h?��:��w��'���V��E�����[����f�@�ym�����~!��%F�a�$F'�Q�\���>}j.͂~�UD��&���F9���J=s��Y�?I{��Yϵv� l'��`uj����S�ty����z>��Q���N�ZM�����i���糖�x���)$�CC=4��~��m�V^��o���%�U?�R��K��D!�P��",���	���K=��]jl[�/ڷ2��.�X�|��I^�ɼ	g����Ύ��=��804+�,�I���<�.�k�.�2|��<c�	��mmhM���yΊ�3K{���G�1M�J�������K���YT.K�>�M�z_6�������-�������E:�r��7���������	b�|8�g�W�  _�w�L���De�qwޅ�%�e�MB��Td+�YTj���'��PN�5kr@���\�M�	��Ul��u���ps��PH@C�p��70�6S��f�|o83�����v���þ��8�hM��V�>6�L_�X���j�i zv�d�@/C�����#
H�s8/��|?��R��9P ���_=@����ݞ�M['DoC�A;�0���J��[�*r�����{��\g�x����vl�0۠��`�TZiF�V'�(����%������r:AK
��i�ï�@k�Ъw�m��-��iIs��������*�G�p�/��7�@�}��������FY�T�&K\vK�� �/���vp��J.-g~�+Az�\t���C��'�]�����YlbHJE�G�\�OQ*j�rG�t"�M��$�ڄJ��a�"���y�,�!t�A�/`�=ݪTc�-%��-���c�=�J�|(�M0��<,�޼�q4i�SA���sչ&S��	����e�v/�lL��8�$:�O=��kg�\���u?�p@����Dc|��8�5���R��ԃ���D�}��Q0�/`N�4�6��@�![���^��r���^E�e	�9ܔ�}��V~fwрʌ.\ԋ�#���DL�J�c�_������ 8y&)N�p*?�'G����&���烗�ѻ�G�n���@64��9�$�V*�$7æ�����3�Y%l�"U��u�J���z���f�:r8�8J�"�������=�1@̌��ʋ=�C�
�� �c	�kS���k������bH&ٞ�iS/��1	�mņ7�U3��hZ#T�fZ}E/��іߏ6�I\f�$�c4:V�ȼ�Z�Dh���ƋaG^�t����=v6Xj�B�¨��r?��K3ӫ�3?��p��6^��Ю)���A5+� ����j�A��l��iQ�O#��,w9���k�15��Z>�3��t��(�����@���)8�ͽ�S�1NLq�P�eD�����\���h�L(�G���?;{�=����D�h�mۍ���G5:�N
U}ip�ܿC��q���o�����N�$b�Àb�Fyi?�]��:l n��$�)��I��*��M���'l�<6��] st����ރ�nq'�/�\�D��#��I���sޭ�z�n�sG�/-��VZ����hR���6?y���@qP�����.U�S����JT��4�p�cG��m�f{�	��:\��L��iM�cdC���qVa�O�e�L�S�8xļ���W��etI��o�N��
���U׷�M[�A	\���,gq��io��7�A,"��ɠ�
f��x�;�i� WF������NP�1�P�r�I�?O?��w=�AA-mnŐ|�i���Ba���d�R-�4jT-�U�>�+�79��h:�2M7g��� _r\�vԛRj����`����.�I7�̴��ȟMĞ��fCw���Ӄ���̭��Xm�T�ms�ä��S���#N��4�,\��.���ėh<��5���:{F��c�����-2�52s-�����P5f$��Uʐo=�.:�7a�� ��bJ���c��H;� 3e���Y�:�o��肛��q/t]����pD����$�ԏ�ߔ�E#r҇�O�X.E��+!K���kę��_7���'�M��;eoũ�)ӧ� �����kN���LQ�qŸ��&�=�!��J��ψp�W���	�"�W�ޏ�x�Q�Y8J3�-<��g�<�����]���f&�M�x��tJ?#�]��〭���Q���0�'�d!�x>�y�<�u�U[�$Q���;�i���~]w�����q��nu
:S���^Gs|F`N�9�;�>E�R�vYq��S#R=������-u�U���g��,x�!f/a��n:8��y�
���ю�f��n��)w:f9QG���)���s��T7ߌ�����q�M���T��K?�R���+V�a�ٹ�AmC��Ѫe:�0��`�4iYb0�+w�F����רR6b��~'ע9�V�I&���-$_�*�u=O7 �������k�l��}M	$�m�H������o�K�G�lǌUpX����nH��QlT�����7������j�XY�f� !���j�TCe���\��Yޑ:��ךX��nfS���9��m���vU/6�kU6c���h��y�<y���muS��!�B���Јa������];�R�]��ˋ��~q�e]S��f2�1��<��o\���x�>�S=    @ً
e�:a���j���o347�e��xZ<r�~���N�{�9/LH��ޕ
$�F~`��ٻB?�0j����H,F�[���
-q9c4e�FB�\w4��:�wț�cU�U�y>,~��gQ\�W�ic�a�^�$�%����	X�_3C��#�ɭY�DZ��2iN-���עJ��&s``��p�L�����Kd�uV�x�sz�����i|KZQ��b�0��F�\8��/ze���ip���z<�>��C٠=�A��+	9s4�Zsh���t�e�(9��Q�B�T�l,��$�h�d�	��V�i%�~N�[f
!���F:B�.w�ԵvF~\��k-��ȈxJ]���7�vK04�(��aĚXB��.�3Uhku�Rѝ1����@�,��e�-��I�U7�՟����I��jN�-�&�&��ઈ^���P#)u}�o�)p��+-u����0'��x`G+�A�e~#<[�N�d��d�8�x2�mvTH��.�E�µ��/��'�yYO7�KV#F�������z��h�\����H��$	���6�7C�h�I+Q��%8B�KіΣ2o�JMr϶�P\-Se�N�ϗ�=�o �S�:� ���2�8�\��g�߫}i�-\�gUE��]i[8{Hc���.ev�}�� ��B���SY�	��T���	<�!��7p��!��z@���;)V Ǚ��T���"y�FP�<���t�V$�JNI�?L9����9��˷A1�6�ɮ	|�җ�4�'NsD��^Q�j����%R��4.Q^˵O[ηVN������(E���^�s�$�GB����:H�ҭ8"f��iO�ɒ��z�6�V�G�#h3ȷ�Q�Q/��B��!m6�u�������8&q�֏�,��`�!.`}gӨ�Ԡc��yq2$T𸯸�:7<ܼ��WF���p�Rɲ��>^[��Q'$d:QhD��V���Jp���į����U5�@�v-&D�\��݌rD��HX�9%�NG��J�¸`W��,�mF�u�I�
j����x��+"�E�JT�c#�ׂ��o]�����r�G���O�:�6mh3��B�r]�k�
����5��0���ZK�� ����P��������B����s�l+f�w{�gL��&m,i&�B������n��;���4�6F��94��0BYS �����c��<�=N��I H�uE%� U8ȁ��н�y�����y�pU�s�Q9�&t�����J�(篲R.� Y��ύi/��]*է{Cx��h8	ThR�5>uK檽\(L��ܕ��\a3%�9m$��/ȭL���e�s_Q�}���Z����N���q���@Y���QLpE���3��9v:k�%^��<]c-�b+i�%B�W�����������i�f�
m'�IXvbeK��d~	e�v7��1�h���V��fGފbU툔z}f�.���(Rʴ�����뽕�96ΌS�jc�MߛC�����*9?J���8k����JoO���#�oG�LZ���Md�M�L�����a�\�p<��ū]��}�26cYz�B�Yĺ s���WG@���*GO�$��
U߹�	�>D=�������퇨�و�g=����+��R7g$@�0�������Ŧ}��86R/=oE�8��g���EpGH��QW9�6:ٲ�&A�u��AhP4��4W�����H�K_�,��C��ƤgZ�dط�u�-W�c6"ݼ�8��lG%R��������2����G�j��][tE=@�tQ���&���	%Q���!�'_`��5"pű����Q *ܐ<�����an|�|����+�U�j�B؟l9d�x��cRv����(:|���jG��_@�����xA%���,��7xA�h�k���#�1#\�kn�u8��`_�7�&�h��<�����]�W۟�>�����I �����-0��+��tgfr���a�6�:V�·.b!˪��i����[JA[K�fwF���ӧ�x��o;�ӺϷX�(K�z;�G��BR&d�CNe.�>�u�7��zG��3OK��h{
�^cO��)wp0L&�f�\��(X�4��G$���� !8�?�z�'-�t�w��z�GJ�WV��#Q��v��^�[���nE7B������J���dW�C3y3��V`���K��C$�����ԞF����~K5�Zۿ5Z�O��O�Y��.�j��%8�Mt�=�l��2�����qF!���T����H�L��
PJ;`�	�c��'�ý��Q�����Ƃ�*L�����-?����C�+����w��m��ؔ��t]����ѳ~f�;h�ATe�S:s^X`jj��!�6JҎ�U�ø���?}�)hE�^�I)���tTߨK8j���b0������}��D�ֈ�e&5-�Z�*�69ں"Χ5=i�EIB��s���T��iA�ᩳT�(>am��GQ=��Q*�*�$��ӊ[E��ү���H��CTE�'C|��K����Au�e^ƥՃ.[$gB���߅���ZidR�a���P�G�^	�cN�H'`E���rqIᧁP�e������gV�sne}})TE�PHF",�i�ot�'��I�ڦlkFh�I��t
�m��Zq���_j	(�m.,�|�g&���f�GL��vM�a�>v{�Cx�5�E�EP��azGfD�Ev�gJ�;��e��:�E=�WČ�a�0< ���D���)�Il�m��!N.�u�WT"�W����8Q+��-�����y�c�
Y�P�B��+uuc���t!R�.�Z�.���Yo�?�IR<��݋>T}O���J7��Uj��i���Jk[�Ey�8���;��-�;T�A&�exv�� ;����Q^��iq��P�d�ּ<6�G<� �˛�a������}ݦ$tt9{�����N�����e�@�Ը1��	��?�9j�1��i&+�&A[��zPƀ�y�zw�������'ů}�NT�?f\�h<H����t%���u�+�Y���G��^�H�x35�$���,�W�:	8��W7�Z�	'Ά�D����m���C���P$�n.��A��
$����p����`��n�x�>��@[�$�k_�O�!�$�(���F�{1V��W��q��w�䧌׶��	�P�נ����k��������Ş����t�I�����o�+�ws[���2�L�Xޯ�%At&vs�ʐ���~W�&�y��x�*Xj���2�̎:%�fl�4�uR:h#�!���s����W�����55l@�.bA-(UIQ9O��LT)x�Zϟ��j���9"��<�����4�lȪ�jX�P�m� .���zXņnjf=,�f�
[��3+�S'��Ҡ	�a.�d����Yvq��#d�efe(�/{�E��cii(�a�<�0��"���}<�ב�n��-��Vx�Ld�+F����%X�Ϟ!�_��:�,mm�~E%^����9K(+�Qz�rۋl�8�p��v���9��n���%sl�E�ӏi�D�}yB��j��tM��X����H#��0x񎓘��hj� IL����Y"��[��P��?Fx�I�.�M��n��*��e�[5���6��������Uu���N�z�ؼ=�HK��Wi5�C�X6�#��6�D���5Ob���/����D*�O�����2��]���2��ڛ������TkNNسL�L���]:	@]��Qt!EF򵶂��qd�P�S��~�I�yhW(
6�y��W7��L���ᩎr3rI^q�\~��ܘ�O�>BI���)��َ�n��G��O�ya��'�5{jPl
ͬ���M���PS�l��Ͻ�Pa���kV���F\�ǜ<��{<��6�M]�YNg�$k����쾷v}�����Y���Kd&����Gt҇���L��)�N�Nb�(��\�K�cp���	))#b�� �U���6���*K�%�R����d�$��:����εϳ�����x0p��7�M�z,����    ��Hnee�Zw(��z#��Hr�]�dD1e58}[+&�U�J�	E���E_f#э?�x��b�;�[�
N
���Il.lS*��C��b��ҍ٦t^�E�}_C)i���ǹk��V��aD���iݸ�t5�A��e�������*�_"�P#�鶠^��A2]��&cS�[�k�s�
�y�B)g�:�ƾ��i��x�+f��nA�=#�	��LY��P�!�ZvO�ք+P&���V��r�x��1�X��<�
f��@�V�Y�ʲ�	[�d^>ެ���B.�B˽��l�h�xD���j�񔠙#;�
�]O|{¨'��%��;�|}����R.\�sz����o��h�(ŝ���ヿ̎�?�/�+�p�*����TE*䷍�Hh�D�&q�!I�q"�>��[g���x������i��Ik�^�F;]u����h��AN���&y���TS�*V.�	L§��B"PU����˞��Y�Ŷ����""s#����2��,pu�E� ��WrN�����@f�	a�e�T���~� ��3�YWRMŜ�|/x��ՙ��!^K�T2��h�-�'ZJ[}I�����/�nn�׉�VRm�e�����q���7Y��=C?���`�M^�.�iT�4ͼ�+,�B$������Q!����>�D��x����e	���ZK���U}Ш���c�y��W���d�Q�X��lL�CG_���' �38��b�{���iqΟ?�^�|�hp	?��*�h�����Y��q�ꛋ����\bU�őL�z0���6ń��'}�E���\<.�����Rޣ��s�{0t�����l�����l����}cm�Z��
ͳ��I���A�&��iwN��b
�ϵI���U�B���
p9��&��%vw�e>*?����<S�wmX���3w��'�೾ab�r+E�&V�m
�@ps�b��"õ#��)D�*�~�W"59(�gJ�"���'��hg�I��x�u��Q�۶D�ܠ"[�;��9�s����9�����r�)�2XS��H#CX���n�`��	kKj l�����|��BG�ޥZ�e%-�m�c���x7�}����b�;�`eF�i���� �5��E>	����Ii��D��~�nɩ�I󒺶$�Y�L"�2U�cZ-"�&{���"c!\�a����.�h�� !�VQ_?q�f�'(��~�9�ow�O���N�?"��3#1M���HG�g�?E9۴�q�?b�a磨�����}Ah�>����z���� qIHY����\�s��.V�Mz���c�-0��"=�Yl|�*�&4��I�X�\�A0���G�G���D�<P&�-�&!�_����`�("@q�,�$��(z�)[�MG���gn$Z\����׬`��ﰂ��`E��=�8?�7��������>��N���,s��]����@���{XU*'R�Bʅ'����R��GL���~ս��@qFC_�0�_1�������:K�H �v��ԫ�g
1$�N����L��T�ջ�+�r7��{��M�JL����-�e;��5����zr��;�C��h���-�Ov��Ɵcr�e����q����H�[��Zϸ{Zv�������[��>�`�'ʰ:eg�ȫCv�������m.z�E�N�A�/Y�:c����
����l�د��yD��1�:bM#�E~�F�g�<f�j��
eZ-��C��gJ�c�N�MT`���S9$P��o��J���?d#�̈́�{��gUt�{�9�{~K���PG�~%�:��@g ���P������gg���̣��b�;$������ǯ>��'���s�zmws���n��C¡ӹ%Y�Ja�v�n��;��L��"���Z��Y�E�B [K����X�n��We|Wy�����[�jH�y�~\$m�H����ǡ{�z>�?���l��E&�Z��2��3&a捤�&��jdpi"B~���Zh��η�|�>�?~[yZSYK�L���$}�:åk-L�!z����a���ik\�)�x,F�?+#�X�?#�w@V|k�lF��\hX�L����b5ee�����e�$
\?�=10�a-#k��N��}v���x?5D�I�/F'�U��=.T���>�`g~�b���q��%_��φ��@������}��� 2}m7q�L��>�@-�������Q
�fyX�U�^�k*2<i��N�S����/0��Jɜ�+�2$/mW^xL�V�sk�G�`~��@�8*�޷��Σ���egQ>�ȭ�A��))`�i,�M���[�M�	-��ux�;�Fhi:9��,_���\5�8}��9�8��T��o#]J�W���d
��o��`<�=�����_��d`�,�4'��v<#'$luo�	0���	i:�+{3� �h����&�&�U�`�N�	�H��t�g���^Q^b�g��t���E�O�<�����;Ї��v������~��=�moH���>��>:և�ݮ���]�Zܴ��85�@ŷgz.T�
~ad{dh��'i"��4e���s'�Ҁ�ޏ_���������4�h'm[K���nݠQս�����$��$�L<���M0��j�(��b����)u����Ϲ�*����!���m��8ޯͬ����`��<y)2�!��(�n�PD�[�A�����+��|�^�'?'&6k�C�S��,g���Q�B�QK�d�W�Z�4E�5�ֶޮ�6�|x��qu���π�t��B:���8�����3��tFz���j]o��s�X�t� #�q�^E�ށ��E����[�:�4��7"�D��|���A��j<�ݘ��/�)��'��~�'�a����♕�~��緭�c��j?.vL��W��k�Pb,�6�����*@���F��pq��v��=mE���S=Ə'�!a���ʞ��m�b���oP�|��zM��B|�"��-���6r�"�h܉�{SSY�-/$�'��?�oM�O�C��x�;	�������>�Tk.q��g�fZ�K���R�t(�:a)<\5r���P@QnL��z,�D�3�,���1�kw2��Q]�q4����v�o�z�1򆏆=]*�� ��YEFȝ��y��^׬z���z�\�͢�y�n���	[F��BUU�Mm��dg�g����![�'vB)6aa��b$��g�j��3�C׆s�,R��}��Z9��s�[�T�I�!OI -�qz�d:d(S�������<��Si���V8^���-�~�9In'�i;�3�`�[c�c��W�2��9N?o��蔅��4�(�|ՖCY��Iɺ�*�q$����*��>1��.�fJ4RDq'0�������O�����j<!�{e�=�O���'l��D\�u�BT�ჯ�(B��3���2��d�OnE�Z�����iod�ȥk�ځ&��Hkҩ���<��I7��#*u�
)�I����N����L"���Z��q<��3��鋐��G,��f�FdH���#g�(/Q[}����g��i�x�B`��b&�oD�W̢l��υ&O��V���~��N���Eн�r�t��T����+}�`]q
'-�T���Jˌ�psQk��K��ך����(���L��T�d?h�ɲ��͘'L�=?,�5�)MG�A_$b��.��ͷ?�ԣ�m,L���d�(��2>��W=l��v	=��>���a���Y�M���dY�̣�ER�|&(满M�B�DC�H���	�	f����'+k|%3S�P���)a2���4��������T��-��R�t���}s��^Ug��9�W&B�}%Ù�3m����yN��cL�'�J�~󳡳���5��ř��?f���O/S t���y��L����*d��w��(Nb�:&XBp������V9r~s5�<�D���J�!��v��X�����sCG����E�L܂�<X�2^�Ძ�]nfM����o�$�=5��"F�y�vO�X��B�x-a�T� ]
*��    \��BCu9d�υ�竬�	�B���**��Q�=�����c�G�G,�˙���2�#x7�����I1��t�r�8ۯ%�9�U��)��^�#S^������"e� pq���l����b��kMdZH��*�1��v��<���*5+ge�o�X9zQ�פ�����˪���ۗ�n-S)w���2�-F��2>�mw�k��~�64}�([�R��b�*�@�̊�V��L�ϐ�n�J'��r��-Y,t�̀���t������	���
�k�b��8�1�-���	��#9e���1{(�-	�#���.�((��x�b�aP��H�WeɊ�������a�����J������-@��d�C����,�Tɇ�
l�t��Իk.e�2���캍p�ݎ�c��l�>�bտG-���3��"��4�
��v�|X����gE����Λ�Q?~ ]۝hyq�m.�l�k��n�&�?��Z�V^0�*�+��'Ms�8[<��UaF�%�Ҡ4�`�f�o|�T�_V��[B��WUoy,�;:`q�e�Y	� ��-�Ts������8�H3f�H��6��V��ink�T#���<�� ���; �3�4-�86��»��,�C"x�9���\�ŭ����5�������vG%9Q��-���Y�eDU������j�>0��Ew� u}���|F�P��+�V@M"�A��[���cN��q�>��#4��`b��~��yХ]&h����v��&�����.=�fT��y��`W,r�|��t=|�I�G�9q���x��=(���U�P�+iu�.6nJ���lX.ܨ�J�1�u�^1}i:�*\�c��e���~
��02`������$�"�����QgK���XP��oi�XP�%Ѯ�ꛀ����
P���?^I(j�.e���+��D�@Ѻ �]���Q�k�&�\n�s��U;%��Ɍ���<��r�%�՚⮖9�ە퉹3������Z�.=�%�gS^6@����j1���ȞhPvZ�`��Z����i��	��Z,Q�/ɞ��-*�*�8=U4�1��O	����cU�X_�	ɸ2��	n�q!�M��0(|��gP@.��Σ��@�0	�>��,?�so�Ty\U�(�g�p���J�<U�ې�.un���G�(7-U���ۋiB�,-QS^$�ܠANi!Ly�
���`�,�O���.
7r#�e4�eh���I^%۹�Qہ�����eEEDOjV�I�����yID���o7!�N����N.Z�a�:(���E����7\8�֨C���ե/��[�,��K4���y�_��g��h�w$խ��dz���(o+��)5�͕ް�ĵ���h�� $_d��P�c#.�.g�&�jcO���l��c_u�	�u�!�I*A9X`_��F[�үz�6��/���lp��[�3)��ߠ~nKX�b ����fl>՛���/�.$� �4�Jd<�V�Euo�\v�)�$��:�惢tD�S6Y�k��ū�7�;y�ؑp��?<������{܌g������ ��-O@����=�<���Z!��LA�y-_Q�h�ʞ������疫y�O���$���s�������l)�?��E rX����x!�@��l��ճ�	��$xDf4��\�,z���3ȿ!������'��MK���Xr�?��t�f~�T�z}��¿r�RlE��G�
�I�������*_�x��$��F�@�����L��J�\��/�NƋ��>o'!�^���f[RBV� ��)�v��HH�*��9��ۓԔ�7;tN�^����H��H����������+T_�ҟ����EI6�`�/��&Ls4d`�^�v��5
E�Y:���?��`Y|K�;��
#���'�7��ET:Oс���P��5���4d<U��Kt.X.���yd�N�+&���]�6��f�+�HP�z���=���(j�9n23��{�y\�taD������Zo�� �{�z�/T=�ݙ�kEB7����Z@����.s/���t�@����3��&��]������u�&���c�T#��*�^�W�_�#�hZV��/��в�7\�Tg���~,��%��:�DX(�bVIJ��4��{bZ�p�� YY�G�M�K,����\����$�=pb����Õ��lT'�.�� �H�X�������5��]����9j6o�AK����pY"0��6d������vZ$��0'�ĉN[�Bk��d�̠��p�g���3*�P����g����|���\_��~�ZM>���p�8|�*6�Ǒm�po�S�/��˦$V��1�/�a:�Y�~\R��sx��5F�x����½��y._��3dyt4E`с�o����mq�y��;���䠐�aƁ�}��	
O�p��MFs�5����%Ƣ�A�&�''Gdn�~�c.�;��2p�e����z�]����F;Ra�C��� �|n�Y�1MLH�ZyH�!�L�U�N�ۭ�o:Mz�
�,8t���\	dV9ēƺ���3F�L���Z4r�K�0e%��v��r��Vk+kbU�5q^��3�b���0z�.ʯj��5�������e
�<�
Q�W�{���E��J�DT!I���{��m�pyR|iP�=�YCN���n㪦���|O���y�AH0	�p_;������d~@�h".:S8�e�� ��X�..��#����S]�S.q W��g�(s�������jJ��]B �+"q{�)T��/^��Ï��G3��)G�מ�!��0IID����W�}A5�bV��緅�81DD|�tL��$BhQLj�5l�4S�iAe>o�2ܖ��c��s'����yF�>+�C��V�Z�I�|���J��?c0�����Ae��`K�u&�:�h��JUey��=a���+��Ț��(r�me�$qC.0���=ﱺ�/��W,��+e)�Y�R|Y%r*R���pN����� c0����
��Nǈ��(<�M{�M�]�)�����fR`qIQX�U��*�gX�U�'�Ɓ�2��Kû�Ռ,]�QI��_�2v�>l�E�e�`��+^��]�c��~��F���wT��Q��{�2��<�G�	M��u�0)�bmiݽ��[� 
�{�7����E�k�9�-��7ѳq�X�X�WQ��
A��$>��G-������V����&-9�+�i�<�Ij�R�^qf9�ǫ��,�|�6��ur���[��?A�[ q[!D~������Lp�����S�֠������WZnԑ���AB�����8|��M��T����}IH���	��co��TD7}���"n�z��ᕎv'�/fyr@Ƈ+�X�yZ���0�uXZ�G�s1�q/[�	T���l�<W�װ����u@O�)C��SZ9^;6�̤z��x�Ҧ�6@�f*^����ٌ�54!�}>9ł��4�� �'�c�ɾ���ѝ�`�R��q"�G���6*���ܶ)���8�{%$
�Z��	�}���9�4J<޵��B�Zg7_�SV��^������a�m:n���z&F6�[�cK����!n���W�����7>�$ЩpQ�/F���]�4�������^�t׋�;�[S��@�wՄ��q ��U�B1��cC�^C*�⡯ot�4=
���^�hXvE�^���d�tg����d c^��R4�wY�D�v�)�j���C���Y�f�f�&SZ��0��D�4��>����V��������������d�i��gv��]nκ��U9k�Y��٥��|�GB!�X�햊ỵ�բj��!ǎ%���wH��t�����D�������)�NFڧچ��	~Fy�j\����~3�'p�����m�&ф�D��KQ��*� ��G0%�N�  �ퟭ{(U������E2�������6P~]�v��.�d�D\g,ff�ᬟ����g�K�7#��lq=vĒC����r���wG�A�L��X�gh���
�?���Bv	0V 3�S�J٘+�]nQ4Xn�:\b�ru��R��Ntl   ���&�`5hc�	�����m�|b��x�D��(�Ӯ�ܲⰂzg��q21On�B[���,�n���U�g�J*�l�.�H�^�L�h�l��}��Oϴ��^]g��T���$�	:�n�YP)��r��o�=d��	MO#�Mrm��	 <�������_2�,'A�0��;E�<+�z8�;�K4�y���K
�Ï��Uď{^:�"PcGجc��ThWӈ�˅�]}����E����]~��+%�����O,N�W·���o߾�TȠR      �   ]  x��X���F�����N� �*E���r�g�])XW)i=����0%��(T���lS�؞s���q�@�D��}_��X%�V�Nz�T��i}�)�l�Uݟ��7��x����NU�U����jיv�ھ1AS�ڸN��&�߬�d���[]�I��Y_y���VE�[��}cuPa*��Ce���8�+��J`����?w���Q�i��;eT���n�$��,7�2�$�J����Fu��j<��S��Mݘ����U�*�ڙ�'G�7>W7��u�I��.DΔ�ݯ=�~4�iE���}�H�ձw��3�n��b���^����3{s��m>O�^Sy���i�����B?6m4���=bU��F���I�H��͵_i�Q�Ζ~y�M2(��˓j�wg>4�*�m�[\��ry9Xg�v^=�2^"�j_�@�Q�V��t���Rn�ɿ��{}D�Ο[���>Z��a�� �B#�M� @�҇>�1|t|g�Y�O@xi ����f.7�b}e'M� ��9��`Ti��;��F�k��ӭ� �	�"WX j�> �zr�\ӧ�D��,�U_?<��p�ȐL�G�IEN�Q��NZ�	��g��H��W�Nג8�q=C�OQɻ���?��j��*�I,�R�Е�ë�˒��&�(I�jL${���oma�3��d^[-�@du����JLr���e��T��H7���  JJw����%\�:����x}^d�Cv�KNTC�n�m��%�F{�!#�R����8dS���W��b���p���6Ġx���t{�M5���b2C$��k� �� i5���4�� ��Z{t��!��@ZtT�ޥ�<��hmg���D|��h�)����3ABκ��nR�Z�΃�`1�,>�^t}�G�8��'�.�l�[��Yj��^P])l�Z@$��H&/��2Ͳ��y�{5���� ?��*jv�T�����4[�\V%� ���������Q2*]��	�C�4��IY�a�<F*^���d�&O�<y���EH�gP�/��G�U��j����T�H5�kH���w>�י+^(�4/�UY@l�+$F��X�ȻX%� ��=R�'HA����G�W�\�h��|�G�e��Ԥ+��6Y��i�N�8�ZG���g�<�:a�O�3�iA�6�Wp�&y���^��>����^�������������O�����L�w�S����������ڿ��.fnҹ-x͈_$9�8���7�-"qQG=f���tG}���	�v�~`�}�7�XSm�Z"$=1�5O���-��F��#c�`��ز�'Q��
���-IY���vJ��2"A�]�%R�-$u���:�Ϫ�#;�!i_IyH��7��e�t����˾#,�eG�߲r�oY��_�ܘ���#�������αAO����tU�ՠ�e׋N�F�b����Rvɛ��t�G�R=�Q����m;A�6�6p��Y�iv��QD
,���tMϢ����;L���0���{ �#���3�j������=n��4�s0��-���G eS�4��qc��4��<:�$+c=�F�Y���5�$_�}��5W�R�H.u�Y�pM�T�歊�p0�GHͶ�Vn��P�RWz'T���R$A�N�Yi1�8$���>�9�������9̖*���ɓ�Sjɜ1���y`Kwդ�{N�a�O<1���=1
����0Cy��O���ݸt��+�Ps��󗊨��3�t��&��O` ��ص��ɐwvܞ�������]J�����a=��Fh,d�n��F+���q@�K��bf�#|;d��O7q�kv�?��_- �Pxi��ӳo��e�l�E��5O6�<]͓�ƕ�<����ޱp@����S���޿�Á���j�_0��l��������  �{�;	Ɖq�a"&N��_�/�ՓC�9J2e'��<�w��D}��_�Ih&?����s�W�$;n"�A�u���\q�H��ݰ����� �Zm��8PN̱����#<�.�%�3c	9�r��-�%V�"���l������޸M�<�]h�����Z��E�L�WWK"�-̋�Gj�K��Hv�%��"�x��������      �   �  x���K��0D��)x���-�Æ>%i#��r�̑|���l�z'UOŢڳ9ԧ�>yp4�"� ����v}�<�p����٠P�	.(p���F0�hU{y�z���Qa@vn^_:%<`��E�!�맧e�/g��F�����7X�Z�6�[��R���1D��Sjט�n�K��c&���<�s��	<�����.��jl���O�w�F-x���\�u�!qR���D�����X"�C�M��ݮ�����g��~*Y/1h����JڄuRmg���\u�/P��i� �b�<��S�]���-<4nf�˓�:��\/MsT�$�Ǟ�_�nAW�����9�gL?
-Z�s̱�_��Eo�6�ܱDO���[UU �d��      �      x������ � �      �      x������ � �      �     x���Kn�0@��)8A��ֽF��7�I�*n�d<�Oذˌ��'{f�̧�w�r�]�v�9>�3K�������۠��b���a�`J1X����C5��!޺i����	�H9��`�O�((�#+*w"�6�є ����\^G/D�t�� R�J��K2�O!�
�O�*y>���	�����	h�l\����N>����n~���`��5c�Q�l`R�Izmx��|�g���ud=���cdU�̠'a��C=�D�3V�p���k{?ߣ7��-T�+�$�j]�((aQ�
M	r���F}�s���	[��W$=6êL/Ͱ���33X�s�c~lY��iC��ݦ�{��`�*���`N�[�V""�"����l��J4!��1���\�YF`�m��Eby���E�y�)ZFri�U��s[�8�+qm��Ca�z�������2D��KwHP�^{ޥ?�J�Z5�����Q���7{Dۼ� �}Xk�f��T      �   �  x�m�Ks�@���W�pgI��h��*J�&���Ě��F@1<�M���8�83��]��s�i e�y���fz���t�,�`ҵ��n8���1�^o3.]z7�D���w�۫��Ξ��,Z`q�~S0¨��TE�Et� 6�B�(���P�D�2^Z�ܬbF�2����% 4�)Ǭ*q�2r�n?3�FD�H���_4��?��bz�ݻY�۷;bO�N��=���eg~!#CE�B�B\���qBv|O��Ӡ�Ҥ��)�T$��,E�f�浊�׹��E�(� :z�/k���������mt��V�k�����ѣ'��ԞmwØ�3��Nv7�L�4�*�E�����|�`�0�EYO��J�ZV+��|�y ���"��A3�3�\����(�ڍ�b��v�r5�Y����t��D�>����.{O����*Fb��pl�ځ\yH�"
YD"��͏6Β��Q�,�[�kcF�Hm\���s9�w{27��ӱz��d�l-�p���ф�l�%,��b�\>����:��\c�:��>�|�Ȣ
I�0O�Q��ZG�����s	�Y�-�;n^fw>F���>��}#�;g(�Y���ܿ�qw5����8�9�1��$���cZ,�k��}�'��S������Ţz��	-���L���"	�"�|���J�߹��k�ϛi
������/xJ�      �      x������ � �      �      x������ � �      �   �   x�M̱�0F���)H�6���B���	���U�@u"��cbr�3} 6��U1|�zf��`4�4�t*i>��t�bLQ�jYׁj���`�*�ծs�ڝp������/"�X���X.�r�Ï>k!�w&)2      �   �   x�UMK� ]�;�������"N��������?C܏h�ޅ�:�Z^�����Āâx�5Ḑ���D6��jeJ.�	Δ���?�+q�T�[�U".k���'n�yG�=��Ĳm����ڦ`�Fo��n��n~���; ڐZG      �   N  x���k��0��Sp"w����dy��X�k�@����@`��)ʏ$���\6Ǯ�B;M�>�c\l�}] { 80�VI�/��=�a����B� A�N
^�S����)L񐠫�3�nMw	���9:m3,X�����9�b׺?�?��G���6�X������i��98�x�_b���.�q�o�6J
m�����S\�&�c%�]�?]�3}���Z���+��P�H���X��(�e� [)♒n�N�O۱r��g# +C>3j?Ni�"M6�߄l��)�J*J���5ޜ�K�mC,*���W��Y��:���cnM�npMG��0�Z�Ċ3�鼉Y�U,�7�+�~��G(4�6�����P硛��a��Je�^1��"
����S#��BH��c�1ܾ|���g��e#�r$ �(��ރ��W̖�N0���+��K��P�U��"ˊ�u����u<�#��r�I	���b���[�]�zU"��i���Dv`�'�RUB�Lh&��V�x�Tp��������cSIS�P0%���E.�q!�GI��AY%��-`^m����M�J�)s��py�_�n���~��      �   �  x�͕ˎ�8E�U_Q?P�0��.���B�RRĨ'<6�@���&�VKwгH�3,/�}��g��Mʺ1��u��L��H��5��m��)�uj���1*�%Cз�\���V���}������SF�O����?~� ��;@A� �@���"&y�k��I��p��SW�gV�[�.�x���hy�'��K_;De�J�R䫨څ�b��d��Ѷ�K���U�g��愿ut��q�;���	}�l���TiE�k镍�6-OT6�R���_sz=;}��'��^:� A_U��r��*Q{���6���0E��	q���Μ�Z���a0�G�>j�r��h�Y��!�~�#��$8x�Ra���7�vq��2 Aغk�q�L1C�q�j�)s]�C�'�}%�I}3ߠ� ��d��a�ξ��'1i::�6�[��k�D��,��&�+��e��5���0�2�E���+��BI�UU��%y*�:�^ ���SN���I��'KJ�g�!x1(˟[7����R��n.�Gp�ɹm|M{��q�61;�,�>�8�^Y���K1\��Y��>�e3��a�@-��c�T6t0]!�"b��B=��$�0�j{uAY���H���Sن�@����Z�Y���UUR�|�u�:��6��yOES��+�@���j t�uŐh�Hi�g�T�5�(*��d��l��d@|gCI�2��sZT¬��ss�CeNGa�0��`�@���&V~�(����@��@Kÿ����]x\������U�w�ܹ\��#��hy��͞,Q<��n�qY=G�#tA��eH�!zG�m�	��D\b�������	���$�T\er�;�/+m=��J��G"��-�������a��9p�����m��w�U;�h��ҟw�tbz��?�HE�w}��/-��[�b3���R�z�}����æc�e�M V�C~IQ_�)oD�0̌<뀠2/�8=w�<\Y���?V����9֦      �   >   x�3�,)**I���N��.��4202�50�5�P04�26�24�305750�50�44����� �'      �   [  x��UK��F]sNQь��+��8���H�g�M�ْ;nvk��D��9����7�US�H�� Ql�>�ޫ*��ſ�T!
�z�I7A�6�F��I罒Q��F5,��>o��i��QT��
"w�6�������O!��¨@;���:D���'[ī$�yW�8R��η���=`)22�0k�I�.�Z��W� �29\���f�g.B�`�W���эh�N[a�V^ �m���E�ֿ?���Ŏ�����8��$�c�����ų��uL}��3݇�=V��Z3���U۽�&��~`�1��p��)ؗ��9��8OVK%�IY���!S:��h����톩�X��?���_�l�?2\g�^o�]����Yq�x�:sϑ�*"��K)n���[Yn.7�W#�|��7��W�P�>�-nr���jO�4��Swu���L/.fڷ��A���~,���:�n��l"�w�s�WE�X�T-h�P�l��~.i4}��r>��bU�'��fQ�'%ݗ4���d6�t?�����8d�ټz�zX���?�^���~�����0wk��<=&EAop�T��c�TlmmD�lkE�>h��{�8��O+Ҋ�<S
�ڴcV��)�����O��>Y��@>�R&�L��?&1\�(�|�M���ڷ���� �z��u�D���y�Q���d\���!D�-K,l�y\d���������tJ� /�/�'H��i�t�-]��%Ϊ�h�bc�{A�g}����NAf�����b�؝6I�2�6�X�c���`��/�v�V����v[��6ۼ��:@	h�%���*M�7�n�����=���5�z}uu�M&�"     