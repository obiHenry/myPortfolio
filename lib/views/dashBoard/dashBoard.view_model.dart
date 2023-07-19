import 'package:henryportfolio/views/ExperiencePage.dart';
import 'package:henryportfolio/views/about.dart';
import 'package:henryportfolio/views/contactPage.dart';
import 'package:henryportfolio/views/homePage.dart';
import 'package:henryportfolio/views/projects.dart';
import 'package:henryportfolio/widgets/footer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final views = [
    const HomePage(),
    const AboutPage(),
    const Projects(),
    const Experience(),
    const ContactScreen(),
    const FooterWidget(),
  ];
}
