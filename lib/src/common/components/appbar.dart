import '../../core/core.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final bool arrow;

  const CustomAppBar(
      {Key? key,
      required this.title,
      required this.subTitle,
      this.arrow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(1.sw, 56),
      child: AppBar(
        backgroundColor: primary,
        centerTitle: !arrow,
        leading: arrow
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset(Res.icBck),
                color: white,
              )
            : const SizedBox(),
        title: Column(
          crossAxisAlignment:
              !arrow ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GlobalText(
              text: title,
              ar: false,
              color: white,
              weight: Value.boldFont,
            ),
            const SizedBox(height: 5),
            GlobalText(
              text: subTitle,
              ar: false,
              color: white,
              size: Value.small,
              weight: Value.lightFont,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(1.sw, 56);
}
