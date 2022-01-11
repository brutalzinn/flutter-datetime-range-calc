import 'package:datetime_range/shared/shared.dart';
import 'package:datetime_range/states/datetime_state.dart';
import 'package:datetime_range/widgets/datetime_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX-Teste"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Builder(builder: (context) {
            return const DatetimePickerWidget();
          }),
          Obx(() => Container(
                height: 120,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: dateTimeState.dateTimeList.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Text(dateTimeState.dateTimeList
                          .elementAt(index)
                          .hour
                          .toString())
                    ],
                  ),
                ),
              ))
        ]),
      ),

      //  Obx(() => Text(
      //     dateTimeState.number.toString(),
      //     style: Theme.of(context).textTheme.headline4,
      //   ))))

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
