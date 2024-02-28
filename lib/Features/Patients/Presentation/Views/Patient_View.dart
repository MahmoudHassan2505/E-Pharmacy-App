import 'package:flutter/material.dart';
import 'package:gppharmacy/Features/Auth/Presentation/widgets/Auth_Text_Field.dart';
import 'package:gppharmacy/Features/Auth/Presentation/widgets/Custom_Button.dart';
import 'package:gppharmacy/Utils/AppStyles.dart';
import 'package:gppharmacy/Utils/Color_Maneger.dart';
import 'package:gppharmacy/Utils/Widgets/CustomDropDownButton.dart';
import 'package:gppharmacy/generated/l10n.dart';

class PatientView extends StatefulWidget {
  const PatientView({super.key});

  @override
  State<PatientView> createState() => _PatientViewState();
}

class _PatientViewState extends State<PatientView> {
  String wayOfSearch = 'الرقم القومي للطالب';
  String? typeOfDisease;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).HsrElkolyat,
            style: AppStyles.styleBold28(context),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomDropDownButton(
                  isExpanded: true,
                  items: const [
                    'الرقم القومي للطالب',
                    'اسم الطالب',
                  ],
                  hint: 'الرقم القومي للطالب',
                  onChanged: (value) {
                    setState(() {
                      wayOfSearch = value!;
                    });
                  },
                  value: wayOfSearch,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: CustomDropDownButton(
                  isExpanded: true,
                  items: const ['مرض مزمن', 'مرض غير مزمن'],
                  hint: 'اختر نوع المرض',
                  onChanged: (value) {
                    setState(() {
                      typeOfDisease = value;
                    });
                  },
                  value: typeOfDisease,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AuthTextField(
                hintText: 'ادخل $wayOfSearch',
                hintStyle: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.grey)),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: CustomButton(
              ontap: () {},
              text: S.of(context).Search,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              decoration: BoxDecoration(
                color: ColorManeger.lightPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'عذرا حدث خطا ما يرجي المحاوله لاحقا',
                  style: AppStyles.styleBold16(context),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}