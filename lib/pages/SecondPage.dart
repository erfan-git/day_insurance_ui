import 'dart:ui';

import 'package:day_insurance/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
              _nameAndPic(),
              _backBtn(context),
              _items(),
            ],
          ),
        ),
      ),
    );
  }

  Align _items() {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _itemCard(
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                SvgPicture.asset(
                  'assets/icons/add_person.svg',
                  height: 16.h,
                  width: 16.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'اعضای زیر مجموعه',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _itemCard(
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                SvgPicture.asset(
                  'assets/icons/edit_person.svg',
                  height: 16.h,
                  width: 16.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'ویرایش پروفایل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          _itemCard(
            child: Column(
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/headphones.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'پشتیبانی',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/about_us.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'درباره ما',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/comments.svg',
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'نظرات',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _itemCard(
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                SvgPicture.asset(
                  'assets/icons/exit.svg',
                  height: 12.h,
                  width: 16.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'ویرایش پروفایل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemCard({required Widget child}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 16.h,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 50.w,
        vertical: 10.h,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 3.0),
            blurRadius: 6.0,
            spreadRadius: .1,
            color: Colors.black12,
          ),
        ],
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(40),
          left: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }

  Align _backBtn(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            'assets/icons/cancel.svg',
          ),
        ),
      ),
    );
  }

  Positioned _nameAndPic() {
    return Positioned(
      right: 45.w,
      top: 50.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 20.h,
              right: 4.w,
            ),
            child: Text(
              'ناصر براتی',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: .20.sw,
            height: .20.sw,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorData.mainButtonColor,
                width: 5.w,
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  50,
                ),
              ),
              child: Image.asset(
                'assets/profile.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
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
}
