import 'package:church_tool_api/app/models/user.dart';
import 'package:vania/vania.dart';

class HomeController extends Controller {
  Future<Response> index() async {
    // return Response.json({'message': 'Hello Home'});
    final users = await User().query().get();

    return Response.json({
      'message': 'Hi ${users[0]['name']}',
    });
  }

  Future<Response> create() async {
    return Response.json({});
  }

  Future<Response> store(Request request) async {
    return Response.json({});
  }

  Future<Response> show(int id) async {
    return Response.json({});
  }

  Future<Response> edit(int id) async {
    return Response.json({});
  }

  Future<Response> update(Request request, int id) async {
    return Response.json({});
  }

  Future<Response> destroy(int id) async {
    return Response.json({});
  }
}

final HomeController homeController = HomeController();
