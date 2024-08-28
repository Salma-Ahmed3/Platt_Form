import 'package:flutter/material.dart';
import 'package:nowproject/Screens/Add%20New%20Address%20Google%20Maps/add_new_address_google_maps_view.dart';
import 'package:nowproject/Screens/Choose%20Addrease/choose_addrese_view.dart';
import 'package:nowproject/Screens/Choose%20the%20package%20Hourly%20Service/choose_package_hourly_services_view.dart';
import 'package:nowproject/Screens/Choosing%20Carrer/chossing_carrer_view.dart';
import 'package:nowproject/Screens/Chossing%20Maid/chossing_mid_view.dart';
import 'package:nowproject/Screens/Contract%20Data/contract_data_view.dart';
import 'package:nowproject/Screens/Contract%20Details%20Maid/contract_details_maid_view.dart';
import 'package:nowproject/Screens/Contract%20Details/contract_details_view.dart';
import 'package:nowproject/Screens/Contract%20Success/contract_success_view.dart';
import 'package:nowproject/Screens/Contract%20attachments/contract_attachments_view.dart';
import 'package:nowproject/Screens/Contract/contract_view.dart';
import 'package:nowproject/Screens/Home/components/test_page.dart';
import 'package:nowproject/Screens/Home/home_view.dart';
import 'package:nowproject/Screens/LogIn/login_view.dart';
import 'package:nowproject/Screens/Logo/logo_view.dart';
import 'package:nowproject/Screens/My%20Request%20Hours/my_request_hourly_view.dart';
import 'package:nowproject/Screens/My%20Requests/my_requests_view.dart';
import 'package:nowproject/Screens/Notification/notification_view.dart';
import 'package:nowproject/Screens/SignUp/signup_view.dart';
import 'package:nowproject/Screens/contact_us/contact_us_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LogoView.routeName:
      return MaterialPageRoute(builder: (context) => const LogoView());

   case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());

   case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
      
   case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

   case NotificationView.routeName:
      return MaterialPageRoute(builder: (context) => const NotificationView());

   case ChoosingMaidView.routeName:
      return MaterialPageRoute(builder: (context) => const ChoosingMaidView());

   case ContractDetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDetailsView());

   case ContractView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractView());

   case ContractAttachmentsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractAttachmentsView());

   case ContractSuccessView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractSuccessView());

   case MyRequestsView.routeName:
      return MaterialPageRoute(builder: (context) => const MyRequestsView());

   case ContractDetailsMaidView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDetailsMaidView());

   case MyRequestHourlyView.routeName:
      return MaterialPageRoute(builder: (context) => const MyRequestHourlyView());

   case ChossingCarrerView.routeName:
      return MaterialPageRoute(builder: (context) => const ChossingCarrerView());

   case ChooseAddreseView.routeName:
      return MaterialPageRoute(builder: (context) => const ChooseAddreseView());

   case AddNewAddressGoogleMapsView.routeName:
      return MaterialPageRoute(builder: (context) => const AddNewAddressGoogleMapsView());

   case ChoosePackageHourlyServicesView.routeName:
      return MaterialPageRoute(builder: (context) => const ChoosePackageHourlyServicesView());

   case ContractDataView.routeName:
      return MaterialPageRoute(builder: (context) => const ContractDataView());

   case ContactUsView.routeName:
      return MaterialPageRoute(builder: (context) => const ContactUsView());

   case TestPage.routeName:
      return MaterialPageRoute(builder: (context) => const TestPage());
      
  //  case CustomDialog.routeName:
  //     return MaterialPageRoute(builder: (context) => const CustomDialog());

    default:
      return MaterialPageRoute(builder: (context) => const HomeView());
  
  
  }
}

class ScreenNames {
  /// TODO REMOVE STRING FOR SCREEN AND WRITE STRING DIRECT HERE
  static String splashScreen = "SplashScreen";
  static String introScreen = "IntroScreen";
  static String service = '/ServiceScreen';
  static String fixedPackage = 'FixedPackage';
  static String createFixedFirstStep = 'HourlySelectPackage';
  static String offersScreen = "offersScreen";
  static String offerDetails = "OfferDetails";
  static String loginScreen = '/LoginScreen';
  static String savedAddress = "SavedAddresses";
  static String indivJobsScreen = "SelectProfession";
  static String indivNationalityScreen = "SelectNationality";
  static String individualPricingScreen = "IndividualSelectPackage";
  // static String displayEmployeeDetails = '/DisplayEmployeeDetails';
  static String createFixedSecondStep = 'HourlyPackagePromotion';
  static String hourlySuccess = 'HourlyCreatedSuccess';
  static String hourlyVisits = '/HourlyVisits';
  static String hourlyContractDetailsScreen = "HourlyContractDetailsScreen";
  static String indivEmployeeFilterScreen = "IndivEmployeeFilterScreen";
  static String indivEmployeeScreen = 'SelectEmployee';
  static String contractsScreen = 'ContractsScreen';
  static String indivCreateRequest = 'ContractDetails';
  static String indivDocument = 'ContractTemplate';
  static String indivUploadImage = 'UploadAttachments';
  static String indivSuccessScreen = 'IndividualCreatedSuccess';
  static String indivRequestsScreen = '/IndivRequestsScreen';
  static String indivRequestsDetails = '/IndivRequestsDetailsScreen';
  static String indivContractsScreen = "IndivContractsScreen";
  static String indivContractDetailsScreen = "IndivContractDetailsScreen";
  static String userProfileScreen = "UserProfileDashBordScreen";
  static String leadScreen = "OtherOrdersScreen";
  static String customerTicketScreen = '/CustomerTicketScreen';
  static String customerTicketAddScreen = '/CustomerTicketAddscreen';
  static String callUs = '/CallUs';
  static String changePassword = '/ChangePassword';
  static String signUp = '/SignUp';
  static String forgetPassStepTwo = "ForgetPassStepTwo";
  static String forgetPassStepOne = '/ForgetPassStepOne';
  static String indivAddLocationStepOne = "AddNewAddressLocation";
  static String indivAddLocationStepTwo = "AddNewAddressMap";
  static String completeProfile = "CompleteProfile";
  static String editProfileScreen = "EditProfileScreen";
  static String termsScreen = "TermsScreen";
  static String userNotificationScreen = "UserNotificationScreen";
  static String reNewIndivContractScreen = "RenewPricing";
  static String indivRenewSuccess = "IndividualRenewContractSuccess";
  static String verifyCodeScreen = '/verifyCode';
  static String userProfileMyAccountScreen = "UserProfileMyAccount";
  static String savedAddressProfileScreen = "SavedAddressProfile";
  static String createLeadIndiv = "AddLeadScreen";
  static String showAddressScreen = "DisplayAddressInMap";
  static String indivContractBeforeRenewDetailsScreen = "RenewDetails";
  static String shopperResultPaymentScreen = '/payment';
  static String createLeadHourly = "CreateLeadHourly";
  static String getContract = '/GetContract';
  static String hourlyVisitsScreen = "HourlyVisitsScreen";
  static String servicesScreen = "ServicesScreen";
  static String expectedVisits = "ExpectedVisits";
  static const String createBusinessLeadScreen = "CreateBusinessLeadScreen";
  static const String businessServicesScreen = "BusinessServicesScreen";
  static const String createSpecialBusinessLeadScreen =
      "CreateSpecialBusinessLeadScreen";
}
