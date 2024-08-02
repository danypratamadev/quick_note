import 'package:quick_note/views/bab2/page/bab2_page.dart';
import 'package:quick_note/views/bab2/page/column_page.dart';
import 'package:quick_note/views/bab2/page/column_row_page.dart';
import 'package:quick_note/views/bab2/page/container_page.dart';
import 'package:quick_note/views/bab2/page/elevatedbutton_page.dart';
import 'package:quick_note/views/bab2/page/icon_page.dart';
import 'package:quick_note/views/bab2/page/iconbutton_page.dart';
import 'package:quick_note/views/bab2/page/image_asset_page.dart';
import 'package:quick_note/views/bab2/page/image_network_page.dart';
import 'package:quick_note/views/bab2/page/row_page.dart';
import 'package:quick_note/views/bab2/page/text_page.dart';
import 'package:quick_note/views/bab2/page/textbutton_page.dart';
import 'package:quick_note/views/bab2/page/textfield_page.dart';

class AppRoutes {
  
  static final routes = {
    '/bab2': (context) => const Bab2Page(),
    '/bab2/text': (context) => const TextPage(),
    '/bab2/container': (context) => const ContainerPage(),
    '/bab2/row': (context) => const RowPage(),
    '/bab2/column': (context) => const ColumnPage(),
    '/bab2/column-row': (context) => const ColumnRowPage(),
    '/bab2/elevatedbutton': (context) => const ElevatedbuttonPage(),
    '/bab2/iconbutton': (context) => const IconbuttonPage(),
    '/bab2/textbutton': (context) => const TextbuttonPage(),
    '/bab2/textfield': (context) => const TextfieldPage(),
    '/bab2/icon': (context) => const IconPage(),
    '/bab2/image-network': (context) => const ImageNetworkPage(),
    '/bab2/image-asset': (context) => const ImageAssetPage(),
  };

}