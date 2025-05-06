import { GET } from './route'

test('GET products returns array', async () => {
  const response = await GET()
  const data = await response.json()
  expect(Array.isArray(data)).toBe(true)
}) 