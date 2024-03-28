
import 'package:flutter_provider/model/crypto.dart';

abstract class NetworkApi {


  Future <List<Crypto>> getAllCryptoList();

  
}