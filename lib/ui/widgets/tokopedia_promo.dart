import 'package:flutter/material.dart';
import 'package:gojek_clone/config/configs.dart';
import 'package:gojek_clone/data/models/event_title_model.dart';
import 'package:gojek_clone/ui/widgets/widgets.dart';

class TokopediaPromo extends StatelessWidget {
  const TokopediaPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: EventTitle(
        model: EventTitleModel(
          icon: GojekImage.tokopedia,
          title: 'Belanja makin hemat 🤭',
          deskripsi:
              "Dapetin diskon dan harga spesialnya di Tokopedia sekarang sebelum kehabisan!",
          haveButton: false,
          contentSpace: 14,
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 0),
            height: 174,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                GojekImage.big2,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
