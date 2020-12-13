import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
 
import LoginScreen from "./src/screens/LoginScreen";
import HomeScreen from "./src/screens/HomeScreen";
import SignUpScreen from './src/screens/SignUpScreen';
import ConfirmSignUpScreen from './src/screens/ConfirmSignUpScreen';
import RetrivePassw from './src/screens/RetrivePassw';
import ChangePassw from './src/screens/PasswordDimenticata';
import MyProfile from './src/screens/MyProfileScreen';
import TermAndCondition from './src/screens/TermEConditionScreen';
import ListaOrdini from './src/screens/ListaOrdiniScreen';
import ChangePassword2 from './src/screens/ChangePassword2';
import SuccessScreen from './src/screens/SuccessScreen';
import ChangeAnagrafica from './src/screens/ChangeAnagrafica';
import DettaglioProdotto from './src/screens/DettaglioProdotto';
import CategoryScreen from './src/screens/CategoryScreen';
import Giacenza from './src/screens/Giacenza';
import ChangePayMethod from './src/screens/ChangePayMethod';
import Cart from './src/screens/Cart';
import QrCode from './src/screens/QrCodeScreen';
import DettaglioOrdine from './src/screens/DettaglioOrdine';
import FAQ from './src/screens/FAQ';
const RootStack = createStackNavigator();
 
const App = () => {
  return (
    <NavigationContainer>
      <RootStack.Navigator>
        <RootStack.Screen name="Login" component={LoginScreen} options={{headerShown: false}} />
        <RootStack.Screen name="Home" component={HomeScreen} options={{headerShown: false}}/>
        <RootStack.Screen name="SignUp" component={SignUpScreen} options={{headerShown: false}}/>
        <RootStack.Screen name="ConfirmSignUp" component={ConfirmSignUpScreen} options={{headerShown: false}}/>
        <RootStack.Screen name="RetrivePassw" component={RetrivePassw} options={{headerShown: false}}/>
        <RootStack.Screen name="ChangePassw" component={ChangePassw} options={{headerShown: false}}/>
        <RootStack.Screen name="MyProfile" component={MyProfile} options={{headerShown: false}}/>
        <RootStack.Screen name="TermAndCondition" component={TermAndCondition} options={{headerShown: false}}/>
        <RootStack.Screen name="ListaOrdini" component={ListaOrdini} options={{headerShown: false}}/>
        <RootStack.Screen name="ChangePassword2" component={ChangePassword2} options={{headerShown: false}}/>
        <RootStack.Screen name="SuccessScreen" component={SuccessScreen} options={{headerShown: false}}/>
        <RootStack.Screen name="ChangeAnagrafica" component={ChangeAnagrafica} options={{headerShown: false}}/>
        <RootStack.Screen name="DettaglioProdotto" component={DettaglioProdotto} options={{headerShown: false}}/>
        <RootStack.Screen name="Category" component={CategoryScreen} options={{headerShown: false}}/>
        <RootStack.Screen name="Giacenza" component={Giacenza} options={{headerShown: false}}/>
        <RootStack.Screen name="ChangePayMethod" component={ChangePayMethod} options={{headerShown: false}}/>
        <RootStack.Screen name="Cart" component={Cart} options={{headerShown: false}}/>
        <RootStack.Screen name="QrCode" component={QrCode} options={{headerShown: false}}/>
        <RootStack.Screen name="DettaglioOrdine" component={DettaglioOrdine} options={{headerShown: false}}/>
        <RootStack.Screen name="FAQ" component={FAQ} options={{headerShown: false}}/>
      </RootStack.Navigator>
    </NavigationContainer>
  );
};

export default App;