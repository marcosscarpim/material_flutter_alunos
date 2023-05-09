import 'dart:convert';
import 'dart:io';
import 'dart:math';

const String FILE_INPUT_NAME = './alunos.txt';
const String FILE_OUTPUT_NAME = './grupos.txt';
const int TEAM_SIZE = 3;

Future<String> readFileAsync() {
  File file = new File(FILE_INPUT_NAME);
  Future<String> futureContent = file.readAsString();
  return futureContent;
}

List<String> convertFileToList(String fileContent) =>
    LineSplitter().convert(fileContent);

List<List<String>> splitListRandomly(List<String> students) {
  var random = Random();
  int numberOfGroups = (students.length / TEAM_SIZE).ceil();
  int currentGroup = 0;
  var groupList = List.generate(numberOfGroups, (_) => <String>[]);
  while (students.isNotEmpty) {
    int randomInt = random.nextInt(students.length);
    String selectedStudents = students.removeAt(randomInt);
    groupList[currentGroup++].add(selectedStudents);
    if (currentGroup == numberOfGroups) {
      currentGroup = 0;
    }
  }
  return groupList;
}

String createFileString(List<List<String>> groupList) {
  String fileString = "";
  for (int i = 0; i < groupList.length; i++) {
    fileString += "GROUP ${i + 1}\n";
    fileString += groupList[i].join("\n");
    fileString += "\n\n";
  }
  return fileString;
}

void writeToFile(String fileString) async {
  File(FILE_OUTPUT_NAME).writeAsString(fileString);
}

/// Get a file with student list split by line and split them into groups based
/// on [TEAM_SIZE] constant from beginning of this file.
void main() async {
  var fileContent = await readFileAsync();
  List<String> students = convertFileToList(fileContent);
  var groupList = splitListRandomly(students);
  var fileString = createFileString(groupList);
  writeToFile(fileString);
}
