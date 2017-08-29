--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2017-03-27 16:29:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13223)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 20022)
-- Name: RescAdmin_spacemng; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "RescAdmin_spacemng" (
    id integer NOT NULL,
    path character varying(128) NOT NULL,
    size integer NOT NULL,
    ip inet NOT NULL,
    port integer NOT NULL,
    containerid character varying(128) NOT NULL,
    sid_id integer NOT NULL
);


ALTER TABLE "RescAdmin_spacemng" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 20020)
-- Name: RescAdmin_spacemng_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "RescAdmin_spacemng_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RescAdmin_spacemng_id_seq" OWNER TO postgres;

--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 183
-- Name: RescAdmin_spacemng_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "RescAdmin_spacemng_id_seq" OWNED BY "RescAdmin_spacemng".id;


--
-- TOC entry 186 (class 1259 OID 20033)
-- Name: RescAdmin_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "RescAdmin_token" (
    id integer NOT NULL,
    start_time date NOT NULL,
    exper_time date NOT NULL,
    appid_id integer NOT NULL
);


ALTER TABLE "RescAdmin_token" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 20031)
-- Name: RescAdmin_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "RescAdmin_token_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RescAdmin_token_id_seq" OWNER TO postgres;

--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 185
-- Name: RescAdmin_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "RescAdmin_token_id_seq" OWNED BY "RescAdmin_token".id;


--
-- TOC entry 188 (class 1259 OID 20041)
-- Name: RescAdmin_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "RescAdmin_user" (
    id integer NOT NULL,
    userid character varying(16) NOT NULL,
    passwd character varying(128) NOT NULL,
    is_superuser boolean NOT NULL,
    create_time date,
    upd_time date,
    is_activity boolean NOT NULL
);


ALTER TABLE "RescAdmin_user" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 20039)
-- Name: RescAdmin_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "RescAdmin_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "RescAdmin_user_id_seq" OWNER TO postgres;

--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 187
-- Name: RescAdmin_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "RescAdmin_user_id_seq" OWNED BY "RescAdmin_user".id;


--
-- TOC entry 190 (class 1259 OID 20066)
-- Name: TestOnly_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "TestOnly_comment" (
    id integer NOT NULL,
    index integer NOT NULL
);


ALTER TABLE "TestOnly_comment" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 20064)
-- Name: TestOnly_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "TestOnly_comment_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "TestOnly_comment_id_seq" OWNER TO postgres;

--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 189
-- Name: TestOnly_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "TestOnly_comment_id_seq" OWNED BY "TestOnly_comment".id;


--
-- TOC entry 196 (class 1259 OID 20092)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 20090)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 198 (class 1259 OID 20102)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 20100)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 194 (class 1259 OID 20084)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 20082)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 200 (class 1259 OID 20110)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 20120)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 20118)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 199 (class 1259 OID 20108)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 204 (class 1259 OID 20128)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 20126)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 206 (class 1259 OID 20188)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 20186)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 205
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 192 (class 1259 OID 20074)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 20072)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 191
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 182 (class 1259 OID 20011)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 20009)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 181
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 207 (class 1259 OID 20217)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 20229)
-- Name: session管理_connection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "session管理_connection" (
    id integer NOT NULL,
    userid character varying(16) NOT NULL,
    session character varying(128) NOT NULL,
    ipaddr inet,
    uptime double precision NOT NULL,
    crate_time date NOT NULL
);


ALTER TABLE "session管理_connection" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 20227)
-- Name: session管理_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "session管理_connection_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "session管理_connection_id_seq" OWNER TO postgres;

--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 208
-- Name: session管理_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "session管理_connection_id_seq" OWNED BY "session管理_connection".id;


--
-- TOC entry 211 (class 1259 OID 20243)
-- Name: tskmng_tsk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tskmng_tsk (
    id integer NOT NULL,
    tskid character varying(32) NOT NULL,
    pid integer NOT NULL,
    name character varying(32) NOT NULL,
    threads integer NOT NULL,
    status integer NOT NULL,
    create_time timestamp with time zone NOT NULL,
    updtime bigint NOT NULL
);


ALTER TABLE tskmng_tsk OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 20241)
-- Name: tskmng_tsk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tskmng_tsk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tskmng_tsk_id_seq OWNER TO postgres;

--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 210
-- Name: tskmng_tsk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tskmng_tsk_id_seq OWNED BY tskmng_tsk.id;


--
-- TOC entry 2942 (class 2604 OID 20025)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_spacemng" ALTER COLUMN id SET DEFAULT nextval('"RescAdmin_spacemng_id_seq"'::regclass);


--
-- TOC entry 2943 (class 2604 OID 20036)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_token" ALTER COLUMN id SET DEFAULT nextval('"RescAdmin_token_id_seq"'::regclass);


--
-- TOC entry 2944 (class 2604 OID 20044)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_user" ALTER COLUMN id SET DEFAULT nextval('"RescAdmin_user_id_seq"'::regclass);


--
-- TOC entry 2945 (class 2604 OID 20069)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "TestOnly_comment" ALTER COLUMN id SET DEFAULT nextval('"TestOnly_comment_id_seq"'::regclass);


--
-- TOC entry 2948 (class 2604 OID 20095)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2949 (class 2604 OID 20105)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2947 (class 2604 OID 20087)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 20113)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 20123)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2952 (class 2604 OID 20131)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 20191)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 20077)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 20014)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2955 (class 2604 OID 20232)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "session管理_connection" ALTER COLUMN id SET DEFAULT nextval('"session管理_connection_id_seq"'::regclass);


--
-- TOC entry 2956 (class 2604 OID 20246)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tskmng_tsk ALTER COLUMN id SET DEFAULT nextval('tskmng_tsk_id_seq'::regclass);


--
-- TOC entry 3154 (class 0 OID 20022)
-- Dependencies: 184
-- Data for Name: RescAdmin_spacemng; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "RescAdmin_spacemng" VALUES (9, '/home/liujunxiang/SpaceMng/docker_mng/mongo_volumn_mng/../tmp/Xiaoming', 65535, '192.168.100.11', 5713, '55abc4d875e6', 9);
INSERT INTO "RescAdmin_spacemng" VALUES (10, '/home/liujunxiang/SpaceMng/docker_mng/mongo_volumn_mng/../tmp/melooses', 65535, '192.168.100.11', 5714, '6c39860138c26523a6ad91d94e6989c2d94eb09a3c9c8a20dbe66cbbb8fc75a4', 10);
INSERT INTO "RescAdmin_spacemng" VALUES (12, '/home/liujunxiang/SpaceMng/docker_mng/mongo_volumn_mng/../tmp/liujxcaa', 65535, '192.168.100.11', 5716, '57e22b5cad4eb49339e1582262fd42cdef544a6a4c125911de8003c171213527', 12);
INSERT INTO "RescAdmin_spacemng" VALUES (14, '/home/liujunxiang/SpaceMng/docker_mng/mongo_volumn_mng/../tmp/liujunxiang', 65535, '192.168.100.11', 5711, '9a512a04fa3f', 14);
INSERT INTO "RescAdmin_spacemng" VALUES (15, '/home/liujunxiang/SpaceMng/docker_mng/mongo_volumn_mng/../tmp/nuckysss', 65535, '192.168.100.11', 5717, '28e052dd22b76297677dc1fb465ab9d41ce16e1d8317da3e64aa38116760b784', 15);


--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 183
-- Name: RescAdmin_spacemng_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"RescAdmin_spacemng_id_seq"', 15, true);


--
-- TOC entry 3156 (class 0 OID 20033)
-- Dependencies: 186
-- Data for Name: RescAdmin_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "RescAdmin_token" VALUES (8, '2017-02-21', '2018-02-21', 9);
INSERT INTO "RescAdmin_token" VALUES (9, '2017-03-06', '2017-06-06', 10);
INSERT INTO "RescAdmin_token" VALUES (11, '2017-03-07', '2017-04-07', 12);
INSERT INTO "RescAdmin_token" VALUES (13, '2017-03-08', '2017-03-08', 14);
INSERT INTO "RescAdmin_token" VALUES (14, '2017-03-24', '2017-03-24', 15);


--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 185
-- Name: RescAdmin_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"RescAdmin_token_id_seq"', 14, true);


--
-- TOC entry 3158 (class 0 OID 20041)
-- Dependencies: 188
-- Data for Name: RescAdmin_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "RescAdmin_user" VALUES (9, 'Xiaoming', 'dc483e80a7a0bd9ef71d8cf973673924', true, '2017-02-21', '2017-02-21', true);
INSERT INTO "RescAdmin_user" VALUES (10, 'melooses', 'dc483e80a7a0bd9ef71d8cf973673924', true, '2017-03-06', '2017-03-06', true);
INSERT INTO "RescAdmin_user" VALUES (12, 'liujxcaa', '65a0ec385ca6a0c1e20d1f8270c28303', true, '2017-03-07', '2017-03-07', true);
INSERT INTO "RescAdmin_user" VALUES (14, 'liujunxiang', '65a0ec385ca6a0c1e20d1f8270c28303', true, '2017-03-08', '2017-03-08', true);
INSERT INTO "RescAdmin_user" VALUES (15, 'nuckysss', 'dc483e80a7a0bd9ef71d8cf973673924', false, '2017-03-24', '2017-03-24', true);


--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 187
-- Name: RescAdmin_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"RescAdmin_user_id_seq"', 15, true);


--
-- TOC entry 3160 (class 0 OID 20066)
-- Dependencies: 190
-- Data for Name: TestOnly_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 189
-- Name: TestOnly_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"TestOnly_comment_id_seq"', 1, false);


--
-- TOC entry 3166 (class 0 OID 20092)
-- Dependencies: 196
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 195
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 3168 (class 0 OID 20102)
-- Dependencies: 198
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3164 (class 0 OID 20084)
-- Dependencies: 194
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission VALUES (4, 'Can add user', 2, 'add_user');
INSERT INTO auth_permission VALUES (5, 'Can change user', 2, 'change_user');
INSERT INTO auth_permission VALUES (6, 'Can delete user', 2, 'delete_user');
INSERT INTO auth_permission VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission VALUES (10, 'Can add permission', 4, 'add_permission');
INSERT INTO auth_permission VALUES (11, 'Can change permission', 4, 'change_permission');
INSERT INTO auth_permission VALUES (12, 'Can delete permission', 4, 'delete_permission');
INSERT INTO auth_permission VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission VALUES (19, 'Can add spacemng', 7, 'add_spacemng');
INSERT INTO auth_permission VALUES (20, 'Can change spacemng', 7, 'change_spacemng');
INSERT INTO auth_permission VALUES (21, 'Can delete spacemng', 7, 'delete_spacemng');
INSERT INTO auth_permission VALUES (22, 'Can add token', 8, 'add_token');
INSERT INTO auth_permission VALUES (23, 'Can change token', 8, 'change_token');
INSERT INTO auth_permission VALUES (24, 'Can delete token', 8, 'delete_token');
INSERT INTO auth_permission VALUES (25, 'Can add user', 9, 'add_user');
INSERT INTO auth_permission VALUES (26, 'Can change user', 9, 'change_user');
INSERT INTO auth_permission VALUES (27, 'Can delete user', 9, 'delete_user');
INSERT INTO auth_permission VALUES (28, 'Can add comment', 10, 'add_comment');
INSERT INTO auth_permission VALUES (29, 'Can change comment', 10, 'change_comment');
INSERT INTO auth_permission VALUES (30, 'Can delete comment', 10, 'delete_comment');
INSERT INTO auth_permission VALUES (31, 'Can add tsk', 11, 'add_tsk');
INSERT INTO auth_permission VALUES (32, 'Can change tsk', 11, 'change_tsk');
INSERT INTO auth_permission VALUES (33, 'Can delete tsk', 11, 'delete_tsk');
INSERT INTO auth_permission VALUES (34, 'Can add connection', 12, 'add_connection');
INSERT INTO auth_permission VALUES (35, 'Can change connection', 12, 'change_connection');
INSERT INTO auth_permission VALUES (36, 'Can delete connection', 12, 'delete_connection');


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 193
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- TOC entry 3170 (class 0 OID 20110)
-- Dependencies: 200
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$30000$vIXVs1k2Y9Cf$EsL/bVBE1TFEXwEMhs50d+ADo2N7NpUxS/ytd+UDX0Y=', '2017-03-24 16:46:45.071506+08', true, 'liujunxiang', '', '', '262765633@qq.com', true, true, '2017-02-15 12:52:54.600682+08');


--
-- TOC entry 3172 (class 0 OID 20120)
-- Dependencies: 202
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 3174 (class 0 OID 20128)
-- Dependencies: 204
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3176 (class 0 OID 20188)
-- Dependencies: 206
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_admin_log VALUES (1, '2017-02-15 12:55:51.398587+08', '1', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (2, '2017-02-15 14:05:00.087906+08', '1', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (3, '2017-02-15 14:31:41.39641+08', '1', 'connection object', 3, '', 12, 1);
INSERT INTO django_admin_log VALUES (4, '2017-02-15 14:32:30.739162+08', '2', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (5, '2017-02-15 14:35:39.154703+08', '2', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (6, '2017-02-15 14:36:06.59586+08', '3', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (7, '2017-02-15 14:36:49.85004+08', '2', 'connection object', 3, '', 12, 1);
INSERT INTO django_admin_log VALUES (8, '2017-02-15 14:37:59.870521+08', '3', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (9, '2017-02-15 14:43:05.602895+08', '4', 'connection object', 3, '', 12, 1);
INSERT INTO django_admin_log VALUES (10, '2017-02-15 14:44:20.027598+08', '4', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (11, '2017-02-15 15:16:15.81979+08', '5', 'liunamess', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (12, '2017-02-20 10:24:27.0688+08', '4', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (13, '2017-02-20 10:24:33.354342+08', '5', 'liunamess', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (14, '2017-02-20 10:25:02.935108+08', '6', 'liujunxiang', 1, '[{"added": {}}, {"added": {"object": "token object", "name": "token"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (20, '2017-02-20 10:37:42.244515+08', '6', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (21, '2017-02-20 10:38:32.229171+08', '7', 'liujunxiang', 1, '[{"added": {}}, {"added": {"object": "token object", "name": "token"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (22, '2017-02-21 09:35:54.647956+08', '9', 'Xiaoming', 1, '[{"added": {}}, {"added": {"object": "token object", "name": "token"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (23, '2017-03-06 09:18:28.916606+08', '10', 'melooses', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (24, '2017-03-07 15:53:20.502903+08', '11', 'MeSitess', 1, '[{"added": {}}, {"added": {"object": "token object", "name": "token"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (25, '2017-03-07 15:55:58.809782+08', '11', 'MeSitess', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (26, '2017-03-07 15:57:13.918633+08', '12', 'liujxcaa', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (27, '2017-03-08 09:25:03.292556+08', '7', 'liujunxiang', 3, '', 9, 1);
INSERT INTO django_admin_log VALUES (28, '2017-03-08 09:31:28.641784+08', '13', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (31, '2017-03-08 10:09:19.884183+08', '14', 'liujunxiang', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);
INSERT INTO django_admin_log VALUES (32, '2017-03-24 16:47:31.012022+08', '15', 'nuckysss', 1, '[{"added": {}}, {"added": {"name": "token", "object": "token object"}}]', 9, 1);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 205
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 32, true);


--
-- TOC entry 3162 (class 0 OID 20074)
-- Dependencies: 192
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type VALUES (2, 'auth', 'user');
INSERT INTO django_content_type VALUES (3, 'auth', 'group');
INSERT INTO django_content_type VALUES (4, 'auth', 'permission');
INSERT INTO django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type VALUES (7, 'RescAdmin', 'spacemng');
INSERT INTO django_content_type VALUES (8, 'RescAdmin', 'token');
INSERT INTO django_content_type VALUES (9, 'RescAdmin', 'user');
INSERT INTO django_content_type VALUES (10, 'TestOnly', 'comment');
INSERT INTO django_content_type VALUES (11, 'tskmng', 'tsk');
INSERT INTO django_content_type VALUES (12, 'session管理', 'connection');


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 191
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- TOC entry 3152 (class 0 OID 20011)
-- Dependencies: 182
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_migrations VALUES (1, 'RescAdmin', '0001_initial', '2017-02-15 12:52:06.247588+08');
INSERT INTO django_migrations VALUES (2, 'TestOnly', '0001_initial', '2017-02-15 12:52:06.25998+08');
INSERT INTO django_migrations VALUES (3, 'contenttypes', '0001_initial', '2017-02-15 12:52:06.277923+08');
INSERT INTO django_migrations VALUES (4, 'auth', '0001_initial', '2017-02-15 12:52:06.403408+08');
INSERT INTO django_migrations VALUES (5, 'admin', '0001_initial', '2017-02-15 12:52:06.434576+08');
INSERT INTO django_migrations VALUES (6, 'admin', '0002_logentry_remove_auto_add', '2017-02-15 12:52:06.453355+08');
INSERT INTO django_migrations VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2017-02-15 12:52:06.483869+08');
INSERT INTO django_migrations VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2017-02-15 12:52:06.497976+08');
INSERT INTO django_migrations VALUES (9, 'auth', '0003_alter_user_email_max_length', '2017-02-15 12:52:06.512036+08');
INSERT INTO django_migrations VALUES (10, 'auth', '0004_alter_user_username_opts', '2017-02-15 12:52:06.524443+08');
INSERT INTO django_migrations VALUES (11, 'auth', '0005_alter_user_last_login_null', '2017-02-15 12:52:06.540766+08');
INSERT INTO django_migrations VALUES (12, 'auth', '0006_require_contenttypes_0002', '2017-02-15 12:52:06.544238+08');
INSERT INTO django_migrations VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2017-02-15 12:52:06.557705+08');
INSERT INTO django_migrations VALUES (14, 'auth', '0008_alter_user_username_max_length', '2017-02-15 12:52:06.578404+08');
INSERT INTO django_migrations VALUES (15, 'sessions', '0001_initial', '2017-02-15 12:52:06.600998+08');
INSERT INTO django_migrations VALUES (16, 'session管理', '0001_initial', '2017-02-15 12:52:06.62305+08');
INSERT INTO django_migrations VALUES (17, 'tskmng', '0001_initial', '2017-02-15 12:52:06.636816+08');


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 181
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 17, true);


--
-- TOC entry 3177 (class 0 OID 20217)
-- Dependencies: 207
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_session VALUES ('39ns2nrij6q60for9ugoaic3vsqpc7bs', 'MDAyYzU5MjFjYTdiOTVjZGExMzAxNWMxOGMzYjY5NmY4MDA3YmM4ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjMzk3NjZkMzZkYjJjYzc1NjVlNTQ4ZDYzMWE3YWRkYWY3ZmJiNzYxIn0=', '2017-03-01 12:53:04.182508+08');
INSERT INTO django_session VALUES ('njvg8v11oe0u1ikzeuyh899jp1z8qlj0', 'ZjQyZTg3YjQwNzBlMjY4MjllMDc2MzExMWM2MzA5OGIwY2I4NjQxMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzM5NzY2ZDM2ZGIyY2M3NTY1ZTU0OGQ2MzFhN2FkZGFmN2ZiYjc2MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-20 09:17:38.492599+08');
INSERT INTO django_session VALUES ('8yi54279pxps6tawsplu4zt0833u162y', 'OTVjMTNiNGM5NzQwM2IyMzQ2YjFhMDAzNzU2NjMzMmZhMDk4MzdiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImMzOTc2NmQzNmRiMmNjNzU2NWU1NDhkNjMxYTdhZGRhZjdmYmI3NjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-21 15:52:38.05372+08');
INSERT INTO django_session VALUES ('qet8y5a1d1yw8m44dvkrv0mu3bh9s2jk', 'MGYxZGI2MWM2NWJiOGIxYzRjMDVhNDk4YTY1ZDBiZjMzZDQxZGYwZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzM5NzY2ZDM2ZGIyY2M3NTY1ZTU0OGQ2MzFhN2FkZGFmN2ZiYjc2MSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-04-07 16:46:45.078836+08');


--
-- TOC entry 3179 (class 0 OID 20229)
-- Dependencies: 209
-- Data for Name: session管理_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "session管理_connection" VALUES (120, 'liujunxiang', '58ab0824af2a46d69de0eb8770f91f4f', '0.0.0.0', 0, '2017-03-27');
INSERT INTO "session管理_connection" VALUES (8, 'Xiaoming', '3351a30566f444bd9991b0aa65e7b1b2', '0.0.0.0', 99636.6819999920408, '2017-02-21');


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 208
-- Name: session管理_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"session管理_connection_id_seq"', 121, true);


--
-- TOC entry 3181 (class 0 OID 20243)
-- Dependencies: 211
-- Data for Name: tskmng_tsk; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 210
-- Name: tskmng_tsk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tskmng_tsk_id_seq', 1, false);


--
-- TOC entry 2960 (class 2606 OID 20030)
-- Name: RescAdmin_spacemng_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_spacemng"
    ADD CONSTRAINT "RescAdmin_spacemng_pkey" PRIMARY KEY (id);


--
-- TOC entry 2962 (class 2606 OID 20052)
-- Name: RescAdmin_spacemng_sid_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_spacemng"
    ADD CONSTRAINT "RescAdmin_spacemng_sid_id_key" UNIQUE (sid_id);


--
-- TOC entry 2964 (class 2606 OID 20050)
-- Name: RescAdmin_token_appid_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_token"
    ADD CONSTRAINT "RescAdmin_token_appid_id_key" UNIQUE (appid_id);


--
-- TOC entry 2966 (class 2606 OID 20038)
-- Name: RescAdmin_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_token"
    ADD CONSTRAINT "RescAdmin_token_pkey" PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 20046)
-- Name: RescAdmin_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_user"
    ADD CONSTRAINT "RescAdmin_user_pkey" PRIMARY KEY (id);


--
-- TOC entry 2971 (class 2606 OID 20048)
-- Name: RescAdmin_user_userid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_user"
    ADD CONSTRAINT "RescAdmin_user_userid_key" UNIQUE (userid);


--
-- TOC entry 2973 (class 2606 OID 20071)
-- Name: TestOnly_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "TestOnly_comment"
    ADD CONSTRAINT "TestOnly_comment_pkey" PRIMARY KEY (id);


--
-- TOC entry 2985 (class 2606 OID 20099)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2991 (class 2606 OID 20154)
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2993 (class 2606 OID 20107)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2987 (class 2606 OID 20097)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 20140)
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2982 (class 2606 OID 20089)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3002 (class 2606 OID 20125)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3004 (class 2606 OID 20169)
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2995 (class 2606 OID 20115)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 20133)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3010 (class 2606 OID 20183)
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2998 (class 2606 OID 20212)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3014 (class 2606 OID 20197)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2975 (class 2606 OID 20081)
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2977 (class 2606 OID 20079)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 20019)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3017 (class 2606 OID 20224)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3020 (class 2606 OID 20237)
-- Name: session管理_connection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "session管理_connection"
    ADD CONSTRAINT "session管理_connection_pkey" PRIMARY KEY (id);


--
-- TOC entry 3023 (class 2606 OID 20239)
-- Name: session管理_connection_userid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "session管理_connection"
    ADD CONSTRAINT "session管理_connection_userid_key" UNIQUE (userid);


--
-- TOC entry 3025 (class 2606 OID 20248)
-- Name: tskmng_tsk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tskmng_tsk
    ADD CONSTRAINT tskmng_tsk_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 1259 OID 20053)
-- Name: RescAdmin_user_userid_af0a3d89_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RescAdmin_user_userid_af0a3d89_like" ON "RescAdmin_user" USING btree (userid varchar_pattern_ops);


--
-- TOC entry 2983 (class 1259 OID 20142)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2988 (class 1259 OID 20155)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2989 (class 1259 OID 20156)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2978 (class 1259 OID 20141)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2999 (class 1259 OID 20171)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 3000 (class 1259 OID 20170)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 3005 (class 1259 OID 20185)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3006 (class 1259 OID 20184)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2996 (class 1259 OID 20213)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3011 (class 1259 OID 20208)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 3012 (class 1259 OID 20209)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 3015 (class 1259 OID 20225)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 3018 (class 1259 OID 20226)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3021 (class 1259 OID 20240)
-- Name: session管理_connection_userid_69b82628_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "session管理_connection_userid_69b82628_like" ON "session管理_connection" USING btree (userid varchar_pattern_ops);


--
-- TOC entry 3026 (class 2606 OID 20059)
-- Name: RescAdmin_spacemng_sid_id_89986f32_fk_RescAdmin_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_spacemng"
    ADD CONSTRAINT "RescAdmin_spacemng_sid_id_89986f32_fk_RescAdmin_user_id" FOREIGN KEY (sid_id) REFERENCES "RescAdmin_user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3027 (class 2606 OID 20054)
-- Name: RescAdmin_token_appid_id_71c0e72f_fk_RescAdmin_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RescAdmin_token"
    ADD CONSTRAINT "RescAdmin_token_appid_id_71c0e72f_fk_RescAdmin_user_id" FOREIGN KEY (appid_id) REFERENCES "RescAdmin_user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3030 (class 2606 OID 20148)
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3029 (class 2606 OID 20143)
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3028 (class 2606 OID 20134)
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3032 (class 2606 OID 20163)
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3031 (class 2606 OID 20158)
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3034 (class 2606 OID 20177)
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3033 (class 2606 OID 20172)
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3035 (class 2606 OID 20198)
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3036 (class 2606 OID 20203)
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-27 16:29:31

--
-- PostgreSQL database dump complete
--

