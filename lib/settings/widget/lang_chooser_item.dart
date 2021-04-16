import 'package:arduino_desktop/dependency.dart';
import 'package:arduino_desktop/settings/settings_dependency.dart';

class LangChooserItem extends StatelessWidget {
  final SettingsBloc bloc;

  const LangChooserItem(this.bloc);

  @override
  Widget build(BuildContext context) {
    var localesList = context.supportedLocales.map(getLangItem).toList();
    var currentLocale = getLangItem(context.locale);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(Translations.settings.lang),
          DropdownButton<LangItem>(
            items: localesList.map((LangItem value) {
              return new DropdownMenuItem(
                value: value,
                child: new Text(value.name),
              );
            }).toList(),
            value: currentLocale,
            onChanged: (lang) async {
              if (lang != null) {
                var locale = context.supportedLocales.firstWhere((x) => lang.local == x.languageCode);
                await context.setLocale(locale);
                bloc.lang(lang);
              }
            },
          )
        ],
      ),
    );
  }

  LangItem getLangItem(Locale locale) {
    switch (locale.languageCode) {
      case "en":
        return LangItem("English", locale.languageCode);
      case "ru":
        return LangItem("Русский", locale.languageCode);
      default:
        throw "No local";
    }
  }
}
