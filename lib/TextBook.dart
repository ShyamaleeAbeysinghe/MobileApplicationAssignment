import 'package:android_project/Book.dart';

class TextBook extends Book{
  String subjectArea;
  String gradeLevel;

  TextBook(super.title, super.author, super.ISBN, super.status,this.subjectArea,this.gradeLevel);

  set setSubjectArea(String subjectArea){
    this.subjectArea=subjectArea;
  }
  String get getSubjectArea{
    return subjectArea;
  }

  set setSubGradeLevel(String gradeLevel){
    this.gradeLevel=gradeLevel;
  }
  String get getGradeLevel{
    return gradeLevel;
  }


}