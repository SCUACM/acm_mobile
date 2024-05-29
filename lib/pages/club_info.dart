import 'package:flutter/material.dart';

class club_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String ClubName = 'Max\'s Super cool Club';
    const String ClubDescription =
        'Santa Clara University Association for Computing Machinery';
    const String subTitle = 'Affiliations';
    List<String> affiliations = ['ACM', 'SCU', 'SCU COEN', 'SCU ACM'];
    List<String> badges = ['Flutter', 'Dart', 'Firebase', 'Google Cloud'];
    int meetingsAttended = 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text(ClubName,
            style:
                TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        // Add horizontal padding
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(ClubDescription, style: TextStyle()),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(subTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Wrap(
              spacing: 8.0,
              children: affiliations
                  .map((affiliation) => Chip(label: Text(affiliation)))
                  .toList(),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Badges',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Wrap(
              spacing: 8.0,
              children:
                  badges.map((badge) => Chip(label: Text(badge))).toList(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: RichText(
                text: TextSpan(
                  text: 'You have attended ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '$meetingsAttended',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                    const TextSpan(
                      text: ' meetings.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('\nUpcoming Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const Divider(color: Colors.black)
          ],
        ),
      ),
    );
  }
}
