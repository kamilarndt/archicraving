import useSWR from 'swr'

export function useProducts() {
  const { data, error, isLoading } = useSWR('/api/products', (url) =>
    fetch(url).then((res) => res.json())
  )
  return {
    products: data,
    isLoading,
    isError: error,
  }
} 