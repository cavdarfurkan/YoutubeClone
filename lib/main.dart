import 'package:flutter/material.dart';
import 'package:youtube_clone/Models/video.dart';
import 'package:youtube_clone/Views/custom_bottom_navigation_bar.dart';
import 'package:youtube_clone/Views/custom_sliver_appbar.dart';
import 'package:youtube_clone/Views/video_card.dart';

void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'YouTube',
      home: Scaffold(
        primary: true,
        backgroundColor: Color.fromRGBO(24, 24, 24, 1),
        body: CustomBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
        // extendBodyBehindAppBar: true,
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const TopSliverAppBar(),
        const BottomSliverAppBar(),
        CustomSliverListTile(),
      ],
    );
  }
}

class CustomSliverListTile extends StatelessWidget {
  CustomSliverListTile({Key? key}) : super(key: key);

  final thumbnailsList = <AssetImage> [const AssetImage('assets/thumbnails/coding.jpg'), const AssetImage('assets/thumbnails/gaming1.jpg'),
                                        const AssetImage('assets/thumbnails/gaming2.jpg'), const AssetImage('assets/thumbnails/space.jpg'),
                                        const AssetImage('assets/thumbnails/tokyo.jpg')];
  final avatarsList = <AssetImage> [const AssetImage('assets/avatars/avatar1.jpg'), const AssetImage('assets/avatars/avatar2.jpg'),
                                     const AssetImage('assets/avatars/avatar3.jpg'), const AssetImage('assets/avatars/avatar4.jpg'),
                                     const AssetImage('assets/avatars/avatar5.jpg')];
  final titlesList = <String> ['Youtube GUI Clone in Flutter', 'Playing Some Games Together Playing Some Games Together Playing Some Games Together Playing Some Games Together', 'Which one is better for gaming? Console or PC?', 'Earth View from ISS', 'Life in Tokyo'];
  final channelNamesList = <String> ['Bill O\'brien', 'Trina May', 'Marty Coleman', 'Amber Coleman', 'Gung Mee-Yon'];
  final viewCountsList = <String> ['170K', '1.2K', '512K', '1.9K', '2.5M'];
  final uploadDatesList = <String> ['3 weeks ago', '46 minutes ago', '21 hours ago', '3 days ago', '1 year ago'];

  List<Video> createVideos() {
    List<Video> vids = [];
    for (int i = 0; i < thumbnailsList.length; i++){
      vids.add(new Video(
          thumbnailsList.elementAt(i), avatarsList.elementAt(i),
          titlesList.elementAt(i), channelNamesList.elementAt(i),
          viewCountsList.elementAt(i), uploadDatesList.elementAt(i)));
    }
    return vids;
  }

  List<Widget> getVideos() {
    List<Video> vids = createVideos();
    List<Widget> cards = [];
    for(Video video in vids){
      cards.add(new VideoCard(video: video));
    }
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(getVideos()),
    );
  }
}

// TODO 1: Filter images by tags from bottom app bar
// TODO 2: Fix the add button in the bottom navigation bar