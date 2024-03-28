import 'package:flutter/material.dart';
import 'package:flutter_provider/model/crypto.dart';
import 'package:flutter_provider/services/api/network_api_implemention.dart';

class ConListViewNodel extends ChangeNotifier{
  var _webApi=WebApi();


  List<Crypto> crypoList=[];


  void LoadData() async {

    crypoList= await _webApi.getAllCryptoList();
    notifyListeners();

  }


}