-- CreateIndex
CREATE INDEX "idx_artykuly_autor_id" ON "artykuly"("autor_id");

-- CreateIndex
CREATE INDEX "idx_artykuly_kategoria_id" ON "artykuly"("kategoria_id");

-- CreateIndex
CREATE INDEX "idx_producentkatalog_producent_id" ON "producentkatalog"("producent_id");

-- CreateIndex
CREATE INDEX "idx_producentkatalog_kategoria_id" ON "producentkatalog"("kategoria_id");

-- CreateIndex
CREATE INDEX "idx_produkty_producent_id" ON "produkty"("producent_id");

-- CreateIndex
CREATE INDEX "idx_produkty_kategoria_id" ON "produkty"("kategoria_id");

-- CreateIndex
CREATE INDEX "idx_projekty_autor_id" ON "projekty"("autor_id");

-- CreateIndex
CREATE INDEX "idx_projekty_status_id" ON "projekty"("status_id");

-- CreateIndex
CREATE INDEX "idx_zamowienia_uzytkownik_id" ON "zamowienia"("uzytkownik_id");

-- CreateIndex
CREATE INDEX "idx_zamowienia_produkt_id" ON "zamowienia"("produkt_id");

-- CreateIndex
CREATE INDEX "idx_zamowienia_status_id" ON "zamowienia"("status_id");

-- CreateIndex
CREATE INDEX "idx_zamowienia_uzytkownik_status" ON "zamowienia"("uzytkownik_id", "status_id");

-- CreateIndex
CREATE INDEX "idx_zlecenia_zleceniodawca_id" ON "zlecenia"("zleceniodawca_id");

-- CreateIndex
CREATE INDEX "idx_zlecenia_wykonawca_id" ON "zlecenia"("wykonawca_id");

-- CreateIndex
CREATE INDEX "idx_zlecenia_status_id" ON "zlecenia"("status_id");

-- CreateIndex
CREATE INDEX "idx_zlecenia_typ_id" ON "zlecenia"("typ_id");
