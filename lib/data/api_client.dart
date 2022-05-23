import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:Softcent/main.dart';
import 'package:Softcent/utils/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiClient {
  http.Client client = http.Client();
  Map<String, String> header() => {'Accept': 'application/json', 'Content-Type': 'application/json'};

  Future request({
    required String url,
    required Method method,
    required Map<String, dynamic> body,
    required Function onSuccess,
    required Function onError,
    bool enableShowError = true,
  }) async {
    try {
      http.Response? response;
      if (method == Method.POST) {
        response = await client.post(Uri.parse(url), body: jsonEncode(body), headers: header());
      } else if (method == Method.DELETE) {
        response = await client.delete(Uri.parse(url), headers: header());
      } else if (method == Method.PATCH) {
        response = await client.patch(Uri.parse(url), headers: header(), body: jsonEncode(body));
      } else {
        response = await client.get(Uri.parse(url), headers: header());
      }
      showData(
          url: url,
          response: response.body,
          body: body,
          method: method,
          header: header());
      if (response.statusCode == 200 ||
          response.statusCode == 401 ||
          response.statusCode == 422 ||
          response.statusCode == 400) {
        var data = json.decode(response.body);
        onSuccess(data);
      } else {
        if (enableShowError) {
          AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
        }
        onError({'error': language.Something_went_wrong});
      }
    } on TimeoutException catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Check_Your_Internet_Connection});
    } on SocketException catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Check_Your_Internet_Connection});
    } on Error catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Something_went_wrong});
    }
  }

  Future uploadFileRequest({
    required String url,
    required Map<String, String> body,
    required List<String> fileKey,
    required List<File> files,
    required Method method,
    required Function onSuccess,
    required Function onError,
    bool enableShowError = true,
    bool withAuthorization = true,
  }) async {
    var result;
    var uri = Uri.parse(url);
    http.MultipartRequest? request;
    if (method == Method.POST) {
      request = http.MultipartRequest('POST', uri)
        ..fields.addAll(body)
        ..headers.addAll(withAuthorization ? header() : header());
    } else if (method == Method.PUT) {
      request = http.MultipartRequest('PUT', uri)
        ..fields.addAll(body)
        ..headers.addAll(withAuthorization ? header() : header());
    } else if (method == Method.PATCH) {
      request = http.MultipartRequest('PATCH', uri)
        ..headers.addAll(withAuthorization ? header() : header())
        ..fields.addAll(body);
    }

    for (int i = 0; i < fileKey.length; i++) {
      var stream = http.ByteStream(files[i].openRead().cast());
      var length = await files[i].length();
      var multipartFile = http.MultipartFile(fileKey[i], stream, length, filename: basename(files[i].path));
      request!.files.add(multipartFile);
    }
    http.StreamedResponse? response;
    try {
      response = await request!.send();
      if (response.statusCode == 200 ||
          response.statusCode == 401 ||
          response.statusCode == 422 ||
          response.statusCode == 400) {
        await response.stream.transform(utf8.decoder).listen((value) {
          result = value;
        });
        showData(
            body: body,
            method: method,
            response: result,
            url: url,
            header: withAuthorization ? header() : header());
        var data = json.decode(result);
        onSuccess(data);
      } else {
        if (enableShowError) {
          AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
        }
        onError({'error': language.Something_went_wrong});
      }
    } on TimeoutException catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Check_Your_Internet_Connection});
    } on SocketException catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Check_Your_Internet_Connection});
    } on Error catch (e) {
      dPrint(e.toString());
      if (enableShowError) {
        AppFeedback.showErrorMessage(title: 'Something went wrong!', message: 'Please check your network connection.');
      }
      onError({'error': language.Check_Your_Internet_Connection});
    } catch (_) {
      dPrint(_.toString());
    }
  }

  void showData({
    required String url,
    var body,
    required Map<String, dynamic> header,
    required String response,
    required Method method,
  }) {
    if (kDebugMode) {
      print('URL = $url');
      print('Body = $body');
      print('Header = $header');
      print('Method = $method');
      print('Response = $response');
    }
  }

  void close() => client.close();
}
