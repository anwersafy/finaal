import 'package:flutterexcel/componet/componet.dart';
import 'package:flutter/material.dart';
import '../Excel helper/Excel_service.dart';

import '../storage_helper/get_storage_helper.dart';
import '../utils/app_string.dart';
import 'Quize_componet.dart';

Widget customDropMenu({
  required TextEditingController controller,
  required String label,
  required String dataValue,
  required String cell,
}) {
  return Column(
    children: [
      Text(label),
      DropdownMenu(
        controller: controller,
        onSelected: (value) async {
          if (value != null) {
            GetStorageHelper.writeData(dataValue, value);
            await ExcelHelper.updateCell('CLOs', cell, value.toString());
          }
        },
        initialSelection: GetStorageHelper.readData(dataValue),
        width: 95,
        dropdownMenuEntries: [
          DropdownMenuEntry(
            value: 'Yes',
            label: 'Yes',
          ),
          DropdownMenuEntry(
            value: 'No',
            label: ' No',
          ),
        ],
      )
    ],
  );
}

Widget customCell({
  required TextEditingController controller,
  required String label,
  required String dataValue,
  required String cell,
  required String sheetName,
  required int index,
}) {
  return Column(
    children: [
      Text(label),
      Container(
        width: 40,
        height: 20,
        child: TextFormField(
          controller: controller,
          onChanged: (value) async {
            if (value != null) {
              GetStorageHelper.writeData(dataValue, value);
              await ExcelHelper.updateCell(sheetName, cell, value);
            }
          },
          onFieldSubmitted: (value) async {
            if(value !=null && sheetName==Quizzes){
             // Quizes_total_marks_controller![index].text= calculateTotalQ(index).toString();
             //  Quiz1_total_controller![index]=calculateTotalQuize1(index);
             //  Quiz2_total_controller![index]=calculateTotalQuize2(index);
             //  Quiz3_total_controller![index]=calculateTotalQuize3(index);
             //  Quiz4_total_controller![index]=calculateTotalQuize4(index);
            }
                        },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      )
    ],
  );
}
