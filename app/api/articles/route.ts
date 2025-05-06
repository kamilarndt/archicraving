import { NextResponse } from 'next/server'
import { prisma } from '@/lib/prisma'

export async function GET() {
  const articles = await prisma.artykuly.findMany({
    orderBy: { data_publikacji: 'desc' },
    include: { autor: true, kategoria: true },
  })
  return NextResponse.json(articles)
} 