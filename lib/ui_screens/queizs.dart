import 'package:data_table_2/data_table_2.dart';
import 'package:flutterexcel/componet/componet.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../componet/Quize_componet.dart';
import '../componet/widget.dart';
import '../storage_helper/get_storage_helper.dart';
import '../utils/app_string.dart';
import '../utils/constant.dart';

/// Example without datasource
class Quiz extends StatefulWidget {
   Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {


  @override
  void initState() {
   //initQuizzes();
    initQizeController();
    //calculateTotalQuizes();
   initScreen();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //setColumnSizeRatios(1, 2);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 0.5,
          horizontalMargin: 10,
          minWidth: 600,
          smRatio: 0.75,
          lmRatio: 1.5,
          columns: const [
            DataColumn2(
              fixedWidth: 22  ,
              size: ColumnSize.S,
              label: Center(
                child: Text('S.No',style:
                TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                )
                  ,),
              ),
            ),
            DataColumn2(
              fixedWidth: 40,
              label: Text('    STUDENT ID'),
            ),
            DataColumn2(
              fixedWidth: 135,
              label: Text('STUDENT NAME'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-1'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-2'),
            ),
            DataColumn2(
              size: ColumnSize.S,


              label: Text('Quiz-3'),
            ),
            DataColumn2(

              size: ColumnSize.S,


              label: Text('Quiz-4'),
            ),
            DataColumn2(
              fixedWidth: 38,

              size: ColumnSize.S,
              label: Text('Total Marks Obtained',style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
              ),),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('1',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('2',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('3',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            DataColumn2(
              fixedWidth: 38,
              label: Center(
                child: Text('4',style: TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),




          ],
          rows:
          List<DataRow>.generate(

              total,
                  (index) => DataRow(cells: [
                DataCell(Text(  (index + 1).toString())),
                DataCell(
                  TextFormField(
                    controller: StudentIdController[index],

                    decoration: InputDecoration(
                      hintText: '  ID',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  TextFormField(
                    controller: StudentNameController[index],

                    decoration: InputDecoration(
                      hintText: '  Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                DataCell(
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customCell(
                          controller: Quiz1_Q1_controller[index],
                          label: 'Q1',
                          sheetName: Quizzes,
                          cell: 'F${(31+index).toString()}',
                          dataValue: 'Quiz1_Q1_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz1_Q2_controller[index],
                          label: 'Q2',
                          sheetName: Quizzes,
                          cell: 'G${(31+index).toString()}',
                          dataValue: 'Quiz1_Q2_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz1_Q3_controller[index],
                          label: 'Q3',
                          sheetName: Quizzes,
                          cell: 'H${(31+index).toString()}',
                          dataValue: 'Quiz1_Q3_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz1_Q4_controller[index],
                          label: 'Q4',
                          sheetName: Quizzes,
                          cell: 'I${(31+index).toString()}',
                          dataValue: 'Quiz1_Q4_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz1_Q5_controller[index],
                          label: 'Q5',
                          sheetName: Quizzes,
                          cell: 'J${(31+index).toString()}',
                          dataValue: 'Quiz1_Q5_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),



                      ],
                    ),
    )

                ),
                DataCell(
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customCell(
                          controller: Quiz2_Q1_controller[index],
                          label: 'Q1',
                          sheetName: Quizzes,
                          cell: 'K${(31+index).toString()}',
                          dataValue: 'Quiz2_Q1_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz2_Q2_controller[index],
                          label: 'Q2',
                          sheetName: Quizzes,
                          cell: 'L${(31+index).toString()}',
                          dataValue: 'Quiz2_Q2_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz2_Q3_controller[index],
                          label: 'Q3',
                          sheetName: Quizzes,
                          cell: 'M${(31+index).toString()}',
                          dataValue: 'Quiz2_Q3_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz2_Q4_controller[index],
                          label: 'Q4',
                          sheetName: Quizzes,
                          cell: 'N${(31+index).toString()}',
                          dataValue: 'Quiz2_Q4_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz2_Q5_controller[index],
                          label: 'Q5',
                          sheetName: Quizzes,
                          cell: 'O${(31+index).toString()}',
                          dataValue: 'Quiz2_Q5_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),



                      ],
                    ),
                  ),

                ),
                DataCell(
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customCell(
                          controller: Quiz3_Q1_controller[index],
                          label: 'Q1',
                          sheetName: Quizzes,
                          cell: 'P${(31+index).toString()}',
                          dataValue: 'Quiz3_Q1_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz3_Q2_controller[index],
                          label: 'Q2',
                          sheetName: Quizzes,
                          cell: 'Q${(31+index).toString()}',
                          dataValue: 'Quiz3_Q2_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz3_Q3_controller[index],
                          label: 'Q3',
                          sheetName: Quizzes,
                          cell: 'R${(31+index).toString()}',
                          dataValue: 'Quiz3_Q3_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz3_Q4_controller[index],
                          label: 'Q4',
                          sheetName: Quizzes,
                          cell: 'S${(31+index).toString()}',
                          dataValue: 'Quiz3_Q4_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz3_Q5_controller[index],
                          label: 'Q5',
                          sheetName: Quizzes,
                          cell: 'T${(31+index).toString()}',
                          dataValue: 'Quiz3_Q5_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),



                      ],
                    ),
                  ),

                ),
                DataCell(
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        customCell(
                          controller: Quiz4_Q1_controller[index],
                          label: 'Q1',
                          sheetName: Quizzes,
                          cell: 'U${(31+index).toString()}',
                          dataValue: 'Quiz4_Q1_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz4_Q2_controller[index],
                          label: 'Q2',
                          sheetName: Quizzes,
                          cell: 'V${(31+index).toString()}',
                          dataValue: 'Quiz4_Q2_$index',
                          index: index,
                        ),

                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz4_Q3_controller[index],
                          label: 'Q3',
                          sheetName: Quizzes,
                          cell: 'W${(31+index).toString()}',
                          dataValue: 'Quiz4_Q3_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz4_Q4_controller[index],
                          label: 'Q4',
                          sheetName: Quizzes,
                          cell: 'X${(31+index).toString()}',
                          dataValue: 'Quiz4_Q4_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),
                        customCell(
                          controller: Quiz4_Q5_controller[index],
                          label: 'Q5',
                          sheetName: Quizzes,
                          cell: 'Y${(31+index).toString()}',
                          dataValue: 'Quiz4_Q5_$index',
                          index: index,
                        ),
                        SizedBox(width: 10,),



                      ],
                    ),
                  ),

                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller: Quizes_total_marks_controller![index],

                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 40,
                    child: TextFormField(
                      controller:Quiz1_total_controller[index],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller:Quiz2_total_controller[index],

                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller:Quiz3_total_controller[index],

                    ),
                  ),
                ),
                DataCell(
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      controller:Quiz4_total_controller[index],

                    ),
                  ),
                ),



              ]))),
    );
  }
}
