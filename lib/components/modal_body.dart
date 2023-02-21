import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/custom_theme.dart';
import 'components.dart';
import 'no_items_controller.dart';

class ModalBody extends StatefulWidget {
  final FoodItem food;
  final VendorData vendor;

  ModalBody(
      {super.key,
      required this.food,
      required this.vendor,
      required double foodPrice});

  @override
  State<ModalBody> createState() => _ModalBodyState();
}

class _ModalBodyState extends State<ModalBody> {
  @override
  Widget build(BuildContext context) {
    NumberOfItems noOfItems = NumberOfItems();

    return Container(
        color: Color.fromRGBO(0, 0, 0, 0.86),
        height: 400,
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints.expand(
                height: 90,
                width: double.infinity,
              ),
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(widget.vendor.hero),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.vendor.vendorName,
                          style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(
                        'P${widget.food.priceMultiplier(noOfItems.getCount(), widget.food)}',
                        style:
                            const TextStyle(fontSize: 36, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Description',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(215, 187, 185, 185))),
                        SizedBox(
                          height: 20,
                        ),
                        Center(child: NumberOfItems()),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF00C853)),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(300, 40))),
                            child: Text(
                              'RESERVE',
                              style: CustomTheme.lightTextTheme.headline1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
