import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'ui.dart';

const _themeKey = 'theme_key';
const _tuneKey = 'tune_key';
const _hapticKey = 'haptic_key';
const _systemThemeKey = 'system_theme_key';
const _notificationPushKey = 'notification_push_key';
const _localeKey = 'locale_key';
const _termsPolicyKey = 'terms_policy_key';

class UiViewmodel extends ValueNotifier<Object?> {
  UiViewmodel(this.storage) : super([]) {
    getTheme();
    getSystemTheme();
    getAlertTune();
    getNotificationPush();
    setCurrentTheme();
    getLocale();
    getTermsPolicy();
  }

  final ICacheStorage storage;

  final isDark = ValueNotifier(false);

  final alertTuneEnabled = ValueNotifier(true);

  final alertHapticEnabled = ValueNotifier(true);

  final isSystemTheme = ValueNotifier(true);

  final currentTheme = ValueNotifier(Themes.lightTheme);

  final notificationPushEnabled = ValueNotifier(true);

  final isTermsPolicyAccepted = ValueNotifier(false);

  final locale = ValueNotifier<Locale?>(null);

  void setCurrentTheme() {
    currentTheme.value = isDark.value && !isSystemTheme.value
      ? Themes.darkTheme : Themes.lightTheme;
  }

  void onSystemThemeChange() {
    isSystemTheme.value = !isSystemTheme.value;
    storage.setBool(_systemThemeKey, isSystemTheme.value).then(_onValue);
    setCurrentTheme();
  }

  void onThemeChange() {
    isDark.value = !isDark.value;
    storage.setBool(_themeKey, isDark.value).then(_onValue);
    setCurrentTheme();
  }

  void onAlertTuneChange() {
    alertTuneEnabled.value = !alertTuneEnabled.value;
    storage.setBool(_tuneKey, alertTuneEnabled.value).then(_onValue);
  }

  void onAlertHapticChange() {
    alertHapticEnabled.value = !alertHapticEnabled.value;
    storage.setBool(_hapticKey, alertHapticEnabled.value).then(_onValue);
  }

  void onNotificationPushChange() {
    notificationPushEnabled.value = !notificationPushEnabled.value;
    storage.setBool(_notificationPushKey, notificationPushEnabled.value).then(_onValue);
  }

  void onTermsPolicyChange(bool value) {
    isTermsPolicyAccepted.value = value;
    storage.setBool(_termsPolicyKey, isTermsPolicyAccepted.value).then(_onValue);
  }

  void onLocaleChange(String value) {
    locale.value = Locale(value);
    storage.setString(_localeKey, value).then(_onValue);
  }

  void getTheme() => isDark.value = storage.getBool(_themeKey) ?? false;

  void getSystemTheme() => isSystemTheme.value = storage.getBool(_systemThemeKey) ?? true;

  void getAlertTune() => alertTuneEnabled.value = storage.getBool(_tuneKey) ?? true;

  void getAlertHaptic() => alertHapticEnabled.value = storage.getBool(_hapticKey) ?? true;
  
  void getNotificationPush() => notificationPushEnabled.value = storage.getBool(_notificationPushKey) ?? true;

  void getTermsPolicy() => isTermsPolicyAccepted.value = storage.getBool(_termsPolicyKey) ?? false;

  void getLocale() {
    final localeCode = storage.getString(_localeKey);
    locale.value = localeCode != null ? Locale(localeCode) : null;
  }
}

void _onValue(dynamic _) {}