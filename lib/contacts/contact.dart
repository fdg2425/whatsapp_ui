// ignore_for_file: prefer_interpolation_to_compose_strings

class Contact {
  Contact(this.name);
  String name;
  String? imagePath;
  String lastMessage = "hello";
  DateTime dateOfLastMessage = DateTime.now();
  int countOfNewMessages = 0;

  simulateNewMessage() {
    dateOfLastMessage = DateTime.now();
    lastMessage = "new message at $dateOfLastMessage";
    countOfNewMessages++;
  }

  String getDateOfLastMessageAsString() {
    // normally show date as dd/mm/yy
    var result = "${dateOfLastMessage.day}".padLeft(2, "0") +
        "/" +
        "${dateOfLastMessage.month}".padLeft(2, "0") +
        "/" +
        "${dateOfLastMessage.year - 2000}";

    var now = DateTime.now();
    // when last message is from current day, show hh:mm
    if (now.day == dateOfLastMessage.day &&
        now.month == dateOfLastMessage.month &&
        now.year == dateOfLastMessage.year) {
      result = "${dateOfLastMessage.hour}".padLeft(2, "0") +
          ":" +
          "${dateOfLastMessage.minute}".padLeft(2, "0");
    }
    return result;
  }
}
