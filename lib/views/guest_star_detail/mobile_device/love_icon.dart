part of '../../init.dart';

class LoveIcon extends StatefulWidget {
  const LoveIcon({Key key}) : super(key: key);

  @override
  _LoveIconState createState() => _LoveIconState();
}

class _LoveIconState extends State<LoveIcon> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isClicked ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
    );
  }
}