-- Indeksy pokrywające dla najczęstszych zapytań WHERE/JOIN

-- Zamowienia
CREATE INDEX idx_zamowienia_uzytkownik_id ON zamowienia(uzytkownik_id);
CREATE INDEX idx_zamowienia_produkt_id ON zamowienia(produkt_id);
CREATE INDEX idx_zamowienia_status_id ON zamowienia(status_id);
CREATE INDEX idx_zamowienia_uzytkownik_status ON zamowienia(uzytkownik_id, status_id);

-- Artykuly
CREATE INDEX idx_artykuly_autor_id ON artykuly(autor_id);
CREATE INDEX idx_artykuly_kategoria_id ON artykuly(kategoria_id);

-- Produkty
CREATE INDEX idx_produkty_producent_id ON produkty(producent_id);
CREATE INDEX idx_produkty_kategoria_id ON produkty(kategoria_id);

-- Zlecenia
CREATE INDEX idx_zlecenia_zleceniodawca_id ON zlecenia(zleceniodawca_id);
CREATE INDEX idx_zlecenia_wykonawca_id ON zlecenia(wykonawca_id);
CREATE INDEX idx_zlecenia_status_id ON zlecenia(status_id);
CREATE INDEX idx_zlecenia_typ_id ON zlecenia(typ_id);

-- Projekty
CREATE INDEX idx_projekty_autor_id ON projekty(autor_id);
CREATE INDEX idx_projekty_status_id ON projekty(status_id);

-- ProducentKatalog
CREATE INDEX idx_producentkatalog_producent_id ON producentkatalog(producent_id);
CREATE INDEX idx_producentkatalog_kategoria_id ON producentkatalog(kategoria_id);

-- Podwykonawcy / Freelancerzy
CREATE UNIQUE INDEX idx_podwykonawcy_uzytkownik_id ON podwykonawcy(uzytkownik_id);
CREATE UNIQUE INDEX idx_freelancerzy_uzytkownik_id ON freelancerzy(uzytkownik_id);

-- Full-text search index for product names
CREATE INDEX idx_produkty_nazwa_fulltext ON produkty USING gin (nazwa gin_trgm_ops);

-- Full-text search index for project descriptions
CREATE INDEX idx_projekty_opis_fulltext ON projekty USING gin (opis gin_trgm_ops); 