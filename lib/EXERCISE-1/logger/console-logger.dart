import '../models/ride-preference.dart';
import '../services/ride-preference-listener.dart';

class ConsoleLogger implements RidePreferencesListener {
  @override
  void onPreferenceChange(RidePreference changedPreference) {
    print('Preference changed: ${changedPreference.toString()}');
  }
}