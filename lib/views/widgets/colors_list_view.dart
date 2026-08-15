import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_project/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  List<Color> colors = const [
    Color(0xFFf3b391),
    Color(0xFFf6d4ba),
    Color(0xFFfefadc),
    Color(0xFFfeea00),
    Color(0xFF3f612d),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16*2,
      child: ListView.separated(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_,_) => const SizedBox(width: 5,),
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              currentIndex = index;
            });
            context.read<AddNoteCubit>().selectedColor = colors[index];
          },
          child: ColorItem(
            color: colors[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}


class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActive});

  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: isActive,
          child: CircleAvatar(radius: 16, backgroundColor: Colors.white,),
        ),

        CircleAvatar(radius: 13, backgroundColor: color,),
      ],
    );
  }
}