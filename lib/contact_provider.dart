import 'contact.dart';

class ContactProvider {
  ContactProvider() {
    initialzeContacts();
  }

  List<Contact> contacts = [];

  void initialzeContacts() {
    var now = DateTime.now();
    var contact = Contact("Max Mustermann");
    contact.imagePath = "assets/images/mm.jpg";
    contact.lastMessage = "Hallo Max, wie geht's";
    contact.dateOfLastMessage = now.add(const Duration(days: -1));
    contacts.add(contact);

    contact = Contact("Erika Mustermann");
    contact.imagePath = "assets/images/em.jpg";
    contact.lastMessage = "Max ist mit Freunden in Norwegen";
    contact.dateOfLastMessage = now.add(const Duration(hours: -2));
    contact.countOfNewMessages = 1;
    contacts.add(contact);

    contact = Contact("Contact with a very very loooooong name");
    contact.lastMessage = "a very very very long loooooong "
        "loooooooooooooooooooooooooooooooooooooooooong message";
    contact.dateOfLastMessage = DateTime(2025, 03, 27, 00, 11);
    contacts.add(contact);

    // for (var i = 0; i < 20; i++) {
    //   contact = Contact("Test contact $i");
    //   contact.countOfNewMessages = i;
    //   contacts.add(contact);
    // }
  }
}
