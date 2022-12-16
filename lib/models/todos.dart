class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Chanting', isDone: true ),
      ToDo(id: '02', todoText: 'Reading books', isDone: true ),
      ToDo(id: '03', todoText: 'Listen Bhagwatam Lecture', ),
      ToDo(id: '04', todoText: 'Check Email', ),
      ToDo(id: '05', todoText: 'Work on mobile apps for 2 hour', ),
      ToDo(id: '06', todoText: 'Take power nap', ),
    ];
  }
}
