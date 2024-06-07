import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StoryCard('new'),
          // StoryCard('story 3', 'images/story1.jpg'),
          StoryCard('story 2', 'images/story1.jpg'),
          StoryCard('story 4', 'images/story2.jpg'),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String title;
  final String? photoStory;

  StoryCard(this.title, [this.photoStory]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 230, 230, 230),
              ),
            ),
            if (photoStory != null)
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    photoStory!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 6),
        Text(title),
      ],
    );
  }
}
