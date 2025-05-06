import { NextResponse } from 'next/server'
import { prisma } from '@/lib/prisma'

export async function GET() {
  const products = await prisma.produkty.findMany({
    orderBy: { data_dodania: 'desc' },
    include: { producent: true, kategoria: true },
  })
  return NextResponse.json(products)
} 