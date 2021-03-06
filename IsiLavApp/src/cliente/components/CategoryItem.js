import React from 'react';
import { View, Text, StyleSheet, Image } from 'react-native';
import { TouchableOpacity } from 'react-native-gesture-handler';

const CategoryItem = ({ name, image, onPress }) => (
    <TouchableOpacity style={styles.item} onPress={onPress}>
        <Image style={styles.image} source={{uri: image}} />
        <Text style={styles.name}>{name}</Text>
    </TouchableOpacity>
  );


const styles = StyleSheet.create({
    item: {
        margin: 15,
        borderRadius: 10,
        elevation: 10,
        backgroundColor: '#9DE7CD',
        flexDirection: 'column',
    },
    image: {
        borderTopLeftRadius: 10, //iOS compatibile?
        borderTopRightRadius: 10, //iOS compatibile?
        resizeMode: 'cover',
        width: null,
        height: 280,
        justifyContent: 'center'
    },
    name: {
        alignSelf: 'flex-start',
        color: 'white',
        padding: 5,
        fontSize: 30,
        marginLeft: 10,
        borderBottomLeftRadius: 10,
        borderBottomRightRadius: 10,
    },
});

export default CategoryItem;