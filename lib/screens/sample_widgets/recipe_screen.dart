import 'package:flutter/material.dart';

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Recipe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);
    final double screenWidth = screenSize.size.width;
    final double screenHeight = screenSize.size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: screenWidth,
              child: Image.network(
                "https://i.lezzet.com.tr/images-xxlarge-recipe/anne-koftesi-ve-patates-kizartmasi-f101b35b-f7b8-47a5-b61f-6f962be5666f.jpg",fit: BoxFit.cover,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: SizedBox(height: screenWidth/8,child: ElevatedButton(onPressed: (){}, child: MyTextWidget("Like",screenWidth/25),style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.orange),),))),
                Expanded(child: SizedBox(height:screenWidth/8,child: ElevatedButton(onPressed: (){}, child: MyTextWidget("Comment",screenWidth/25,),style:ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red),),))),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(screenHeight/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\nMeatball\n",
                      style:TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth/20,
                      )),
                  Row(
                    children: [
                      MyTextWidget("Suitable for Grilling",screenWidth/25),
                      Spacer(),
                      MyTextWidget("8 Agust",screenWidth/25),
                    ],),
                  Padding(padding: EdgeInsets.all(screenHeight/100),child: MyTextWidget("Lorem Ipsum is simply dummy text of the printing and typesetting industry.  scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", screenWidth/25))

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  String content;
  double fontSize;


  MyTextWidget(this.content, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(content,style: TextStyle(fontSize: fontSize,),);
  }
}

