import 'package:umeng_common_sdk/umeng_common_sdk.dart';
import 'package:get/get.dart';

class UmengUtil {
  static final bool _isMobile = GetPlatform.isAndroid || GetPlatform.isIOS;

  static init() {
    if (!_isMobile) return;
    UmengCommonSdk.initCommon(
        '5f8ef217fac90f1c19a7b0f3', '5f9e1efa1c520d30739d2737', 'Umeng');
    UmengCommonSdk.setPageCollectionModeAuto();
  }

  static onEvent(String event, Map<String, dynamic> properties) {
    if (!_isMobile) return;
    UmengCommonSdk.onEvent(event, properties);
  }
}
