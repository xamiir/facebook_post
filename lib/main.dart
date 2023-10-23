import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: facebookPost(),
    ),
  );
}

class facebookPost extends StatelessWidget {
  const facebookPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Post'),
      ),
      // facebook post body
      body: const Center(
        child: Column(
          children: [
            // facebook post header
            Row(
              children: [
                // facebook post profile picture
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/cllaahi.jpeg'),
                      radius: 25,
                    ),
                  ),
                ),
                // facebook post name and time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdullahi Abdi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '2 hrs',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // facebook post content
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'hi guys, this is my first facebook post. I am so excited to be here. I am a flutter developer and I am looking forward to working with you guys.'
                // 'orem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisis, nisl eget aliquam ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla facilisis, nisl eget aliquam ultricies, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl.',,
                ,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            // facebook post image
            Image(
              image: AssetImage('images/cllaahi.jpeg'),
              height: 300,
            ),
            // facebook post footer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // facebook post like button
                Row(

                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    ),
                    Text('Like'),

                  ],
                ),
                // facebook post comment button
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                    Text('Comment'),
                  ],
                ),
                // facebook post share button
                Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    Text('Share'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
