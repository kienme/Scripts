function sendMail() {
  
  var NAME = "YOUR_NAME";
  var USN = "YOUR_USN";
  
  var TO = "mylibrary@sirmvit.edu";
  var SELF = "YOUR_EMAIL";
  var SUBJECT = "Renewal of Library Books";
  
  //Details of books
  
  var B1_NAME = "NAME_OF_BOOK_1";
  var B1_ID = "00000";
  
  var B2_NAME = "NAME_OF_BOOK_2";
  var B2_ID = "00000";
  
  var B3_NAME = "NAME_OF_BOOK_3";
  var B3_ID = "00000";
  
  var B4_NAME = "NAME_OF_BOOK_4";
  var B4_ID = "00000";  
  
  var BODY = "Name: " + NAME + "\nUSN: " + USN + "\n\n";
  BODY += B1_NAME + "\n" + B1_ID + "\n\n" + B2_NAME + "\n" + B2_ID + "\n\n";
  BODY += B3_NAME + "\n" + B3_ID + "\n\n" + B4_NAME + "\n" + B4_ID + "\n\n";
  BODY += "\nThank you\n";
  
  GmailApp.sendEmail(TO, SUBJECT, BODY);
  
  //Add reminder and mail to self
  
  var INF = "\nThe above mail was auto sent to the library."
  var REM = "\nIMPORTANT: Remember to modify/disable script when changing or returning books";
  
  GmailApp.sendEmail(SELF, SUBJECT, BODY + INF + REM);
}

function fourteenDayTrigger()
{
  ScriptApp.newTrigger('sendMail')
      .timeBased()
      .everyDays(14)
      .create();
}  
