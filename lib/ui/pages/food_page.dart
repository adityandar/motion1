part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              height: 108,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FoodMarket",
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      Text("Let’s get some foods",
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      image: DecorationImage(
                          image: AssetImage("assets/photo.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            //// FOOD RECOMMENDATION
            FoodCard(mockFood),
            //// FOOD LIST
          ],
        ),
      ],
    );
  }
}
