//class is a blueprint for an object type
class Quote {
  //declare two properties (text and author)
  //The following code produces this diagnostic because "text" and "author" are implicitly initialized to null when it isn’t allowed to be null:
  //if the properties has no initial values, it will produce a diagnostic error (not_initialized_non_nullable_instance_field),
  //to fix this, you need to implement a constructor as shown below
  String text;
  String author;

  //common fix: create a constructor for the class
  //if the value of the field should be provided when an instance is created,
  //then add a constructor that sets the value of the field or update an existing constructor:
  Quote({required this.text, required this.author});
}



