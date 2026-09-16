--
-- PostgreSQL database dump
--

\restrict nVftDm29GLRWp5f6LguEb8h7f6S0u35lFZE5flUgyvGg0qLb2QtsdRDl1utn749

-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

-- Started on 2026-09-16 11:12:54 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 24577)
-- Name: cliente; Type: TABLE; Schema: public; Owner: sistema_mecanica
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    cpf character varying(14) NOT NULL,
    telefone character varying(20)
);


ALTER TABLE public.cliente OWNER TO sistema_mecanica;

--
-- TOC entry 215 (class 1259 OID 24576)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: sistema_mecanica
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_seq OWNER TO sistema_mecanica;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 215
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sistema_mecanica
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 220 (class 1259 OID 24596)
-- Name: servico; Type: TABLE; Schema: public; Owner: sistema_mecanica
--

CREATE TABLE public.servico (
    id integer NOT NULL,
    descricao character varying(200) NOT NULL,
    valor numeric(10,2) NOT NULL,
    data_servico date NOT NULL,
    veiculo_id integer NOT NULL
);


ALTER TABLE public.servico OWNER TO sistema_mecanica;

--
-- TOC entry 219 (class 1259 OID 24595)
-- Name: servico_id_seq; Type: SEQUENCE; Schema: public; Owner: sistema_mecanica
--

CREATE SEQUENCE public.servico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.servico_id_seq OWNER TO sistema_mecanica;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 219
-- Name: servico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sistema_mecanica
--

ALTER SEQUENCE public.servico_id_seq OWNED BY public.servico.id;


--
-- TOC entry 222 (class 1259 OID 24608)
-- Name: usuario; Type: TABLE; Schema: public; Owner: sistema_mecanica
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    senha character varying(100) NOT NULL
);


ALTER TABLE public.usuario OWNER TO sistema_mecanica;

--
-- TOC entry 221 (class 1259 OID 24607)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: sistema_mecanica
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_seq OWNER TO sistema_mecanica;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 221
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sistema_mecanica
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 218 (class 1259 OID 24584)
-- Name: veiculo; Type: TABLE; Schema: public; Owner: sistema_mecanica
--

CREATE TABLE public.veiculo (
    id integer NOT NULL,
    placa character varying(10) NOT NULL,
    modelo character varying(100) NOT NULL,
    marca character varying(100),
    cliente_id integer NOT NULL
);


ALTER TABLE public.veiculo OWNER TO sistema_mecanica;

--
-- TOC entry 217 (class 1259 OID 24583)
-- Name: veiculo_id_seq; Type: SEQUENCE; Schema: public; Owner: sistema_mecanica
--

CREATE SEQUENCE public.veiculo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.veiculo_id_seq OWNER TO sistema_mecanica;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 217
-- Name: veiculo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sistema_mecanica
--

ALTER SEQUENCE public.veiculo_id_seq OWNED BY public.veiculo.id;


--
-- TOC entry 3298 (class 2604 OID 24580)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3300 (class 2604 OID 24599)
-- Name: servico id; Type: DEFAULT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.servico ALTER COLUMN id SET DEFAULT nextval('public.servico_id_seq'::regclass);


--
-- TOC entry 3301 (class 2604 OID 24611)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 24587)
-- Name: veiculo id; Type: DEFAULT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.veiculo ALTER COLUMN id SET DEFAULT nextval('public.veiculo_id_seq'::regclass);


--
-- TOC entry 3458 (class 0 OID 24577)
-- Dependencies: 216
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: sistema_mecanica
--

COPY public.cliente (id, nome, cpf, telefone) FROM stdin;
12	gabriel dias	103.231.959-38	(45) 99935-7214
\.


--
-- TOC entry 3462 (class 0 OID 24596)
-- Dependencies: 220
-- Data for Name: servico; Type: TABLE DATA; Schema: public; Owner: sistema_mecanica
--

COPY public.servico (id, descricao, valor, data_servico, veiculo_id) FROM stdin;
7	troca de óleo	123.00	2026-09-16	9
\.


--
-- TOC entry 3464 (class 0 OID 24608)
-- Dependencies: 222
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: sistema_mecanica
--

COPY public.usuario (id, username, senha) FROM stdin;
1	admin	1234
\.


--
-- TOC entry 3460 (class 0 OID 24584)
-- Dependencies: 218
-- Data for Name: veiculo; Type: TABLE DATA; Schema: public; Owner: sistema_mecanica
--

COPY public.veiculo (id, placa, modelo, marca, cliente_id) FROM stdin;
9	AZJ6G00	civic	honda	12
\.


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 215
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sistema_mecanica
--

SELECT pg_catalog.setval('public.cliente_id_seq', 13, true);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 219
-- Name: servico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sistema_mecanica
--

SELECT pg_catalog.setval('public.servico_id_seq', 7, true);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 221
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sistema_mecanica
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, true);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 217
-- Name: veiculo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sistema_mecanica
--

SELECT pg_catalog.setval('public.veiculo_id_seq', 9, true);


--
-- TOC entry 3303 (class 2606 OID 24582)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 24601)
-- Name: servico servico_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.servico
    ADD CONSTRAINT servico_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 24613)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 24615)
-- Name: usuario usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_username_key UNIQUE (username);


--
-- TOC entry 3305 (class 2606 OID 24589)
-- Name: veiculo veiculo_pkey; Type: CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT veiculo_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 24602)
-- Name: servico fk_servico_veiculo; Type: FK CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.servico
    ADD CONSTRAINT fk_servico_veiculo FOREIGN KEY (veiculo_id) REFERENCES public.veiculo(id);


--
-- TOC entry 3312 (class 2606 OID 24590)
-- Name: veiculo fk_veiculo_cliente; Type: FK CONSTRAINT; Schema: public; Owner: sistema_mecanica
--

ALTER TABLE ONLY public.veiculo
    ADD CONSTRAINT fk_veiculo_cliente FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


-- Completed on 2026-09-16 11:12:54 -03

--
-- PostgreSQL database dump complete
--

\unrestrict nVftDm29GLRWp5f6LguEb8h7f6S0u35lFZE5flUgyvGg0qLb2QtsdRDl1utn749

