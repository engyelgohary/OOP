class Person {
  String name;
  String address;
  Person ({required this.name,required this.address});
}
class Student extends Person {
  int numCourse;
  List<String>courses;
  List<int>grades;
Student({required this.numCourse,required this.courses,required this.grades,required String name,required String address}):
      super(name:name ,address:address);
void addCourseGrade(String course,int grade){
courses.add(course);
grades.add(grade);
}
void printGrades(){
  for(int i=0;i<grades.length;i++){
    print(grades[i]);
  }
}
double getAverageGrades(){
  int sum = 0;
  for(int i=0;i<grades.length;i++){
    sum = sum +grades[i];
  }
  return sum / grades.length;
}
}
class Teacher extends Person {
  int numCourse;
  List<String>courses;

  Teacher(
      {required String name, required String address, required this.numCourse, required this.courses})
      :
        super(name: name, address: address);

  bool addCourse(String course) {
    bool isCourse = true;
    for (int i = 0; i < courses.length; i++) {
      if (courses[i] == course) {
        isCourse == false;
        break;
      } else {
        courses.add(course);
      }
    }
    if(isCourse){
      return false;
  }
  }

  bool removeCourse(String course){
    bool isCourse = true;
    for (int i = 0; i < courses.length; i++) {
      if (courses[i] == course) {
        isCourse == false;
        courses.remove(course);
        break;
      }
    }
    if(isCourse){
      return false;
    }
  }
}

void main(){

}