import 'package:isbn/isbn.dart';
class Book{
  String title;
  String author;
  String ISBN;
  bool status;

  Book(this.title,this.author,this.ISBN,this.status){
  }

  void setTitle(String title){
    this.title=title;
  }
  String get getTitle{
    return this.title;
  }

  void setAuthor(String author){
    this.author=author;
  }
  String get getAuthor{
    return this.author;
  }

  void setISBN(String ISBN){
    this.ISBN=ISBN;
  }
  String get getISBN{
    return this.ISBN;
  }


  void setStatus(bool status){
    this.status=status;
  }
  bool get getStatus{
    return this.status;
  }

  bool isValidIsbn(String ISBN){
    Isbn isbn = Isbn();
    if(isbn.isIsbn10(ISBN) || isbn.isIsbn13(ISBN)){
      return true;
    }
    return false;
}


}