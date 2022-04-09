import 'package:day_insurance/router/router.dart';
import 'package:day_insurance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff0490A0),
                Color(0xff1C4870),
              ],
            ),
          ),
          child: Stack(
            children: [
              _whiteBackGround(),
              _linesBackGround(),
              _mainCards(context),
              _mainCard(context),
              _menu(),
              _logo(),
              _listOfButtons(),
              _bottomNavigationBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Align _listOfButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 90.h,
          right: 8.w,
          left: 8.w,
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _polygonSmallContainer(
                  child: SvgPicture.asset(
                    'assets/icons/information.svg',
                    height: 18.h,
                    color: Colors.white,
                  ),
                  color: ColorData.buttonColor,
                  hasBorder: false,
                  boxHeight: 70,
                  boxWith: 70,
                ),
                Text(
                  'راهنما',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorData.buttonColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _polygonSmallContainer(
                  child: SvgPicture.asset(
                    'assets/icons/phone_call.svg',
                    height: 18.h,
                    color: Colors.white,
                  ),
                  color: ColorData.buttonColor,
                  hasBorder: false,
                  boxHeight: 70,
                  boxWith: 70,
                ),
                Text(
                  '1401',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorData.buttonColor,
                      fontSize: 12.sp,
                      height: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _polygonSmallContainer(
                  child: SvgPicture.asset(
                    'assets/icons/plus.svg',
                    height: 18.h,
                    color: Colors.white,
                  ),
                  color: ColorData.mainButtonColor,
                  hasBorder: false,
                  boxHeight: 70,
                  boxWith: 70,
                ),
                Text(
                  'بیشتر',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorData.mainButtonColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _polygonSmallContainer(
                  child: SvgPicture.asset(
                    'assets/icons/crane_truck.svg',
                    height: 18.h,
                    color: Colors.white,
                  ),
                  color: ColorData.buttonColor,
                  hasBorder: false,
                  boxHeight: 70,
                  boxWith: 70,
                ),
                Text(
                  'جرثفیل',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorData.buttonColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _polygonSmallContainer(
                  child: SvgPicture.asset(
                    'assets/icons/emdad_khodro.svg',
                    height: 18.h,
                    color: Colors.white,
                  ),
                  color: ColorData.buttonColor,
                  hasBorder: false,
                  boxHeight: 70,
                  boxWith: 70,
                ),
                Text(
                  'امدادخوردو',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorData.buttonColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Image _linesBackGround() {
    return Image.asset(
      'assets/main_back_page.png',
      fit: BoxFit.cover,
      width: 1.sw,
      height: 1.sh,
    );
  }

  Align _whiteBackGround() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'assets/white_main.png',
        fit: BoxFit.cover,
        color: const Color(0xffF6F6F8),
        width: 1.sw,
        height: .83.sh,
      ),
    );
  }

  Positioned _mainCard(BuildContext context) {
    return Positioned(
      left: .285.sw,
      top: .393.sh,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(AppRoutes.secondPage);
        },
        child: _polygonMainContainer(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: _polygonSmallContainer(
                  child: SvgPicture.asset('assets/icons/car.svg'),
                  color: Colors.white,
                  hasBorder: true,
                ),
              ),
              Text(
                'صدور بیمه بدنه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Align _mainCards(BuildContext context) {
    return Align(
      heightFactor: 2.8,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.secondPage);
            },
            child: _polygonMainContainer(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: _polygonSmallContainer(
                      child: SvgPicture.asset('assets/icons/notification.svg'),
                      color: Colors.white,
                      hasBorder: true,
                    ),
                  ),
                  Text(
                    'اعلام خسارت',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(AppRoutes.secondPage);
            },
            child: _polygonMainContainer(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: _polygonSmallContainer(
                      child: SvgPicture.asset('assets/icons/search.svg'),
                      color: Colors.white,
                      hasBorder: true,
                    ),
                  ),
                  Text(
                    'بازدید بدنه',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Align _menu() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: SvgPicture.asset('assets/icons/menu.svg'),
      ),
    );
  }

  Align _logo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: SvgPicture.asset('assets/icons/logo.svg'),
      ),
    );
  }

  Align _bottomNavigationBar(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 1.sw,
        height: 90,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 55.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      20,
                    ),
                    topLeft: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/icons/file.svg'),
                          Text(
                            'ارسال نواقص',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff909090),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'خانه',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: const Color(0xff088599),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset('assets/icons/sheet.svg'),
                          Text(
                            'پرونده‌های من',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff909090),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              heightFactor: 0.55,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 80.h,
                  width: 80.w,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        offset: Offset(0.0, 4.0),
                        blurRadius: 4.0,
                        spreadRadius: .1,
                        color: Color(0xff87B9C1),
                      ),
                    ],
                    shape: PolygonBorder(
                      sides: 6,
                      borderRadius: 20.0,
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/home.svg',
                    color: const Color(0xff088599),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _polygonMainContainer({
  required Widget child,
}) {
  return Container(
    alignment: Alignment.center,
    height: 160.h,
    width: 160.w,
    decoration: const ShapeDecoration(
      shadows: [
        BoxShadow(
          offset: Offset(0.0, 3.0),
          blurRadius: 6.0,
          // spreadRadius: 0,
          color: Colors.black12,
        ),
      ],
      color: Color(0xffEF4C5B),
      shape: PolygonBorder(
        sides: 6,
        borderRadius: 20.0,
      ),
    ),
    child: child,
  );
}

Widget _polygonSmallContainer({
  required Widget child,
  required Color color,
  required bool hasBorder,
  double boxWith = 60,
  double boxHeight = 60,
}) {
  return Container(
    alignment: Alignment.center,
    height: boxHeight.h,
    width: boxWith.w,
    decoration: ShapeDecoration(
      shadows: const [
        BoxShadow(
          offset: Offset(0.0, 3.0),
          blurRadius: 6.0,
          // spreadRadius: 0,
          color: Colors.black12,
        ),
      ],
      color: color,
      shape: PolygonBorder(
        sides: 6,
        side: BorderSide(
          color: !hasBorder ? color : const Color(0xffEF4C5B),
          width: 1,
        ),
        borderRadius: 20.0,
      ),
    ),
    child: child,
  );
}
