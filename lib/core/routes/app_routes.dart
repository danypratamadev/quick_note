import 'package:quick_note/views/bab2/bab2_page.dart';
import 'package:quick_note/views/bab2/materi/column_page.dart';
import 'package:quick_note/views/bab2/materi/column_row_page.dart';
import 'package:quick_note/views/bab2/materi/container_page.dart';
import 'package:quick_note/views/bab2/materi/elevatedbutton_page.dart';
import 'package:quick_note/views/bab2/materi/expansiontile_page.dart';
import 'package:quick_note/views/bab2/materi/icon_page.dart';
import 'package:quick_note/views/bab2/materi/iconbutton_page.dart';
import 'package:quick_note/views/bab2/materi/image_asset_page.dart';
import 'package:quick_note/views/bab2/materi/image_network_page.dart';
import 'package:quick_note/views/bab2/materi/listtile_page.dart';
import 'package:quick_note/views/bab2/materi/row_page.dart';
import 'package:quick_note/views/bab2/materi/singlescroll_page.dart';
import 'package:quick_note/views/bab2/materi/switch_page.dart';
import 'package:quick_note/views/bab2/materi/text_page.dart';
import 'package:quick_note/views/bab2/materi/textbutton_page.dart';
import 'package:quick_note/views/bab2/materi/textfield_page.dart';
import 'package:quick_note/views/bab2/praktik/bab2_praktik_page.dart';
import 'package:quick_note/views/bab3/bab3_page.dart';
import 'package:quick_note/views/bab3/materi/listview_builder_page.dart';
import 'package:quick_note/views/bab3/materi/listview_custom_page.dart';
import 'package:quick_note/views/bab3/materi/listview_page.dart';
import 'package:quick_note/views/bab3/materi/listview_separated_page.dart';
import 'package:quick_note/views/bab3/prakrik/bab3_horizontal_listview_page.dart';
import 'package:quick_note/views/bab3/prakrik/bab3_vertical_listview_page.dart';
import 'package:quick_note/views/bab4/bab4_page.dart';
import 'package:quick_note/views/bab4/materi/gridview_builder_page.dart';
import 'package:quick_note/views/bab4/materi/gridview_count_page.dart';
import 'package:quick_note/views/bab4/materi/gridview_custom_page.dart';
import 'package:quick_note/views/bab4/materi/gridview_extent_page.dart';
import 'package:quick_note/views/bab4/praktik/bab4_horizontal_listview_page.dart';
import 'package:quick_note/views/bab4/praktik/bab4_vertical_listview_page.dart';
import 'package:quick_note/views/bab5/bab5_page.dart';
import 'package:quick_note/views/bab6/bab6_page.dart';
import 'package:quick_note/views/home_page.dart';

class AppRoutes {

  static const String homeRoute = '/';

  static const String bab2Route = '/bab2';
  static const String textRoute = '/bab2/text';
  static const String iconRoute = '/bab2/icon';
  static const String countainerRoute = '/bab2/container';
  static const String rowRoute = '/bab2/row';
  static const String columnRoute = '/bab2/column';
  static const String columnRowRoute = '/bab2/column-row';
  static const String switchRoute = '/bab2/switch';
  static const String elevatedBtnRoute = '/bab2/elevatedbutton';
  static const String iconBtnRoute = '/bab2/iconbutton';
  static const String textBtnRoute = '/bab2/textbutton';
  static const String textFieldRoute = '/bab2/textfield';
  static const String imgNetworkRoute = '/bab2/image-network';
  static const String imgAssetRoute = '/bab2/image-asset';
  static const String listTileRoute = '/bab2/listtile';
  static const String expanTileRoute = '/bab2/expansiontile';
  static const String singleScrollRoute = '/bab2/singlescroll';
  static const String bab2PraktikRoute = '/bab2/praktik';

  static const String bab3Route = '/bab3';
  static const String listViewBuilderRoute = '/bab3/listview-builder';
  static const String listViewSeparatedRoute = '/bab3/listview-separated';
  static const String listViewCustomRoute = '/bab3/listview-custom';
  static const String listViewRoute = '/bab3/listview';
  static const String bab3VerticalRoute = '/bab3/vertical-list-praktik';
  static const String bab3HorizontalRoute = '/bab3/horizontal-list-praktik';

  static const String bab4Route = '/bab4';
  static const String gridViewCountRoute = '/bab4/gridview-count';
  static const String gridViewExtentRoute = '/bab4/gridview-extent';
  static const String gridViewBuilderRoute = '/bab4/gridview-builder';
  static const String gridViewCustomRoute = '/bab4/gridview-custom';
  static const String bab4VerticalRoute = '/bab3/vertical-grid-praktik';
  static const String bab4HorizontalRoute = '/bab3/horizontal-grid-praktik';

  static const String bab5Route = '/bab5';

  static const String bab6Route = '/bab6';
  
  static final routes = {
    homeRoute: (context) => const HomePage(),

    bab2Route: (context) => const Bab2Page(),
    textRoute: (context) => const TextPage(),
    iconRoute: (context) => const IconPage(),
    countainerRoute: (context) => const ContainerPage(),
    rowRoute: (context) => const RowPage(),
    columnRoute: (context) => const ColumnPage(),
    columnRowRoute: (context) => const ColumnRowPage(),
    switchRoute: (context) => const SwitchPage(),
    elevatedBtnRoute: (context) => const ElevatedbuttonPage(),
    iconBtnRoute: (context) => const IconbuttonPage(),
    textBtnRoute: (context) => const TextbuttonPage(),
    textFieldRoute: (context) => const TextfieldPage(),
    imgNetworkRoute: (context) => const ImageNetworkPage(),
    imgAssetRoute: (context) => const ImageAssetPage(),
    listTileRoute: (context) => const ListtilePage(),
    expanTileRoute: (context) => const ExpansiontilePage(),
    singleScrollRoute: (context) => const SinglescrollPage(),
    bab2PraktikRoute: (context) => const Bab2PraktikPage(),

    bab3Route: (context) => const Bab3Page(),
    listViewBuilderRoute: (context) => const ListviewBuilderPage(),
    listViewSeparatedRoute: (context) => const ListviewSeparatedPage(),
    listViewCustomRoute: (context) => const ListviewCustomPage(),
    listViewRoute: (context) => const ListviewPage(),
    bab3VerticalRoute: (context) => const Bab3VerticalListviewPage(),
    bab3HorizontalRoute: (context) => const Bab3HorizontalListviewPage(),

    bab4Route: (context) => const Bab4Page(),
    gridViewCountRoute: (context) => const GridviewCountPage(),
    gridViewExtentRoute: (context) => const GridviewExtentPage(),
    gridViewBuilderRoute: (context) => const GridviewBuilderPage(),
    gridViewCustomRoute: (context) => const GridviewCustomPage(),
    bab4VerticalRoute: (context) => const Bab4VerticalListviewPage(),
    bab4HorizontalRoute: (context) => const Bab4HorizontalListviewPage(),

    bab5Route: (context) => const Bab5Page(),
    bab6Route: (context) => const Bab6Page(),
  };

}