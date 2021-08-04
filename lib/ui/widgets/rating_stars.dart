part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  final int starCount;

  RatingStars(this.rate, {this.starCount = 5});

  @override
  Widget build(BuildContext context) {
    int rateFloor = rate.floor();
    int rateCeil = rate.ceil();
    bool half = (rate % rateFloor < 1) && (rate % rateFloor >= 0.5);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List<Widget>.generate(starCount, (index) {
            return Icon(
              (index < rate.round())
                  ? (index + 1 == rateCeil && half)
                      ? Icons.star_half
                      : Icons.star
                  : Icons.star_outline,
              size: 16,
              color: mainColor,
            );
          }) +
          [
            SizedBox(width: 4),
            Text(rate.toString(), style: greyFontStyle.copyWith(fontSize: 12)),
          ],
    );
  }
}
