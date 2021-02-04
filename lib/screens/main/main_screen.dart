import 'package:flutter/material.dart';
import 'package:outlook/components/side_menu.dart';
import 'package:outlook/responsive.dart';
import 'package:outlook/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

// Let's run the starting project
// Note that, it already contains full design
// In this video we focus on resposive design
// Make sure you enable flutter web
// This is what we want
// This design looks fine if our width is more than 1100
// Let's create our responsive file
// As you can see we don't get any error from any size
// Let's run our app on iPhone 11 (Command+Shift+P)
// As you can see it's not look perfect on device app
// Le's fix it
// Yeah it work fine on phone app also
// Let's check if we face some problem on web
// Done ;)

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      // Once our width is less then 1300 then it start showing errors
      // Now there is no error if our width is less then 1340
      body: Responsive(
        // Let's work on our mobile part
        mobile: ListOfEmails(),
        // Now we are on tablet
        // Right now we dont have any acces of our side menu
        // Let's add a menu icon there
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(),
            ),
          ],
        ),
        // Our existing design work fine if then width is more than 1100
        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: EmailScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
