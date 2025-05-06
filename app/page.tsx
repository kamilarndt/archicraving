import { Button } from '@/components/ui/button'

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <div className="z-10 max-w-5xl w-full items-center justify-between font-mono text-sm">
        <h1 className="text-4xl font-bold mb-8 text-center">Welcome to ArchiCraving</h1>
        <div className="flex justify-center gap-4">
          <a href="/login">
            <Button variant="outline">Log in</Button>
          </a>
          <a href="/account">
            <Button>My Account</Button>
          </a>
        </div>
      </div>
    </main>
  )
} 