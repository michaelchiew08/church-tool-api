import 'package:vania/vania.dart';

class CreateUserTable extends Migration {
  @override
  Future<void> up() async {
    super.up();
    await createTable('users', () {
      uuid('id');
      string('first_name');
      string('last_name');
      string('email');
      string('password');
      string('remember_token');
      timeStamp('created_at');
      timeStamp('updated_at');
    });
  }

  @override
  Future<void> down() {
    super.down();
    throw UnimplementedError();
  }
}
