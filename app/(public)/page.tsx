import Link from 'next/link'
import { Button } from '@/components/ui/button'

export default function LandingPage() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-24">
      <h1 className="text-4xl font-bold mb-8 text-center">Witamy w ArchiCraving!</h1>
      <div className="flex gap-4">
        <Link href="/login"><Button variant="outline">Zaloguj się</Button></Link>
        <Link href="/account"><Button>Moje konto</Button></Link>
      </div>
    </main>
  )
} 