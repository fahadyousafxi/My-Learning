import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_learning/screens/API_integration/Flags_API.dart';
import 'package:my_learning/screens/flutter_ui_basics/testForFiles.dart';
import '../../screens/firebase/todo_app/Login_Screen.dart';
import '../../screens/flutter_ui_basics/AppBarWidgetScreen.dart';
import '../../screens/flutter_ui_basics/ButtonScreen.dart';
import '../../screens/flutter_ui_basics/CalculatorScreen.dart';
import '../../screens/flutter_ui_basics/ChangingScafoldColorScreen.dart';
import '../../screens/flutter_ui_basics/ColumnWidgetScreen.dart';
import '../../screens/flutter_ui_basics/ContainerScreen.dart';
import '../../screens/apps_ui/CourseRoughWork.dart';
import '../../screens/flutter_ui_basics/FlutterToastScreen.dart';
import '../../screens/flutter_ui_basics/FornAndFormValidation.dart';
import '../../screens/flutter_ui_basics/GridViewBuilderSimpleScreen.dart';
import '../../screens/flutter_ui_basics/GridViewBuilderStordedDataScreen.dart';
import '../../screens/flutter_ui_basics/GridViewWidgetScreen.dart';
import '../../screens/flutter_ui_basics/ImageAndCircleAvatarWidgetScreen.dart';
import '../../screens/flutter_ui_basics/ListViewBuilderScreen.dart';
import '../../screens/flutter_ui_basics/ListViewBuilderStoredDataScreen.dart';
import '../../screens/flutter_ui_basics/ListViewWidgetScreen.dart';
import '../../screens/flutter_ui_basics/RowWidgetScreen.dart';
import '../../screens/flutter_ui_basics/ShowingAnotherScreenInformation.dart';
import '../../screens/flutter_ui_basics/StackWidgetScreen.dart';
import '../../screens/flutter_ui_basics/SwitchWidgetScreen.dart';
import '../../screens/flutter_ui_basics/TextFieldScreen.dart';
import '../../screens/flutter_ui_basics/TextwidgetScreen.dart';
import '../../screens/local_data_persistence/AddtoDataBase.dart';
import '../../screens/local_data_persistence/SharedPrefrencesScreen.dart';
import '../../utility/MyAppColors.dart';
import '../apps_ui/WhatsAppScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ScrollController controllerOne = ScrollController();
  final ScrollController controllerTwo = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Learning fahad',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
        elevation: 3,
      ),
      body: Scrollbar(
        controller: controllerTwo,
        // trackVisibility: true,

        interactive: true,
        thickness: 8,
        radius: Radius.circular(22),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Flutter UI Basics',
                  style: TextStyle(
                      color: Mycolors.myTextRedColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.green, width: 5),
                  borderRadius: BorderRadius.circular(22),
                ),
                alignment: Alignment.center,
                height: 40,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(22),
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent])),
                  height: 300,
                  width: 340,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 5),
                  child: Scrollbar(
                    controller: controllerOne,
                    //showTrackOnHover: true,
                    //hoverThickness: 155,
                    thumbVisibility: true,
                    thickness: 8,
                    radius: Radius.circular(33),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GridView(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 14,
                          crossAxisSpacing: 20,
                          childAspectRatio: 10 / 3.5,
                        ),
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const TextWidgetScreen()),
                              );
                            },
                            child: const Text(
                              'Text Widget',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AppBarWidgetScreen()),
                              );
                            },
                            child: const Text(
                              'App Bar',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ContainerScreen()),
                              );
                            },
                            child: const Text(
                              'Container',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RowWidgetScreen()),
                              );
                            },
                            child: const Text(
                              'Row',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ColumnWidgetScreen()),
                                );
                              },
                              child: const Text(
                                'Column',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ImageAndCircleAvatarWidgetScreen()),
                                );
                              },
                              child: const Text(
                                'Image',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ListViewWidgetScreen()),
                              );
                            },
                            child: const Text(
                              'List View',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GridViewWidgetScreen()),
                                );
                              },
                              child: const Text(
                                'Grid View',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StackWidgetScreen()),
                                );
                              },
                              child: const Text(
                                'Stack',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ListViewBuilderScreen()),
                                );
                              },
                              child: const Text(
                                'ListView.Builder Simple function',
                                style: TextStyle(
                                    fontSize: 11.8,
                                    fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ListViewBuilderStoredDataScreen()),
                                );
                              },
                              child: const Text(
                                'ListView.Builder Stored Data',
                                style: TextStyle(
                                    fontSize: 11.8,
                                    fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GridViewBuilderSimpleScreen()),
                                );
                              },
                              child: const Text(
                                'GridView.Builder Simple function',
                                style: TextStyle(
                                    fontSize: 11.4,
                                    fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GridViewBuilderStoredDataScreen()),
                                );
                              },
                              child: const Text(
                                'GridView.Builder Stored Data',
                                style: TextStyle(
                                    fontSize: 11.4,
                                    fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ButtonScreen()),
                              );
                            },
                            child: const Text(
                              'Buttons',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FlutterToastScreen()));
                              },
                              child: Text(
                                'Toast',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ChangingScafoldColorScreen()));
                            },
                            child: Text(
                              'Statfullwidget Change color',
                              style: TextStyle(
                                  fontSize: 10.8, fontWeight: FontWeight.w700),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TextFieldScreen()));
                              },
                              child: Text(
                                'Text Field',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CalculatorScreen()));
                              },
                              child: Text(
                                'Calculator',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FornAndFormValidation()));
                              },
                              child: Text(
                                'Form and Form Validation DMC',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ShowingAnotherScreenInformation()));
                              },
                              child: Text(
                                'Showing Another Screen Info',
                                style: TextStyle(
                                    fontSize: 11.2,
                                    fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SwitchWidgetScreen()));
                              },
                              child: const Text(
                                'Switch',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => testForFiles()));
                              },
                              child: const Text(
                                'testForFiles',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              )),
                          Container(
                            color: Colors.red,
                            width: 200,
                            height: 200,
                          ),
                          Container(
                            color: Colors.blue,
                            width: 200,
                            height: 200,
                          ),
                          Container(
                            color: Colors.orange,
                            width: 200,
                            height: 200,
                          ),
                          Container(
                            color: Colors.purpleAccent,
                            width: 200,
                            height: 200,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
                thickness: 2,
              ),
              Container(
                child: const Text(
                  'Local Data Persistence',
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.green, width: 5)),
                alignment: Alignment.center,
                height: 40,
                width: 230,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(22),
                      gradient: const LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent])),
                  height: 185,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 10 / 4,
                    ),
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SharedPrefrences()),
                          );
                        },
                        child: const Text(
                          'Shared Preferences',
                          style: TextStyle(
                              fontSize: 12.5, fontWeight: FontWeight.w700),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DataBase()),
                          );
                        },
                        child: const Text(
                          'Data Base Full App',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.orange,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
                thickness: 2,
              ),
              Container(
                child: const Text(
                  'API Integration',
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.green, width: 5)),
                alignment: Alignment.center,
                height: 40,
                width: 170,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(22),
                      gradient: const LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent])),
                  height: 185,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 10 / 4,
                    ),
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FlagsAPI()),
                          );
                        },
                        child: const Text(
                          'Flags API',
                          style: TextStyle(
                              fontSize: 12.5, fontWeight: FontWeight.w700),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FlagsAPI()),
                          );
                        },
                        child: const Text(
                          '___',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.orange,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
                thickness: 2,
              ),
              Container(
                child: const Text(
                  'Fire Base',
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.green, width: 5)),
                alignment: Alignment.center,
                height: 40,
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(22),
                      gradient: const LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent])),
                  height: 185,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 10 / 4,
                    ),
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text(
                          'Todo App',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text(
                          '___',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.orange,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.blue,
                thickness: 2,
              ),
              Container(
                child: const Text(
                  'Apps UI',
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.green, width: 5)),
                alignment: Alignment.center,
                height: 40,
                width: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      border: Border.all(color: Colors.green, width: 5),
                      borderRadius: BorderRadius.circular(22),
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pinkAccent])),
                  height: 185,
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20,
                      childAspectRatio: 10 / 4,
                    ),
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const course()),
                          );
                        },
                        child: const Text(
                          'Rough Work',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WhatsAppScreen()),
                          );
                        },
                        child: const Text(
                          'WhatsApp',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.green,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.green,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                      ),
                      Container(
                        color: Colors.green,
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
