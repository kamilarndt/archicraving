
/* !!! This is code generated by Prisma. Do not edit directly. !!!
/* eslint-disable */

Object.defineProperty(exports, "__esModule", { value: true });

const {
  Decimal,
  objectEnumValues,
  makeStrictEnum,
  Public,
  getRuntime,
  skip
} = require('./runtime/index-browser.js')


const Prisma = {}

exports.Prisma = Prisma
exports.$Enums = {}

/**
 * Prisma Client JS version: 6.7.0
 * Query Engine version: 3cff47a7f5d65c3ea74883f1d736e41d68ce91ed
 */
Prisma.prismaVersion = {
  client: "6.7.0",
  engine: "3cff47a7f5d65c3ea74883f1d736e41d68ce91ed"
}

Prisma.PrismaClientKnownRequestError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientKnownRequestError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)};
Prisma.PrismaClientUnknownRequestError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientUnknownRequestError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientRustPanicError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientRustPanicError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientInitializationError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientInitializationError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientValidationError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientValidationError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.Decimal = Decimal

/**
 * Re-export of sql-template-tag
 */
Prisma.sql = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`sqltag is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.empty = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`empty is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.join = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`join is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.raw = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`raw is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.validator = Public.validator

/**
* Extensions
*/
Prisma.getExtensionContext = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`Extensions.getExtensionContext is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.defineExtension = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`Extensions.defineExtension is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}

/**
 * Shorthand utilities for JSON filtering
 */
Prisma.DbNull = objectEnumValues.instances.DbNull
Prisma.JsonNull = objectEnumValues.instances.JsonNull
Prisma.AnyNull = objectEnumValues.instances.AnyNull

Prisma.NullTypes = {
  DbNull: objectEnumValues.classes.DbNull,
  JsonNull: objectEnumValues.classes.JsonNull,
  AnyNull: objectEnumValues.classes.AnyNull
}



/**
 * Enums
 */

exports.Prisma.TransactionIsolationLevel = makeStrictEnum({
  ReadUncommitted: 'ReadUncommitted',
  ReadCommitted: 'ReadCommitted',
  RepeatableRead: 'RepeatableRead',
  Serializable: 'Serializable'
});

exports.Prisma.UzytkownicyScalarFieldEnum = {
  id: 'id',
  imie: 'imie',
  nazwisko: 'nazwisko',
  email: 'email',
  haslo: 'haslo',
  rola_id: 'rola_id',
  data_rejestracji: 'data_rejestracji'
};

exports.Prisma.RoleScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ArtykulyScalarFieldEnum = {
  id: 'id',
  tytul: 'tytul',
  tresc: 'tresc',
  data_publikacji: 'data_publikacji',
  autor_id: 'autor_id',
  kategoria_id: 'kategoria_id'
};

exports.Prisma.KategorieartykulowScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ProduktyScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa',
  opis: 'opis',
  producent_id: 'producent_id',
  cena: 'cena',
  kategoria_id: 'kategoria_id',
  data_dodania: 'data_dodania'
};

exports.Prisma.KategorieproduktowScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ZamowieniaScalarFieldEnum = {
  id: 'id',
  uzytkownik_id: 'uzytkownik_id',
  produkt_id: 'produkt_id',
  ilosc: 'ilosc',
  data_zamowienia: 'data_zamowienia',
  status_id: 'status_id'
};

exports.Prisma.StatusyzamowienScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ZleceniaScalarFieldEnum = {
  id: 'id',
  tytul: 'tytul',
  opis: 'opis',
  zleceniodawca_id: 'zleceniodawca_id',
  wykonawca_id: 'wykonawca_id',
  data_utworzenia: 'data_utworzenia',
  status_id: 'status_id',
  typ_id: 'typ_id'
};

exports.Prisma.StatusyzlecenScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.TypyzlecenScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ProjektyScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa',
  opis: 'opis',
  autor_id: 'autor_id',
  data_utworzenia: 'data_utworzenia',
  status_id: 'status_id'
};

exports.Prisma.StatusyprojektowScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.ProducentkatalogScalarFieldEnum = {
  id: 'id',
  producent_id: 'producent_id',
  opis: 'opis',
  strona_www: 'strona_www',
  kategoria_id: 'kategoria_id'
};

exports.Prisma.KategorieproducentowScalarFieldEnum = {
  id: 'id',
  nazwa: 'nazwa'
};

exports.Prisma.PodwykonawcyScalarFieldEnum = {
  id: 'id',
  uzytkownik_id: 'uzytkownik_id',
  specjalizacja: 'specjalizacja',
  opis: 'opis',
  kontakt: 'kontakt'
};

exports.Prisma.FreelancerzyScalarFieldEnum = {
  id: 'id',
  uzytkownik_id: 'uzytkownik_id',
  specjalizacja: 'specjalizacja',
  opis: 'opis',
  kontakt: 'kontakt'
};

exports.Prisma.SortOrder = {
  asc: 'asc',
  desc: 'desc'
};

exports.Prisma.QueryMode = {
  default: 'default',
  insensitive: 'insensitive'
};

exports.Prisma.NullsOrder = {
  first: 'first',
  last: 'last'
};


exports.Prisma.ModelName = {
  uzytkownicy: 'uzytkownicy',
  role: 'role',
  artykuly: 'artykuly',
  kategorieartykulow: 'kategorieartykulow',
  produkty: 'produkty',
  kategorieproduktow: 'kategorieproduktow',
  zamowienia: 'zamowienia',
  statusyzamowien: 'statusyzamowien',
  zlecenia: 'zlecenia',
  statusyzlecen: 'statusyzlecen',
  typyzlecen: 'typyzlecen',
  projekty: 'projekty',
  statusyprojektow: 'statusyprojektow',
  producentkatalog: 'producentkatalog',
  kategorieproducentow: 'kategorieproducentow',
  podwykonawcy: 'podwykonawcy',
  freelancerzy: 'freelancerzy'
};

/**
 * This is a stub Prisma Client that will error at runtime if called.
 */
class PrismaClient {
  constructor() {
    return new Proxy(this, {
      get(target, prop) {
        let message
        const runtime = getRuntime()
        if (runtime.isEdge) {
          message = `PrismaClient is not configured to run in ${runtime.prettyName}. In order to run Prisma Client on edge runtime, either:
- Use Prisma Accelerate: https://pris.ly/d/accelerate
- Use Driver Adapters: https://pris.ly/d/driver-adapters
`;
        } else {
          message = 'PrismaClient is unable to run in this browser environment, or has been bundled for the browser (running in `' + runtime.prettyName + '`).'
        }

        message += `
If this is unexpected, please open an issue: https://pris.ly/prisma-prisma-bug-report`

        throw new Error(message)
      }
    })
  }
}

exports.PrismaClient = PrismaClient

Object.assign(exports, Prisma)
