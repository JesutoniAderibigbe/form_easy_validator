import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'error_required': 'This field is required',
      'error_invalid_email': 'Please enter a valid email address',
      'error_invalid_password':
          'Password must contain at least 8 characters, including at least one uppercase letter, one lowercase letter, and one number',
      'error_invalid_name': 'Please enter a valid name',
      'error_invalid_phone': 'Please enter a valid phone number',
      'error_invalid_address': 'Please enter a valid address',
      'error_invalid_city': 'Please enter a valid city',
      'error_invalid_state': 'Please enter a valid state',
      'error_invalid_zip': 'Please enter a valid ZIP code',
      'error_invalid_country': 'Please enter a valid country',
      'error_invalid_card_number': 'Please enter a valid card number',
      'error_invalid_card_holder': 'Please enter a valid card holder',
      'error_invalid_card_expiry': 'Please enter a valid card expiry',
      'error_invalid_card_cvv': 'Please enter a valid card CVV',
      'error_invalid_card_pin': 'Please enter a valid card PIN',
    },

    'fr': {
      "error_required": "Ce champ est requis",
      "error_invalid_email": "Veuillez entrer une adresse e-mail valide",
      "error_invalid_password":
          "Le mot de passe doit contenir au moins 8 caractères, dont au moins une lettre majuscule, une lettre minuscule et un chiffre",
      "error_invalid_name": "Veuillez entrer un nom valide",
      "error_invalid_phone": "Veuillez entrer un numéro de téléphone valide",
      "error_invalid_address": "Veuillez entrer une adresse valide",
      "error_invalid_city": "Veuillez entrer une ville valide",
      "error_invalid_state": "Veuillez entrer un état valide",
      "error_invalid_zip": "Veuillez entrer un code postal valide",
      "error_invalid_country": "Veuillez entrer un pays valide",
      "error_invalid_card_number": "Veuillez entrer un numéro de carte valide",
      "error_invalid_card_holder":
          "Veuillez entrer un titulaire de carte valide",
      "error_invalid_card_expiry":
          "Veuillez entrer une date d'expiration de carte valide",
      "error_invalid_card_cvv": "Veuillez entrer un code CVV valide",
      "error_invalid_card_pin": "Veuillez entrer un code PIN de carte valide"
    },

    'es': {
      "error_required": "Este campo es obligatorio",
      "error_invalid_email":
          "Por favor ingrese una dirección de correo electrónico válida",
      "error_invalid_password":
          "La contraseña debe contener al menos 8 caracteres, incluyendo al menos una letra mayúscula, una letra minúscula y un número",
      "error_invalid_name": "Por favor ingrese un nombre válido",
      "error_invalid_phone": "Por favor ingrese un número de teléfono válido",
      "error_invalid_address": "Por favor ingrese una dirección válida",
      "error_invalid_city": "Por favor ingrese una ciudad válida",
      "error_invalid_state": "Por favor ingrese un estado válido",
      "error_invalid_zip": "Por favor ingrese un código ZIP válido",
      "error_invalid_country": "Por favor ingrese un país válido",
      "error_invalid_card_number":
          "Por favor ingrese un número de tarjeta válido",
      "error_invalid_card_holder":
          "Por favor ingrese un titular de tarjeta válido",
      "error_invalid_card_expiry":
          "Por favor ingrese una fecha de vencimiento de tarjeta válida",
      "error_invalid_card_cvv": "Por favor ingrese un CVV de tarjeta válido",
      "error_invalid_card_pin": "Por favor ingrese un PIN de tarjeta válido"
    },

    'yo': {
      "error_required": "O le pe iwe yii ni ibamu",
      "error_invalid_email": "Jọwọ fọọmu adirẹsi imeeli ti o dara",
      "error_invalid_password":
          "Ọrọ aṣa ni ko le to jẹ irin-ajo 8, ni ipo kan ti o ni Aari (Awọn ọlọwọ kekere) ati Abalaye (Awọn ọlọwọ kekere) ",
      "error_invalid_name": "Jọwọ fun ọ ọrọ ti o ni iwakọ",
      "error_invalid_phone": "Jọwọ fun ọ ni nọmba foonu ti o dara",
      "error_invalid_address": "Jọwọ fọọmu adirẹsi ti o dara",
      "error_invalid_city": "Jọwọ fun ọ ni ilu ti o dara",
      "error_invalid_state": "Jọwọ fọọmu ọpọ ti o dara",
      "error_invalid_zip": "Jọwọ fun ọ ni koodu ZIP ti o dara",
      "error_invalid_country": "Jọwọ fọọmu orilẹ-ede ti o dara",
      "error_invalid_card_number": "Jọwọ fọọmu nọmba kadi ti o dara",
      "error_invalid_card_holder": "Jọwọ fọọmu oniwẹrẹ kadi ti o dara",
      "error_invalid_card_expiry": "Jọwọ fọọmu ojutu kadi ti o dara",
      "error_invalid_card_cvv": "Jọwọ fọọmu CVV kadi ti o dara",
      "error_invalid_card_pin": "Jọwọ fọọmu Pini kadi ti o dara"
    },

    'ig': {
      "error_required": "Onweghị ihe di iche iche",
      "error_invalid_email": "Biko tinye adreesị imeilị nke e dere",
      "error_invalid_password":
          "Ịchọta atụmatụ anwụrụ na-enweghị ikike 8, dịka onye jiri aha ukwuu, onye jiri aha nta na onye jiri nọmba",
      "error_invalid_name": "Biko tinye aha nke e dere",
      "error_invalid_phone": "Biko tinye nọmba fọnu nke e dere",
      "error_invalid_address": "Biko tinye adreesị nke e dere",
      "error_invalid_city": "Biko tinye aha nke e dere",
      "error_invalid_state": "Biko tinye ọnọdụ nke e dere",
      "error_invalid_zip": "Biko tinye ZIP code nke e dere",
      "error_invalid_country": "Biko tinye obodo nke e dere",
      "error_invalid_card_number": "Biko tinye nọmba kadi nke e dere",
      "error_invalid_card_holder": "Biko tinye onye jide kadi nke e dere",
      "error_invalid_card_expiry": "Biko tinye ndụmbi kadi nke e dere",
      "error_invalid_card_cvv": "Biko tinye CVV kadi nke e dere",
      "error_invalid_card_pin": "Biko tinye PIN kadi nke e dere"
    },

    'ha': {
      "error_required": "Wannan jerin shine an kasa",
      "error_invalid_email":
          "Da fatan za a yi shawarar adireshin imel mai daidai",
      "error_invalid_password":
          "Wane ɗalibai yana buɗewa harsuna 8, kamar yadda mace ke cikin takardar baƙa ba, wani zainabin takardar da wata lamba da wani nomba",
      "error_invalid_name": "Da fatan za a yi shawarar suna mai daidai",
      "error_invalid_phone": "Da fatan za a yi shawarar lambar foni mai daidai",
      "error_invalid_address": "Da fatan za a yi shawarar adireshin mai daidai",
      "error_invalid_city": "Da fatan za a yi shawarar birnin mai daidai",
      "error_invalid_state": "Da fatan za a yi shawarar jihar mai daidai",
      "error_invalid_zip": "Da fatan za a yi shawarar ZIP mai daidai",
      "error_invalid_country": "Da fatan za a yi shawarar ƙasar mai daidai",
      "error_invalid_card_number":
          "Da fatan za a yi shawarar lambar kadi mai daidai",
      "error_invalid_card_holder":
          "Da fatan za a yi shawarar daidaitaccen kadi mai daidai",
      "error_invalid_card_expiry":
          "Da fatan za a yi shawarar bakwai kadi mai daidai",
      "error_invalid_card_cvv": "Da fatan za a yi shawarar CVV kadi mai daidai",
      "error_invalid_card_pin": "Da fatan za a yi shawarar PIN kadi mai daidai"
    }
    // Add more supported locales and their translations as needed.
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]![key] ?? '';
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fr', 'es', 'de', 'it', 'yo', 'ig', 'ha']
        .contains(locale.languageCode);
    // Add more supported languages as needed.
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
