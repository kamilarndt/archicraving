--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


--
-- Name: artykuly; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.artykuly (
    id integer NOT NULL,
    tytul text,
    tresc text,
    data_publikacji timestamp(3) without time zone,
    autor_id integer NOT NULL,
    kategoria_id integer NOT NULL
);


--
-- Name: artykuly_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.artykuly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: artykuly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.artykuly_id_seq OWNED BY public.artykuly.id;


--
-- Name: freelancerzy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freelancerzy (
    id integer NOT NULL,
    uzytkownik_id integer NOT NULL,
    specjalizacja text,
    opis text,
    kontakt text
);


--
-- Name: freelancerzy_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.freelancerzy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: freelancerzy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.freelancerzy_id_seq OWNED BY public.freelancerzy.id;


--
-- Name: kategorieartykulow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.kategorieartykulow (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: kategorieartykulow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.kategorieartykulow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: kategorieartykulow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.kategorieartykulow_id_seq OWNED BY public.kategorieartykulow.id;


--
-- Name: kategorieproducentow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.kategorieproducentow (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: kategorieproducentow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.kategorieproducentow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: kategorieproducentow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.kategorieproducentow_id_seq OWNED BY public.kategorieproducentow.id;


--
-- Name: kategorieproduktow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.kategorieproduktow (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: kategorieproduktow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.kategorieproduktow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: kategorieproduktow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.kategorieproduktow_id_seq OWNED BY public.kategorieproduktow.id;


--
-- Name: podwykonawcy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.podwykonawcy (
    id integer NOT NULL,
    uzytkownik_id integer NOT NULL,
    specjalizacja text,
    opis text,
    kontakt text
);


--
-- Name: podwykonawcy_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.podwykonawcy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: podwykonawcy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.podwykonawcy_id_seq OWNED BY public.podwykonawcy.id;


--
-- Name: producentkatalog; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.producentkatalog (
    id integer NOT NULL,
    producent_id integer NOT NULL,
    opis text,
    strona_www text,
    kategoria_id integer NOT NULL
);


--
-- Name: producentkatalog_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.producentkatalog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: producentkatalog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.producentkatalog_id_seq OWNED BY public.producentkatalog.id;


--
-- Name: produkty; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produkty (
    id integer NOT NULL,
    nazwa text,
    opis text,
    producent_id integer NOT NULL,
    cena numeric(65,30),
    kategoria_id integer NOT NULL,
    data_dodania timestamp(3) without time zone
);


--
-- Name: produkty_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produkty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: produkty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produkty_id_seq OWNED BY public.produkty.id;


--
-- Name: projekty; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projekty (
    id integer NOT NULL,
    nazwa text,
    opis text,
    autor_id integer NOT NULL,
    data_utworzenia timestamp(3) without time zone,
    status_id integer NOT NULL
);


--
-- Name: projekty_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projekty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projekty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projekty_id_seq OWNED BY public.projekty.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.role (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: statusyprojektow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.statusyprojektow (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: statusyprojektow_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.statusyprojektow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: statusyprojektow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.statusyprojektow_id_seq OWNED BY public.statusyprojektow.id;


--
-- Name: statusyzamowien; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.statusyzamowien (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: statusyzamowien_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.statusyzamowien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: statusyzamowien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.statusyzamowien_id_seq OWNED BY public.statusyzamowien.id;


--
-- Name: statusyzlecen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.statusyzlecen (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: statusyzlecen_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.statusyzlecen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: statusyzlecen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.statusyzlecen_id_seq OWNED BY public.statusyzlecen.id;


--
-- Name: typyzlecen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.typyzlecen (
    id integer NOT NULL,
    nazwa text NOT NULL
);


--
-- Name: typyzlecen_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.typyzlecen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: typyzlecen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.typyzlecen_id_seq OWNED BY public.typyzlecen.id;


--
-- Name: uzytkownicy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.uzytkownicy (
    id integer NOT NULL,
    imie text,
    nazwisko text,
    email text NOT NULL,
    haslo text NOT NULL,
    rola_id integer NOT NULL,
    data_rejestracji timestamp(3) without time zone
);


--
-- Name: uzytkownicy_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.uzytkownicy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: uzytkownicy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.uzytkownicy_id_seq OWNED BY public.uzytkownicy.id;


--
-- Name: zamowienia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.zamowienia (
    id integer NOT NULL,
    uzytkownik_id integer NOT NULL,
    produkt_id integer NOT NULL,
    ilosc integer,
    data_zamowienia timestamp(3) without time zone,
    status_id integer NOT NULL
);


--
-- Name: zamowienia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.zamowienia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zamowienia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.zamowienia_id_seq OWNED BY public.zamowienia.id;


--
-- Name: zlecenia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.zlecenia (
    id integer NOT NULL,
    tytul text,
    opis text,
    zleceniodawca_id integer NOT NULL,
    wykonawca_id integer NOT NULL,
    data_utworzenia timestamp(3) without time zone,
    status_id integer NOT NULL,
    typ_id integer NOT NULL
);


--
-- Name: zlecenia_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.zlecenia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: zlecenia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.zlecenia_id_seq OWNED BY public.zlecenia.id;


--
-- Name: artykuly id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artykuly ALTER COLUMN id SET DEFAULT nextval('public.artykuly_id_seq'::regclass);


--
-- Name: freelancerzy id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freelancerzy ALTER COLUMN id SET DEFAULT nextval('public.freelancerzy_id_seq'::regclass);


--
-- Name: kategorieartykulow id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieartykulow ALTER COLUMN id SET DEFAULT nextval('public.kategorieartykulow_id_seq'::regclass);


--
-- Name: kategorieproducentow id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieproducentow ALTER COLUMN id SET DEFAULT nextval('public.kategorieproducentow_id_seq'::regclass);


--
-- Name: kategorieproduktow id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieproduktow ALTER COLUMN id SET DEFAULT nextval('public.kategorieproduktow_id_seq'::regclass);


--
-- Name: podwykonawcy id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podwykonawcy ALTER COLUMN id SET DEFAULT nextval('public.podwykonawcy_id_seq'::regclass);


--
-- Name: producentkatalog id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producentkatalog ALTER COLUMN id SET DEFAULT nextval('public.producentkatalog_id_seq'::regclass);


--
-- Name: produkty id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produkty ALTER COLUMN id SET DEFAULT nextval('public.produkty_id_seq'::regclass);


--
-- Name: projekty id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projekty ALTER COLUMN id SET DEFAULT nextval('public.projekty_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: statusyprojektow id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyprojektow ALTER COLUMN id SET DEFAULT nextval('public.statusyprojektow_id_seq'::regclass);


--
-- Name: statusyzamowien id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyzamowien ALTER COLUMN id SET DEFAULT nextval('public.statusyzamowien_id_seq'::regclass);


--
-- Name: statusyzlecen id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyzlecen ALTER COLUMN id SET DEFAULT nextval('public.statusyzlecen_id_seq'::regclass);


--
-- Name: typyzlecen id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.typyzlecen ALTER COLUMN id SET DEFAULT nextval('public.typyzlecen_id_seq'::regclass);


--
-- Name: uzytkownicy id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uzytkownicy ALTER COLUMN id SET DEFAULT nextval('public.uzytkownicy_id_seq'::regclass);


--
-- Name: zamowienia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zamowienia ALTER COLUMN id SET DEFAULT nextval('public.zamowienia_id_seq'::regclass);


--
-- Name: zlecenia id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia ALTER COLUMN id SET DEFAULT nextval('public.zlecenia_id_seq'::regclass);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: artykuly artykuly_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artykuly
    ADD CONSTRAINT artykuly_pkey PRIMARY KEY (id);


--
-- Name: freelancerzy freelancerzy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freelancerzy
    ADD CONSTRAINT freelancerzy_pkey PRIMARY KEY (id);


--
-- Name: kategorieartykulow kategorieartykulow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieartykulow
    ADD CONSTRAINT kategorieartykulow_pkey PRIMARY KEY (id);


--
-- Name: kategorieproducentow kategorieproducentow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieproducentow
    ADD CONSTRAINT kategorieproducentow_pkey PRIMARY KEY (id);


--
-- Name: kategorieproduktow kategorieproduktow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.kategorieproduktow
    ADD CONSTRAINT kategorieproduktow_pkey PRIMARY KEY (id);


--
-- Name: podwykonawcy podwykonawcy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podwykonawcy
    ADD CONSTRAINT podwykonawcy_pkey PRIMARY KEY (id);


--
-- Name: producentkatalog producentkatalog_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producentkatalog
    ADD CONSTRAINT producentkatalog_pkey PRIMARY KEY (id);


--
-- Name: produkty produkty_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produkty
    ADD CONSTRAINT produkty_pkey PRIMARY KEY (id);


--
-- Name: projekty projekty_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projekty
    ADD CONSTRAINT projekty_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: statusyprojektow statusyprojektow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyprojektow
    ADD CONSTRAINT statusyprojektow_pkey PRIMARY KEY (id);


--
-- Name: statusyzamowien statusyzamowien_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyzamowien
    ADD CONSTRAINT statusyzamowien_pkey PRIMARY KEY (id);


--
-- Name: statusyzlecen statusyzlecen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statusyzlecen
    ADD CONSTRAINT statusyzlecen_pkey PRIMARY KEY (id);


--
-- Name: typyzlecen typyzlecen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.typyzlecen
    ADD CONSTRAINT typyzlecen_pkey PRIMARY KEY (id);


--
-- Name: uzytkownicy uzytkownicy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uzytkownicy
    ADD CONSTRAINT uzytkownicy_pkey PRIMARY KEY (id);


--
-- Name: zamowienia zamowienia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zamowienia
    ADD CONSTRAINT zamowienia_pkey PRIMARY KEY (id);


--
-- Name: zlecenia zlecenia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia
    ADD CONSTRAINT zlecenia_pkey PRIMARY KEY (id);


--
-- Name: freelancerzy_uzytkownik_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX freelancerzy_uzytkownik_id_key ON public.freelancerzy USING btree (uzytkownik_id);


--
-- Name: idx_artykuly_autor_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_artykuly_autor_id ON public.artykuly USING btree (autor_id);


--
-- Name: idx_artykuly_kategoria_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_artykuly_kategoria_id ON public.artykuly USING btree (kategoria_id);


--
-- Name: idx_producentkatalog_kategoria_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_producentkatalog_kategoria_id ON public.producentkatalog USING btree (kategoria_id);


--
-- Name: idx_producentkatalog_producent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_producentkatalog_producent_id ON public.producentkatalog USING btree (producent_id);


--
-- Name: idx_produkty_kategoria_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_produkty_kategoria_id ON public.produkty USING btree (kategoria_id);


--
-- Name: idx_produkty_producent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_produkty_producent_id ON public.produkty USING btree (producent_id);


--
-- Name: idx_projekty_autor_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_projekty_autor_id ON public.projekty USING btree (autor_id);


--
-- Name: idx_projekty_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_projekty_status_id ON public.projekty USING btree (status_id);


--
-- Name: idx_zamowienia_produkt_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zamowienia_produkt_id ON public.zamowienia USING btree (produkt_id);


--
-- Name: idx_zamowienia_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zamowienia_status_id ON public.zamowienia USING btree (status_id);


--
-- Name: idx_zamowienia_uzytkownik_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zamowienia_uzytkownik_id ON public.zamowienia USING btree (uzytkownik_id);


--
-- Name: idx_zamowienia_uzytkownik_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zamowienia_uzytkownik_status ON public.zamowienia USING btree (uzytkownik_id, status_id);


--
-- Name: idx_zlecenia_status_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zlecenia_status_id ON public.zlecenia USING btree (status_id);


--
-- Name: idx_zlecenia_typ_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zlecenia_typ_id ON public.zlecenia USING btree (typ_id);


--
-- Name: idx_zlecenia_wykonawca_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zlecenia_wykonawca_id ON public.zlecenia USING btree (wykonawca_id);


--
-- Name: idx_zlecenia_zleceniodawca_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_zlecenia_zleceniodawca_id ON public.zlecenia USING btree (zleceniodawca_id);


--
-- Name: kategorieartykulow_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX kategorieartykulow_nazwa_key ON public.kategorieartykulow USING btree (nazwa);


--
-- Name: kategorieproducentow_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX kategorieproducentow_nazwa_key ON public.kategorieproducentow USING btree (nazwa);


--
-- Name: kategorieproduktow_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX kategorieproduktow_nazwa_key ON public.kategorieproduktow USING btree (nazwa);


--
-- Name: podwykonawcy_uzytkownik_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX podwykonawcy_uzytkownik_id_key ON public.podwykonawcy USING btree (uzytkownik_id);


--
-- Name: role_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX role_nazwa_key ON public.role USING btree (nazwa);


--
-- Name: statusyprojektow_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX statusyprojektow_nazwa_key ON public.statusyprojektow USING btree (nazwa);


--
-- Name: statusyzamowien_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX statusyzamowien_nazwa_key ON public.statusyzamowien USING btree (nazwa);


--
-- Name: statusyzlecen_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX statusyzlecen_nazwa_key ON public.statusyzlecen USING btree (nazwa);


--
-- Name: typyzlecen_nazwa_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX typyzlecen_nazwa_key ON public.typyzlecen USING btree (nazwa);


--
-- Name: uzytkownicy_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX uzytkownicy_email_key ON public.uzytkownicy USING btree (email);


--
-- Name: artykuly artykuly_autor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artykuly
    ADD CONSTRAINT artykuly_autor_id_fkey FOREIGN KEY (autor_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: artykuly artykuly_kategoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.artykuly
    ADD CONSTRAINT artykuly_kategoria_id_fkey FOREIGN KEY (kategoria_id) REFERENCES public.kategorieartykulow(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: freelancerzy freelancerzy_uzytkownik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freelancerzy
    ADD CONSTRAINT freelancerzy_uzytkownik_id_fkey FOREIGN KEY (uzytkownik_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: podwykonawcy podwykonawcy_uzytkownik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.podwykonawcy
    ADD CONSTRAINT podwykonawcy_uzytkownik_id_fkey FOREIGN KEY (uzytkownik_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: producentkatalog producentkatalog_kategoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producentkatalog
    ADD CONSTRAINT producentkatalog_kategoria_id_fkey FOREIGN KEY (kategoria_id) REFERENCES public.kategorieproducentow(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: producentkatalog producentkatalog_producent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.producentkatalog
    ADD CONSTRAINT producentkatalog_producent_id_fkey FOREIGN KEY (producent_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: produkty produkty_kategoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produkty
    ADD CONSTRAINT produkty_kategoria_id_fkey FOREIGN KEY (kategoria_id) REFERENCES public.kategorieproduktow(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: produkty produkty_producent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produkty
    ADD CONSTRAINT produkty_producent_id_fkey FOREIGN KEY (producent_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: projekty projekty_autor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projekty
    ADD CONSTRAINT projekty_autor_id_fkey FOREIGN KEY (autor_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: projekty projekty_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projekty
    ADD CONSTRAINT projekty_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statusyprojektow(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: uzytkownicy uzytkownicy_rola_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uzytkownicy
    ADD CONSTRAINT uzytkownicy_rola_id_fkey FOREIGN KEY (rola_id) REFERENCES public.role(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zamowienia zamowienia_produkt_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zamowienia
    ADD CONSTRAINT zamowienia_produkt_id_fkey FOREIGN KEY (produkt_id) REFERENCES public.produkty(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zamowienia zamowienia_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zamowienia
    ADD CONSTRAINT zamowienia_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statusyzamowien(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zamowienia zamowienia_uzytkownik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zamowienia
    ADD CONSTRAINT zamowienia_uzytkownik_id_fkey FOREIGN KEY (uzytkownik_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zlecenia zlecenia_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia
    ADD CONSTRAINT zlecenia_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.statusyzlecen(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zlecenia zlecenia_typ_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia
    ADD CONSTRAINT zlecenia_typ_id_fkey FOREIGN KEY (typ_id) REFERENCES public.typyzlecen(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zlecenia zlecenia_wykonawca_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia
    ADD CONSTRAINT zlecenia_wykonawca_id_fkey FOREIGN KEY (wykonawca_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: zlecenia zlecenia_zleceniodawca_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zlecenia
    ADD CONSTRAINT zlecenia_zleceniodawca_id_fkey FOREIGN KEY (zleceniodawca_id) REFERENCES public.uzytkownicy(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

