import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Guide',
      theme: ThemeData(
        // Change the primarySwatch to purple
        primarySwatch: Colors.deepPurple,

        // Change the accentColor to black
        hintColor: Colors.black,
      ),
      home: const TutorialPage(),
    );
  }
}

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  TutorialPageState createState() => TutorialPageState();
}

class TutorialPageState extends State<TutorialPage> {
  List<WidgetInfo> widgetList = [
    WidgetInfo(
      name: 'Text',
      details: 'Displays text on the screen with customizable styles.',
      exampleCode: 'Text(\n  "Hello, Flutter!",\n  style: TextStyle(\n    fontSize: 24,\n    fontWeight: FontWeight.bold,\n    color: Colors.black,\n  ),\n)',
      imagePath:''),
    WidgetInfo(
      name: 'Container',
      details: 'A basic rectangular visual element.',
      exampleCode: 'Container(\n  color: Colors.blue,\n  width: 100,\n  height: 100,\n  child: Text("Hello, Flutter!"),\n)',
      imagePath:'assets/container.png.png'),
    WidgetInfo(
      name: 'AppBar',
      details: 'A Material Design app bar. It is a toolbar that usually appears at the top of the screen.',
      exampleCode: 'AppBar(\n  title: Text("My App"),\n  actions: [IconButton(icon: Icon(Icons.search), onPressed: () {}),],\n)',
      imagePath:''),
    WidgetInfo(
      name: 'ListView',
      details: 'A scrollable list of widgets arranged in a linear array.',
      exampleCode: 'ListView(\n  children: <Widget>[\n    ListTile(title: Text("Item 1")), ListTile(title: Text("Item 2")), ListTile(title: Text("Item 3")),],\n)',
      imagePath:'assets/listview.png.png'),
    WidgetInfo(
      name: 'ElevatedButton',
      details: 'A Material Design Elevated button. It triggers an action when pressed.',
      exampleCode: 'RaisedButton(\n  onPressed: () {\n    // Add your action here\n  },\n  child: Text("Click Me"),\n)',
      imagePath:''),
    WidgetInfo(
      name: 'IconButton',
      details: 'A Material Design icon button. It triggers an action when pressed.',
      exampleCode: 'IconButton(\n  icon: Icon(Icons.favorite),\n  onPressed: () {\n    // Add your action here\n  },\n)',
      imagePath:''),
    WidgetInfo(
      name: 'TextField',
      details: 'A basic text input field for entering text.',
      exampleCode: 'TextField(\n  decoration: InputDecoration(labelText: "Enter your name"),\n)',
      imagePath:''),
    WidgetInfo(
      name: 'BottomNavigationBar',
      details: 'A bottom navigation bar for switching between different views or pages.',
      exampleCode: 'BottomNavigationBar(\n  items: <BottomNavigationBarItem>[\n    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),\n    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),\n  ],\n  currentIndex: _selectedIndex,\n  onTap: _onItemTapped,\n)',
      imagePath:''),
    WidgetInfo(
      name: 'PopupMenuButton',
      details: 'A button that displays a popup menu when pressed.',
      exampleCode: 'PopupMenuButton(\n  itemBuilder: (BuildContext context) {\n    return <PopupMenuEntry<Options>>[\n      PopupMenuItem<Options>(value: Options.option1, child: Text("Option 1")), \n      PopupMenuItem<Options>(value: Options.option2, child: Text("Option 2")), \n    ];\n  },\n  onSelected: _handleOptionSelect,\n)',
      imagePath:''),
    WidgetInfo(
      name: 'PageView',
      details: 'A scrollable list of widgets that can be swiped horizontally to navigate between pages.',
      exampleCode: 'PageView(\n  children: <Widget>[\n    Container(color: Colors.blue),\n    Container(color: Colors.green),\n    Container(color: Colors.red),\n  ],\n)',
      imagePath:''),
    WidgetInfo(
      name: 'GridView',
      details: 'A scrollable grid of widgets with rows and columns.',
      exampleCode: 'GridView.builder(\n  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),\n  itemBuilder: (BuildContext context, int index) {\n    return Text("Item \$index");\n  },\n)',
      imagePath:'assets/gridview.png.png'),
    WidgetInfo(
      name: 'DropdownButton',
      details: 'A button that displays a dropdown menu when pressed.',
      exampleCode: 'DropdownButton<String>(\n  value: selectedValue,\n  items: <DropdownMenuItem<String>>[\n    DropdownMenuItem<String>(value: "Option 1", child: Text("Option 1")), \n    DropdownMenuItem<String>(value: "Option 2", child: Text("Option 2")), \n  ],\n  onChanged: (String? newValue) {\n    setState(() {\n      selectedValue = newValue!;\n    });\n  },\n)',
      imagePath:''),
    WidgetInfo(
      name: 'IndexedStack',
      details: 'A stack of widgets where only one is visible at a time based on the index.',
      exampleCode: 'IndexedStack(\n  index: currentIndex,\n  children: <Widget>[\n    Text("Page 1"),\n    Text("Page 2"),\n  ],\n)',
      imagePath:''),
    WidgetInfo(
      name: 'Wrap',
      details: 'A widget that wraps its children to the next line when there is no more horizontal space.',
      exampleCode: 'Wrap(\n  children: <Widget>[\n    Chip(label: Text("Tag 1")), \n    Chip(label: Text("Tag 2")), \n    Chip(label: Text("Tag 3")), \n  ],\n)',
      imagePath:''),
    WidgetInfo(
      name: 'Card',
      details: 'A material design card. A card has slightly rounded corners and a shadow.',
      exampleCode: 'Card(\n  child: ListTile(\n    title: Text("Title"),\n    subtitle: Text("Subtitle"),\n    leading: Icon(Icons.account_box),\n    trailing: Icon(Icons.more_vert),\n  ),\n)',
      imagePath:''),
    WidgetInfo(
      name: 'DatePicker',
      details: 'A date picker dialog for selecting dates.',
      exampleCode: 'showDatePicker(\n  context: context,\n  initialDate: selectedDate,\n  firstDate: DateTime(2023),\n  lastDate: DateTime(2024),\n  builder: (BuildContext context, Widget? child) {\n    return Theme(\n      data: ThemeData.dark(),\n      child: child!,\n    );\n  },\n).then((pickedDate) {\n  if (pickedDate != null) {\n    setState(() {\n      selectedDate = pickedDate;\n    });\n  }\n});',
      imagePath:''),
    WidgetInfo(
      name: 'TimePicker',
      details: 'A time picker dialog for selecting times.',
      exampleCode: 'showTimePicker(\n  context: context,\n  initialTime: selectedTime,\n).then((pickedTime) {\n  if (pickedTime != null) {\n    setState(() {\n      selectedTime = pickedTime;\n    });\n  }\n});',
      imagePath:''),

  ];

  int selectedIndex = 0;
 var optionTileColor=Colors.deepPurpleAccent;
 var hoverTileColor=Colors.yellow;
 var hoverVal=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Flutter Widget Guide'),
        shadowColor: Colors.transparent,
      ),
      body: Row(
        children: [
          // Side Menu
          SizedBox(
            width: 200,
            child: ListView.builder(
              itemCount: widgetList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: selectedIndex==index?optionTileColor:Colors.grey.shade50,
                    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(0))
                  ),
                  child: ListTile(
                    title: Text(widgetList[index].name,style: TextStyle(fontWeight:selectedIndex==index? FontWeight.bold:FontWeight.normal,color: selectedIndex==index?Colors.white:Colors.deepPurple.shade900),),
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              },
            ),
          ),

          // Content Area
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width-200,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  Text(
                    widgetList[selectedIndex].name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Visibility(
                      visible: widgetList[selectedIndex].imagePath!='',
                      child: Center(
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width/3)-50,
                          height: (MediaQuery.of(context).size.width/3),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(widgetList[selectedIndex].imagePath,fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widgetList[selectedIndex].details,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Example Code:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width/2+100,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                    ),
                    child: SelectableText(
                      widgetList[selectedIndex].exampleCode,
                      style: const TextStyle(
                        height: 2,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: InkWell(
                      onTap: (){
                        Clipboard.setData(ClipboardData(text: widgetList[selectedIndex].exampleCode));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Code copied to clipboard'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/2+100,
                        height: 40,
                        decoration:   BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  hoverVal?Colors.yellow:  Colors.deepPurpleAccent,
                                  hoverVal?Colors.yellow:   Colors.deepPurple,
                                ],),

                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                        child: const Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.copy,color: Colors.white),
                            Text('   Copy Code',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ],
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetInfo {
  final String name;
  final String details;
  final String exampleCode;
  final String imagePath;

  WidgetInfo({required this.name, required this.details, required this.exampleCode, required this.imagePath});
}
