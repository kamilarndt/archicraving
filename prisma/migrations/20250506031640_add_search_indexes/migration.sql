-- CreateIndex
CREATE INDEX "idx_artykuly_tytul" ON "artykuly"("tytul");

-- CreateIndex
CREATE INDEX "idx_artykuly_data_publikacji" ON "artykuly"("data_publikacji");

-- CreateIndex
CREATE INDEX "idx_produkty_nazwa" ON "produkty"("nazwa");

-- CreateIndex
CREATE INDEX "idx_produkty_cena" ON "produkty"("cena");

-- CreateIndex
CREATE INDEX "idx_produkty_data_dodania" ON "produkty"("data_dodania");

-- CreateIndex
CREATE INDEX "idx_projekty_nazwa" ON "projekty"("nazwa");

-- CreateIndex
CREATE INDEX "idx_projekty_data_utworzenia" ON "projekty"("data_utworzenia");

-- CreateIndex
CREATE INDEX "idx_zlecenia_tytul" ON "zlecenia"("tytul");

-- CreateIndex
CREATE INDEX "idx_zlecenia_data_utworzenia" ON "zlecenia"("data_utworzenia");
