// stories/MyButton.stories.tsx
import React from 'react';
import type { ComponentMeta, ComponentStory } from '@storybook/react';

import { Button } from 'react-native-awesome-library3';

export default {
  title: 'components/MyButton',
  component: Button,
} as ComponentMeta<typeof Button>;

export const Basic: ComponentStory<typeof Button> = (args) => (
  <Button {...args} />
);

Basic.args = {
  text: 'Hello STS Team!',
  color: 'green',
};
