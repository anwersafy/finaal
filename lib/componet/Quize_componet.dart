
import 'package:flutterexcel/Excel%20helper/Excel_service.dart';
import 'package:flutter/material.dart';

import '../storage_helper/get_storage_helper.dart';
import '../utils/constant.dart';

List<TextEditingController> Quiz1_Q1_controller = [];
List<TextEditingController> Quiz1_Q2_controller = [];
List<TextEditingController> Quiz1_Q3_controller = [];
List<TextEditingController> Quiz1_Q4_controller = [];
List<TextEditingController> Quiz1_Q5_controller = [];

List<TextEditingController> Quiz2_Q1_controller = [];
List<TextEditingController> Quiz2_Q2_controller = [];
List<TextEditingController> Quiz2_Q3_controller = [];
List<TextEditingController> Quiz2_Q4_controller = [];
List<TextEditingController> Quiz2_Q5_controller = [];

List<TextEditingController> Quiz3_Q1_controller = [];
List<TextEditingController> Quiz3_Q2_controller = [];
List<TextEditingController> Quiz3_Q3_controller = [];
List<TextEditingController> Quiz3_Q4_controller = [];
List<TextEditingController> Quiz3_Q5_controller = [];

List<TextEditingController> Quiz4_Q1_controller = [];
List<TextEditingController> Quiz4_Q2_controller = [];
List<TextEditingController> Quiz4_Q3_controller = [];
List<TextEditingController> Quiz4_Q4_controller = [];
List<TextEditingController> Quiz4_Q5_controller = [];

List<TextEditingController> Quiz1_total_controller = [];
List<TextEditingController> Quiz2_total_controller = [];
List<TextEditingController> Quiz3_total_controller = [];
List<TextEditingController> Quiz4_total_controller = [];
List<TextEditingController> Quizes_total_marks_controller = [];


initQizeController(){
  Quiz1_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_Q1_$index')));
  Quiz1_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_Q2_$index')));
  Quiz1_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_Q3_$index')));
  Quiz1_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_Q4_$index')));
  Quiz1_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_Q5_$index')));
  Quiz2_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_Q1_$index')));
  Quiz2_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_Q2_$index')));
  Quiz2_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_Q3_$index')));
  Quiz2_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_Q4_$index')));
  Quiz2_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_Q5_$index')));
  Quiz3_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_Q1_$index')));
  Quiz3_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_Q2_$index')));
  Quiz3_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_Q3_$index')));
  Quiz3_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_Q4_$index')));
  Quiz3_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_Q5_$index')));
  Quiz4_Q1_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_Q1_$index')));
  Quiz4_Q2_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_Q2_$index')));
  Quiz4_Q3_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_Q3_$index')));
  Quiz4_Q4_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_Q4_$index')));
  Quiz4_Q5_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_Q5_$index')));
  Quiz1_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize1_total_$index')));
  Quiz2_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize2_total_$index')));
  Quiz3_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize3_total_$index')));
  Quiz4_total_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quize4_total_$index')));
  Quizes_total_marks_controller = List.generate(total, (index) => TextEditingController(text: GetStorageHelper.readData('Quizes_total_marks_$index')));

}



// initQuizeControllers(){
//   for (int i = 0; i < total; i++) {
//     Quiz1_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize1_Q1_$i')));
//     Quiz1_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize1_Q2_$i')));
//     Quiz1_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize1_Q3_$i')));
//     Quiz1_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize1_Q4_$i')));
//     Quiz1_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize1_Q5_$i')));
//     Quiz2_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize2_Q1_$i')));
//     Quiz2_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize2_Q2_$i')));
//     Quiz2_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize2_Q3_$i')));
//     Quiz2_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize2_Q4_$i')));
//     Quiz2_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize2_Q5_$i')));
//     Quiz3_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize3_Q1_$i')));
//     Quiz3_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize3_Q2_$i')));
//     Quiz3_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize3_Q3_$i')));
//     Quiz3_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize3_Q4_$i')));
//     Quiz3_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize3_Q5_$i')));
//     Quiz4_Q1_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize4_Q1_$i')));
//     Quiz4_Q2_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize4_Q2_$i')));
//     Quiz4_Q3_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize4_Q3_$i')));
//     Quiz4_Q4_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize4_Q4_$i')));
//     Quiz4_Q5_controller.add(TextEditingController(text: GetStorageHelper.readData('Quize4_Q5_$i')));
//
//
//   }
//
//
// }




CalculateTotalQuizMark(){
  for (int i = 0; i < total; i++) {
    // if (Quiz1_Q1_controller[i].text.isEmpty) {
    //   Quiz1_Q1_controller[i].text = '0';
    // }
    // if (Quiz1_Q2_controller[i].text.isEmpty) {
    //   Quiz1_Q2_controller[i].text = '0';
    // }
    // if (Quiz1_Q3_controller[i].text.isEmpty) {
    //   Quiz1_Q3_controller[i].text = '0';
    // }
    // if (Quiz1_Q4_controller[i].text.isEmpty) {
    //   Quiz1_Q4_controller[i].text = '0';
    // }


    Quiz1_total_controller!.add(TextEditingController(text: (int.parse(Quiz1_Q1_controller[i].text)+int.parse(Quiz1_Q2_controller[i].text)+int.parse(Quiz1_Q3_controller[i].text)+int.parse(Quiz1_Q4_controller[i].text)+int.parse(Quiz1_Q5_controller[i].text)).toString()));
    Quiz2_total_controller!.add(TextEditingController(text: (int.parse(Quiz2_Q1_controller[i].text)+int.parse(Quiz2_Q2_controller[i].text)+int.parse(Quiz2_Q3_controller[i].text)+int.parse(Quiz2_Q4_controller[i].text)+int.parse(Quiz2_Q5_controller[i].text)).toString()));
    Quiz3_total_controller!.add(TextEditingController(text: (int.parse(Quiz3_Q1_controller[i].text)+int.parse(Quiz3_Q2_controller[i].text)+int.parse(Quiz3_Q3_controller[i].text)+int.parse(Quiz3_Q4_controller[i].text)+int.parse(Quiz3_Q5_controller[i].text)).toString()));
    Quiz4_total_controller!.add(TextEditingController(text: (int.parse(Quiz4_Q1_controller[i].text)+int.parse(Quiz4_Q2_controller[i].text)+int.parse(Quiz4_Q3_controller[i].text)+int.parse(Quiz4_Q4_controller[i].text)+int.parse(Quiz4_Q5_controller[i].text)).toString()));
    Quizes_total_marks_controller!.add(TextEditingController(text: (int.parse(Quiz1_total_controller![i].text)+int.parse(Quiz2_total_controller![i].text)+int.parse(Quiz3_total_controller![i].text)+int.parse(Quiz4_total_controller![i].text)).toString()));

  }
  GetStorageHelper.writeData('Quize1_total', Quiz1_total_controller);
  GetStorageHelper.writeData('Quize2_total', Quiz2_total_controller);
  GetStorageHelper.writeData('Quize3_total', Quiz3_total_controller);
  GetStorageHelper.writeData('Quize4_total', Quiz4_total_controller);
  GetStorageHelper.writeData('Quizes_total_marks', Quizes_total_marks_controller);

}

getTotalQuizMark(){
  Quiz1_total_controller = GetStorageHelper.readData('Quize1_total');
  Quiz2_total_controller = GetStorageHelper.readData('Quize2_total');
  Quiz3_total_controller = GetStorageHelper.readData('Quize3_total');
  Quiz4_total_controller = GetStorageHelper.readData('Quize4_total');
  Quizes_total_marks_controller = GetStorageHelper.readData('Quizes_total_marks');
}

calculateTotalQ(int i){
  Quiz1_total_controller![i]=TextEditingController(text: (int.parse(Quiz1_Q1_controller[i].text??'0')+int.parse(Quiz1_Q2_controller[i].text??'0')+int.parse(Quiz1_Q3_controller[i].text??'0')+int.parse(Quiz1_Q4_controller[i].text??'0')+int.parse(Quiz1_Q5_controller[i].text??'0')).toString());
  Quiz2_total_controller![i]=TextEditingController(text: (int.parse(Quiz2_Q1_controller[i].text??'0')+int.parse(Quiz2_Q2_controller[i].text??'0')+int.parse(Quiz2_Q3_controller[i].text??'0')+int.parse(Quiz2_Q4_controller[i].text??'0')+int.parse(Quiz2_Q5_controller[i].text??'0')).toString());
  Quiz3_total_controller![i]=TextEditingController(text: (int.parse(Quiz3_Q1_controller[i].text??'0')+int.parse(Quiz3_Q2_controller[i].text??'0')+int.parse(Quiz3_Q3_controller[i].text??'0')+int.parse(Quiz3_Q4_controller[i].text??'0')+int.parse(Quiz3_Q5_controller[i].text??'0')).toString());
  Quiz4_total_controller![i]=TextEditingController(text: (int.parse(Quiz4_Q1_controller[i].text??'0')+int.parse(Quiz4_Q2_controller[i].text??'0')+int.parse(Quiz4_Q3_controller[i].text??'0')+int.parse(Quiz4_Q4_controller[i].text??'0')+int.parse(Quiz4_Q5_controller[i].text??'0')).toString());
  Quizes_total_marks_controller[i]=TextEditingController(text: (int.parse(Quiz1_total_controller![i].text??'0')+int.parse(Quiz2_total_controller![i].text??'0')+int.parse(Quiz3_total_controller![i].text??'0')+int.parse(Quiz4_total_controller![i].text??'0')).toString());
  GetStorageHelper.writeData('Quize1_total', Quiz1_total_controller);
  GetStorageHelper.writeData('Quize2_total', Quiz2_total_controller);
  GetStorageHelper.writeData('Quize3_total', Quiz3_total_controller);
  GetStorageHelper.writeData('Quize4_total', Quiz4_total_controller);
  GetStorageHelper.writeData('Quizes_total_marks', Quizes_total_marks_controller);
return Quizes_total_marks_controller[i];

}
calculateTotalQuize1(int i ){
  Quiz1_total_controller[i+1]=TextEditingController(text: (int.parse(Quiz1_Q1_controller[i].text??'0')+int.parse(Quiz1_Q2_controller[i].text??'0')+int.parse(Quiz1_Q3_controller[i].text??'0')+int.parse(Quiz1_Q4_controller[i].text??'0')+int.parse(Quiz1_Q5_controller[i].text??'0')).toString());
  return Quiz1_total_controller[i+1];
}
calculateTotalQuize2(int i){
  Quiz2_total_controller[i]=TextEditingController(text: (int.parse(Quiz2_Q1_controller[i].text??'0')+int.parse(Quiz2_Q2_controller[i].text??'0')+int.parse(Quiz2_Q3_controller[i].text??'0')+int.parse(Quiz2_Q4_controller[i].text??'0')+int.parse(Quiz2_Q5_controller[i].text??'0')).toString());
  return Quiz2_total_controller[i];
}
calculateTotalQuize3(int i){
Quiz3_total_controller[i]=TextEditingController(text: (int.parse(Quiz3_Q1_controller[i].text==null|| Quiz3_Q1_controller[i].text==''?'0':Quiz3_Q1_controller[i].text)
    +int.parse(Quiz3_Q2_controller[i].text==null|| Quiz3_Q2_controller[i].text==''?'0':Quiz3_Q2_controller[i].text)
    +int.parse(Quiz3_Q3_controller[i].text==null|| Quiz3_Q3_controller[i].text==''?'0':Quiz3_Q3_controller[i].text)
+int.parse(Quiz3_Q4_controller[i].text==null|| Quiz3_Q4_controller[i].text==''?'0':Quiz3_Q4_controller[i].text) +int.parse(Quiz3_Q5_controller[i]==null|| Quiz3_Q5_controller[i].text==''?'0':Quiz3_Q5_controller[i].text)).toString());
      return Quiz3_total_controller[i];
}
calculateTotalQuize4(int i){
  Quiz4_total_controller[i]=TextEditingController(text: (int.parse(Quiz4_Q1_controller[i].text??'0')+int.parse(Quiz4_Q2_controller[i].text??'0')+int.parse(Quiz4_Q3_controller[i].text??'0')+int.parse(Quiz4_Q4_controller[i].text??'0')+int.parse(Quiz4_Q5_controller[i].text??'0')).toString());
  return Quiz4_total_controller[i];
}


CalculatequizeTotaLlRow( i){
  // // for (int j = 0; j < total; i++) {
  // //   if (Quiz1_Q1_controller[j].text.isEmpty) {
  // //     Quiz1_Q1_controller[j].text = '0';
  // //   }
  // //   if (Quiz1_Q2_controller[j].text.isEmpty) {
  // //       Quiz1_Q2_controller[j].text = '0';
  // //   }
  // //   if (Quiz1_Q3_controller[j].text.isEmpty) {
  // //       Quiz1_Q3_controller[j].text = '0';
  // //   }
  // //   if (Quiz1_Q4_controller[j].text.isEmpty) {
  // //       Quiz1_Q4_controller[j].text = '0';
  // //   }
  // // }
  // if(i.isStirng) {
  //   Quiz1_total_controller!.add(TextEditingController(
  //       text: (int.parse(Quiz1_Q1_controller[i].text) +
  //           int.parse(Quiz1_Q2_controller[i].text) +
  //           int.parse(Quiz1_Q3_controller[i].text) +
  //           int.parse(Quiz1_Q4_controller[i].text) +
  //           int.parse(Quiz1_Q5_controller[i].text)).toString()));
  //   Quiz2_total_controller!.add(TextEditingController(
  //       text: (int.parse(Quiz2_Q1_controller[i].text) +
  //           int.parse(Quiz2_Q2_controller[i].text) +
  //           int.parse(Quiz2_Q3_controller[i].text) +
  //           int.parse(Quiz2_Q4_controller[i].text) +
  //           int.parse(Quiz2_Q5_controller[i].text)).toString()));
  //   Quiz3_total_controller!.add(TextEditingController(
  //       text: (int.parse(Quiz3_Q1_controller[i].text) +
  //           int.parse(Quiz3_Q2_controller[i].text) +
  //           int.parse(Quiz3_Q3_controller[i].text) +
  //           int.parse(Quiz3_Q4_controller[i].text) +
  //           int.parse(Quiz3_Q5_controller[i].text)).toString()));
  //   Quiz4_total_controller!.add(TextEditingController(
  //       text: (int.parse(Quiz4_Q1_controller[i].text) +
  //           int.parse(Quiz4_Q2_controller[i].text) +
  //           int.parse(Quiz4_Q3_controller[i].text) +
  //           int.parse(Quiz4_Q4_controller[i].text) +
  //           int.parse(Quiz4_Q5_controller[i].text)).toString()));
  //   Quizes_total_marks_controller!.add(TextEditingController(
  //       text: (int.parse(Quiz1_total_controller![i].text) +
  //           int.parse(Quiz2_total_controller![i].text) +
  //           int.parse(Quiz3_total_controller![i].text) +
  //           int.parse(Quiz4_total_controller![i].text)).toString()));
  // }

    Quiz1_total_controller![i].text = (
        int.parse(Quiz1_Q1_controller[i].text!=null ? Quiz1_Q1_controller[i].text:'0') +
        int.parse(Quiz1_Q2_controller[i].text !=null ? Quiz1_Q2_controller[i].text:'0') +

        int.parse(Quiz1_Q3_controller[i].text !=null ? Quiz1_Q3_controller[i].text:'0') +
        int.parse(Quiz1_Q4_controller[i].text !=null ? Quiz1_Q4_controller[i].text:'0') +
        int.parse(Quiz1_Q5_controller[i].text !=null ? Quiz1_Q5_controller[i].text:'0')).toString();
    Quiz2_total_controller![i].text = (
        int.parse(Quiz2_Q1_controller[i].text !=null ? Quiz2_Q1_controller[i].text:'0') +
        int.parse(Quiz2_Q2_controller[i].text !=null ? Quiz2_Q2_controller[i].text:'0') +
        int.parse(Quiz2_Q3_controller[i].text !=null ? Quiz2_Q3_controller[i].text:'0') +
        int.parse(Quiz2_Q4_controller[i].text !=null ? Quiz2_Q4_controller[i].text:'0') +
        int.parse(Quiz2_Q5_controller[i].text !=null ? Quiz2_Q5_controller[i].text:'0')).toString();
    Quiz3_total_controller![i].text = (
        int.parse(Quiz3_Q1_controller[i].text !=null ? Quiz3_Q1_controller[i].text:'0') +
        int.parse(Quiz3_Q2_controller[i].text !=null ? Quiz3_Q2_controller[i].text:'0') +
        int.parse(Quiz3_Q3_controller[i].text !=null ? Quiz3_Q3_controller[i].text:'0') +
        int.parse(Quiz3_Q4_controller[i].text !=null ? Quiz3_Q4_controller[i].text:'0') +
        int.parse(Quiz3_Q5_controller[i].text !=null ? Quiz3_Q5_controller[i].text:'0')).toString();
    Quiz4_total_controller![i].text = (
        int.parse(Quiz4_Q1_controller[i].text !=null ? Quiz4_Q1_controller[i].text:'0') +
        int.parse(Quiz4_Q2_controller[i].text !=null ? Quiz4_Q2_controller[i].text:'0') +
        int.parse(Quiz4_Q3_controller[i].text !=null ? Quiz4_Q3_controller[i].text:'0') +
        int.parse(Quiz4_Q4_controller[i].text !=null ? Quiz4_Q4_controller[i].text:'0') +
        int.parse(Quiz4_Q5_controller[i].text !=null ? Quiz4_Q5_controller[i].text:'0')).toString();
    Quizes_total_marks_controller![i].text = (
        int.parse(Quiz1_total_controller![i].text !=null ? Quiz1_total_controller![i].text:'0') +
        int.parse(Quiz2_total_controller![i].text !=null ? Quiz2_total_controller![i].text:'0') +
        int.parse(Quiz3_total_controller![i].text !=null ? Quiz3_total_controller![i].text:'0') +
        int.parse(Quiz4_total_controller![i].text !=null ? Quiz4_total_controller![i].text:'0')).toString();






}


addOnSumit(index , value, controller){
  if(value ==null || value==''|| value.isEmpty){
    value='0';
  }
  controller[index].text=value;
  var pre_total=GetStorageHelper.readData('Quizes_total_marks_$index');
  if(pre_total==null || pre_total==''|| pre_total.isEmpty){
    pre_total='0';
  }
  controller[index].text=(int.parse(controller[index].text)+int.parse(pre_total)).toString();


  GetStorageHelper.writeData('Quizes_total_marks_$index', controller[index].text);
  CalculateTotalQuizMark();


}


initQuizzes() async {
  initQizeController();
  // CalculateTotalQuizMark();
 // await GetTotalFromExcel();
}
var cellindex;
GetTotalFromExcel() async{
  for (int i = 0; i < total; i++) {
    for(int j=0; j< 5;j++){
      cellindex=ExcelHelper.convertToCellReference(j+26, i+31);
      await ExcelHelper.readCell('Quizzes', cellindex).then((value) {
        if(value ==null || value==''|| value.isEmpty){
          value='0';
        }
        if(j==0){
          Quizes_total_marks_controller[i].text=value;
          GetStorageHelper.writeData('Quizes_total_marks_$i', Quizes_total_marks_controller[i].text);
        }
        if(j==1){
          Quiz1_total_controller![i].text=value;
          GetStorageHelper.writeData('Quize1_total_$i', Quiz1_total_controller![i].text);

        }
        if(j==2){
          Quiz2_total_controller![i].text=value;
          GetStorageHelper.writeData('Quize2_total_$i', Quiz2_total_controller![i].text);
        }
        if(j==3){
          Quiz3_total_controller![i].text=value;
          GetStorageHelper.writeData('Quize3_total_$i', Quiz3_total_controller![i].text);
        }
        if(j==4){
          Quiz4_total_controller![i].text=value;
          GetStorageHelper.writeData('Quize4_total_$i', Quiz4_total_controller![i].text);
        }

      });

    }
  }

}

