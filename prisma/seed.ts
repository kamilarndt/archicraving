import { PrismaClient } from '@prisma/client';
import { faker } from '@faker-js/faker';

const prisma = new PrismaClient();

async function main() {
  // Pobierz dostępne role i kategorie
  const roles = await prisma.role.findMany();
  const roleIds = roles.map(r => r.id);
  const kategorieProduktow = await prisma.kategorieproduktow.findMany();
  const kategorieIds = kategorieProduktow.map(k => k.id);

  // Seed użytkowników
  const usersData = Array.from({ length: 5000 }).map(() => ({
    imie: faker.person.firstName(),
    nazwisko: faker.person.lastName(),
    email: faker.internet.email(),
    haslo: faker.internet.password(),
    rola_id: faker.helpers.arrayElement(roleIds),
    data_rejestracji: faker.date.past({ years: 2 })
  }));
  console.log('Tworzenie użytkowników...');
  const users = await prisma.uzytkownicy.createMany({ data: usersData });
  const allUsers = await prisma.uzytkownicy.findMany({ select: { id: true } });
  const userIds = allUsers.map(u => u.id);

  // Seed produktów
  const productsData = Array.from({ length: 10000 }).map(() => ({
    nazwa: faker.commerce.productName(),
    opis: faker.commerce.productDescription(),
    producent_id: faker.helpers.arrayElement(userIds),
    cena: parseFloat(faker.commerce.price({ min: 10, max: 10000, dec: 2 })),
    kategoria_id: faker.helpers.arrayElement(kategorieIds),
    data_dodania: faker.date.past({ years: 2 })
  }));
  console.log('Tworzenie produktów...');
  await prisma.produkty.createMany({ data: productsData });

  console.log('Seedowanie zakończone!');
}

main()
  .catch(e => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  }); 