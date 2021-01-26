void main(){
  String st = "m";
  int ex = 6, salary = 1200;

  if(st != "m" && st != "s"){
    salary = -1;
  }
  else{
    if(st == "s") salary = 800;
    if(0 <= ex && ex <= 3)  salary += ex * 50;
    else if(4 <= ex && ex <= 7)  salary += ex * 150;
    else if(8 <= ex && ex <= 12) salary += ex * 250;
    else                         salary = -1;
  }
  print(salary == -1 ? "Error!" : "Salary: ${salary}");
}
