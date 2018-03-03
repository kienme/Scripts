function sendMail() {
  
  var NAME = "Ravikiran R";
  var USN = "1MV14CS085";
  
  var TO = "mylibrary@sirmvit.edu";
  var SELF = "kienme@gmail.com";
  var SUBJECT = "Renewal of Library Books";
  
  //Details of books
  
  var B1_NAME = "Computers as Components";
  var B1_ID = "60130";
  
  var B2_NAME = "Programming the World Wide Web";
  var B2_ID = "47746";
  
  var B3_NAME = "Computers as Components";
  var B3_ID = "60048";
  
  var B4_NAME = "Artificial Intelligence";
  var B4_ID = "48278";  
  
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
