import React, { useState } from 'react';
import { View, Text, Image, StatusBar, TouchableOpacity } from 'react-native';
import { Header, SearchBar, Overlay, Icon, ListItem, Badge } from 'react-native-elements';
import { CartContext } from '../services/Carrello';
import { CommonActions, useNavigation } from '@react-navigation/native';
import { UserContext } from '../services/Utente';

const TopBar = ({showSearchBar=true }) => {
    const navigation = useNavigation(); //Prop navigation da hook React
    const [text, setText] = useState(""); //Stato per il testo della SearchBar
    const [overlayVisible, setOverlayVisible] = useState(false); //Stato per l'overlay

    const screenList = [
        {
            name: 'Il mio profilo',
            icon: 'person',
            link: 'MyProfile'
        },
        {
            name: 'I miei ordini',
            icon: 'card-giftcard',
            link: 'ListaOrdini'
        },
        {
            name: 'La mia giacenza',
            icon: 'inbox',
            link: 'Giacenza'
        },
        {
            name: 'Prenota reso',
            icon: 'redo',
            link: 'Reso'
        },
        {
            name: 'FAQ',
            icon: 'help',
            link: 'FAQ'
        },
        {
            name: 'Logout',
            icon: 'exit-to-app',
            link: 'Login'
        },
    ]

    
    function changeScreen(link) {
        setOverlayVisible(false);
        navigation.navigate(link)
    }

    return (
        <View>
            <StatusBar backgroundColor="#70D0AE" barStyle="light-content" />

            <Header
            backgroundColor="#9de7cc"
            barStyle="light-content"
            leftComponent={{ icon: 'menu', size: 40, color: '#F8FFFC', onPress: ()=>setOverlayVisible(true)}}
            centerComponent={
                <View>
                    <TouchableOpacity onPress={() => navigation.navigate("Home")}>
                    <View style={{ flexDirection: 'row', alignItems: 'center', }}>
                        <Image source={require('../../../image/icona-bianca.png')} style={{ height: 35, width: 35 }} />
                        <Text style={{ color: "#F8FFFC", marginLeft: 2, fontSize: 28, fontWeight: "bold" }}>IsiLav</Text>
                    </View>
                    </TouchableOpacity>
                </View>
            }
            rightComponent={
                <CartContext.Consumer>
                {carrello =>
                    <View>
                        <Icon onPress={() => navigation.navigate("Cart")} name='shopping-cart' color='#F8FFFC' size={40} />
                        {carrello.getLunghezza()? <Badge value={carrello.getLunghezza()} status="error" containerStyle={{ position: 'absolute', top: -4, right: -4 }} /> : null}
                    </View>
                }
                </CartContext.Consumer>
            }
            />

            {showSearchBar? 
                <SearchBar
                platform='ios'
                containerStyle={{ backgroundColor: "#9de7cc", borderWidth: 0, marginTop: -11, paddingTop: 8 }}
                inputStyle={{ backgroundColor: "#F8FFFC" }}
                inputContainerStyle={{ backgroundColor: "#F8FFFC", color:"#3E4349", padding: 0, paddingBottom: 0 }}
                cancelButtonTitle="Annulla"
                placeholder="Cerca nel catalogo..."
                cancelButtonProps={{ color: "#F8FFFC" }}
                value={text}
                onChangeText={(newText)=>setText(newText)}
                onSubmitEditing={() => {
                    if (text !== ""){
                        navigation.dispatch(
                            CommonActions.reset({
                                index: 1,
                                routes: [{ name: "Home" }, { name: "Search", params: {nome: text} }]
                        }));
                    }
                    //navigation.navigate("Search", {nome: text})
                }}
                />
            : null }


            <View>
                <Overlay
                animationType="fade"
                isVisible={overlayVisible}
                onBackdropPress={() => setOverlayVisible(false)}
                overlayStyle={{ backgroundColor: "white", borderRadius: 0, width: "80%", height: "100%", alignSelf: "flex-start"}}>
                    <View>
                        <View style={{flexDirection: "row"}}>
                            <Icon onPress={() => setOverlayVisible(false)} name="chevron-left" color="#E9EBED" size={50} />
                            <UserContext.Consumer>
                                {sessione =>
                                    <Text style={{flex: 1, fontSize: 18, color:"#3E4349", textAlign: 'center', textAlignVertical: 'center'}}>{sessione.getUser().nominativo}</Text>
                                }
                            </UserContext.Consumer>
                        </View>
                        <View>
                            { screenList.map((l, i) => (
                                <ListItem onPress={() => changeScreen(l.link)} key={i} bottomDivider>
                                    <Icon name={l.icon} color="#70D0AE" size={30} />
                                    <ListItem.Content >
                                        <ListItem.Title style={{fontSize:18}}>{l.name}</ListItem.Title>
                                    </ListItem.Content>
                                </ListItem>
                            ))}
                        </View>
                    </View>
                </Overlay>
            </View>
        </View>
    );
};

export default TopBar;