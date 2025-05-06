import { render, screen } from '@testing-library/react'
import { Button } from '../button'

test('renderuje przycisk z tekstem', () => {
  render(<Button>Click me</Button>)
  expect(screen.getByText('Click me')).toBeInTheDocument()
}) 