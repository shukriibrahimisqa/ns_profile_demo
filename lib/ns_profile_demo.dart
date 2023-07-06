
import 'ns_profile_demo_platform_interface.dart';

class NsProfileDemo {
  Future<String?> getPlatformVersion() {
    return NsProfileDemoPlatform.instance.getPlatformVersion();
  }
}
