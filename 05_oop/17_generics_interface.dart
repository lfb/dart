abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key, String value);
}

//  泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T value) {
    print('文件保存，key=$key, value=$value');
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T value) {
    print('内存保存，key=$key, value=$value');
  }
}

void main() {
  FileCache fc = new FileCache<String>();
  fc.setByKey('foo', 'bar'); // 文件保存，key=foo, value=bar

  FileCache fc1 = new FileCache<Map>();
  fc1.setByKey('index', {
    'name': 'bobo',
    'age': 12
  }); //文件保存，key=index, value={name: bobo, age: 12}

  // 内存缓存
  MemoryCache mc = new MemoryCache<String>();
  mc.setByKey('foo', 'bar'); // 内存保存，key=foo, value=bar

  MemoryCache mc1 = new MemoryCache<Set>();
  mc1.setByKey('home', {1, 2, 3}); // 内存保存，key=home, value={1, 2, 3}
}
