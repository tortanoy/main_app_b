class StringUtils {
  StringUtils._(); // Private constructor to prevent instantiation
 
  static bool isEmpty(String text) {
    return text == null || text.isEmpty;
  }
 
  static String capitalize(String text) {
    if (isEmpty(text)) {
      return '';
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  static String maskPhoneNumber(String phoneNumber) {
    // ตรวจสอบความยาวของเบอร์โทรศัพท์
    if (phoneNumber.length != 10) {
      return 'เบอร์โทรศัพท์ไม่ถูกต้อง';
    }

    // แยกส่วนของเบอร์โทรศัพท์
    String firstPart = phoneNumber.substring(0, 6);
    String lastPart = phoneNumber.substring(6);

    // แทนที่ส่วนแรกด้วย x
    String maskedNumber = firstPart.replaceAll(RegExp(r'.'), 'x') + lastPart;

    return maskedNumber;
  }

}