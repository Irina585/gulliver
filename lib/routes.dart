import 'drawer_items/alerts.dart';
import 'drawer_items/exit.dart';
import 'drawer_items/feed_back.dart';
import 'drawer_items/miracle_card.dart';
import 'drawer_items/personal_date/card_management.dart';
import 'drawer_items/personal_date/change_email.dart';
import 'drawer_items/personal_date/change_number.dart';
import 'drawer_items/personal_date/change_pin_code.dart';
import 'drawer_items/personal_date/go_out.dart';
import 'drawer_items/personal_date/my_contacts.dart';
import 'drawer_items/personal_date/my_profile.dart';
import 'drawer_items/personal_date/personal_date.dart';
import 'drawer_items/personal_offers.dart';
import 'drawer_items/promotions.dart';
import 'drawer_items/purchase_history.dart';
import 'drawer_items/shopping_lists/add_shopping_lists.dart';
import 'drawer_items/shopping_lists/shopping_lists.dart';
import 'drawer_items/supermarkets.dart';

class Routes {
  // пункты меню
  static const String miracleCard = MiracleCard.routeName;
  static const String promotions = Promotions.routeName;
  static const String personalOffers = PersonalOffers.routeName;
  static const String personalDate = PersonalDate.routeName;
  static const String purchaseHistory = PurchaseHistory.routeName;
  static const String supermarkets = Supermarkets.routeName;
  static const String shoppingLists = ShoppingLists.routeName;
  static const String alerts = Alerts.routeName;
  static const String feedBack = FeedBack.routeName;
  static const String exit = Exit.routeName;
// личные данные
  static const String my_profile = MyProfile.routeName;
  static const String my_contacts = MyContacts.routeName;
  static const String changePinCode = ChangePinCode.routeName;
  static const String cardManagement = CardManagement.routeName;
  static const String goOut = GoOut.routeName;
  static const String changeNumber = ChangeNumberScreen.routeName;
  static const String changeEmail = ChangeEmailScreen.routeName;
// shopping_lists
  static const String addShoppingLists = AddShoppingLists.routeName;
}
