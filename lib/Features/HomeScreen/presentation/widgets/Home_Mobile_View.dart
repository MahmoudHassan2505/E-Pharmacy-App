import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gppharmacy/Features/HomeScreen/Maneger/Home_Cubit.dart';
import 'package:gppharmacy/Features/HomeScreen/Maneger/Home_Cubit_State.dart';

import 'package:gppharmacy/Features/HomeScreen/presentation/widgets/Custom_Drawer.dart';
import 'package:gppharmacy/Features/HomeScreen/presentation/widgets/Home_App_Bar.dart';
import 'package:gppharmacy/Features/Patients/Presentation/Views/Add_New_Patient.dart';
import 'package:gppharmacy/Features/Patients/Presentation/Views/Patient_View.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/Mobile3ohdaElm5zn.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/MobileHsrElkolyat.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/MobileImports.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/MobileSrfEladwya.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/Mobile_Hsr_Elmabe3at.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/Views/Mobile_Medicines.dart';
import 'package:gppharmacy/Features/StoresBody/presentation/widgets/Custom_Bottom_Sheet.dart';
import 'package:gppharmacy/generated/l10n.dart';

class MobileHomeView extends StatefulWidget {
  const MobileHomeView({super.key});

  @override
  State<MobileHomeView> createState() => _MobileHomeViewState();
}

class _MobileHomeViewState extends State<MobileHomeView> {
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();

  static const List<List<Widget>> bodyWidgets = [
    [
      MobileHsrElmabe3at(),
      MobileMedicines(),
      Mobile3ohdaElm5zn(),
      MobileImports(),
      MobileHsrElkolyat(),
      MobileSrfEladwya()
    ],
    [
      PatientView(),
      AddNewPatient(),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawerCubit, DrawerStates>(
      listener: (context, state) {
        if (state is DrawerSelectedIndexChanged) {
          scafoldKey.currentState!.closeDrawer();
        }
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<DrawerCubit>(context);
        return Scaffold(
            key: scafoldKey,
            drawer: const CustomMobileDrawer(),
            appBar: HomeAppBar(scafoldKey: scafoldKey),
            body: cubit.outerSelectedIndex == 0
                ? bodyWidgets[cubit.outerSelectedIndex]
                    [cubit.innerFirstSelectedIndex]
                : bodyWidgets[cubit.outerSelectedIndex]
                    [cubit.innerFirstSelectedIndex],
            floatingActionButton: cubit.data1 == S.of(context).Imports
                ? const CustomBottomSheetItem()
                : null);
      },
    );
  }
}
