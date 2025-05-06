-- CreateTable
CREATE TABLE "uzytkownicy" (
    "id" SERIAL NOT NULL,
    "imie" TEXT,
    "nazwisko" TEXT,
    "email" TEXT NOT NULL,
    "haslo" TEXT NOT NULL,
    "rola_id" INTEGER NOT NULL,
    "data_rejestracji" TIMESTAMP(3),

    CONSTRAINT "uzytkownicy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "role" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "role_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "artykuly" (
    "id" SERIAL NOT NULL,
    "tytul" TEXT,
    "tresc" TEXT,
    "data_publikacji" TIMESTAMP(3),
    "autor_id" INTEGER NOT NULL,
    "kategoria_id" INTEGER NOT NULL,

    CONSTRAINT "artykuly_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "kategorieartykulow" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "kategorieartykulow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "produkty" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT,
    "opis" TEXT,
    "producent_id" INTEGER NOT NULL,
    "cena" DECIMAL(65,30),
    "kategoria_id" INTEGER NOT NULL,
    "data_dodania" TIMESTAMP(3),

    CONSTRAINT "produkty_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "kategorieproduktow" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "kategorieproduktow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "zamowienia" (
    "id" SERIAL NOT NULL,
    "uzytkownik_id" INTEGER NOT NULL,
    "produkt_id" INTEGER NOT NULL,
    "ilosc" INTEGER,
    "data_zamowienia" TIMESTAMP(3),
    "status_id" INTEGER NOT NULL,

    CONSTRAINT "zamowienia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "statusyzamowien" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "statusyzamowien_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "zlecenia" (
    "id" SERIAL NOT NULL,
    "tytul" TEXT,
    "opis" TEXT,
    "zleceniodawca_id" INTEGER NOT NULL,
    "wykonawca_id" INTEGER NOT NULL,
    "data_utworzenia" TIMESTAMP(3),
    "status_id" INTEGER NOT NULL,
    "typ_id" INTEGER NOT NULL,

    CONSTRAINT "zlecenia_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "statusyzlecen" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "statusyzlecen_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "typyzlecen" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "typyzlecen_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projekty" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT,
    "opis" TEXT,
    "autor_id" INTEGER NOT NULL,
    "data_utworzenia" TIMESTAMP(3),
    "status_id" INTEGER NOT NULL,

    CONSTRAINT "projekty_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "statusyprojektow" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "statusyprojektow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "producentkatalog" (
    "id" SERIAL NOT NULL,
    "producent_id" INTEGER NOT NULL,
    "opis" TEXT,
    "strona_www" TEXT,
    "kategoria_id" INTEGER NOT NULL,

    CONSTRAINT "producentkatalog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "kategorieproducentow" (
    "id" SERIAL NOT NULL,
    "nazwa" TEXT NOT NULL,

    CONSTRAINT "kategorieproducentow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "podwykonawcy" (
    "id" SERIAL NOT NULL,
    "uzytkownik_id" INTEGER NOT NULL,
    "specjalizacja" TEXT,
    "opis" TEXT,
    "kontakt" TEXT,

    CONSTRAINT "podwykonawcy_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "freelancerzy" (
    "id" SERIAL NOT NULL,
    "uzytkownik_id" INTEGER NOT NULL,
    "specjalizacja" TEXT,
    "opis" TEXT,
    "kontakt" TEXT,

    CONSTRAINT "freelancerzy_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "uzytkownicy_email_key" ON "uzytkownicy"("email");

-- CreateIndex
CREATE UNIQUE INDEX "role_nazwa_key" ON "role"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "kategorieartykulow_nazwa_key" ON "kategorieartykulow"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "kategorieproduktow_nazwa_key" ON "kategorieproduktow"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "statusyzamowien_nazwa_key" ON "statusyzamowien"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "statusyzlecen_nazwa_key" ON "statusyzlecen"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "typyzlecen_nazwa_key" ON "typyzlecen"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "statusyprojektow_nazwa_key" ON "statusyprojektow"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "kategorieproducentow_nazwa_key" ON "kategorieproducentow"("nazwa");

-- CreateIndex
CREATE UNIQUE INDEX "podwykonawcy_uzytkownik_id_key" ON "podwykonawcy"("uzytkownik_id");

-- CreateIndex
CREATE UNIQUE INDEX "freelancerzy_uzytkownik_id_key" ON "freelancerzy"("uzytkownik_id");

-- AddForeignKey
ALTER TABLE "uzytkownicy" ADD CONSTRAINT "uzytkownicy_rola_id_fkey" FOREIGN KEY ("rola_id") REFERENCES "role"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "artykuly" ADD CONSTRAINT "artykuly_autor_id_fkey" FOREIGN KEY ("autor_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "artykuly" ADD CONSTRAINT "artykuly_kategoria_id_fkey" FOREIGN KEY ("kategoria_id") REFERENCES "kategorieartykulow"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "produkty" ADD CONSTRAINT "produkty_producent_id_fkey" FOREIGN KEY ("producent_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "produkty" ADD CONSTRAINT "produkty_kategoria_id_fkey" FOREIGN KEY ("kategoria_id") REFERENCES "kategorieproduktow"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zamowienia" ADD CONSTRAINT "zamowienia_uzytkownik_id_fkey" FOREIGN KEY ("uzytkownik_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zamowienia" ADD CONSTRAINT "zamowienia_produkt_id_fkey" FOREIGN KEY ("produkt_id") REFERENCES "produkty"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zamowienia" ADD CONSTRAINT "zamowienia_status_id_fkey" FOREIGN KEY ("status_id") REFERENCES "statusyzamowien"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zlecenia" ADD CONSTRAINT "zlecenia_zleceniodawca_id_fkey" FOREIGN KEY ("zleceniodawca_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zlecenia" ADD CONSTRAINT "zlecenia_wykonawca_id_fkey" FOREIGN KEY ("wykonawca_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zlecenia" ADD CONSTRAINT "zlecenia_status_id_fkey" FOREIGN KEY ("status_id") REFERENCES "statusyzlecen"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "zlecenia" ADD CONSTRAINT "zlecenia_typ_id_fkey" FOREIGN KEY ("typ_id") REFERENCES "typyzlecen"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "projekty" ADD CONSTRAINT "projekty_autor_id_fkey" FOREIGN KEY ("autor_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "projekty" ADD CONSTRAINT "projekty_status_id_fkey" FOREIGN KEY ("status_id") REFERENCES "statusyprojektow"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "producentkatalog" ADD CONSTRAINT "producentkatalog_producent_id_fkey" FOREIGN KEY ("producent_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "producentkatalog" ADD CONSTRAINT "producentkatalog_kategoria_id_fkey" FOREIGN KEY ("kategoria_id") REFERENCES "kategorieproducentow"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "podwykonawcy" ADD CONSTRAINT "podwykonawcy_uzytkownik_id_fkey" FOREIGN KEY ("uzytkownik_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "freelancerzy" ADD CONSTRAINT "freelancerzy_uzytkownik_id_fkey" FOREIGN KEY ("uzytkownik_id") REFERENCES "uzytkownicy"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
