import 'package:provider/provider.dart';
import 'package:flutter/material.dart';


class StateManage extends ChangeNotifier {
   bool showBottomSheet = false;

   void setBottomSheet(){
     if(showBottomSheet){
       showBottomSheet = false;
     }
     else{
       showBottomSheet = true;
     }
     notifyListeners();

   }

}