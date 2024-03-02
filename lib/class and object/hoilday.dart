class Holiday{
  String name;
  int day;
  String month;
  Holiday(this.name,this.day,this.month);
  bool inSameMonth(Holiday holiday1,Holiday holiday2){
    if(holiday2.month == holiday1.month){
      return true;
    } else{
      return false;
    }
  }
  double avgDate(List<Holiday>holidays){
    int sum = 0;
    for(int i =0;i<holidays.length;i++){
     sum+=holidays[i].day;
    }
    return sum / holidays.length;
  }
}
void main(){
  Holiday holiday1 = Holiday('Independence Day', 4 , 'july');
  Holiday holiday2 = Holiday('Independence Day', 5 , 'july');
  Holiday holiday3 = Holiday('Independence Day', 6 , 'feb');
  List<Holiday>holidays=[
    holiday1,holiday2,holiday3
  ];
  print(holiday1.inSameMonth(holiday1,holiday2));
  print(holiday1.avgDate(holidays));
}