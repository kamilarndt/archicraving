import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { redirect } from 'next/navigation'
import { Button } from '@/components/ui/button'

export default async function AccountPage() {
  const cookieStore = cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: cookieStore }
  )
  const { data: { session } } = await supabase.auth.getSession()
  if (!session) redirect('/login')
  return (
    <div className="container mx-auto py-10 space-y-6">
      <h1 className="text-3xl font-bold">Twoje konto</h1>
      <div className="bg-white p-6 rounded-lg shadow">
        <p>Zalogowano jako: {session.user.email}</p>
        <form action="/auth/signout" method="post">
          <Button type="submit" variant="destructive" className="mt-4">Wyloguj się</Button>
        </form>
      </div>
    </div>
  )
} 