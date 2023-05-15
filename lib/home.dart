import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme/dropdown.dart';
import 'package:theme/pageRoute.dart';


class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  DateTime date = DateTime.now();
  DateTime realdate = DateTime(12,12,12);

  List<String> Times = [
    "9:00 a.m",
    "10:00 a.m",
    "11:00 a.m",
    "12:00 p.m",
    "1:00 p.m",
    "2:00 p.m",
    "3:00 p.m",
    "4:00 p.m",
    "5:00 p.m"
  ];


  Widget Description() {
     return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10),
            child: Text('Select Service',style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w800,
              color: CupertinoColors.systemBlue,
            ),),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Icon(Icons.circle_outlined),
                    title: Text('Family Financial Planning',style: TextStyle(color: Colors.black,fontSize: 16.5),),
                    subtitle: Text('1 hour',style: TextStyle(color: Colors.grey),),
                    trailing: Icon(Icons.info_outline),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Icon(Icons.circle_outlined),
                    title: Text('Investment Planning discussion',style: TextStyle(color: Colors.black,fontSize: 16.5),),
                    subtitle: Text('1 hour',style: TextStyle(color: Colors.grey),),
                    trailing: Icon(Icons.info_outline),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Icon(Icons.circle_outlined),
                    title: Text('Retirement planning',style: TextStyle(color: Colors.black,fontSize: 16.5),),
                    subtitle: Text('45 minutes',style: TextStyle(color: Colors.grey),),
                    trailing: Icon(Icons.info_outline),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Icon(Icons.circle_outlined),
                    title: Text('Family Financial Planning',style: TextStyle(color: Colors.black,fontSize: 18),),
                    subtitle: Text('1 hour',style: TextStyle(color: Colors.grey),),
                    trailing: Icon(Icons.info_outline),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10),
            child: Text('Select Time',style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w800,
              color: CupertinoColors.systemBlue,
            ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white38,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.black12,
                      ),
                      child: Center(child: Text('Choose Date',style: TextStyle(color: Colors.black,fontSize: 18),),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 40,right: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: ElevatedButton(
                      onPressed: () async {
                        DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2024) ,
                        );
                        if(date!=null){
                          setState(() {
                            realdate = date;
                          });
                        }else{
                          return ;
                        }
                      },
                      child: Center(child: Text("${realdate.day}/${realdate.month}/${realdate.year}",style: TextStyle(color: Colors.black,fontSize: 18),),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: GridView.builder(
                      itemCount: Times.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 2
                      ),
                      itemBuilder: (context , index){
                        return Container(
                          height: 70,
                          width: 110.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12,
                          ),
                          child: Center(child:Text(Times[index],style: TextStyle(color: CupertinoColors.systemBlue,fontSize: 15,fontWeight: FontWeight.w500),)),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.black12,
                      ),
                      child:  ListTile(
                        leading: Icon(Icons.info),
                        title: Text('All Times are in',style: TextStyle(color: Colors.black,fontSize: 15),),
                        subtitle: Text('Central Time (US & Canada)',style: TextStyle(color: Colors.black,fontSize: 18),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,top: 10),
            child: Text('Add yours details',style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w800,
              color: CupertinoColors.systemBlue,
            ),),
          ),

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Text('Name',style: TextStyle(color: Colors.black,fontSize: 18),),
                    title: TextField(decoration: InputDecoration(labelText: 'Enter your name',)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child: ListTile(
                    leading: Text('Email',style: TextStyle(color: Colors.black,fontSize: 18),),
                    title: TextField(decoration: InputDecoration(labelText: 'Enter your Email',)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child: ListTile(
                    leading: Text('Phone',style: TextStyle(color: Colors.black,fontSize: 18),),
                    title: TextField(decoration: InputDecoration(labelText: 'Enter your Phone Number',)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.black12,
                  ),
                  child:  ListTile(
                    leading: Icon(Icons.question_mark_sharp),
                    title: Text('Please let us know if you have any special requests.',style: TextStyle(color: CupertinoColors.systemBlue,fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.black12,
              ),
              child: Center(child: Text('By clicking below you agree to these Privacy Policies.',style: TextStyle(color: Colors.black,fontSize: 15),textAlign: TextAlign.center,)),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            height: 70,
            margin: EdgeInsets.only(left: 30,right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.deepOrange,
            ),
            child: InkWell(
              onTap: (){},
              child: Center(child: Text('Book Now',style: TextStyle(color: Colors.white,fontSize: 22),)),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }



  Widget MyappBar(){
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(child: Padding(
              padding: EdgeInsets.all(16),
            child: Text('Y&A',style: TextStyle(fontSize: 20,color: CupertinoColors.systemBlue,fontWeight: FontWeight.w600),),
           ),
          ),

          Container(child: Padding(
            padding: EdgeInsets.all(16),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(CustomPageRoute(direction: AxisDirection.down,child: Dropdown()));
              },
              child: Row(
                children: [
                  Text('__________________',style: TextStyle(fontSize: 20,color: Colors.blue),),
                  Icon(Icons.search,color: Colors.blueAccent,)
                ],
              ),
            ),
           ),
          ),

          Container(child: Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.menu,color: CupertinoColors.systemBlue,),
          ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   height: MediaQuery.of(context).size.height,
      //   child: CustomScrollView(
      //     slivers: [
      //
      //       SliverAppBar(
      //         pinned: true,
      //         backgroundColor: Colors.deepPurple[100],
      //         expandedHeight: 300,
      //         flexibleSpace: FlexibleSpaceBar(
      //           background: Container(
      //             color: Colors.red,
      //             margin: EdgeInsets.only(left: 20,right: 20,top: 100),
      //           ),
      //           title: Text('cbjbcjbdjjn',style: TextStyle(color: Colors.white),),
      //           titlePadding: EdgeInsets.only(left: 35,right: 170,bottom: 20),
      //         ),
      //
      //
      //       ),
      //       SliverToBoxAdapter(
      //         child: Description(),
      //       ),
      //     ],
      //   )
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150.0,
            alignment: Alignment.bottomCenter,
            child: MyappBar(),
          ),
          Expanded(
            child: Container(
              height: 120.0,
              alignment: Alignment.center,
              child: Description(),
            ),
          ),
        ],
      ),
    );
  }
}

