import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import { C, B } from 'react-native-awesome-library3';

export default function App() {
  return (
    <View style={styles.container}>
      <C />
      <B />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
