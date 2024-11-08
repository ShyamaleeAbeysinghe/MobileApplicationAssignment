

import 'package:android_project/Book.dart';

void main() {
  Library library = new Library();
  Book book1 = new Book("title1", "author1", "ISBN", true);
  Book book2 = new Book("title2", "author2", "ISBN", false);
  Book book3 = new Book("title3", "author3", "ISBN", true);
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  print("books added");
  library.getAllBooks();
  library.removeBook(book1);
  print("book removed");
  library.getAllBooks();
  library.borrowBook(book3, false);
  print("book borrowed");
  library.getAllBooks();
  library.borrowBook(book2, true);
  print("book borrowed");
  library.getAllBooks();
  library.searchByTitle("title1");
  library.searchByAuthor("author3");
}

class Library {
  List<Book> bookList = [];
  void addBook(Book book) {
    bookList.add(book);
  }

  void getAllBooks() {
     bookList.forEach((book)=>{
       print(book.title+' - '+book.status.toString())
     });
  }

  void removeBook(Book book){
    bookList.remove(book);
  }

  void borrowBook(Book book,bool status){
    Book bookNew=book;
    bookNew.setStatus(status);

    bookList[bookList.indexWhere((element)=>element==book)]=bookNew;
  }

  void searchByTitle(String title){
    bool bookFound=false;
    bookList.forEach((book){
      if(book.getTitle==title){
        bookFound=true;
        print(book.getTitle+' - '+book.getAuthor+' - '+book.getISBN+' - '+book.getStatus.toString());
      };
    });
    if(!bookFound){
      print("Book not found with "+title);
    }
  }

  void searchByAuthor(String author){
    bool bookFound=false;
    bookList.forEach((book){
      if(book.getAuthor==author){
        bookFound=true;
        print(book.getTitle+' - '+book.getAuthor+' - '+book.getISBN+' - '+book.getStatus.toString());
      }
    });
    if(!bookFound){
      print("Book not found with "+author);
    }
  }
}
