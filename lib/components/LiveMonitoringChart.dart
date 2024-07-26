import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:async';
import 'dart:math' as math;

class Livemonitoringchart extends StatefulWidget {
  const Livemonitoringchart({super.key});

  @override
  State<Livemonitoringchart> createState() => _LivemonitoringchartState();
}

class _LivemonitoringchartState extends State<Livemonitoringchart> {
  late List<LiveData> chartData;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    chartData = getChartData();
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF232323),
        body: SfCartesianChart(
          plotAreaBorderWidth: 0, // Remove the plot area border lines
          backgroundColor: Color(0xFF232323),
          title: ChartTitle(
            text: 'Live Monitoring',
            textStyle: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ),
          series: <LineSeries<LiveData, int>>[
            LineSeries<LiveData, int>(
              onRendererCreated: (ChartSeriesController controller) {
                _chartSeriesController = controller;
              },
              dataSource: chartData,
              color: Color(0xFF00FF29),
              xValueMapper: (LiveData data, _) => data.time,
              yValueMapper: (LiveData data, _) => data.speed,
            )
          ],
          primaryXAxis: NumericAxis(
            majorGridLines: const MajorGridLines(width: 0),
            majorTickLines: const MajorTickLines(size: 0),
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            interval: 3,
            title: AxisTitle(
              text: 'Time (s)',
              textStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            axisLine: const AxisLine(width: 1, color: Color(0xFFFFFFFF)),
            labelStyle: const TextStyle(color: Colors.transparent),
          ),
          primaryYAxis: NumericAxis(
            axisLine: const AxisLine(width: 1, color: Color(0xFFFFFFFF)),
            majorTickLines: const MajorTickLines(size: 0),
            majorGridLines: const MajorGridLines(width: 0, color: Colors.grey),
            title: AxisTitle(
              text: 'Power (W)',
              textStyle: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
            labelStyle: const TextStyle(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  int time = 19;
  void updateDataSource(Timer timer) {
    chartData.add(LiveData(time++, (math.Random().nextInt(60) + 30)));
    chartData.removeAt(0);
    _chartSeriesController.updateDataSource(
      addedDataIndex: chartData.length - 1,
      removedDataIndex: 0,
    );
  }

  List<LiveData> getChartData() {
    return <LiveData>[
      LiveData(0, 42),
      LiveData(1, 47),
      LiveData(2, 43),
      LiveData(3, 49),
      LiveData(4, 54),
      LiveData(5, 41),
      LiveData(6, 58),
      LiveData(7, 51),
      LiveData(8, 48),
      LiveData(9, 41),
      LiveData(10, 53),
      LiveData(11, 52),
      LiveData(12, 46),
      LiveData(13, 52),
      LiveData(14, 44),
      LiveData(15, 42),
      LiveData(16, 46),
      LiveData(17, 52),
      LiveData(18, 44),
    ];
  }
}

class LiveData {
  LiveData(this.time, this.speed);
  final int time;
  final num speed;
}
