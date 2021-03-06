import React, { useState } from 'react';
import { Text, StyleSheet, View } from 'react-native'


const HorizLine = ({testo}) => {
 
  return (
    <View style={styles.container}>    
    
    <Text style={styles.baseText} >{testo}</Text>

    <View
      style={{
        borderBottomColor: '#70D0AE',
        borderBottomWidth: 2,
        width: "60%",
        
      }}
    />
  </View>
  );
};

const styles = StyleSheet.create({


    container: {
        width:"100%", alignItems: "center", justifyContent: 'center',
        flexDirection: "row", padding:10
    },
  
    baseText: {
      fontSize: 20,
      color: '#70D0AE',
      width: "40%"
    }
  
  });

export default HorizLine;