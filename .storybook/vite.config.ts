import { mergeConfig } from 'vite';
import tsconfigPaths from 'vite-tsconfig-paths';

export default {
  plugins: [tsconfigPaths()],
  resolve: {
    alias: {
      'next/image': require.resolve('@storybook/nextjs/image'),
      'next/link': require.resolve('@storybook/nextjs/link'),
    },
  },
};
