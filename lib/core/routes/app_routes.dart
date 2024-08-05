import 'package:quick_note/views/bab2&3/bab23_page.dart';
import 'package:quick_note/views/bab2&3/materi/align_page.dart';
import 'package:quick_note/views/bab2&3/materi/center_page.dart';
import 'package:quick_note/views/bab2&3/materi/column_page.dart';
import 'package:quick_note/views/bab2&3/materi/column_row_page.dart';
import 'package:quick_note/views/bab2&3/materi/container_page.dart';
import 'package:quick_note/views/bab2&3/materi/elevatedbutton_page.dart';
import 'package:quick_note/views/bab2&3/materi/expanded_page.dart';
import 'package:quick_note/views/bab2&3/materi/expansiontile_page.dart';
import 'package:quick_note/views/bab2&3/materi/icon_page.dart';
import 'package:quick_note/views/bab2&3/materi/iconbutton_page.dart';
import 'package:quick_note/views/bab2&3/materi/image_asset_page.dart';
import 'package:quick_note/views/bab2&3/materi/image_network_page.dart';
import 'package:quick_note/views/bab2&3/materi/listtile_page.dart';
import 'package:quick_note/views/bab2&3/materi/padding_page.dart';
import 'package:quick_note/views/bab2&3/materi/row_page.dart';
import 'package:quick_note/views/bab2&3/materi/singlescroll_page.dart';
import 'package:quick_note/views/bab2&3/materi/sizedbox_page.dart';
import 'package:quick_note/views/bab2&3/materi/stack_positioned_page.dart';
import 'package:quick_note/views/bab2&3/materi/switch_page.dart';
import 'package:quick_note/views/bab2&3/materi/text_page.dart';
import 'package:quick_note/views/bab2&3/materi/textbutton_page.dart';
import 'package:quick_note/views/bab2&3/materi/textfield_page.dart';
import 'package:quick_note/views/bab2&3/praktik/bab23_praktik_page.dart';
import 'package:quick_note/views/bab4/bab4_page.dart';
import 'package:quick_note/views/bab4/materi/listview_builder_page.dart';
import 'package:quick_note/views/bab4/materi/listview_custom_page.dart';
import 'package:quick_note/views/bab4/materi/listview_page.dart';
import 'package:quick_note/views/bab4/materi/listview_separated_page.dart';
import 'package:quick_note/views/bab4/prakrik/bab4_horizontal_listview_page.dart';
import 'package:quick_note/views/bab4/prakrik/bab4_vertical_listview_page.dart';
import 'package:quick_note/views/bab5/bab5_page.dart';
import 'package:quick_note/views/bab5/materi/gridview_builder_page.dart';
import 'package:quick_note/views/bab5/materi/gridview_count_page.dart';
import 'package:quick_note/views/bab5/materi/gridview_custom_page.dart';
import 'package:quick_note/views/bab5/materi/gridview_extent_page.dart';
import 'package:quick_note/views/bab5/praktik/bab5_horizontal_gridview_page.dart';
import 'package:quick_note/views/bab5/praktik/bab5_vertical_gridview_page.dart';
import 'package:quick_note/views/bab6/bab6_detail_page.dart';
import 'package:quick_note/views/bab6/bab6_page.dart';
import 'package:quick_note/views/bab6/materi/push_navigation_page.dart';
import 'package:quick_note/views/bab6/materi/pushremoveuntil_navigation_page.dart';
import 'package:quick_note/views/bab6/materi/pushreplace_navigation_page.dart';
import 'package:quick_note/views/bab7/bab7_page.dart';
import 'package:quick_note/views/bab7/materi/user_page.dart';
import 'package:quick_note/views/bab7/praktik/detail_user_page.dart';
import 'package:quick_note/views/bab8/bab8_page.dart';
import 'package:quick_note/views/bab9/bab9_page.dart';
import 'package:quick_note/views/home_page.dart';

class AppRoutes {

  static const String homeRoute = '/';

  static const String bab23Route = '/bab23';
  static const String centerRoute = '/bab23/center';
  static const String sizedboxRoute = '/bab23/sizedbox';
  static const String textRoute = '/bab23/text';
  static const String expandedRoute = '/bab23/expanded';
  static const String countainerRoute = '/bab23/container';
  static const String rowRoute = '/bab23/row';
  static const String columnRoute = '/bab23/column';
  static const String columnRowRoute = '/bab23/column-row';
  static const String stackRoute = '/bab23/stack';
  static const String singleScrollRoute = '/bab23/singlescroll';
  static const String paddingRoute = '/bab23/padding';
  static const String alignRoute = '/bab23/align';
  static const String elevatedBtnRoute = '/bab23/elevatedbutton';
  static const String iconBtnRoute = '/bab23/iconbutton';
  static const String textBtnRoute = '/bab23/textbutton';
  static const String textFieldRoute = '/bab23/textfield';
  static const String imgNetworkRoute = '/bab23/image-network';
  static const String imgAssetRoute = '/bab23/image-asset';
  static const String listTileRoute = '/bab23/listtile';
  static const String expanTileRoute = '/bab23/expansiontile';
  static const String iconRoute = '/bab23/icon';
  static const String switchRoute = '/bab23/switch';
  static const String bab2PraktikRoute = '/bab23/praktik';

  static const String bab4Route = '/bab4';
  static const String listViewBuilderRoute = '/bab4/listview-builder';
  static const String listViewSeparatedRoute = '/bab4/listview-separated';
  static const String listViewCustomRoute = '/bab4/listview-custom';
  static const String listViewRoute = '/bab4/listview';
  static const String bab4VerticalRoute = '/bab4/vertical-list-praktik';
  static const String bab4HorizontalRoute = '/bab4/horizontal-list-praktik';

  static const String bab5Route = '/bab5';
  static const String gridViewCountRoute = '/bab5/gridview-count';
  static const String gridViewExtentRoute = '/bab5/gridview-extent';
  static const String gridViewBuilderRoute = '/bab5/gridview-builder';
  static const String gridViewCustomRoute = '/bab5/gridview-custom';
  static const String bab5VerticalRoute = '/bab5/vertical-grid-praktik';
  static const String bab5HorizontalRoute = '/bab5/horizontal-grid-praktik';

  static const String bab6Route = '/bab6';
  static const String pushNavRoute = '/bab6/push-nav';
  static const String pushReplaceNavRoute = '/pushreplace-nav';
  static const String pushRemoveUntilNavRoute = '/pushremoveuntil-nav';
  static const String bab6DetailRoute = '/bab6/detail';

  static const String bab7Route = '/bab7';
  static const String fetchUserRoute = '/bab7/fetch-user';
  static const String bab6DetailUserRoute = '/bab7/fetch-detail-user';

  static const String bab8Route = '/bab8';
  static const String bab9Route = '/bab9';
  
  static final routes = {
    homeRoute: (context) => const HomePage(),

    bab23Route: (context) => const Bab23Page(),
    centerRoute: (context) => const CenterPage(),
    sizedboxRoute: (context) => const SizedboxPage(),
    textRoute: (context) => const TextPage(),
    expandedRoute: (context) => const ExpandedPage(),
    countainerRoute: (context) => const ContainerPage(),
    rowRoute: (context) => const RowPage(),
    columnRoute: (context) => const ColumnPage(),
    columnRowRoute: (context) => const ColumnRowPage(),
    stackRoute: (context) => const StackPositionedPage(),
    singleScrollRoute: (context) => const SinglescrollPage(),
    paddingRoute: (context) => const PaddingPage(),
    alignRoute: (context) => const AlignPage(),
    elevatedBtnRoute: (context) => const ElevatedbuttonPage(),
    iconBtnRoute: (context) => const IconbuttonPage(),
    textBtnRoute: (context) => const TextbuttonPage(),
    textFieldRoute: (context) => const TextfieldPage(),
    imgNetworkRoute: (context) => const ImageNetworkPage(),
    imgAssetRoute: (context) => const ImageAssetPage(),
    listTileRoute: (context) => const ListtilePage(),
    expanTileRoute: (context) => const ExpansiontilePage(),
    iconRoute: (context) => const IconPage(),
    switchRoute: (context) => const SwitchPage(),
    bab2PraktikRoute: (context) => const Bab23PraktikPage(),

    bab4Route: (context) => const Bab4Page(),
    listViewBuilderRoute: (context) => const ListviewBuilderPage(),
    listViewSeparatedRoute: (context) => const ListviewSeparatedPage(),
    listViewCustomRoute: (context) => const ListviewCustomPage(),
    listViewRoute: (context) => const ListviewPage(),
    bab4VerticalRoute: (context) => const Bab4VerticalListviewPage(),
    bab4HorizontalRoute: (context) => const Bab4HorizontalListviewPage(),

    bab5Route: (context) => const Bab5Page(),
    gridViewCountRoute: (context) => const GridviewCountPage(),
    gridViewExtentRoute: (context) => const GridviewExtentPage(),
    gridViewBuilderRoute: (context) => const GridviewBuilderPage(),
    gridViewCustomRoute: (context) => const GridviewCustomPage(),
    bab5VerticalRoute: (context) => const Bab5VerticalGridviewPage(),
    bab5HorizontalRoute: (context) => const Bab5HorizontalGridviewPage(),

    bab6Route: (context) => const Bab6Page(),
    pushNavRoute: (context) => const PushNavigationPage(),
    pushReplaceNavRoute: (context) => const PushreplaceNavigationPage(),
    pushRemoveUntilNavRoute: (context) => const PushremoveuntilNavigationPage(),
    bab6DetailRoute: (context) => const Bab6DetailPage(),
    
    bab7Route: (context) => const Bab7Page(),
    fetchUserRoute: (context) => const UserPage(),
    bab6DetailUserRoute: (context) => const DetailUserPage(),

    bab8Route: (context) => const Bab8Page(),
    bab9Route: (context) => const Bab9Page(),
  };

}