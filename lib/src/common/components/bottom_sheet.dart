import '../../core/core.dart';

class BottomShetService {
  static showSheet(BuildContext context) {
    void exit() {
      Navigator.pop(context);
    }

    return showModalBottomSheet(
      backgroundColor: white,
      context: context,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: exit,
                leading: const GlobalText(
                  text: AppString.moreOption,
                  ar: false,
                  color: greyBlack,
                  weight: Value.boldFont,
                ),
                trailing: IconButton(
                    icon: SvgPicture.asset(Res.icCross), onPressed: exit),
              ),
              Expanded(
                child: ListView(
                  children: [
                    items(Res.icAdd, AppString.addColloection),
                    items(Res.icCopy, AppString.copyAll),
                    items(Res.icCopy, AppString.copyBn),
                    items(Res.icCopy, AppString.copyAr),
                    items(Res.icAdd, AppString.note),
                    items(Res.icShare, AppString.textShare),
                    items(Res.icReport, AppString.report),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  static ListTile items(String icon, String title) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(icon),
      title: GlobalText(
        text: title,
        ar: false,
        color: greyBlack,
        weight: Value.boldFont,
      ),
    );
  }
}
