import 'package:alhadith/src/core/core.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Value.padding),
      child: Form(
        child: TextFormField(
          onSaved: (value) {},
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: AppString.search,
            hintStyle: const TextStyle(fontFamily: 'Kalpurush'),
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            suffixIcon: Icon(
              Icons.search_outlined,
              color: greyBlack.withOpacity(.75),
            ),
          ),
        ),
      ),
    );
  }
}
