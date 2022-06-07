import 'package:flutter/material.dart';

class TopSliverAppBar extends StatelessWidget {
  const TopSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: false,
      primary: true,
      pinned: false,
      floating: true,
      snap: true,
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: Image.asset('assets/yt_logo.png'),
      ),
      leadingWidth: 95,
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Image.asset('assets/avatars/avatar.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomSliverAppBar extends StatefulWidget {
  const BottomSliverAppBar({Key? key}) : super(key: key);

  @override
  State createState() => _BottomSliverAppBarState();
}

class _BottomSliverAppBarState extends State<BottomSliverAppBar> {
  int _selectedChip = 1;
  final chipTitles = <String> ['Explore', 'All', 'Gaming', 'Life', 'Space', 'Conversation', 'Coding'];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 40,
      forceElevated: false,
      primary: false,
      pinned: false,
      floating: false,
      snap: false,
      backgroundColor: const Color.fromRGBO(32, 32, 32, 1),
      elevation: 0,
      flexibleSpace: ListView.separated(
        itemBuilder: (context, index){
          if(index == 0) {
            return Row(
              children: [
                const SizedBox(height: 0, width: 7,),
                ChoiceChip(
                  label: Text(chipTitles.elementAt(index)),
                  selected: _selectedChip == index,
                  avatar: Icon(
                    Icons.explore_outlined,
                    color: _selectedChip == index ? Colors.black : Colors.white,
                    // size: 21.0,
                  ),
                  shape: const BeveledRectangleBorder(),
                  backgroundColor: const Color.fromRGBO(55, 55, 55, 1),
                  selectedColor: const Color.fromRGBO(255, 255, 255, 1),
                  labelStyle: TextStyle(
                    color: _selectedChip == index ? Colors.black : Colors.white,
                  ),
                  onSelected: (selected){
                    if (selected) {
                      setState((){
                        _selectedChip = index;
                      });
                    }
                    else {
                      setState((){
                        _selectedChip = 1;
                      });
                    }
                  },
                ),
              ],
            );
          }
          else {
            return ChoiceChip(
              label: Text(chipTitles.elementAt(index)),
              selected: _selectedChip == index,
              backgroundColor: const Color.fromRGBO(55, 55, 55, 1),
              selectedColor: const Color.fromRGBO(255, 255, 255, 1),
              labelStyle: TextStyle(
                color: _selectedChip == index ? Colors.black : Colors.white,
              ),
              onSelected: (selected){
                if (selected) {
                  setState((){
                    _selectedChip = index;
                  });
                }
                else {
                  setState((){
                    _selectedChip = 1;
                  });
                }
              },
            );
          }
        },
        separatorBuilder: (context, index){
          if(index == 0){
            return const VerticalDivider(
              color: Colors.white,
              indent: 5,
              endIndent: 5,
            );
          }
          else {
            return const SizedBox(
              width: 10.0,
            );
          }
        },
        itemCount: chipTitles.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}