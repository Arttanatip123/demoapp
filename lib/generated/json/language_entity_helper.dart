import 'package:demoapp/model/language_entity.dart';

languageEntityFromJson(LanguageEntity data, Map<String, dynamic> json) {
  if (json['main_bottom_menu_home'] != null) {
    data.mainBottomMenuHome = json['main_bottom_menu_home'].toString();
  }
  if (json['main_bottom_menu_lotto'] != null) {
    data.mainBottomMenuLotto = json['main_bottom_menu_lotto'].toString();
  }
  if (json['main_bottom_menu_notifications'] != null) {
    data.mainBottomMenuNotifications = json['main_bottom_menu_notifications'].toString();
  }
  if (json['main_bottom_menu_profile'] != null) {
    data.mainBottomMenuProfile = json['main_bottom_menu_profile'].toString();
  }
  if (json['common_confirm'] != null) {
    data.commonConfirm = json['common_confirm'].toString();
  }
  if (json['common_reject'] != null) {
    data.commonReject = json['common_reject'].toString();
  }
  if (json['common_next'] != null) {
    data.commonNext = json['common_next'].toString();
  }
  if (json['common_cancel'] != null) {
    data.commonCancel = json['common_cancel'].toString();
  }
  if (json['common_search'] != null) {
    data.commonSearch = json['common_search'].toString();
  }
  if (json['common_empty'] != null) {
    data.commonEmpty = json['common_empty'].toString();
  }
  if (json['common_yes'] != null) {
    data.commonYes = json['common_yes'].toString();
  }
  if (json['common_no'] != null) {
    data.commonNo = json['common_no'].toString();
  }
  if (json['common_album'] != null) {
    data.commonAlbum = json['common_album'].toString();
  }
  if (json['common_remark'] != null) {
    data.commonRemark = json['common_remark'].toString();
  }
  if (json['common_choose'] != null) {
    data.commonChoose = json['common_choose'].toString();
  }
  if (json['common_close'] != null) {
    data.commonClose = json['common_close'].toString();
  }
  if (json['common_change'] != null) {
    data.commonChange = json['common_change'].toString();
  }
  if (json['common_edit'] != null) {
    data.commonEdit = json['common_edit'].toString();
  }
  if (json['unit_minute'] != null) {
    data.unitMinute = json['unit_minute'].toString();
  }
  if (json['unit_distance_km'] != null) {
    data.unitDistanceKm = json['unit_distance_km'].toString();
  }
  if (json['common_deliver_to'] != null) {
    data.commonDeliverTo = json['common_deliver_to'].toString();
  }
  if (json['camera_title'] != null) {
    data.cameraTitle = json['camera_title'].toString();
  }
  if (json['photo_library_title'] != null) {
    data.photoLibraryTitle = json['photo_library_title'].toString();
  }
  if (json['login_phone_no_hint'] != null) {
    data.loginPhoneNoHint = json['login_phone_no_hint'].toString();
  }
  if (json['login_password_hint'] != null) {
    data.loginPasswordHint = json['login_password_hint'].toString();
  }
  if (json['login_btn_submit'] != null) {
    data.loginBtnSubmit = json['login_btn_submit'].toString();
  }
  if (json['login_btn_register'] != null) {
    data.loginBtnRegister = json['login_btn_register'].toString();
  }
  if (json['login_btn_forgot_password'] != null) {
    data.loginBtnForgotPassword = json['login_btn_forgot_password'].toString();
  }
  if (json['login_btn_fb_title'] != null) {
    data.loginBtnFbTitle = json['login_btn_fb_title'].toString();
  }
  if (json['login_title_or'] != null) {
    data.loginTitleOr = json['login_title_or'].toString();
  }
  if (json['login_not_member_title'] != null) {
    data.loginNotMemberTitle = json['login_not_member_title'].toString();
  }
  if (json['login_not_member_signup_title'] != null) {
    data.loginNotMemberSignupTitle = json['login_not_member_signup_title'].toString();
  }
  if (json['login_before_mobile_register_title'] != null) {
    data.loginBeforeMobileRegisterTitle = json['login_before_mobile_register_title'].toString();
  }
  if (json['register_header'] != null) {
    data.registerHeader = json['register_header'].toString();
  }
  if (json['register_input_phone_title'] != null) {
    data.registerInputPhoneTitle = json['register_input_phone_title'].toString();
  }
  if (json['register_input_phone_hint'] != null) {
    data.registerInputPhoneHint = json['register_input_phone_hint'].toString();
  }
  if (json['register_otp_message'] != null) {
    data.registerOtpMessage = json['register_otp_message'].toString();
  }
  if (json['register_accept'] != null) {
    data.registerAccept = json['register_accept'].toString();
  }
  if (json['register_terms_and_conditions'] != null) {
    data.registerTermsAndConditions = json['register_terms_and_conditions'].toString();
  }
  if (json['register_btn_confirm'] != null) {
    data.registerBtnConfirm = json['register_btn_confirm'].toString();
  }
  if (json['register_btn_fb_title'] != null) {
    data.registerBtnFbTitle = json['register_btn_fb_title'].toString();
  }
  if (json['register_btn_apple_title'] != null) {
    data.registerBtnAppleTitle = json['register_btn_apple_title'].toString();
  }
  if (json['register_btn_mobile_phone_title'] != null) {
    data.registerBtnMobilePhoneTitle = json['register_btn_mobile_phone_title'].toString();
  }
  if (json['channel_verification_title'] != null) {
    data.channelVerificationTitle = json['channel_verification_title'].toString();
  }
  if (json['channel_verification_sms'] != null) {
    data.channelVerificationSms = json['channel_verification_sms'].toString();
  }
  if (json['channel_verification_voice_call'] != null) {
    data.channelVerificationVoiceCall = json['channel_verification_voice_call'].toString();
  }
  if (json['confirm_otp_title'] != null) {
    data.confirmOtpTitle = json['confirm_otp_title'].toString();
  }
  if (json['confirm_otp_message'] != null) {
    data.confirmOtpMessage = json['confirm_otp_message'].toString();
  }
  if (json['confirm_otp_send_again'] != null) {
    data.confirmOtpSendAgain = json['confirm_otp_send_again'].toString();
  }
  if (json['confirm_otp_waiting_send_again'] != null) {
    data.confirmOtpWaitingSendAgain = json['confirm_otp_waiting_send_again'].toString();
  }
  if (json['second'] != null) {
    data.second = json['second'].toString();
  }
  if (json['confirm_otp_reference'] != null) {
    data.confirmOtpReference = json['confirm_otp_reference'].toString();
  }
  if (json['user_info_header'] != null) {
    data.userInfoHeader = json['user_info_header'].toString();
  }
  if (json['user_info_firstname'] != null) {
    data.userInfoFirstname = json['user_info_firstname'].toString();
  }
  if (json['user_info_firstname_hint'] != null) {
    data.userInfoFirstnameHint = json['user_info_firstname_hint'].toString();
  }
  if (json['user_info_lastname'] != null) {
    data.userInfoLastname = json['user_info_lastname'].toString();
  }
  if (json['user_info_lastname_hint'] != null) {
    data.userInfoLastnameHint = json['user_info_lastname_hint'].toString();
  }
  if (json['user_info_gender'] != null) {
    data.userInfoGender = json['user_info_gender'].toString();
  }
  if (json['user_info_birthday'] != null) {
    data.userInfoBirthday = json['user_info_birthday'].toString();
  }
  if (json['user_info_gender_hint'] != null) {
    data.userInfoGenderHint = json['user_info_gender_hint'].toString();
  }
  if (json['user_info_birthday_hint'] != null) {
    data.userInfoBirthdayHint = json['user_info_birthday_hint'].toString();
  }
  if (json['user_info_alert_title'] != null) {
    data.userInfoAlertTitle = json['user_info_alert_title'].toString();
  }
  if (json['create_password_header'] != null) {
    data.createPasswordHeader = json['create_password_header'].toString();
  }
  if (json['create_password_title'] != null) {
    data.createPasswordTitle = json['create_password_title'].toString();
  }
  if (json['create_password_help'] != null) {
    data.createPasswordHelp = json['create_password_help'].toString();
  }
  if (json['create_password_again_title'] != null) {
    data.createPasswordAgainTitle = json['create_password_again_title'].toString();
  }
  if (json['create_user_success_title'] != null) {
    data.createUserSuccessTitle = json['create_user_success_title'].toString();
  }
  if (json['create_user_success_start'] != null) {
    data.createUserSuccessStart = json['create_user_success_start'].toString();
  }
  if (json['forgot_password_title'] != null) {
    data.forgotPasswordTitle = json['forgot_password_title'].toString();
  }
  if (json['forgot_password_phone_no'] != null) {
    data.forgotPasswordPhoneNo = json['forgot_password_phone_no'].toString();
  }
  if (json['forgot_password_phone_no_hint'] != null) {
    data.forgotPasswordPhoneNoHint = json['forgot_password_phone_no_hint'].toString();
  }
  if (json['forgot_password_message'] != null) {
    data.forgotPasswordMessage = json['forgot_password_message'].toString();
  }
  if (json['forgot_password_create_new_password'] != null) {
    data.forgotPasswordCreateNewPassword = json['forgot_password_create_new_password'].toString();
  }
  if (json['profile'] != null) {
    data.profile = json['profile'].toString();
  }
  if (json['profile_title'] != null) {
    data.profileTitle = json['profile_title'].toString();
  }
  if (json['profile_edit'] != null) {
    data.profileEdit = json['profile_edit'].toString();
  }
  if (json['profile_info'] != null) {
    data.profileInfo = json['profile_info'].toString();
  }
  if (json['profile_setting'] != null) {
    data.profileSetting = json['profile_setting'].toString();
  }
  if (json['profile_help_center'] != null) {
    data.profileHelpCenter = json['profile_help_center'].toString();
  }
  if (json['profile_contact_us'] != null) {
    data.profileContactUs = json['profile_contact_us'].toString();
  }
  if (json['profile_terms_of_service'] != null) {
    data.profileTermsOfService = json['profile_terms_of_service'].toString();
  }
  if (json['profile_privacy_policy'] != null) {
    data.profilePrivacyPolicy = json['profile_privacy_policy'].toString();
  }
  if (json['setting_title'] != null) {
    data.settingTitle = json['setting_title'].toString();
  }
  if (json['setting_edit_profile'] != null) {
    data.settingEditProfile = json['setting_edit_profile'].toString();
  }
  if (json['setting_notification'] != null) {
    data.settingNotification = json['setting_notification'].toString();
  }
  if (json['setting_change_language'] != null) {
    data.settingChangeLanguage = json['setting_change_language'].toString();
  }
  if (json['setting_change_password'] != null) {
    data.settingChangePassword = json['setting_change_password'].toString();
  }
  if (json['setting_logout'] != null) {
    data.settingLogout = json['setting_logout'].toString();
  }
  if (json['setting_current_version'] != null) {
    data.settingCurrentVersion = json['setting_current_version'].toString();
  }
  if (json['edit_profile_title'] != null) {
    data.editProfileTitle = json['edit_profile_title'].toString();
  }
  if (json['edit_profile_phone_no'] != null) {
    data.editProfilePhoneNo = json['edit_profile_phone_no'].toString();
  }
  if (json['edit_profile_name'] != null) {
    data.editProfileName = json['edit_profile_name'].toString();
  }
  if (json['edit_profile_name_hint'] != null) {
    data.editProfileNameHint = json['edit_profile_name_hint'].toString();
  }
  if (json['edit_profile_last_name'] != null) {
    data.editProfileLastName = json['edit_profile_last_name'].toString();
  }
  if (json['edit_profile_last_name_hint'] != null) {
    data.editProfileLastNameHint = json['edit_profile_last_name_hint'].toString();
  }
  if (json['edit_profile_birthday'] != null) {
    data.editProfileBirthday = json['edit_profile_birthday'].toString();
  }
  if (json['edit_profile_choose_birth_date'] != null) {
    data.editProfileChooseBirthDate = json['edit_profile_choose_birth_date'].toString();
  }
  if (json['edit_profile_gender'] != null) {
    data.editProfileGender = json['edit_profile_gender'].toString();
  }
  if (json['edit_profile_select_gender'] != null) {
    data.editProfileSelectGender = json['edit_profile_select_gender'].toString();
  }
  if (json['edit_profile_save'] != null) {
    data.editProfileSave = json['edit_profile_save'].toString();
  }
  if (json['edit_profile_photo_camera_error_message'] != null) {
    data.editProfilePhotoCameraErrorMessage =
        json['edit_profile_photo_camera_error_message'].toString();
  }
  if (json['edit_profile_photo_library_error_message'] != null) {
    data.editProfilePhotoLibraryErrorMessage =
        json['edit_profile_photo_library_error_message'].toString();
  }
  if (json['gender_dialog_title'] != null) {
    data.genderDialogTitle = json['gender_dialog_title'].toString();
  }
  if (json['gender_dialog_male'] != null) {
    data.genderDialogMale = json['gender_dialog_male'].toString();
  }
  if (json['gender_dialog_female'] != null) {
    data.genderDialogFemale = json['gender_dialog_female'].toString();
  }
  if (json['gender_dialog_everyone'] != null) {
    data.genderDialogEveryone = json['gender_dialog_everyone'].toString();
  }
  if (json['gender_dialog_not_specified'] != null) {
    data.genderDialogNotSpecified = json['gender_dialog_not_specified'].toString();
  }
  if (json['male'] != null) {
    data.male = json['male'].toString();
  }
  if (json['female'] != null) {
    data.female = json['female'].toString();
  }
  if (json['unknown'] != null) {
    data.unknown = json['unknown'].toString();
  }
  if (json['change_password_title'] != null) {
    data.changePasswordTitle = json['change_password_title'].toString();
  }
  if (json['change_password_old_password'] != null) {
    data.changePasswordOldPassword = json['change_password_old_password'].toString();
  }
  if (json['change_password_old_password_hint'] != null) {
    data.changePasswordOldPasswordHint = json['change_password_old_password_hint'].toString();
  }
  if (json['change_password_new_password'] != null) {
    data.changePasswordNewPassword = json['change_password_new_password'].toString();
  }
  if (json['change_password_new_password_hint'] != null) {
    data.changePasswordNewPasswordHint = json['change_password_new_password_hint'].toString();
  }
  if (json['change_password_new_password_help'] != null) {
    data.changePasswordNewPasswordHelp = json['change_password_new_password_help'].toString();
  }
  if (json['change_password_new_password_again'] != null) {
    data.changePasswordNewPasswordAgain = json['change_password_new_password_again'].toString();
  }
  if (json['error_dialog'] != null) {
    data.errorDialog = json['error_dialog'].toString();
  }
  if (json['action_sheet_camera'] != null) {
    data.actionSheetCamera = json['action_sheet_camera'].toString();
  }
  if (json['action_sheet_photo_library'] != null) {
    data.actionSheetPhotoLibrary = json['action_sheet_photo_library'].toString();
  }
  if (json['action_sheet_profile_image'] != null) {
    data.actionSheetProfileImage = json['action_sheet_profile_image'].toString();
  }
  if (json['action_cancel'] != null) {
    data.actionCancel = json['action_cancel'].toString();
  }
  if (json['country_select_title'] != null) {
    data.countrySelectTitle = json['country_select_title'].toString();
  }
  if (json['notification_header'] != null) {
    data.notificationHeader = json['notification_header'].toString();
  }
  if (json['notification_promotion_title'] != null) {
    data.notificationPromotionTitle = json['notification_promotion_title'].toString();
  }
  if (json['notification_activity_title'] != null) {
    data.notificationActivityTitle = json['notification_activity_title'].toString();
  }
  if (json['notification_section_title'] != null) {
    data.notificationSectionTitle = json['notification_section_title'].toString();
  }
  if (json['notification_activity_desc'] != null) {
    data.notificationActivityDesc = json['notification_activity_desc'].toString();
  }
  if (json['notification_promotion_desc'] != null) {
    data.notificationPromotionDesc = json['notification_promotion_desc'].toString();
  }
  if (json['error_dialog_title'] != null) {
    data.errorDialogTitle = json['error_dialog_title'].toString();
  }
  if (json['error_internet'] != null) {
    data.errorInternet = json['error_internet'].toString();
  }
  if (json['error_server_down'] != null) {
    data.errorServerDown = json['error_server_down'].toString();
  }
  if (json['error_timeout'] != null) {
    data.errorTimeout = json['error_timeout'].toString();
  }
  if (json['error_data_not_found'] != null) {
    data.errorDataNotFound = json['error_data_not_found'].toString();
  }
  if (json['error_not_enough_coins'] != null) {
    data.errorNotEnoughCoins = json['error_not_enough_coins'].toString();
  }
  if (json['current_language'] != null) {
    data.currentLanguage = json['current_language'].toString();
  }
  if (json['profile_guest_desc'] != null) {
    data.profileGuestDesc = json['profile_guest_desc'].toString();
  }
  if (json['confirmation'] != null) {
    data.confirmation = json['confirmation'].toString();
  }
  if (json['profile_update_password_success'] != null) {
    data.profileUpdatePasswordSuccess = json['profile_update_password_success'].toString();
  }
  if (json['profile_create_password_success'] != null) {
    data.profileCreatePasswordSuccess = json['profile_create_password_success'].toString();
  }
  if (json['validate_password_not_matched'] != null) {
    data.validatePasswordNotMatched = json['validate_password_not_matched'].toString();
  }
  if (json['validate_text_field_fill_up_text'] != null) {
    data.validateTextFieldFillUpText = json['validate_text_field_fill_up_text'].toString();
  }
  if (json['validate_text_field_password_text'] != null) {
    data.validateTextFieldPasswordText = json['validate_text_field_password_text'].toString();
  }
  if (json['validate_text_field_password_check_characters_text'] != null) {
    data.validateTextFieldPasswordCheckCharactersText =
        json['validate_text_field_password_check_characters_text'].toString();
  }
  if (json['validate_text_field_phone_number_length_text'] != null) {
    data.validateTextFieldPhoneNumberLengthText =
        json['validate_text_field_phone_number_length_text'].toString();
  }
  if (json['validate_text_field_phone_number_length_20_text'] != null) {
    data.validateTextFieldPhoneNumberLength20Text =
        json['validate_text_field_phone_number_length_20_text'].toString();
  }
  if (json['validate_text_field_phone_number_invalid_text'] != null) {
    data.validateTextFieldPhoneNumberInvalidText =
        json['validate_text_field_phone_number_invalid_text'].toString();
  }
  if (json['validate_text_field_first_name_length_20_text'] != null) {
    data.validateTextFieldFirstNameLength20Text =
        json['validate_text_field_first_name_length_20_text'].toString();
  }
  if (json['validate_text_field_first_name_check_characters_text'] != null) {
    data.validateTextFieldFirstNameCheckCharactersText =
        json['validate_text_field_first_name_check_characters_text'].toString();
  }
  if (json['validate_text_field_last_name_length_20_text'] != null) {
    data.validateTextFieldLastNameLength20Text =
        json['validate_text_field_last_name_length_20_text'].toString();
  }
  if (json['validate_text_field_last_name_check_characters_text'] != null) {
    data.validateTextFieldLastNameCheckCharactersText =
        json['validate_text_field_last_name_check_characters_text'].toString();
  }
  if (json['select_address_title'] != null) {
    data.selectAddressTitle = json['select_address_title'].toString();
  }
  if (json['select_address_favorites'] != null) {
    data.selectAddressFavorites = json['select_address_favorites'].toString();
  }
  if (json['select_address_home'] != null) {
    data.selectAddressHome = json['select_address_home'].toString();
  }
  if (json['select_address_work'] != null) {
    data.selectAddressWork = json['select_address_work'].toString();
  }
  if (json['select_address_other'] != null) {
    data.selectAddressOther = json['select_address_other'].toString();
  }
  if (json['select_address_add_address'] != null) {
    data.selectAddressAddAddress = json['select_address_add_address'].toString();
  }
  if (json['hint_input_home'] != null) {
    data.hintInputHome = json['hint_input_home'].toString();
  }
  if (json['create_address_save_place'] != null) {
    data.createAddressSavePlace = json['create_address_save_place'].toString();
  }
  if (json['modal_over_distance_title'] != null) {
    data.modalOverDistanceTitle = json['modal_over_distance_title'].toString();
  }
  if (json['modal_over_distance_desc'] != null) {
    data.modalOverDistanceDesc = json['modal_over_distance_desc'].toString();
  }
  if (json['modal_over_distance_change_address'] != null) {
    data.modalOverDistanceChangeAddress = json['modal_over_distance_change_address'].toString();
  }
  if (json['user_location_tile'] != null) {
    data.userLocationTile = json['user_location_tile'].toString();
  }
  if (json['user_location_desc'] != null) {
    data.userLocationDesc = json['user_location_desc'].toString();
  }
  if (json['user_location_allow_location'] != null) {
    data.userLocationAllowLocation = json['user_location_allow_location'].toString();
  }
  if (json['user_location_enter_my_location'] != null) {
    data.userLocationEnterMyLocation = json['user_location_enter_my_location'].toString();
  }
  if (json['user_location_use_location'] != null) {
    data.userLocationUseLocation = json['user_location_use_location'].toString();
  }
  if (json['user_location_this_your_location'] != null) {
    data.userLocationThisYourLocation = json['user_location_this_your_location'].toString();
  }
  if (json['user_location_skip_step'] != null) {
    data.userLocationSkipStep = json['user_location_skip_step'].toString();
  }
  if (json['user_location_last_entered'] != null) {
    data.userLocationLastEntered = json['user_location_last_entered'].toString();
  }
  if (json['user_location_your_location'] != null) {
    data.userLocationYourLocation = json['user_location_your_location'].toString();
  }
  if (json['user_location_favorite_places'] != null) {
    data.userLocationFavoritePlaces = json['user_location_favorite_places'].toString();
  }
  if (json['all_categories'] != null) {
    data.allCategories = json['all_categories'].toString();
  }
  if (json['select_by_category'] != null) {
    data.selectByCategory = json['select_by_category'].toString();
  }
  if (json['see_all'] != null) {
    data.seeAll = json['see_all'].toString();
  }
  if (json['menu'] != null) {
    data.menu = json['menu'].toString();
  }
  if (json['popular_menu'] != null) {
    data.popularMenu = json['popular_menu'].toString();
  }
  if (json['recommended_menu'] != null) {
    data.recommendedMenu = json['recommended_menu'].toString();
  }
  if (json['delivery_address'] != null) {
    data.deliveryAddress = json['delivery_address'].toString();
  }
  if (json['address_save_place'] != null) {
    data.addressSavePlace = json['address_save_place'].toString();
  }
  if (json['address_save_place_desc'] != null) {
    data.addressSavePlaceDesc = json['address_save_place_desc'].toString();
  }
  if (json['use_current_location'] != null) {
    data.useCurrentLocation = json['use_current_location'].toString();
  }
  if (json['payment_method'] != null) {
    data.paymentMethod = json['payment_method'].toString();
  }
  if (json['ccw'] != null) {
    data.ccw = json['ccw'].toString();
  }
  if (json['ibanking'] != null) {
    data.ibanking = json['ibanking'].toString();
  }
  if (json['free'] != null) {
    data.free = json['free'].toString();
  }
  if (json['banktrans'] != null) {
    data.banktrans = json['banktrans'].toString();
  }
  if (json['cod'] != null) {
    data.cod = json['cod'].toString();
  }
  if (json['promptpay'] != null) {
    data.promptpay = json['promptpay'].toString();
  }
  if (json['internet_banking_bbl'] != null) {
    data.internetBankingBbl = json['internet_banking_bbl'].toString();
  }
  if (json['internet_banking_scb'] != null) {
    data.internetBankingScb = json['internet_banking_scb'].toString();
  }
  if (json['internet_banking_ktb'] != null) {
    data.internetBankingKtb = json['internet_banking_ktb'].toString();
  }
  if (json['internet_banking_bay'] != null) {
    data.internetBankingBay = json['internet_banking_bay'].toString();
  }
  if (json['internet_banking_tbank'] != null) {
    data.internetBankingTbank = json['internet_banking_tbank'].toString();
  }
  if (json['ibanking_desc1'] != null) {
    data.ibankingDesc1 = json['ibanking_desc1'].toString();
  }
  if (json['ibanking_desc2'] != null) {
    data.ibankingDesc2 = json['ibanking_desc2'].toString();
  }
  if (json['ibanking_desc3'] != null) {
    data.ibankingDesc3 = json['ibanking_desc3'].toString();
  }
  if (json['sub_total'] != null) {
    data.subTotal = json['sub_total'].toString();
  }
  if (json['shipping'] != null) {
    data.shipping = json['shipping'].toString();
  }
  if (json['tax'] != null) {
    data.tax = json['tax'].toString();
  }
  if (json['payment_fee'] != null) {
    data.paymentFee = json['payment_fee'].toString();
  }
  if (json['discount'] != null) {
    data.discount = json['discount'].toString();
  }
  if (json['total'] != null) {
    data.total = json['total'].toString();
  }
  if (json['free-shipping'] != null) {
    data.freeShipping = json['free-shipping'].toString();
  }
  if (json['checkout_deliver_to'] != null) {
    data.checkoutDeliverTo = json['checkout_deliver_to'].toString();
  }
  if (json['checkout_title_order'] != null) {
    data.checkoutTitleOrder = json['checkout_title_order'].toString();
  }
  if (json['checkout_payment_method'] != null) {
    data.checkoutPaymentMethod = json['checkout_payment_method'].toString();
  }
  if (json['checkout_grand_total'] != null) {
    data.checkoutGrandTotal = json['checkout_grand_total'].toString();
  }
  if (json['checkout_confirmation'] != null) {
    data.checkoutConfirmation = json['checkout_confirmation'].toString();
  }
  if (json['checkout_remark'] != null) {
    data.checkoutRemark = json['checkout_remark'].toString();
  }
  if (json['verify_account'] != null) {
    data.verifyAccount = json['verify_account'].toString();
  }
  if (json['unverify_account'] != null) {
    data.unverifyAccount = json['unverify_account'].toString();
  }
  if (json['ordered'] != null) {
    data.ordered = json['ordered'].toString();
  }
  if (json['reserved'] != null) {
    data.reserved = json['reserved'].toString();
  }
  if (json['cancelled'] != null) {
    data.cancelled = json['cancelled'].toString();
  }
  if (json['version_title'] != null) {
    data.versionTitle = json['version_title'].toString();
  }
  if (json['version_desc'] != null) {
    data.versionDesc = json['version_desc'].toString();
  }
  if (json['version_update_later'] != null) {
    data.versionUpdateLater = json['version_update_later'].toString();
  }
  if (json['version_update_now'] != null) {
    data.versionUpdateNow = json['version_update_now'].toString();
  }
  if (json['version_force_update'] != null) {
    data.versionForceUpdate = json['version_force_update'].toString();
  }
  return data;
}

Map<String, dynamic> languageEntityToJson(LanguageEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['main_bottom_menu_home'] = entity.mainBottomMenuHome;
  data['main_bottom_menu_lotto'] = entity.mainBottomMenuLotto;
  data['main_bottom_menu_notifications'] = entity.mainBottomMenuNotifications;
  data['main_bottom_menu_profile'] = entity.mainBottomMenuProfile;
  data['common_confirm'] = entity.commonConfirm;
  data['common_reject'] = entity.commonReject;
  data['common_next'] = entity.commonNext;
  data['common_cancel'] = entity.commonCancel;
  data['common_search'] = entity.commonSearch;
  data['common_empty'] = entity.commonEmpty;
  data['common_yes'] = entity.commonYes;
  data['common_no'] = entity.commonNo;
  data['common_album'] = entity.commonAlbum;
  data['common_remark'] = entity.commonRemark;
  data['common_choose'] = entity.commonChoose;
  data['common_close'] = entity.commonClose;
  data['common_change'] = entity.commonChange;
  data['common_edit'] = entity.commonEdit;
  data['unit_minute'] = entity.unitMinute;
  data['unit_distance_km'] = entity.unitDistanceKm;
  data['common_deliver_to'] = entity.commonDeliverTo;
  data['camera_title'] = entity.cameraTitle;
  data['photo_library_title'] = entity.photoLibraryTitle;
  data['login_phone_no_hint'] = entity.loginPhoneNoHint;
  data['login_password_hint'] = entity.loginPasswordHint;
  data['login_btn_submit'] = entity.loginBtnSubmit;
  data['login_btn_register'] = entity.loginBtnRegister;
  data['login_btn_forgot_password'] = entity.loginBtnForgotPassword;
  data['login_btn_fb_title'] = entity.loginBtnFbTitle;
  data['login_title_or'] = entity.loginTitleOr;
  data['login_not_member_title'] = entity.loginNotMemberTitle;
  data['login_not_member_signup_title'] = entity.loginNotMemberSignupTitle;
  data['login_before_mobile_register_title'] = entity.loginBeforeMobileRegisterTitle;
  data['register_header'] = entity.registerHeader;
  data['register_input_phone_title'] = entity.registerInputPhoneTitle;
  data['register_input_phone_hint'] = entity.registerInputPhoneHint;
  data['register_otp_message'] = entity.registerOtpMessage;
  data['register_accept'] = entity.registerAccept;
  data['register_terms_and_conditions'] = entity.registerTermsAndConditions;
  data['register_btn_confirm'] = entity.registerBtnConfirm;
  data['register_btn_fb_title'] = entity.registerBtnFbTitle;
  data['register_btn_apple_title'] = entity.registerBtnAppleTitle;
  data['register_btn_mobile_phone_title'] = entity.registerBtnMobilePhoneTitle;
  data['channel_verification_title'] = entity.channelVerificationTitle;
  data['channel_verification_sms'] = entity.channelVerificationSms;
  data['channel_verification_voice_call'] = entity.channelVerificationVoiceCall;
  data['confirm_otp_title'] = entity.confirmOtpTitle;
  data['confirm_otp_message'] = entity.confirmOtpMessage;
  data['confirm_otp_send_again'] = entity.confirmOtpSendAgain;
  data['confirm_otp_waiting_send_again'] = entity.confirmOtpWaitingSendAgain;
  data['second'] = entity.second;
  data['confirm_otp_reference'] = entity.confirmOtpReference;
  data['user_info_header'] = entity.userInfoHeader;
  data['user_info_firstname'] = entity.userInfoFirstname;
  data['user_info_firstname_hint'] = entity.userInfoFirstnameHint;
  data['user_info_lastname'] = entity.userInfoLastname;
  data['user_info_lastname_hint'] = entity.userInfoLastnameHint;
  data['user_info_gender'] = entity.userInfoGender;
  data['user_info_birthday'] = entity.userInfoBirthday;
  data['user_info_gender_hint'] = entity.userInfoGenderHint;
  data['user_info_birthday_hint'] = entity.userInfoBirthdayHint;
  data['user_info_alert_title'] = entity.userInfoAlertTitle;
  data['create_password_header'] = entity.createPasswordHeader;
  data['create_password_title'] = entity.createPasswordTitle;
  data['create_password_help'] = entity.createPasswordHelp;
  data['create_password_again_title'] = entity.createPasswordAgainTitle;
  data['create_user_success_title'] = entity.createUserSuccessTitle;
  data['create_user_success_start'] = entity.createUserSuccessStart;
  data['forgot_password_title'] = entity.forgotPasswordTitle;
  data['forgot_password_phone_no'] = entity.forgotPasswordPhoneNo;
  data['forgot_password_phone_no_hint'] = entity.forgotPasswordPhoneNoHint;
  data['forgot_password_message'] = entity.forgotPasswordMessage;
  data['forgot_password_create_new_password'] = entity.forgotPasswordCreateNewPassword;
  data['profile'] = entity.profile;
  data['profile_title'] = entity.profileTitle;
  data['profile_edit'] = entity.profileEdit;
  data['profile_info'] = entity.profileInfo;
  data['profile_setting'] = entity.profileSetting;
  data['profile_help_center'] = entity.profileHelpCenter;
  data['profile_contact_us'] = entity.profileContactUs;
  data['profile_terms_of_service'] = entity.profileTermsOfService;
  data['profile_privacy_policy'] = entity.profilePrivacyPolicy;
  data['setting_title'] = entity.settingTitle;
  data['setting_edit_profile'] = entity.settingEditProfile;
  data['setting_notification'] = entity.settingNotification;
  data['setting_change_language'] = entity.settingChangeLanguage;
  data['setting_change_password'] = entity.settingChangePassword;
  data['setting_logout'] = entity.settingLogout;
  data['setting_current_version'] = entity.settingCurrentVersion;
  data['edit_profile_title'] = entity.editProfileTitle;
  data['edit_profile_phone_no'] = entity.editProfilePhoneNo;
  data['edit_profile_name'] = entity.editProfileName;
  data['edit_profile_name_hint'] = entity.editProfileNameHint;
  data['edit_profile_last_name'] = entity.editProfileLastName;
  data['edit_profile_last_name_hint'] = entity.editProfileLastNameHint;
  data['edit_profile_birthday'] = entity.editProfileBirthday;
  data['edit_profile_choose_birth_date'] = entity.editProfileChooseBirthDate;
  data['edit_profile_gender'] = entity.editProfileGender;
  data['edit_profile_select_gender'] = entity.editProfileSelectGender;
  data['edit_profile_save'] = entity.editProfileSave;
  data['edit_profile_photo_camera_error_message'] = entity.editProfilePhotoCameraErrorMessage;
  data['edit_profile_photo_library_error_message'] = entity.editProfilePhotoLibraryErrorMessage;
  data['gender_dialog_title'] = entity.genderDialogTitle;
  data['gender_dialog_male'] = entity.genderDialogMale;
  data['gender_dialog_female'] = entity.genderDialogFemale;
  data['gender_dialog_everyone'] = entity.genderDialogEveryone;
  data['gender_dialog_not_specified'] = entity.genderDialogNotSpecified;
  data['male'] = entity.male;
  data['female'] = entity.female;
  data['unknown'] = entity.unknown;
  data['change_password_title'] = entity.changePasswordTitle;
  data['change_password_old_password'] = entity.changePasswordOldPassword;
  data['change_password_old_password_hint'] = entity.changePasswordOldPasswordHint;
  data['change_password_new_password'] = entity.changePasswordNewPassword;
  data['change_password_new_password_hint'] = entity.changePasswordNewPasswordHint;
  data['change_password_new_password_help'] = entity.changePasswordNewPasswordHelp;
  data['change_password_new_password_again'] = entity.changePasswordNewPasswordAgain;
  data['error_dialog'] = entity.errorDialog;
  data['action_sheet_camera'] = entity.actionSheetCamera;
  data['action_sheet_photo_library'] = entity.actionSheetPhotoLibrary;
  data['action_sheet_profile_image'] = entity.actionSheetProfileImage;
  data['action_cancel'] = entity.actionCancel;
  data['country_select_title'] = entity.countrySelectTitle;
  data['notification_header'] = entity.notificationHeader;
  data['notification_promotion_title'] = entity.notificationPromotionTitle;
  data['notification_activity_title'] = entity.notificationActivityTitle;
  data['notification_section_title'] = entity.notificationSectionTitle;
  data['notification_activity_desc'] = entity.notificationActivityDesc;
  data['notification_promotion_desc'] = entity.notificationPromotionDesc;
  data['error_dialog_title'] = entity.errorDialogTitle;
  data['error_internet'] = entity.errorInternet;
  data['error_server_down'] = entity.errorServerDown;
  data['error_timeout'] = entity.errorTimeout;
  data['error_data_not_found'] = entity.errorDataNotFound;
  data['error_not_enough_coins'] = entity.errorNotEnoughCoins;
  data['current_language'] = entity.currentLanguage;
  data['profile_guest_desc'] = entity.profileGuestDesc;
  data['confirmation'] = entity.confirmation;
  data['profile_update_password_success'] = entity.profileUpdatePasswordSuccess;
  data['profile_create_password_success'] = entity.profileCreatePasswordSuccess;
  data['validate_password_not_matched'] = entity.validatePasswordNotMatched;
  data['validate_text_field_fill_up_text'] = entity.validateTextFieldFillUpText;
  data['validate_text_field_password_text'] = entity.validateTextFieldPasswordText;
  data['validate_text_field_password_check_characters_text'] =
      entity.validateTextFieldPasswordCheckCharactersText;
  data['validate_text_field_phone_number_length_text'] =
      entity.validateTextFieldPhoneNumberLengthText;
  data['validate_text_field_phone_number_length_20_text'] =
      entity.validateTextFieldPhoneNumberLength20Text;
  data['validate_text_field_phone_number_invalid_text'] =
      entity.validateTextFieldPhoneNumberInvalidText;
  data['validate_text_field_first_name_length_20_text'] =
      entity.validateTextFieldFirstNameLength20Text;
  data['validate_text_field_first_name_check_characters_text'] =
      entity.validateTextFieldFirstNameCheckCharactersText;
  data['validate_text_field_last_name_length_20_text'] =
      entity.validateTextFieldLastNameLength20Text;
  data['validate_text_field_last_name_check_characters_text'] =
      entity.validateTextFieldLastNameCheckCharactersText;
  data['select_address_title'] = entity.selectAddressTitle;
  data['select_address_favorites'] = entity.selectAddressFavorites;
  data['select_address_home'] = entity.selectAddressHome;
  data['select_address_work'] = entity.selectAddressWork;
  data['select_address_other'] = entity.selectAddressOther;
  data['select_address_add_address'] = entity.selectAddressAddAddress;
  data['hint_input_home'] = entity.hintInputHome;
  data['create_address_save_place'] = entity.createAddressSavePlace;
  data['modal_over_distance_title'] = entity.modalOverDistanceTitle;
  data['modal_over_distance_desc'] = entity.modalOverDistanceDesc;
  data['modal_over_distance_change_address'] = entity.modalOverDistanceChangeAddress;
  data['user_location_tile'] = entity.userLocationTile;
  data['user_location_desc'] = entity.userLocationDesc;
  data['user_location_allow_location'] = entity.userLocationAllowLocation;
  data['user_location_enter_my_location'] = entity.userLocationEnterMyLocation;
  data['user_location_use_location'] = entity.userLocationUseLocation;
  data['user_location_this_your_location'] = entity.userLocationThisYourLocation;
  data['user_location_skip_step'] = entity.userLocationSkipStep;
  data['user_location_last_entered'] = entity.userLocationLastEntered;
  data['user_location_your_location'] = entity.userLocationYourLocation;
  data['user_location_favorite_places'] = entity.userLocationFavoritePlaces;
  data['all_categories'] = entity.allCategories;
  data['select_by_category'] = entity.selectByCategory;
  data['see_all'] = entity.seeAll;
  data['menu'] = entity.menu;
  data['popular_menu'] = entity.popularMenu;
  data['recommended_menu'] = entity.recommendedMenu;
  data['delivery_address'] = entity.deliveryAddress;
  data['address_save_place'] = entity.addressSavePlace;
  data['address_save_place_desc'] = entity.addressSavePlaceDesc;
  data['use_current_location'] = entity.useCurrentLocation;
  data['payment_method'] = entity.paymentMethod;
  data['ccw'] = entity.ccw;
  data['ibanking'] = entity.ibanking;
  data['free'] = entity.free;
  data['banktrans'] = entity.banktrans;
  data['cod'] = entity.cod;
  data['promptpay'] = entity.promptpay;
  data['internet_banking_bbl'] = entity.internetBankingBbl;
  data['internet_banking_scb'] = entity.internetBankingScb;
  data['internet_banking_ktb'] = entity.internetBankingKtb;
  data['internet_banking_bay'] = entity.internetBankingBay;
  data['internet_banking_tbank'] = entity.internetBankingTbank;
  data['ibanking_desc1'] = entity.ibankingDesc1;
  data['ibanking_desc2'] = entity.ibankingDesc2;
  data['ibanking_desc3'] = entity.ibankingDesc3;
  data['sub_total'] = entity.subTotal;
  data['shipping'] = entity.shipping;
  data['tax'] = entity.tax;
  data['payment_fee'] = entity.paymentFee;
  data['discount'] = entity.discount;
  data['total'] = entity.total;
  data['free-shipping'] = entity.freeShipping;
  data['checkout_deliver_to'] = entity.checkoutDeliverTo;
  data['checkout_title_order'] = entity.checkoutTitleOrder;
  data['checkout_payment_method'] = entity.checkoutPaymentMethod;
  data['checkout_grand_total'] = entity.checkoutGrandTotal;
  data['checkout_confirmation'] = entity.checkoutConfirmation;
  data['checkout_remark'] = entity.checkoutRemark;
  data['verify_account'] = entity.verifyAccount;
  data['unverify_account'] = entity.unverifyAccount;
  data['ordered'] = entity.ordered;
  data['reserved'] = entity.reserved;
  data['cancelled'] = entity.cancelled;
  data['version_title'] = entity.versionTitle;
  data['version_desc'] = entity.versionDesc;
  data['version_update_later'] = entity.versionUpdateLater;
  data['version_update_now'] = entity.versionUpdateNow;
  data['version_force_update'] = entity.versionForceUpdate;
  return data;
}
