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

class AppRoutes {
  
  static final routes = {
    '/bab2': (context) => const Bab2Page(),
    '/bab2/text': (context) => const TextPage(),
    '/bab2/icon': (context) => const IconPage(),
    '/bab2/container': (context) => const ContainerPage(),
    '/bab2/row': (context) => const RowPage(),
    '/bab2/column': (context) => const ColumnPage(),
    '/bab2/column-row': (context) => const ColumnRowPage(),
    '/bab2/switch': (context) => const SwitchPage(),
    '/bab2/elevatedbutton': (context) => const ElevatedbuttonPage(),
    '/bab2/iconbutton': (context) => const IconbuttonPage(),
    '/bab2/textbutton': (context) => const TextbuttonPage(),
    '/bab2/textfield': (context) => const TextfieldPage(),
    '/bab2/image-network': (context) => const ImageNetworkPage(),
    '/bab2/image-asset': (context) => const ImageAssetPage(),
    '/bab2/listtile': (context) => const ListtilePage(),
    '/bab2/expansiontile': (context) => const ExpansiontilePage(),
    '/bab2/singlescroll': (context) => const SinglescrollPage(),
    '/bab2/praktik': (context) => const Bab2PraktikPage(),
  };

}