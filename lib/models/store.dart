import 'book.dart';

class Store {
  Map<String, List<Book>> lists;
  Store(this.lists);

  static Store generateStore(){
    return Store(
        {
          'Semua': Book.generateSemua(),
          'Teknologi': Book.generateTeknologi(),
          'Novel': Book.generateNovel(),
          'Komik': Book.generateKomik(),
          'Self Improvement': Book.generateSelfImprovement(),
        }
    );
  }
}