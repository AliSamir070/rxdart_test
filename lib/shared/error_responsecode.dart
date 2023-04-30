

import 'package:rxdart_test/shared/strings_manager.dart';

import 'error_handler.dart';

class ErrorResponseCode{
  static String CheckError(int? code){
    String newCode = "";
    if(code==ResponseCode.BAD_REQUEST){
      newCode = Stringsmanager.badRequestError;
    }else if(code == ResponseCode.CACHE_ERROR){
      newCode  = Stringsmanager.cacheError;
    }else if(code == ResponseCode.CONNECT_TIMEOUT){
      newCode  = Stringsmanager.timeoutError;
    }else if(code == ResponseCode.FORBIDDEN){
      newCode  = Stringsmanager.forbiddenError;
    }else if(code == ResponseCode.NOT_FOUND){
      newCode  = Stringsmanager.notFoundError;
    }else if(code == ResponseCode.NO_INTERNET_CONNECTION){
      newCode  = Stringsmanager.noInternetError;
    }else if(code == ResponseCode.NO_CONTENT){
      newCode  = Stringsmanager.noContent;
    }else if(code == ResponseCode.INTERNAL_SERVER_ERROR){
      newCode  = Stringsmanager.internalServerError;
    }else if(code == ResponseCode.RECIEVE_TIMEOUT){
      newCode  = Stringsmanager.timeoutError;
    }else if(code == ResponseCode.SEND_TIMEOUT){
      newCode  = Stringsmanager.timeoutError;
    }else if(code == ResponseCode.DEFAULT){
      newCode  = Stringsmanager.defaultError;
    }else if(code == ResponseCode.UNAUTORISED){
      newCode = Stringsmanager.unauthorizedError;
    }
    return newCode;
  }
}