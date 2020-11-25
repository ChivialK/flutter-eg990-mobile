// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'th';

  static m0(level, downline) =>
      "※ ${level} สามารถเพิ่มได้เฉพาะบัญชี ${downline}";

  static m1(level) => "${level}รายการ";

  static m2(level) => "${level}หมายเลขบัญชี";

  static m3(action, platform) =>
      "คุณแน่ใจหรือไม่ว่า ${action} ไปยังแพลตฟอร์ม ${platform}";

  static m4(value) => "เครดิตไม่เพียงพอ: ${value}";

  static m5(value) => "ทั้งหมด: \$ ${value}";

  static m22(value) => "ลงนามแล้ว ${value} วัน";

  static m23(name) => "สวัสดี ${name}！";

  static m24(msg) => "${msg} ข้อผิดพลาด";

  static m25(wallet) => "${wallet} ข้อผิดพลาด URL การผูก";

  static m26(msg, msg2) => "ข้อผิดพลาด: ${msg} (${msg2})";

  static m27(msg) => "โปรดป้อน ${msg}";

  static m28(url) => "ไม่สามารถเปิดลิงก์: ${url}";

  static m29(msg) => "ข้อผิดพลาด: ${msg}";

  static m30(num) => "จำนวนเงินขั้นต่ำคือ ${num}";

  static m31(num) => "รหัสผ่านต้องมีอย่างน้อย ${num} คำ";

  static m32(num) => "หมายเลขโทรศัพท์ผิดพลาด (${num})";

  static m33(name) => "${name} โปรดเข้าสู่ระบบอีกครั้ง";

  static m34(msg) => "${msg} ถูกยกเลิก";

  static m35(msg) => "${msg} ล้มเหลว";

  static m36(msg) => "${msg} สำเร็จ";

  static m37(name) => "ยินดีต้อนรับ ${name}";

  static m38(value) => "จ่าย ${value} คะแนนร้านค้า";

  static m39(value) => "ที่อยู่: ${value}";

  static m40(from, to, total) =>
      "แสดงผลลำดับที่ ${from} ถึง ${to}, ทั้งหมดคือ ${total}";

  static m41(value) => "ชื่อ: ${value}";

  static m42(value) => "โทรศัพท์: ${value}";

  static m43(value) => "รหัสไปรษณีย์: ${value}";

  static m44(value) => "แต่ละแพลตฟอร์ม ${value}";

  static m45(value) => "${value} คะแนน";

  static m46(value) => "฿ ${value}";

  static m47(from, to) => "${from} ถึง ${to}";

  static m48(value, version) =>
      "พบเวอร์ชันใหม่， โปรดคลิกปุ่ม \'อัปเดต\' เพื่อดาวน์โหลดและติดตั้ง\nเวอร์ชันปัจจุบัน： ${version}\nเวอร์ชันใหม่： ${value}";

  static m49(separator) => "ขอ ${separator} รหัส";

  static m50(num) => "จับฉลากได้: ${num} ครั้ง";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "actionBack": MessageLookupByLibrary.simpleMessage("ย้อนกลับ"),
        "actionNotify": MessageLookupByLibrary.simpleMessage("แจ้งเตือน"),
        "actionSearch": MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "actionSetting": MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "agentAccountLevelAgent":
            MessageLookupByLibrary.simpleMessage("พร็อกซี"),
        "agentAccountLevelCompany":
            MessageLookupByLibrary.simpleMessage("บริษัท"),
        "agentAccountLevelGrandMaster":
            MessageLookupByLibrary.simpleMessage("ประธานาธิบดีใหญ่"),
        "agentAccountLevelMaster":
            MessageLookupByLibrary.simpleMessage("รวมรุ่น"),
        "agentAccountLevelMember":
            MessageLookupByLibrary.simpleMessage("สมาชิก"),
        "agentActionLogin":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบตัวแทน"),
        "agentActionLoginHint": MessageLookupByLibrary.simpleMessage(
            "กรุณาเข้าสู่ระบบบัญชีตัวแทนของคุณก่อน"),
        "agentActionRegister":
            MessageLookupByLibrary.simpleMessage("การลงทะเบียนตัวแทน"),
        "agentAdButtonGenerate":
            MessageLookupByLibrary.simpleMessage("สร้างโฆษณา"),
        "agentAdTabAvailable": MessageLookupByLibrary.simpleMessage("ว่าง"),
        "agentAdTabGenerated":
            MessageLookupByLibrary.simpleMessage("สร้างแล้ว"),
        "agentAddDownlineHint": m0,
        "agentBankcardHint": MessageLookupByLibrary.simpleMessage(
            "หลังจากเพิ่มบัตรธนาคารแล้วหากคุณต้องการแก้ไขโปรดติดต่อ บริษัท เพื่อทำการแก้ไข"),
        "agentButtonTextCopy": MessageLookupByLibrary.simpleMessage("คัดลอก"),
        "agentButtonTextLink": MessageLookupByLibrary.simpleMessage("ลิงก์"),
        "agentButtonTextShare": MessageLookupByLibrary.simpleMessage("แบ่งปัน"),
        "agentChartHeaderAccount":
            MessageLookupByLibrary.simpleMessage("บัญชี"),
        "agentChartHeaderBet":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินเดิมพัน"),
        "agentChartHeaderPayout": MessageLookupByLibrary.simpleMessage("จ่าย"),
        "agentChartHeaderTotalBet":
            MessageLookupByLibrary.simpleMessage("เดิมพันทั้งหมด"),
        "agentChartHeaderTotalPayout":
            MessageLookupByLibrary.simpleMessage("การจ่ายเงินทั้งหมด"),
        "agentChartHeaderTotalValid":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินที่ถูกต้องทั้งหมด"),
        "agentChartHeaderTotalWager":
            MessageLookupByLibrary.simpleMessage("ปริมาณการเดิมพันทั้งหมด"),
        "agentChartHeaderValid":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินเดิมพันที่ถูกต้อง"),
        "agentChartHeaderWager":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินเดิมพัน"),
        "agentChartTableSpinner":
            MessageLookupByLibrary.simpleMessage("แบบฟอร์ม"),
        "agentCommissionHeaderAdmin":
            MessageLookupByLibrary.simpleMessage("ค่าธรรมเนียมการดูแลระบบ"),
        "agentCommissionHeaderGroup":
            MessageLookupByLibrary.simpleMessage("ค่าคอมมิชชั่นกลุ่ม"),
        "agentCommissionHeaderLowLine":
            MessageLookupByLibrary.simpleMessage("ค่าคอมมิชชั่นออฟไลน์"),
        "agentCommissionHeaderMonth":
            MessageLookupByLibrary.simpleMessage("เดือน"),
        "agentCommissionHeaderPlatform":
            MessageLookupByLibrary.simpleMessage("ค่าธรรมเนียมแพลตฟอร์ม"),
        "agentCommissionHeaderReceive":
            MessageLookupByLibrary.simpleMessage("ค่าคอมมิชชันจริง"),
        "agentDownlineButtonAdd":
            MessageLookupByLibrary.simpleMessage("เพิ่มออฟไลน์"),
        "agentDownlineButtonProportion":
            MessageLookupByLibrary.simpleMessage("อัปเดตบัญชี"),
        "agentDownlineHeaderAccount":
            MessageLookupByLibrary.simpleMessage("หมายเลขบัญชี"),
        "agentDownlineHeaderCategory":
            MessageLookupByLibrary.simpleMessage("ประเภท"),
        "agentDownlineHeaderFee": MessageLookupByLibrary.simpleMessage(
            "ค่าธรรมเนียมการจัดการ /\n ค่าธรรมเนียมแพลตฟอร์ม"),
        "agentDownlineHeaderMore":
            MessageLookupByLibrary.simpleMessage("มากกว่า"),
        "agentDownlineHeaderProportion":
            MessageLookupByLibrary.simpleMessage("คิดเป็น"),
        "agentDownlineHeaderStatus":
            MessageLookupByLibrary.simpleMessage("สถานะ"),
        "agentDownlineHeaderStatus0":
            MessageLookupByLibrary.simpleMessage("เปิดใช้งาน"),
        "agentDownlineHeaderStatus1":
            MessageLookupByLibrary.simpleMessage("ปิดการใช้งาน"),
        "agentDownlineHeaderUpdate":
            MessageLookupByLibrary.simpleMessage("อัปเดตบัญชี"),
        "agentDownlineHeaderUpdateHint": MessageLookupByLibrary.simpleMessage(
            "อัปเดตบัญชี\n(คุณสามารถแก้ไขบัญชีได้โดยตรงหลังจากเพิ่มบัญชี)"),
        "agentInfoFieldAgents": MessageLookupByLibrary.simpleMessage("ตัวแทน"),
        "agentInfoFieldButtonGetCode":
            MessageLookupByLibrary.simpleMessage("รับรหัส"),
        "agentInfoFieldCode": MessageLookupByLibrary.simpleMessage("รหัสแนะนำ"),
        "agentInfoFieldLink":
            MessageLookupByLibrary.simpleMessage("ลิงก์ตัวแทน"),
        "agentLedgerFieldTitleAccount":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนชื่อตัวแทน"),
        "agentLedgerFieldTitleDepositCheck":
            MessageLookupByLibrary.simpleMessage("ฝากสมาชิก"),
        "agentLedgerHeaderAccount":
            MessageLookupByLibrary.simpleMessage("บัญชี"),
        "agentLedgerHeaderDeposit":
            MessageLookupByLibrary.simpleMessage("เงินฝาก"),
        "agentLedgerHeaderLastLogin":
            MessageLookupByLibrary.simpleMessage("เวลาเข้าสู่ระบบครั้งล่าสุด"),
        "agentLedgerHeaderNo":
            MessageLookupByLibrary.simpleMessage("หมายเลขซีเรียล"),
        "agentLedgerHeaderPromo":
            MessageLookupByLibrary.simpleMessage("โปรโมชั่น"),
        "agentLedgerHeaderRefund":
            MessageLookupByLibrary.simpleMessage("การคืนเงิน"),
        "agentLedgerHeaderRegDate":
            MessageLookupByLibrary.simpleMessage("เวลาลงทะเบียน"),
        "agentLedgerHeaderWithdraw":
            MessageLookupByLibrary.simpleMessage("ถอน"),
        "agentRegisterSuccess": MessageLookupByLibrary.simpleMessage(
            "ส่งตัวแทนเข้ารับการตรวจสอบแล้วโปรดรอสักครู่"),
        "agentTabTitleAds": MessageLookupByLibrary.simpleMessage("โฆษณา"),
        "agentTabTitleCard":
            MessageLookupByLibrary.simpleMessage("แก้ไขบัตรธนาคาร"),
        "agentTabTitleChart": MessageLookupByLibrary.simpleMessage("แผนภูมิ"),
        "agentTabTitleCommission":
            MessageLookupByLibrary.simpleMessage("ค่าคอมมิชชั่น"),
        "agentTabTitleDownlineList": m1,
        "agentTabTitleInfo": MessageLookupByLibrary.simpleMessage("ข้อมูล"),
        "agentTabTitleLedger":
            MessageLookupByLibrary.simpleMessage("บัญชีแยกประเภท"),
        "agentTextChartCategory":
            MessageLookupByLibrary.simpleMessage("หมวดหมู่"),
        "agentTextChartCheckFull":
            MessageLookupByLibrary.simpleMessage("แสดงข้อมูลทั้งหมด"),
        "agentTextChartDate": MessageLookupByLibrary.simpleMessage("เวลา:"),
        "agentTextChartMonth": MessageLookupByLibrary.simpleMessage("เดือนนี้"),
        "agentTextChartMonthPrev":
            MessageLookupByLibrary.simpleMessage("เดือนที่แล้ว"),
        "agentTextChartOption": MessageLookupByLibrary.simpleMessage("เลือก"),
        "agentTextChartPlatform":
            MessageLookupByLibrary.simpleMessage("แพลตฟอร์ม"),
        "agentTextChartQuery":
            MessageLookupByLibrary.simpleMessage("แบบสอบถาม"),
        "agentTitleAccount": m2,
        "balanceHintText1": MessageLookupByLibrary.simpleMessage(
            "1. กรุณาออกจากอินเทอร์เฟซการเดิมพันเกมหรือเกมก่อนโอนเงิน"),
        "balanceHintText2": MessageLookupByLibrary.simpleMessage(
            "2. เมื่อไม่ได้เข้าร่วมกิจกรรมจำนวนเงินรับส่งภายในอาคารต้องไม่ต่ำกว่า 1 หยวนและไม่มีค่าธรรมเนียมการจัดการสำหรับการโอนในร่ม"),
        "balanceHintText3": MessageLookupByLibrary.simpleMessage(
            "3. หากคุณมีการเชื่อมต่ออินเทอร์เน็ตที่ช้าโปรดรอสักครู่และอย่าส่งซ้ำหลายครั้ง"),
        "balanceHintText4": MessageLookupByLibrary.simpleMessage(
            "4. หากจำนวนแพลตฟอร์มไม่เปลี่ยนแปลงหลังจากการโอนสำเร็จ 4 ครั้งโปรดรีเฟรชแพลตฟอร์มด้วยตนเองหรือติดต่อฝ่ายบริการลูกค้า"),
        "balanceHintTextTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือน:"),
        "balanceStatusMaintenance":
            MessageLookupByLibrary.simpleMessage("การบำรุงรักษา"),
        "balanceTransferAlertMsg": m3,
        "balanceTransferAlertTitle":
            MessageLookupByLibrary.simpleMessage("โปรดยืนยัน"),
        "balanceTransferAmountError": m4,
        "balanceTransferInText":
            MessageLookupByLibrary.simpleMessage("โอนเข้า"),
        "balanceTransferOutText":
            MessageLookupByLibrary.simpleMessage("โอนออก"),
        "bankcardViewTitleBank": MessageLookupByLibrary.simpleMessage("ธนาคาร"),
        "bankcardViewTitleBankArea":
            MessageLookupByLibrary.simpleMessage("พื้นที่"),
        "bankcardViewTitleBankBranch":
            MessageLookupByLibrary.simpleMessage("สาขาธนาคาร"),
        "bankcardViewTitleBankName":
            MessageLookupByLibrary.simpleMessage("ชื่อธนาคาร"),
        "bankcardViewTitleBankProvince":
            MessageLookupByLibrary.simpleMessage("เปิดบัญชี"),
        "bankcardViewTitleCardNumber":
            MessageLookupByLibrary.simpleMessage("หมายเลขบัญชี (บัตร)"),
        "bankcardViewTitleHolder":
            MessageLookupByLibrary.simpleMessage("เจ้าของบัญชี"),
        "bankcardViewTitleOwner":
            MessageLookupByLibrary.simpleMessage("ชื่อบัญชี"),
        "bankcardViewTitleSend": MessageLookupByLibrary.simpleMessage("ส่ง"),
        "betsFieldDateError":
            MessageLookupByLibrary.simpleMessage("ข้อผิดพลาดช่วงวันที่"),
        "betsFieldTitleEndTime":
            MessageLookupByLibrary.simpleMessage("สิ้นสุด"),
        "betsFieldTitleStartTime":
            MessageLookupByLibrary.simpleMessage("เริ่ม"),
        "betsHeaderAmount":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินเดิมพัน"),
        "betsHeaderBonus":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินที่จ่าย"),
        "betsHeaderDate": MessageLookupByLibrary.simpleMessage("เวลา"),
        "betsHeaderGame": MessageLookupByLibrary.simpleMessage("ชื่อเกม"),
        "betsHeaderId": MessageLookupByLibrary.simpleMessage("หมายเลขสลิปพนัน"),
        "betsHeaderPlatform": MessageLookupByLibrary.simpleMessage("แพลตฟอร์ม"),
        "betsHeaderSum": MessageLookupByLibrary.simpleMessage("ผลรวม"),
        "betsHeaderValidBet":
            MessageLookupByLibrary.simpleMessage("เดิมพันที่ถูกต้อง"),
        "betsSpinnerOptionAllPlatform":
            MessageLookupByLibrary.simpleMessage("ทุกแพลตฟอร์ม"),
        "betsSpinnerTitlePlatform":
            MessageLookupByLibrary.simpleMessage("แพลตฟอร์มเกม"),
        "betsSpinnerTitleTime":
            MessageLookupByLibrary.simpleMessage("เวลาเดิมพัน"),
        "betsTextTotal": m5,
        "btnBack": MessageLookupByLibrary.simpleMessage("ย้อนกลับ"),
        "btnBind": MessageLookupByLibrary.simpleMessage("ผูก"),
        "btnCancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "btnClose": MessageLookupByLibrary.simpleMessage("ปิด"),
        "btnConfirm": MessageLookupByLibrary.simpleMessage("ยืนยัน"),
        "btnConfirmSend": MessageLookupByLibrary.simpleMessage("ยืนยันและส่ง"),
        "btnCopy": MessageLookupByLibrary.simpleMessage("สำเนา"),
        "btnDownload": MessageLookupByLibrary.simpleMessage("ดาวน์โหลด"),
        "btnFastLogin":
            MessageLookupByLibrary.simpleMessage("บันทึกข้อมูลการเข้าสู่ระบบ"),
        "btnGo": MessageLookupByLibrary.simpleMessage("ไปที่"),
        "btnLogin": MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบ"),
        "btnMenu": MessageLookupByLibrary.simpleMessage("เมนู"),
        "btnOff": MessageLookupByLibrary.simpleMessage("ปิด"),
        "btnOn": MessageLookupByLibrary.simpleMessage("เปิด"),
        "btnQuery": MessageLookupByLibrary.simpleMessage("สอบถาม"),
        "btnQueryNow": MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "btnRefresh": MessageLookupByLibrary.simpleMessage("รีเฟรช"),
        "btnRegister": MessageLookupByLibrary.simpleMessage("ลงทะเบียน"),
        "btnResetPassword": MessageLookupByLibrary.simpleMessage("ลืมรหัสผ่าน"),
        "btnSearch": MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "btnSend": MessageLookupByLibrary.simpleMessage("ส่ง"),
        "btnShow": MessageLookupByLibrary.simpleMessage("แสดง"),
        "btnSignUp": MessageLookupByLibrary.simpleMessage("ลงชื่อเข้าใช้"),
        "btnStopShowing": MessageLookupByLibrary.simpleMessage("ข้าม"),
        "btnSubmit": MessageLookupByLibrary.simpleMessage("ส่ง"),
        "btnUpdate": MessageLookupByLibrary.simpleMessage("อัปเดต"),
        "centerDialogCpwLeftHint":
            MessageLookupByLibrary.simpleMessage("※จะปิด APP"),
        "centerDialogCpwLeftTitle":
            MessageLookupByLibrary.simpleMessage("ไม่ได้ติดตั้ง APP？"),
        "centerDialogCpwRightHint": MessageLookupByLibrary.simpleMessage(
            "(โปรดรอให้หน้านี้อัปเดตหลังจากเชื่อมโยง)"),
        "centerDialogCpwRightHint2":
            MessageLookupByLibrary.simpleMessage("หรือ"),
        "centerDialogCpwRightLinkError": MessageLookupByLibrary.simpleMessage(
            "URL ผิดพลาดโปรดติดต่อฝ่ายบริการ"),
        "centerDialogCpwRightTitle":
            MessageLookupByLibrary.simpleMessage("ติดตั้ง APP แล้ว"),
        "centerHintNoName": MessageLookupByLibrary.simpleMessage(
            "โปรดไปที่บัตรธนาคารที่มีผลผูกพันเพื่อทำการตั้งค่าที่เกี่ยวข้อง"),
        "centerLuckyButtonBind":
            MessageLookupByLibrary.simpleMessage("ยืนยันการผูก"),
        "centerLuckyButtonGenerate":
            MessageLookupByLibrary.simpleMessage("สร้างอัตโนมัติ"),
        "centerLuckyHint": MessageLookupByLibrary.simpleMessage(
            "ผูกรหัสนำโชค คุณสามารถมีส่วนร่วมในรหัสจับคู่ลอตเตอรี ของขวัญที่ยอดเยี่ยมสำหรับคุณ !!!"),
        "centerLuckyNumberError":
            MessageLookupByLibrary.simpleMessage("ช่วงตัวเลข: 01 ~ 49"),
        "centerLuckyTitle": MessageLookupByLibrary.simpleMessage(
            "กรุณากรอกตัวเลขตั้งแต่ 01 ถึง 49 ในช่องว่าง 7 ช่องต่อไปนี้"),
        "centerTextButtonBind": MessageLookupByLibrary.simpleMessage("ผูก"),
        "centerTextButtonChangePwd":
            MessageLookupByLibrary.simpleMessage("เปลี่ยนรหัสผ่าน"),
        "centerTextButtonEdit":
            MessageLookupByLibrary.simpleMessage("ปรับเปลี่ยน"),
        "centerTextButtonSend": MessageLookupByLibrary.simpleMessage("ส่ง"),
        "centerTextTitleAccount":
            MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้:"),
        "centerTextTitleBirth":
            MessageLookupByLibrary.simpleMessage("วันเกิด:"),
        "centerTextTitleCgp":
            MessageLookupByLibrary.simpleMessage("Cgp Wallet"),
        "centerTextTitleCpw":
            MessageLookupByLibrary.simpleMessage("ช็อปสมบัติกระเป๋าเงิน"),
        "centerTextTitleDateError": MessageLookupByLibrary.simpleMessage(
            "โปรดป้อนวันที่ที่ถูกต้อง (รูปแบบ: YYYY – MM – DD)"),
        "centerTextTitleDateHint":
            MessageLookupByLibrary.simpleMessage("รูปแบบคือ: 0000–00–00"),
        "centerTextTitleMail":
            MessageLookupByLibrary.simpleMessage("กล่องจดหมาย:"),
        "centerTextTitleMailError":
            MessageLookupByLibrary.simpleMessage("กรุณากรอกอีเมลที่ถูกต้อง"),
        "centerTextTitleName": MessageLookupByLibrary.simpleMessage("ชื่อ:"),
        "centerTextTitlePhone":
            MessageLookupByLibrary.simpleMessage("เบอร์มือถือ:"),
        "centerTextTitleWechat":
            MessageLookupByLibrary.simpleMessage("WeChat:"),
        "centerViewTitleData": MessageLookupByLibrary.simpleMessage("โปรไฟล์"),
        "centerViewTitleLotto":
            MessageLookupByLibrary.simpleMessage("รหัสนำโชค"),
        "centerViewTitleVipRank":
            MessageLookupByLibrary.simpleMessage("ระดับ VIP"),
        "dealsHeaderAmount": MessageLookupByLibrary.simpleMessage("จำนวนเงิน"),
        "dealsHeaderDate": MessageLookupByLibrary.simpleMessage("วันที่"),
        "dealsHeaderDetail": MessageLookupByLibrary.simpleMessage("รายละเอียด"),
        "dealsHeaderSerial":
            MessageLookupByLibrary.simpleMessage("หมายเลขเดียว"),
        "dealsHeaderStatus":
            MessageLookupByLibrary.simpleMessage("สถานะการสั่งซื้อ"),
        "dealsHeaderType": MessageLookupByLibrary.simpleMessage("items"),
        "dealsViewSpinnerStatus0":
            MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "dealsViewSpinnerStatus1":
            MessageLookupByLibrary.simpleMessage("ความสำเร็จ"),
        "dealsViewSpinnerStatus2":
            MessageLookupByLibrary.simpleMessage("ล้มเหลว"),
        "dealsViewSpinnerStatus3":
            MessageLookupByLibrary.simpleMessage("กำลังประมวลผล"),
        "dealsViewSpinnerStatus4":
            MessageLookupByLibrary.simpleMessage("ดีลใหม่"),
        "dealsViewSpinnerType0":
            MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "dealsViewSpinnerType1":
            MessageLookupByLibrary.simpleMessage("เติมเงิน"),
        "dealsViewSpinnerType2": MessageLookupByLibrary.simpleMessage("การถอน"),
        "dealsViewSpinnerType3": MessageLookupByLibrary.simpleMessage("โบนัส"),
        "depositPaymentNoData": MessageLookupByLibrary.simpleMessage(
            "ตรวจสอบว่าไม่มีวิธีการเติมเงิน"),
        "downloadAndroidCgpay":
            MessageLookupByLibrary.simpleMessage("CGPAY สำหรับ Android"),
        "downloadAndroidDns":
            MessageLookupByLibrary.simpleMessage("ซ่อมแซม DNS สำหรับ Android"),
        "downloadHintPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("(Android เท่านั้น)"),
        "downloadHintPlatformIos":
            MessageLookupByLibrary.simpleMessage("(iOS เท่านั้น)"),
        "downloadIosCgpay":
            MessageLookupByLibrary.simpleMessage("CGPAY สำหรับ IOS"),
        "downloadIosDns":
            MessageLookupByLibrary.simpleMessage("ซ่อมแซม DNS สำหรับ IOS"),
        "eventButtonSignUpAlready":
            MessageLookupByLibrary.simpleMessage("ลงชื่อเข้าใช้"),
        "eventButtonSignUpFailed":
            MessageLookupByLibrary.simpleMessage("การลงชื่อเข้าใช้ล้มเหลว !!"),
        "eventButtonSignUpSuccess":
            MessageLookupByLibrary.simpleMessage("ลงชื่อเข้าใช้สำเร็จ !!"),
        "eventButtonSignUpTv": m22,
        "eventSignUpHint1":
            MessageLookupByLibrary.simpleMessage("ลงชื่อสมัครใช้แล้ว"),
        "eventSignUpHint2": MessageLookupByLibrary.simpleMessage("วัน"),
        "exitAppHint":
            MessageLookupByLibrary.simpleMessage("กดอีกครั้งเพื่อออกจาก APP"),
        "gameCategoryAbout":
            MessageLookupByLibrary.simpleMessage("เกี่ยวกับเรา"),
        "gameCategoryAll": MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "gameCategoryCard": MessageLookupByLibrary.simpleMessage("การ์ด"),
        "gameCategoryCardFull": MessageLookupByLibrary.simpleMessage("การ์ด"),
        "gameCategoryCasino": MessageLookupByLibrary.simpleMessage("คาสิโน"),
        "gameCategoryCasinoFull":
            MessageLookupByLibrary.simpleMessage("คาสิโน"),
        "gameCategoryCockFighting":
            MessageLookupByLibrary.simpleMessage("ชนไก่"),
        "gameCategoryFish": MessageLookupByLibrary.simpleMessage("ปลา"),
        "gameCategoryFishFull": MessageLookupByLibrary.simpleMessage("ตกปลา"),
        "gameCategoryGift": MessageLookupByLibrary.simpleMessage("ของขวัญ"),
        "gameCategoryLottery": MessageLookupByLibrary.simpleMessage("ลอตเตอรี"),
        "gameCategoryLotteryFull":
            MessageLookupByLibrary.simpleMessage("ลอตเตอรี"),
        "gameCategoryMovieWeb": MessageLookupByLibrary.simpleMessage("ดูหนัง"),
        "gameCategoryMovieWebHint":
            MessageLookupByLibrary.simpleMessage("คลิกฉันเพื่อชมภาพยนตร์"),
        "gameCategoryOther": MessageLookupByLibrary.simpleMessage("อื่น ๆ "),
        "gameCategorySlot": MessageLookupByLibrary.simpleMessage("สล็อต"),
        "gameCategorySlotFull": MessageLookupByLibrary.simpleMessage("สล็อต"),
        "gameCategorySport": MessageLookupByLibrary.simpleMessage("กีฬา"),
        "gameCategorySportFull": MessageLookupByLibrary.simpleMessage("กีฬา"),
        "gameCategoryWeb": MessageLookupByLibrary.simpleMessage("เว็บไซต์"),
        "gameCategoryWebHint": MessageLookupByLibrary.simpleMessage(
            "คลิกฉันเพื่อเปิดเว็บไซต์ 85Bet"),
        "gameToolHintRestore": MessageLookupByLibrary.simpleMessage(
            "ดับเบิลคลิกเพื่อคืนค่าการแสดงผล"),
        "gameToolHintUsage": MessageLookupByLibrary.simpleMessage(
            "คลิกเพื่อแสดงกดแบบยาวเพื่อซ่อน ↗"),
        "hintAccount": MessageLookupByLibrary.simpleMessage("UserName"),
        "hintAccountInput":
            MessageLookupByLibrary.simpleMessage("เข้าสู่บัญชี"),
        "hintAccountPassword": MessageLookupByLibrary.simpleMessage("รหัสผ่าน"),
        "hintActionLogin":
            MessageLookupByLibrary.simpleMessage("กรุณาเข้าสู่ระบบก่อน"),
        "hintActionSelect": MessageLookupByLibrary.simpleMessage("กรุณาเลือก"),
        "hintConfirmed":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่านอีกครั้ง"),
        "hintConfirmedInput":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่านอีกครั้ง"),
        "hintEmail": MessageLookupByLibrary.simpleMessage("ป้อนอีเมล"),
        "hintName": MessageLookupByLibrary.simpleMessage("ป้อนชื่อผู้ใช้"),
        "hintPassword": MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่าน"),
        "hintPasswordInput":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่าน"),
        "hintPhoneInput":
            MessageLookupByLibrary.simpleMessage("ป้อนหมายเลขโทรศัพท์"),
        "hintReferralInput":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสอ้างอิง"),
        "hintTitleLogin":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนข้อมูลสมาชิกของคุณ"),
        "homeHintDefaultMarquee": MessageLookupByLibrary.simpleMessage(
            "สวัสดีสมาชิกที่รัก! หากคุณมีคำถามใด ๆ เกี่ยวกับเว็บไซต์นี้โปรดใช้ระบบบริการลูกค้าออนไลน์"),
        "homeHintFreeUsage":
            MessageLookupByLibrary.simpleMessage("ไม่เสียค่าใช้จ่าย"),
        "homeHintMemberCreditLeft":
            MessageLookupByLibrary.simpleMessage("เครดิต"),
        "homeHintWelcome":
            MessageLookupByLibrary.simpleMessage("ยินดีต้อนรับ！"),
        "homeHintWelcomeLogin": MessageLookupByLibrary.simpleMessage(
            "ยินดีต้อนรับ！ กรุณาเข้าสู่ระบบก่อน"),
        "homeHintWelcomeMember": m23,
        "homeUserTabCategoryEgMovie":
            MessageLookupByLibrary.simpleMessage("ภาพยนตร์ EG"),
        "homeUserTabCategoryFavorite":
            MessageLookupByLibrary.simpleMessage("รายการโปรด"),
        "homeUserTabCategoryMovie":
            MessageLookupByLibrary.simpleMessage("ภาพยนตร์"),
        "homeUserTabCategoryNewMovie":
            MessageLookupByLibrary.simpleMessage("ภาพยนตร์ใหม่"),
        "homeUserTabCategoryRecommend":
            MessageLookupByLibrary.simpleMessage("แนะนำ"),
        "memberGridTitleAccount":
            MessageLookupByLibrary.simpleMessage("ศูนย์บัญชี"),
        "memberGridTitleAgent": MessageLookupByLibrary.simpleMessage("ตัวแทน"),
        "memberGridTitleBalance":
            MessageLookupByLibrary.simpleMessage("ความสมดุลของแพลตฟอร์ม"),
        "memberGridTitleBet":
            MessageLookupByLibrary.simpleMessage("ประวัติการเดิมพัน"),
        "memberGridTitleCard":
            MessageLookupByLibrary.simpleMessage("บัตรธนาคาร"),
        "memberGridTitleDeal":
            MessageLookupByLibrary.simpleMessage("ประวัติดีล"),
        "memberGridTitleDeposit":
            MessageLookupByLibrary.simpleMessage("เติมเงิน"),
        "memberGridTitleFlow":
            MessageLookupByLibrary.simpleMessage("โฟลว์เรคคอร์ด"),
        "memberGridTitleLogout":
            MessageLookupByLibrary.simpleMessage("ออกจากระบบ"),
        "memberGridTitleMessage":
            MessageLookupByLibrary.simpleMessage("ข้อความของไซต์"),
        "memberGridTitleTransaction":
            MessageLookupByLibrary.simpleMessage("บันทึกการโอน"),
        "memberGridTitleTransfer": MessageLookupByLibrary.simpleMessage("โอน"),
        "memberGridTitleWallet":
            MessageLookupByLibrary.simpleMessage("โอนกระเป๋าเงิน"),
        "memberGridTitleWithdraw": MessageLookupByLibrary.simpleMessage("ถอน"),
        "messageActionCheckTerms": MessageLookupByLibrary.simpleMessage(
            "โปรดอ่านและยอมรับเงื่อนไขการเดิมพัน"),
        "messageActionFailed":
            MessageLookupByLibrary.simpleMessage("การดำเนินการไม่ถูกต้อง"),
        "messageActionFillForm":
            MessageLookupByLibrary.simpleMessage("กรุณากรอกแบบฟอร์ม"),
        "messageActionTooFrequent": MessageLookupByLibrary.simpleMessage(
            "มีการดำเนินการมากเกินไปในช่วงเวลาสั้น ๆ "),
        "messageCopy":
            MessageLookupByLibrary.simpleMessage("คัดลอกไปที่คลิปบอร์ด"),
        "messageCopyError":
            MessageLookupByLibrary.simpleMessage("คัดลอกล้มเหลว"),
        "messageError": m24,
        "messageErrorAccount":
            MessageLookupByLibrary.simpleMessage("ข้อผิดพลาดของบัญชี"),
        "messageErrorAutoLogin": MessageLookupByLibrary.simpleMessage(
            "ข้อมูลผิดพลาดโปรดเข้าสู่ระบบด้วยตนเอง"),
        "messageErrorBindBankcard": MessageLookupByLibrary.simpleMessage(
            "กรุณาผูกบัตรธนาคารของคุณก่อน!"),
        "messageErrorBindCgp": MessageLookupByLibrary.simpleMessage(
            "กรุณาผูกกระเป๋าเงิน Cgp ก่อน"),
        "messageErrorBindCpw": MessageLookupByLibrary.simpleMessage(
            "กรุณาผูกกระเป๋าเงินเพื่อซื้อสมบัติ"),
        "messageErrorBindUrl": m25,
        "messageErrorCachedFile": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดของไฟล์ที่แคชไว้โปรดลองอีกครั้งในภายหลังหรือติดต่อฝ่ายบริการลูกค้า"),
        "messageErrorCause": m26,
        "messageErrorEvent": MessageLookupByLibrary.simpleMessage(
            "ไม่สามารถดึงข้อมูลเหตุการณ์จากเซิร์ฟเวอร์ได้โปรดลองอีกครั้งในภายหลัง"),
        "messageErrorFieldError": m27,
        "messageErrorHasCardData":
            MessageLookupByLibrary.simpleMessage("ผูกบัตรธนาคารไว้แล้ว"),
        "messageErrorInternal": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดภายในโปรดลองอีกครั้งในภายหลังหรือติดต่อฝ่ายบริการลูกค้า"),
        "messageErrorLink": m28,
        "messageErrorLoadingGame": MessageLookupByLibrary.simpleMessage(
            "เกิดข้อผิดพลาดขณะโหลดเกมโปรดลองอีกครั้งในภายหลัง"),
        "messageErrorLoadingPay": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดในการโหลดหน้าเว็บโปรดลองอีกครั้งในภายหลัง"),
        "messageErrorNoNetwork":
            MessageLookupByLibrary.simpleMessage("โปรดตรวจสอบสถานะเครือข่าย"),
        "messageErrorNoServerConnection": MessageLookupByLibrary.simpleMessage(
            "ไม่สามารถเชื่อมต่อกับเซิร์ฟเวอร์ !!"),
        "messageErrorNoStoragePermission": MessageLookupByLibrary.simpleMessage(
            "โปรดเปิดการอนุญาต \"บันทึก\""),
        "messageErrorNotLogin":
            MessageLookupByLibrary.simpleMessage("กรุณาเข้าสู่ระบบก่อน"),
        "messageErrorPassword":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านผิดพลาด"),
        "messageErrorPasswordHint": MessageLookupByLibrary.simpleMessage(
            "รหัสผ่านไม่ตรงกันบัญชีจะถูกล็อกหลังจากมีข้อผิดพลาด 5 ข้อ"),
        "messageErrorServerData": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดของข้อมูลเซิร์ฟเวอร์โปรดลองอีกครั้งในภายหลังหรือติดต่อฝ่ายบริการลูกค้า"),
        "messageErrorStatus": m29,
        "messageErrorTimeoutError": MessageLookupByLibrary.simpleMessage(
            "เครือข่ายหมดเวลาโปรดลองอีกครั้งในภายหลัง"),
        "messageErrorToken": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดโทเค็นของผู้ใช้โปรดออกจากระบบและเข้าสู่ระบบอีกครั้ง"),
        "messageErrorWithdraw":
            MessageLookupByLibrary.simpleMessage("การถอนล้มเหลว"),
        "messageFailed": MessageLookupByLibrary.simpleMessage(
            "การเปลี่ยนแปลงล้มเหลวโปรดลองอีกครั้งในภายหลัง"),
        "messageInvalidAccount": MessageLookupByLibrary.simpleMessage(
            "ชื่อผู้ใช้ควรมีความยาว 6 ~ 12 คำ"),
        "messageInvalidCardBankPoint": MessageLookupByLibrary.simpleMessage(
            "ชื่อต้องมีความยาวมากกว่า 3 อักขระ"),
        "messageInvalidCardNumber": MessageLookupByLibrary.simpleMessage(
            "หมายเลขบัตรคือ 5 ~ 20 อักขระ"),
        "messageInvalidCardOwner":
            MessageLookupByLibrary.simpleMessage("ชื่อผู้ถือบัตรไม่ถูกต้อง"),
        "messageInvalidConfirmPassword":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านไม่ตรงกัน"),
        "messageInvalidDepositAmount":
            MessageLookupByLibrary.simpleMessage("จำนวนเงินผิดพลาด"),
        "messageInvalidDepositAmountMin": m30,
        "messageInvalidDepositName":
            MessageLookupByLibrary.simpleMessage("ชื่อบัญชีไม่ถูกต้อง"),
        "messageInvalidEmail":
            MessageLookupByLibrary.simpleMessage("กล่องจดหมายผิดรูปแบบ"),
        "messageInvalidFormat":
            MessageLookupByLibrary.simpleMessage("รูปแบบข้อมูลผิดพลาด"),
        "messageInvalidName":
            MessageLookupByLibrary.simpleMessage("ชื่อผิดรูปแบบ"),
        "messageInvalidPassword": MessageLookupByLibrary.simpleMessage(
            "รหัสผ่านควรมีความยาว 8 ~ 18 คำ"),
        "messageInvalidPasswordArg": m31,
        "messageInvalidPasswordNew": MessageLookupByLibrary.simpleMessage(
            "รหัสผ่านควรมีความยาว 8 ~ 18 คำ"),
        "messageInvalidPhone": m32,
        "messageInvalidPostCode":
            MessageLookupByLibrary.simpleMessage("รหัสโพสต์ผิดพลาด (5 ~ 8)"),
        "messageInvalidSymbol":
            MessageLookupByLibrary.simpleMessage("มีสัญลักษณ์ที่ไม่ถูกต้อง"),
        "messageInvalidVerify":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนรหัสยืนยัน"),
        "messageInvalidWechat":
            MessageLookupByLibrary.simpleMessage("บัญชี WeChat ไม่ถูกต้อง"),
        "messageInvalidWithdrawAmount":
            MessageLookupByLibrary.simpleMessage("เครดิตไม่เพียงพอ"),
        "messageInvalidWithdrawPassword": MessageLookupByLibrary.simpleMessage(
            "รหัสผ่านผิดพลาด! (ค่าเริ่มต้นคือรหัสผ่านเข้าสู่ระบบ)"),
        "messageLoading":
            MessageLookupByLibrary.simpleMessage("กำลังโหลด ... "),
        "messageLoginFailed":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบล้มเหลว"),
        "messageLoginHint": MessageLookupByLibrary.simpleMessage(
            "กรุณาเข้าสู่ระบบ / ลงทะเบียน"),
        "messageLogout": m33,
        "messageNoEvent":
            MessageLookupByLibrary.simpleMessage("ไม่มีกิจกรรมในขณะนี้"),
        "messagePartFailed":
            MessageLookupByLibrary.simpleMessage("การโอนบางส่วนล้มเหลว"),
        "messageRegisterFailed":
            MessageLookupByLibrary.simpleMessage("การลงทะเบียนล้มเหลว"),
        "messageRepeatAccount":
            MessageLookupByLibrary.simpleMessage("การลงทะเบียนบัญชีที่ซ้ำกัน"),
        "messageSentVerify":
            MessageLookupByLibrary.simpleMessage("ยืนยันรหัสได้ส่งแล้ว"),
        "messageSuccess": MessageLookupByLibrary.simpleMessage("ความสำเร็จ"),
        "messageTaskCanceled": m34,
        "messageTaskFailed": m35,
        "messageTaskSuccess": m36,
        "messageVerifySuccess":
            MessageLookupByLibrary.simpleMessage("ยืนยันความสำเร็จ"),
        "messageWait": MessageLookupByLibrary.simpleMessage(
            "โปรดรอขณะดำเนินการตามคำขอ ... "),
        "messageWaitComplete":
            MessageLookupByLibrary.simpleMessage("อย่าออกขณะดำเนินการตามคำขอ"),
        "messageWarnLoadingGame": MessageLookupByLibrary.simpleMessage(
            "กรุณารอสักครู่ขณะกำลังโหลดเกม ... "),
        "messageWarnNetworkLocation": MessageLookupByLibrary.simpleMessage(
            "บริการนี้ไม่สามารถใช้ได้ในพื้นที่เครือข่ายของคุณ"),
        "messageWarnNoHistoryData":
            MessageLookupByLibrary.simpleMessage("ไม่พบข้อมูล"),
        "messageWarnNoPromoData":
            MessageLookupByLibrary.simpleMessage("ไม่พบข้อเสนอพิเศษ"),
        "messageWarnNoPromoInfo":
            MessageLookupByLibrary.simpleMessage("ไม่พบข้อมูลข้อเสนอพิเศษ"),
        "messageWarnUsingCellular":
            MessageLookupByLibrary.simpleMessage("คุณกำลังใช้เครือข่ายมือถือ"),
        "messageWelcome": MessageLookupByLibrary.simpleMessage("ยินดีต้อนรับ"),
        "messageWelcomeHint": MessageLookupByLibrary.simpleMessage(
            "ยินดีต้อนรับ! กรุณาเข้าสู่ระบบ / ลงทะเบียน"),
        "messageWelcomeUser": m37,
        "movieCategoryLabelBuy": MessageLookupByLibrary.simpleMessage("ซื้อ"),
        "movieCategoryLabelCollect":
            MessageLookupByLibrary.simpleMessage("คอลเลคชัน"),
        "movieCategoryLabelExpand":
            MessageLookupByLibrary.simpleMessage("ขยาย"),
        "movieCategoryLabelFold": MessageLookupByLibrary.simpleMessage("พับ"),
        "movieDialogButtonPayPoint": m38,
        "movieDialogButtonWatchFree":
            MessageLookupByLibrary.simpleMessage("ดูฟรี"),
        "movieDialogTextFreeTimes":
            MessageLookupByLibrary.simpleMessage("นาฬิกาฟรียังคงอยู่:"),
        "movieDialogTextStorePoints":
            MessageLookupByLibrary.simpleMessage("จุดร้านค้าปัจจุบัน:"),
        "movieDialogTitlePay":
            MessageLookupByLibrary.simpleMessage("ซื้อภาพยนตร์เรื่องนี้"),
        "movieHintTextFree": MessageLookupByLibrary.simpleMessage("ฟรีวันนี้"),
        "movieHintTextNotPurchased":
            MessageLookupByLibrary.simpleMessage("ยังไม่ได้ซื้อ"),
        "movieHintTextPurchased":
            MessageLookupByLibrary.simpleMessage("ซื้อแล้ว"),
        "movieListHintLoad":
            MessageLookupByLibrary.simpleMessage("โหลดเพิ่มเติม"),
        "movieListHintLoadFailed":
            MessageLookupByLibrary.simpleMessage("โหลดล้มเหลว"),
        "movieListHintLoadNoMore":
            MessageLookupByLibrary.simpleMessage("ไม่มาก"),
        "movieListHintLoadReady":
            MessageLookupByLibrary.simpleMessage("กำลังขอ ... "),
        "movieListHintLoadSuccess":
            MessageLookupByLibrary.simpleMessage("โหลดสำเร็จ"),
        "movieListHintLoading":
            MessageLookupByLibrary.simpleMessage("กำลังโหลด ... "),
        "movieSeparatorTextHot":
            MessageLookupByLibrary.simpleMessage("คนอื่นกำลังดู"),
        "movieTextBuyNow": MessageLookupByLibrary.simpleMessage("ซื้อเลย"),
        "networkChangedHint": MessageLookupByLibrary.simpleMessage(
            "ตรวจพบสถานะเครือข่ายมีการเปลี่ยนแปลงคุณต้องการรีเฟรชหรือไม่"),
        "noticeTabGeneral":
            MessageLookupByLibrary.simpleMessage("ข้อความทั่วไป"),
        "noticeTabMaintenance":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือนการบำรุงรักษา"),
        "pageTitleCenter": MessageLookupByLibrary.simpleMessage("ศูนย์"),
        "pageTitleCollect": MessageLookupByLibrary.simpleMessage("รวบรวมคำ"),
        "pageTitleDeposit": MessageLookupByLibrary.simpleMessage("เติมเงิน"),
        "pageTitleDownload":
            MessageLookupByLibrary.simpleMessage("ดาวน์โหลด APP"),
        "pageTitleHome": MessageLookupByLibrary.simpleMessage("หน้าแรก"),
        "pageTitleLogin": MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบ"),
        "pageTitleLogin2":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบสมาชิก"),
        "pageTitleMember": MessageLookupByLibrary.simpleMessage("ของฉัน"),
        "pageTitleMemberAgent": MessageLookupByLibrary.simpleMessage("ตัวแทน"),
        "pageTitleMemberAgentAbout":
            MessageLookupByLibrary.simpleMessage("ตัวแทน?"),
        "pageTitleMemberAgentLogin":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบสมาชิกตัวแทน"),
        "pageTitleMemberAgentLoginHint":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบตัวแทน"),
        "pageTitleMemberAgentRegister":
            MessageLookupByLibrary.simpleMessage("การลงทะเบียนสมาชิกตัวแทน"),
        "pageTitleMemberBalance":
            MessageLookupByLibrary.simpleMessage("ยอดคงเหลือของแพลตฟอร์ม"),
        "pageTitleMemberBets":
            MessageLookupByLibrary.simpleMessage("ประวัติการเดิมพัน"),
        "pageTitleMemberCard":
            MessageLookupByLibrary.simpleMessage("บัตรธนาคาร"),
        "pageTitleMemberCenter": MessageLookupByLibrary.simpleMessage("ศูนย์"),
        "pageTitleMemberDeals":
            MessageLookupByLibrary.simpleMessage("ประวัติดีล"),
        "pageTitleMemberFlow":
            MessageLookupByLibrary.simpleMessage("โฟลว์เรคคอร์ด"),
        "pageTitleMemberMessage":
            MessageLookupByLibrary.simpleMessage("ข้อความของไซต์"),
        "pageTitleMemberPassword":
            MessageLookupByLibrary.simpleMessage("เปลี่ยนรหัสผ่าน"),
        "pageTitleMemberTransaction":
            MessageLookupByLibrary.simpleMessage("บันทึกการโอน"),
        "pageTitleMemberTransfer": MessageLookupByLibrary.simpleMessage("โอน"),
        "pageTitleMemberWallet":
            MessageLookupByLibrary.simpleMessage("ไม่มีกระเป๋าเงิน"),
        "pageTitleMemberWithdraw": MessageLookupByLibrary.simpleMessage("ถอน"),
        "pageTitleMore": MessageLookupByLibrary.simpleMessage("เพิ่มเติม"),
        "pageTitleNotice": MessageLookupByLibrary.simpleMessage("ประกาศ"),
        "pageTitlePromo": MessageLookupByLibrary.simpleMessage("ข้อเสนอ"),
        "pageTitleRegister": MessageLookupByLibrary.simpleMessage("ลงทะเบียน"),
        "pageTitleRegisterFree":
            MessageLookupByLibrary.simpleMessage("ลงทะเบียนฟรี"),
        "pageTitleRegisterMember":
            MessageLookupByLibrary.simpleMessage("สมัครสมาชิก"),
        "pageTitleRoller":
            MessageLookupByLibrary.simpleMessage("ลัคกี้โรลเลอร์"),
        "pageTitleRouter":
            MessageLookupByLibrary.simpleMessage("การนำทางแบบเส้น"),
        "pageTitleService": MessageLookupByLibrary.simpleMessage("การสนับสนุน"),
        "pageTitleSign": MessageLookupByLibrary.simpleMessage("ลงชื่อเข้าใช้"),
        "pageTitleSponsor": MessageLookupByLibrary.simpleMessage("สปอนเซอร์"),
        "pageTitleStore": MessageLookupByLibrary.simpleMessage("ร้านค้า"),
        "pageTitleTask": MessageLookupByLibrary.simpleMessage("งาน"),
        "pageTitleTutorial": MessageLookupByLibrary.simpleMessage("บทช่วยสอน"),
        "pageTitleVip": MessageLookupByLibrary.simpleMessage("วีไอพี"),
        "promoCategoryAll": MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "promoCategoryOther": MessageLookupByLibrary.simpleMessage("อื่น ๆ "),
        "promoDetailApply":
            MessageLookupByLibrary.simpleMessage("วิธีการสมัคร"),
        "promoDetailContent":
            MessageLookupByLibrary.simpleMessage("เนื้อหาเหตุการณ์"),
        "promoDetailPlatform":
            MessageLookupByLibrary.simpleMessage("แพลตฟอร์มที่ใช้งานได้"),
        "promoDetailRules":
            MessageLookupByLibrary.simpleMessage("รายละเอียดกิจกรรม"),
        "promoDetailText":
            MessageLookupByLibrary.simpleMessage(">> รายละเอียด"),
        "registerButtonServiceHint": MessageLookupByLibrary.simpleMessage(
            "หากคุณมีคำถามใด ๆ โปรดคลิกที่ไอคอนนี้!"),
        "registerButtonTitleRefresh":
            MessageLookupByLibrary.simpleMessage("รีเฟรช"),
        "registerButtonTitleRegister":
            MessageLookupByLibrary.simpleMessage("ลงทะเบียน"),
        "registerButtonTitleSendVerify":
            MessageLookupByLibrary.simpleMessage("ส่งรหัสยืนยัน"),
        "registerCheckButtonNews":
            MessageLookupByLibrary.simpleMessage("รับข้อมูลโปรโมชั่น"),
        "registerCheckButtonTerms": MessageLookupByLibrary.simpleMessage(
            "ได้อ่านและยอมรับกฎการเดิมพัน \"ข้อกำหนดและเงื่อนไข\""),
        "registerFieldHintVerify":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนรหัสยืนยัน"),
        "registerFieldTitleAccount":
            MessageLookupByLibrary.simpleMessage("บัญชี"),
        "registerFieldTitleConfirm":
            MessageLookupByLibrary.simpleMessage("ยืนยันรหัสผ่าน"),
        "registerFieldTitleEmail":
            MessageLookupByLibrary.simpleMessage("E-Mail"),
        "registerFieldTitleLine": MessageLookupByLibrary.simpleMessage("Line"),
        "registerFieldTitlePassword":
            MessageLookupByLibrary.simpleMessage("รหัสผ่าน"),
        "registerFieldTitlePhone":
            MessageLookupByLibrary.simpleMessage("หมายเลขโทรศัพท์มือถือ"),
        "registerFieldTitleQQ": MessageLookupByLibrary.simpleMessage("QQ"),
        "registerFieldTitleRecommend":
            MessageLookupByLibrary.simpleMessage("รหัสที่แนะนำ"),
        "registerFieldTitleVerify":
            MessageLookupByLibrary.simpleMessage("รหัสยืนยัน"),
        "registerFieldTitleZalo": MessageLookupByLibrary.simpleMessage("Zalo"),
        "registerHintAutoLogin": MessageLookupByLibrary.simpleMessage(
            "กำลังเข้าสู่ระบบ, โปรดรอสักครู่ ... "),
        "rollbackHeaderTextAmount":
            MessageLookupByLibrary.simpleMessage("จำนวนเงิน"),
        "rollbackHeaderTextCode":
            MessageLookupByLibrary.simpleMessage("รหัสธุรกรรม"),
        "rollbackHeaderTextCurrent":
            MessageLookupByLibrary.simpleMessage("เดิมพันปัจจุบัน"),
        "rollbackHeaderTextMultiple":
            MessageLookupByLibrary.simpleMessage("หลายรายการ"),
        "rollbackHeaderTextNeed":
            MessageLookupByLibrary.simpleMessage("ต้องใช้เงินทุนที่เหลืออยู่"),
        "rollbackHeaderTextPromo":
            MessageLookupByLibrary.simpleMessage("ข้อเสนอเงินสด"),
        "rollbackHeaderTextRequire": MessageLookupByLibrary.simpleMessage(
            "ข้อกำหนดสำหรับจำนวนเงินเดิมพัน"),
        "rollbackHeaderTextTime":
            MessageLookupByLibrary.simpleMessage("ช่วงเวลา"),
        "rollbackHeaderTextTotal":
            MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "rollbackHeaderTextType":
            MessageLookupByLibrary.simpleMessage("ประเภท"),
        "serviceButtonContact":
            MessageLookupByLibrary.simpleMessage("ติดต่อฝ่ายบริการลูกค้า"),
        "serviceDescCustomerService": MessageLookupByLibrary.simpleMessage(
            "บริการต่อเนื่องตลอด 24 ชั่วโมง"),
        "serviceRouteHint": MessageLookupByLibrary.simpleMessage(
            "ต้องการความช่วยเหลือหรือติดต่อเรา"),
        "serviceTitleCustomerService":
            MessageLookupByLibrary.simpleMessage("บริการลูกค้าออนไลน์"),
        "serviceTitleEmail": MessageLookupByLibrary.simpleMessage("อีเมล์"),
        "serviceTitleFacebook":
            MessageLookupByLibrary.simpleMessage("Facebook"),
        "serviceTitleLine": MessageLookupByLibrary.simpleMessage("Line"),
        "serviceTitlePhone":
            MessageLookupByLibrary.simpleMessage("หมายเลขโทรศัพท์"),
        "serviceTitleSkype": MessageLookupByLibrary.simpleMessage("Skype"),
        "serviceTitleZalo": MessageLookupByLibrary.simpleMessage("Zalo"),
        "sideBtnBackHome": MessageLookupByLibrary.simpleMessage("ย้อนกลับ"),
        "sideBtnLockRotate":
            MessageLookupByLibrary.simpleMessage("ล็อกการหมุน"),
        "sideBtnRotate": MessageLookupByLibrary.simpleMessage("หมุนซ้าย"),
        "spinnerDateAll": MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "spinnerDateCustom": MessageLookupByLibrary.simpleMessage("กำหนดเอง"),
        "spinnerDateMonth": MessageLookupByLibrary.simpleMessage("เดือน"),
        "spinnerDateToday": MessageLookupByLibrary.simpleMessage("วันนี้"),
        "spinnerDateYesterday":
            MessageLookupByLibrary.simpleMessage("เมื่อวาน"),
        "storeExchangeResultError":
            MessageLookupByLibrary.simpleMessage("การแลกเปลี่ยนล้มเหลว"),
        "storeExchangeResultWindowHint":
            MessageLookupByLibrary.simpleMessage("ขอแสดงความยินดี"),
        "storeExchangeResultWindowHintItem1":
            MessageLookupByLibrary.simpleMessage("แลกเปลี่ยน"),
        "storeExchangeResultWindowHintItem2":
            MessageLookupByLibrary.simpleMessage("* 1"),
        "storeExchangeResultWindowTitleSuccess":
            MessageLookupByLibrary.simpleMessage("แลกเปลี่ยนความสำเร็จ"),
        "storeProductWindowHint1": MessageLookupByLibrary.simpleMessage(
            "มีจำนวน จำกัด จนกว่าสินค้าจะหมด"),
        "storeProductWindowHint2":
            MessageLookupByLibrary.simpleMessage("ใช้ต่อสาขา"),
        "storeProductWindowHint3":
            MessageLookupByLibrary.simpleMessage("การแลกเปลี่ยนคะแนน"),
        "storeProductWindowTextRemain":
            MessageLookupByLibrary.simpleMessage("ปริมาณที่เหลือ"),
        "storeProductWindowTitle":
            MessageLookupByLibrary.simpleMessage("การแลกสมาชิก"),
        "storeRecordButtonTitle": MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "storeRecordFieldHint":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนชื่อผลิตภัณฑ์"),
        "storeRecordSpinnerTitle1":
            MessageLookupByLibrary.simpleMessage("แสดง"),
        "storeRecordSpinnerTitle2":
            MessageLookupByLibrary.simpleMessage("item"),
        "storeRecordTableDetailAddress": m39,
        "storeRecordTableDetailItem": m40,
        "storeRecordTableDetailName": m41,
        "storeRecordTableDetailPhone": m42,
        "storeRecordTableDetailPostCode": m43,
        "storeRecordTableStatusPending":
            MessageLookupByLibrary.simpleMessage("รอดำเนินการ"),
        "storeRecordTableTitleDate":
            MessageLookupByLibrary.simpleMessage("วันที่"),
        "storeRecordTableTitleNo":
            MessageLookupByLibrary.simpleMessage("หมายเลขคำสั่งซื้อ"),
        "storeRecordTableTitlePoint":
            MessageLookupByLibrary.simpleMessage("อินทิกรัล"),
        "storeRecordTableTitleProduct":
            MessageLookupByLibrary.simpleMessage("ผลิตภัณฑ์"),
        "storeRecordTableTitleState":
            MessageLookupByLibrary.simpleMessage("สถานะ"),
        "storeRequestWindowFieldTitleAddress":
            MessageLookupByLibrary.simpleMessage("ที่อยู่"),
        "storeRequestWindowFieldTitleArea":
            MessageLookupByLibrary.simpleMessage("พื้นที่"),
        "storeRequestWindowFieldTitleName":
            MessageLookupByLibrary.simpleMessage("ชื่อ"),
        "storeRequestWindowFieldTitlePhone":
            MessageLookupByLibrary.simpleMessage("โทรศัพท์"),
        "storeRequestWindowFieldTitlePostno":
            MessageLookupByLibrary.simpleMessage("รหัสไปรษณีย์"),
        "storeRequestWindowHint":
            MessageLookupByLibrary.simpleMessage("ผู้รับ"),
        "storeRequestWindowPoints":
            MessageLookupByLibrary.simpleMessage("คะแนน:"),
        "storeRequestWindowSpinnerHint":
            MessageLookupByLibrary.simpleMessage("กรุณาเลือก"),
        "storeRequestWindowTextPoint":
            MessageLookupByLibrary.simpleMessage("คะแนนสะสม:"),
        "storeRequestWindowTitle":
            MessageLookupByLibrary.simpleMessage("ข้อมูลติดต่อ"),
        "storeRuleTableHeader": MessageLookupByLibrary.simpleMessage(
            "คุณจะได้รับตารางคะแนนสำหรับทุกๆ 100 หยวนของการเดิมพันที่ถูกต้อง"),
        "storeRuleTableTitle": m44,
        "storeTextItemButton": MessageLookupByLibrary.simpleMessage("แลกเลย"),
        "storeTextItemButtonDisabled":
            MessageLookupByLibrary.simpleMessage("คะแนนไม่เพียงพอ"),
        "storeTextItemHint":
            MessageLookupByLibrary.simpleMessage("จำกัด จำนวน จำกัด "),
        "storeTextItemPoint": m45,
        "storeTextTitlePoint":
            MessageLookupByLibrary.simpleMessage("คะแนนสมาชิก:"),
        "storeTextTitleProduct":
            MessageLookupByLibrary.simpleMessage("แลกสินค้า"),
        "storeTextTitleRecord":
            MessageLookupByLibrary.simpleMessage("บันทึกคะแนน"),
        "storeTextTitleRule":
            MessageLookupByLibrary.simpleMessage("กฎการแลกเปลี่ยน"),
        "themeColorDark": MessageLookupByLibrary.simpleMessage("มืด"),
        "themeColorDefault":
            MessageLookupByLibrary.simpleMessage("ค่าเริ่มต้น"),
        "themeColorHintSelect":
            MessageLookupByLibrary.simpleMessage("เลือกสีของธีม"),
        "themeColorLight": MessageLookupByLibrary.simpleMessage("แสง"),
        "title": MessageLookupByLibrary.simpleMessage("Yabo Mobile"),
        "toolBarMemberCredit": m46,
        "transactionHeaderAmount":
            MessageLookupByLibrary.simpleMessage("จำนวนเงิน"),
        "transactionHeaderDate": MessageLookupByLibrary.simpleMessage("วันที่"),
        "transactionHeaderDesc":
            MessageLookupByLibrary.simpleMessage("คำอธิบาย"),
        "transactionHeaderSerial":
            MessageLookupByLibrary.simpleMessage("หมายเลขซีเรียล"),
        "transactionHeaderType":
            MessageLookupByLibrary.simpleMessage("หมวดหมู่"),
        "transactionViewSpinnerTitle":
            MessageLookupByLibrary.simpleMessage("เวลาโอน"),
        "transferDataError": MessageLookupByLibrary.simpleMessage(
            "ข้อมูลผิดพลาดโปรดเลือกอีกครั้ง"),
        "transferHintRefresh": MessageLookupByLibrary.simpleMessage(
            "4. หากเครดิตแพลตฟอร์มไม่อัปเดตหลังโอนโปรดเลือกแพลตฟอร์มอีกครั้งเพื่อรีเฟรชหรือติดต่อฝ่ายบริการลูกค้า"),
        "transferMessage": m47,
        "transferPlatformError": MessageLookupByLibrary.simpleMessage(
            "แพลตฟอร์มที่เลือกกำลังบำรุงรักษา"),
        "transferResultAlertTitle":
            MessageLookupByLibrary.simpleMessage("การโอนล้มเหลว"),
        "transferViewButtonConfirm":
            MessageLookupByLibrary.simpleMessage("ยืนยันการโอน"),
        "transferViewSiteHint":
            MessageLookupByLibrary.simpleMessage("เลือกหนึ่งรายการ"),
        "transferViewTextOptionAll":
            MessageLookupByLibrary.simpleMessage("เครดิตทั้งหมด"),
        "transferViewTitleAmount":
            MessageLookupByLibrary.simpleMessage("จำนวนเงิน"),
        "transferViewTitleIn": MessageLookupByLibrary.simpleMessage("ใน"),
        "transferViewTitleOption":
            MessageLookupByLibrary.simpleMessage("เลือกจำนวนเงิน"),
        "transferViewTitleOut": MessageLookupByLibrary.simpleMessage("ออก"),
        "updateDialogErrorUrl": MessageLookupByLibrary.simpleMessage(
            "ไม่สามารถรับ URL ดาวน์โหลดโปรดติดต่อฝ่ายบริการลูกค้า !!"),
        "updateDialogMessage": m48,
        "userPwdButtonTitle":
            MessageLookupByLibrary.simpleMessage("เปลี่ยนรหัสผ่าน"),
        "userPwdFieldHintConfirm":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่านใหม่อีกครั้ง"),
        "userPwdFieldHintNew":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่านใหม่"),
        "userPwdFieldHintOld":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสผ่านเดิม"),
        "userPwdFieldTitleConfirm":
            MessageLookupByLibrary.simpleMessage("การยืนยันรหัสผ่าน:"),
        "userPwdFieldTitleNew":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านใหม่:"),
        "userPwdFieldTitleOld":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านเดิม:"),
        "userVerifyButtonText": m49,
        "userVerifyFieldHint":
            MessageLookupByLibrary.simpleMessage("ป้อนรหัสยืนยัน"),
        "userVerifyFieldInfo": MessageLookupByLibrary.simpleMessage(
            "คุณสามารถขอได้ครั้งเดียวใน 24 ชม."),
        "userVerifyFieldTitle": MessageLookupByLibrary.simpleMessage("ยืนยัน:"),
        "walletViewButtonOneClick":
            MessageLookupByLibrary.simpleMessage("โอนที่นี่"),
        "walletViewHintOneClick": MessageLookupByLibrary.simpleMessage(
            "เครดิตแพลตฟอร์มทั้งหมดจะโอนไปยังกระเป๋าเงินหลัก"),
        "walletViewHintOneClickWait":
            MessageLookupByLibrary.simpleMessage("กำลังโอน ... "),
        "walletViewHintWalletMulti": MessageLookupByLibrary.simpleMessage(
            "* โอนเครดิตไปยังแพลตฟอร์มเกมนี้ด้วยตนเอง"),
        "walletViewHintWalletSingle": MessageLookupByLibrary.simpleMessage(
            "* ระบบตั้งค่าล่วงหน้าโอนเครดิตไปยังแพลตฟอร์มเกมที่เปิดไว้โดยอัตโนมัติ"),
        "walletViewMessageSetting": MessageLookupByLibrary.simpleMessage(
            "เปลี่ยนการตั้งค่ากระเป๋าเงิน"),
        "walletViewTitleMy":
            MessageLookupByLibrary.simpleMessage("กระเป๋าเงินของฉัน"),
        "walletViewTitleRemain":
            MessageLookupByLibrary.simpleMessage("ยอดเงินทั้งหมด"),
        "walletViewTitleWalletMulti":
            MessageLookupByLibrary.simpleMessage("กระเป๋าเงินหลายใบ"),
        "walletViewTitleWalletSingle":
            MessageLookupByLibrary.simpleMessage("กระเป๋าเงินใบเดียว"),
        "wheelApplyTableTextContent":
            MessageLookupByLibrary.simpleMessage("เนื้อหา"),
        "wheelApplyTableTextCount":
            MessageLookupByLibrary.simpleMessage("จำนวนรอบการหมุน"),
        "wheelApplyTableTextProgress":
            MessageLookupByLibrary.simpleMessage("ความคืบหน้า"),
        "wheelApplyTableTextStatus":
            MessageLookupByLibrary.simpleMessage("สถานะ"),
        "wheelApplyTableTextStatus0":
            MessageLookupByLibrary.simpleMessage("ไม่ถึง"),
        "wheelApplyTableTextStatus1":
            MessageLookupByLibrary.simpleMessage("สำเร็จ"),
        "wheelApplyTableTextStatus2":
            MessageLookupByLibrary.simpleMessage("ประยุกต์"),
        "wheelMessageErrorPrizeUrl": MessageLookupByLibrary.simpleMessage(
            "ข้อผิดพลาดของภาพรางวัลโปรดตรวจสอบลำดับ"),
        "wheelOrderTableTextPrize":
            MessageLookupByLibrary.simpleMessage("รางวัล"),
        "wheelOrderTableTextStatus":
            MessageLookupByLibrary.simpleMessage("สถานะการจัดส่ง"),
        "wheelOrderTableTextStatus0":
            MessageLookupByLibrary.simpleMessage("ไม่ได้จัดส่ง"),
        "wheelOrderTableTextStatus1":
            MessageLookupByLibrary.simpleMessage("ส่ง"),
        "wheelOrderTableTextTime": MessageLookupByLibrary.simpleMessage("เวลา"),
        "wheelRecordTableTextContent":
            MessageLookupByLibrary.simpleMessage("เนื้อหา"),
        "wheelRecordTableTextCount":
            MessageLookupByLibrary.simpleMessage("จำนวนครั้ง"),
        "wheelRecordTableTextOperate":
            MessageLookupByLibrary.simpleMessage("การทำงาน"),
        "wheelRecordTableTextTime":
            MessageLookupByLibrary.simpleMessage("เวลา"),
        "wheelTextTitleCount": m50,
        "wheelTextTitleGet": MessageLookupByLibrary.simpleMessage("รับการหมุน"),
        "wheelTextTitlePrize":
            MessageLookupByLibrary.simpleMessage("ประวัติการชนะ"),
        "wheelTextTitleRecord":
            MessageLookupByLibrary.simpleMessage("บันทึกการทำงาน"),
        "wheelTextTitleRules":
            MessageLookupByLibrary.simpleMessage("กฎของเหตุการณ์"),
        "workInProgress":
            MessageLookupByLibrary.simpleMessage("ฟีเจอร์เร็ว ๆ นี้!")
      };
}
