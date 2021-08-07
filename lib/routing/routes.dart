const String rootRoute = '/';
const String errorRoute = '/not-found';

const String OverviewPageDisplayName = 'Overview';
const String OverviewPageRoute = '/overview';

const String DriversPageDisplayName = 'Drivers';
const String DriversPageRoute = '/drivers';

const String ClientsPageDisplayName = 'Clients';
const String ClientsPageRoute = '/clients';

const String AuthenticationDisplayName = 'Log Out';
const String AuthenticationPageRoute = '/auth';

class MenuItem {
  final String name;
  final String route;

  MenuItem({this.name, this.route});
}

List<MenuItem> sideMenuItems = [
  MenuItem(
    name: OverviewPageDisplayName,
    route: OverviewPageRoute,
  ),
  MenuItem(
    name: DriversPageDisplayName,
    route: DriversPageRoute,
  ),
  MenuItem(
    name: ClientsPageDisplayName,
    route: ClientsPageRoute,
  ),
  MenuItem(
    name: AuthenticationDisplayName,
    route: AuthenticationPageRoute,
  ),
];
