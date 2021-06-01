part of '../../init.dart';

class GuestStarSeeMore extends StatelessWidget {
  const GuestStarSeeMore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Special Guest Star',
          style: TextStyle(fontSize: fontSize2),
        ),
        ElevatedButton(
          child: Text(
            'See More',
            style:
            TextStyle(fontSize: fontSize4, color: Colors.black87),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GuestStarList();
            }));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding:
            EdgeInsets.symmetric(vertical: 1, horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black26),
            ),
          ),
        ),
      ],
    );
  }
}
