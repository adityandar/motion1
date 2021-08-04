part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              spreadRadius: 2.0,
              blurRadius: 26.0,
              offset: Offset(0, 20),
              color: Color(0x14363535))
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage("assets/photo_border.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 200,
            child: Text(
              food.name,
              style: blackFontStyle1,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: RatingStars(food.rate),
          ),
        ],
      ),
    );
  }
}
