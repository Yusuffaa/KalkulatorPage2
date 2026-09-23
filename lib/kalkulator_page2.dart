import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/controller/kalkulator_controller2.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class KalkulatorPage2 extends StatelessWidget {
    KalkulatorPage2({super.key});

    final controller = Get.put(KalkulatorController());
  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          MyTextfield(
            myHint: "input angka 1",
            txtController: txtangka1,
            radius: 10,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          MyTextfield(
            myHint: "input angka 2",
            txtController: txtangka2,
            radius: 10,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.tambah(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 184, 12, 0),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("+",style: TextStyle(fontSize: 20,),),
              ),
              ElevatedButton(
                 onPressed: () {
                  controller.kurang(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 232, 2),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("-",style: TextStyle(fontSize: 20,),),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.kali(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("X",style: TextStyle(fontSize: 20,),),
              ),

              ElevatedButton(
                onPressed: () {
                  controller.bagi(
                    double.parse(txtangka1.text.toString()),
                    double.parse(txtangka2.text.toString()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 4, 80, 179),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("/",style: TextStyle(fontSize: 20),),
              ),

            ],
          ),
                  
          Obx(
            () => Text(
              controller.hasilHitung.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}