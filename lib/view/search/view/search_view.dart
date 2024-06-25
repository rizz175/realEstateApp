import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/core/constants/assets_constants.dart';
import 'package:realestate/core/constants/colors_constants.dart';
import 'package:realestate/core/widgets/circle_widget.dart';
import 'package:realestate/core/widgets/custom_popup_row.dart';
import 'package:realestate/core/widgets/spacing_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../../../core/widgets/decorations.dart';
import '../../../core/widgets/text_widgets.dart';
import '../controller/search_controller.dart';

class SearchView extends StatelessWidget {
  final SearchController searchController = Get.put(SearchController());

  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => GoogleMap(
                myLocationEnabled: true,
                zoomGesturesEnabled: true,
                zoomControlsEnabled: true,
                mapType: MapType.terrain,
                onMapCreated: searchController.onMapCreated,
                initialCameraPosition: SearchController.initialPosition,
                markers: Set<Marker>.from(searchController.markers),
              )),
          Positioned(
            top: 55,
            left: 25,
            right: 25,
            child: searchSection(),
          ),
          Positioned(
            bottom: 100,
            left: 25,
            right: 25,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects(
                      delay: const Duration(milliseconds: 3000),
                      offset: const Offset(0, 30),
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 900)),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showPopupMenu(context);
                        },
                        child: CircleWidget(
                            color: ColorConstants.greyColor.withOpacity(.9),
                            child: const Icon(
                              CupertinoIcons.square_stack_3d_up,
                              color: Colors.white,
                            )),
                      ),
                      Spacing.height01,
                      CircleWidget(
                          color: ColorConstants.greyColor.withOpacity(.9),
                          child: const Icon(
                            CupertinoIcons.location,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                WidgetAnimator(
                  incomingEffect: WidgetTransitionEffects(
                      delay: const Duration(milliseconds: 3500),
                      offset: const Offset(0, 30),
                      curve: Curves.fastOutSlowIn,
                      duration: const Duration(milliseconds: 2000)),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: Decorations.greyRoundBorder,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.filter_list_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Texts.block(" List of variants",
                            size: 16.sp, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void showPopupMenu(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    final Offset target = Offset(overlay.size.width - 60,
        overlay.size.height - 60); // Adjust this offset as per your needs

    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(overlay.size.width - target.dx, target.dy,
          target.dx, overlay.size.height - target.dy),
      items: [
        PopupMenuItem<String>(
          value: 'cosy_areas',
          child: PopupCustomRow(
              icon: Icons.safety_check_outlined, title: "Cosy Area"),
        ),
        PopupMenuItem<String>(
          value: 'price',
          child: PopupCustomRow(icon: Icons.wallet, title: "Price"),
        ),
        PopupMenuItem<String>(
          value: 'infrastructure',
          child: PopupCustomRow(
              icon: Icons.location_city, title: "Infrastructure"),
        ),
        PopupMenuItem<String>(
          value: 'layer',
          child: PopupCustomRow(
              icon: CupertinoIcons.square_stack_3d_up_fill,
              title: "Without any layer"),
        ),
      ],
      elevation: 8.0,
    );
  }

  searchSection() {
    return WidgetAnimator(
      incomingEffect: WidgetTransitionEffects(
          delay: const Duration(milliseconds: 800),
          offset: const Offset(0, 30),
          curve: Curves.fastOutSlowIn,
          duration: const Duration(milliseconds: 900)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetsConstants.searchIcon,
                      color: ColorConstants.blackColor,
                    ),
                    const SizedBox(width: 10.0),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Saint Petersburg',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacing.width1,
          CircleWidget(
              color: Colors.white,
              child: SvgPicture.asset(
                AssetsConstants.filterIcon,
                color: ColorConstants.blackColor,
              ))
        ],
      ),
    );
  }
}
