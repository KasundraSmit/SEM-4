void main(List<String> args) {
  List<String> list = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Hyderabad",
    "Ahmedabad"
  ];

  list[list.indexOf("Ahmedabad")] = "Surat";

  print(list);
}