// ignore: file_names
import 'package:astrtwig/colors.dart';
import 'package:astrtwig/reusable_buttons.dart';
import 'package:astrtwig/astroworld/view/profile/view/widgets/reusbale_widgets.dart';
// import 'package:astro_application/src/core/constants/colors.dart';
// import 'package:astro_application/src/core/widgets/reusable_buttons.dart';
// import 'package:astro_application/src/features/main/profile/view/widgets/reusbale_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

// import '../../../../../core/ui/text/text_style.dart';
import 'package:astrtwig/text_style.dart';

// ignore: must_be_immutable
class SpherePage extends StatefulWidget {
  const SpherePage({super.key});

  @override
  State<SpherePage> createState() => _SpherePageState();
}

class _SpherePageState extends State<SpherePage> {
  late bool _visible;

  Map<String, double> dataMap = {
    "Product 1 ": 20,
    "Product 2": 22,
    "Product 3": 12,
    "Product 4": 13,
    "Product 5": 13,
    "Product 6": 20,
  };

  List<Color> colorList = [
    Colors.red,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
  ];

  @override
  void initState() {
    _visible = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _visible = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : purple100, // <-- SEE HERE
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'My sphere',
            style: GoogleFonts.kanit(
              textStyle: TextStyles.appBrTxt,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : purple100,
            ),
          ),
        ),
        body: _visible
            ? Center(
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 10,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                ),
              )
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Center(
                        child: ProfileCircle1(),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      MySphereWidget(
                        numberOfSongs: 151,
                        dataMap: dataMap,
                        colorList: colorList,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      KolorButton(
                        width: MediaQuery.of(context).size.width / 1.3,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? mOnboardingColor2
                            : purple100,
                        text: "Refresh",
                        onPressed: () async {
                          setState(() {
                            _visible = true;
                          });
                          await Future.delayed(const Duration(seconds: 2));
                          setState(() {
                            _visible = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ));
  }
}

class MySphereWidget extends StatefulWidget {
  final Map<String, double> dataMap;
  final List<Color> colorList;
  final int numberOfSongs;
  const MySphereWidget({
    super.key,
    required this.numberOfSongs,
    required this.dataMap,
    required this.colorList,
  });

  @override
  State<MySphereWidget> createState() => _MySphereWidgetState();
}

class _MySphereWidgetState extends State<MySphereWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total number of song listened ',
          style: GoogleFonts.kanit(
            textStyle: TextStyles.nrmlTxt,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          widget.numberOfSongs.toString(),
          style: GoogleFonts.kanit(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        const Divider(
          thickness: 3,
        ),
        Center(
          child: PieChart(
            colorList: widget.colorList,
            dataMap: widget.dataMap,
            chartRadius: MediaQuery.of(context).size.width / 1.7,
            animationDuration: const Duration(milliseconds: 1000),
            chartValuesOptions: const ChartValuesOptions(
              showChartValues: true,
              showChartValueBackground: false,
              showChartValuesInPercentage: true,
            ),
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
              showLegends: true,
              showLegendsInRow: true,
              legendShape: BoxShape.circle,
              legendTextStyle: GoogleFonts.kanit(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
