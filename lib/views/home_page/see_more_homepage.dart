part of '../init.dart';
class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        'See More',
        style: TextStyle(
            fontSize: fontSize2,
            color: Colors.black87,
            fontWeight: FontWeight.w700),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.black26),
          )),
    );
  }
}
