
import 'package:flutter/material.dart';
import 'package:login/constant.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Поиск',
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('icons/sea.png',
            height: 30, color: Color.fromARGB(255, 114, 5, 42),),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: DefaultPadding / 2,
            ),
            child: SizedBox(
              height: 20,
              width: 40,
              child: ElevatedButton(
                onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 143, 37, 72),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(DefaultBorderRadius))),

                ),
              child: Image.asset('icons/fil.png', height: 50,),),
            ),
          )

        ),
      ) ,);
  }
}

 const OutlineInputBorder outlineInputBorder = OutlineInputBorder( 
   borderRadius: BorderRadius.all(
     Radius.circular(DefaultBorderRadius)),
    borderSide: BorderSide.none,
                        
                    );