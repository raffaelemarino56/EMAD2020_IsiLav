import React, { useState, useCallback } from 'react';
import { View, StyleSheet, Text, TouchableOpacity } from 'react-native'
import RNPickerSelect from 'react-native-picker-select';
const SelectYM = () => {

  var date = new Date().getDate(); //To get the Current Date
  var month = new Date().getMonth() + 1; //To get the Current Month
  var year = new Date().getFullYear(); //To get the Current Year
  var hours = new Date().getHours(); //To get the Current Hours
  var min = new Date().getMinutes(); //To get the Current Minutes
  var sec = new Date().getSeconds(); //To get the Current Seconds

  let elementi = [];
  var i = 0;
  for (i = 0; i <= 20; i++) {
    elementi.push({ label: (year + i).toString(), value: year + i });

  }



  console.log(year)
  return (
    <View style={{ marginTop: 5, alignSelf: "flex-start", }}>
      <Text style={{ fontWeight: "bold", fontSize: 16, color: "black" }}>Data scadenza:</Text>

      <View style={{ flexDirection: "row" }} >
        <View style={{ backgroundColor: "#E9EBED", marginTop: 8, elevation: 2, borderRadius: 4, borderColor: "black", borderWidth: 0.5, height: 30, width: 120,   }}>
          <RNPickerSelect

            pickerProps={{
              style: {
                width: "100%",
                color: 'black',
                height: "100%",


              }
            }}
            onValueChange={(value) => console.log(value)}
            items={[
              { label: '1', value: 1 },
              { label: '2', value: 2 },
              { label: '3', value: 3 },
              { label: '4', value: 4 },
              { label: '5', value: 5 },
              { label: '6', value: 6 },
              { label: '7', value: 7 },
              { label: '8', value: 8 },
              { label: '9', value: 9 },
              { label: '10', value: 10 },
              { label: '11', value: 11 },
              { label: '12', value: 12 },

            ]}
            placeholder={{
              label: 'Mese',
              value: null,

            }}
            value={month}

          />
        </View>
        <Text style={styles.text}> / </Text>
        <View style={{ backgroundColor: "#E9EBED", marginTop: 8, elevation: 2, borderRadius: 4, borderColor: "black", borderWidth: 0.5, height: 30, width: 120 }}>
          <RNPickerSelect
            pickerProps={{
              style: {
                width: "100%",
                color: 'black',
                height: "100%",


              }
            }}


            onValueChange={(value) => console.log(value)}
            items={elementi}
            placeholder={{
              label: 'Anno',
              value: null,

            }}
            value={year}

          />

        </View>

      </View>
    </View>
  );
};

const styles = StyleSheet.create({



  text: {
    paddingTop: 8,
    fontSize: 22,
    color: "black",
    fontWeight:"bold"
  }
});



export default SelectYM;