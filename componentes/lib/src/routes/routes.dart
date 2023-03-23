import 'package:flutter/material.dart';

import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/home_page.dart';
import '../pages/card_page.dart';
import '../pages/animated_container.dart';
import '../pages/input_page.dart';
import '../pages/slider_page.dart';
import '../pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

    return <String, WidgetBuilder>{
        '/'      : ( BuildContext context) => HomePage(),
        'alert'  : ( BuildContext context) => AlertPage(),
        AvatarPage.pageName : ( BuildContext context) => AvatarPage(),//one way to named
        'card'   : ( BuildContext context) => CardPage(),
        'animatedContainer'  : ( BuildContext context) => AnimatedContainerPage(),
        'inputs' : ( BuildContext context) => InputPage(),
        'slider'   : ( BuildContext context) => SliderPage(),
        'list'   : ( BuildContext context) => ListaPage()
    };

}