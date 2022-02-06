// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ethio_sat_2/widget/naviget_drawer.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class privecy_policy extends StatelessWidget {
  static const String routeName = '/contactPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("privecy policy"),
      ),
      drawer: navigationDrawer(),
      body: SingleChildScrollView(
        child: Text("""Privacy policy
This privacy policy applies to ethiosat  android Application. you agree to this privacy policy by installing and using this Application. please do not install or use this Application if you do not agree with this privacy policy.

This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy.

Information Collection and Use
we do not collect or use any personal data from users. the Application does not send any information to Gobez org Technologies without users knowledge. if you send us feedback or question via email, your email address is visible to us and we may contact you directly through that email if necessary.

we do not ask any personal information such as:- your name, country, place of birth, email address, photos, phone number and etc from our customers.

Children's Privacy
These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13.

Changes to This Privacy Policy
We may update our Privacy Policy from time to time. Thus, you are advised to review periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately after they are posted on this page.

Links to Other Sites
This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.

Contact Us
If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.
Email : konjogames1@gmail.com"""),
      ),
    );
  }
}
