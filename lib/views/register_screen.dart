import 'package:flutter/material.dart';
import 'package:task_one/components/custom_input_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100,),
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage("https://scontent.fcai19-6.fna.fbcdn.net/v/t1.6435-9/95963345_1097070104025703_5408337112497913856_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=e3f864&_nc_ohc=skC7jfKWdIEAX_cMJI3&_nc_ht=scontent.fcai19-6.fna&oh=00_AfCY93zL529YwMQrd6lHR9iGU_J6A0wyy-f0CE7WE_UXMQ&oe=64352EB3"),
            ),
            const SizedBox(height: 20,),
            const Text(
              "REGISTER SCREEN",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomInputField(
                  txt: "Name",
                prefix: const Icon(Icons.account_box_outlined),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomInputField(
                txt: "Birth date",
                inputType: TextInputType.datetime,
                prefix: const Icon(Icons.date_range),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomInputField(
                txt: "Email",
                prefix: const Icon(Icons.mail_outline),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,top: 15,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue
              ),
              child: MaterialButton(
                  onPressed: (){},
                child: const Text(
                    "Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
