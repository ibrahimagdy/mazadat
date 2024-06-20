import 'package:flutter/material.dart';
import 'package:mazadat/models/car_model.dart';

import '../../constants.dart';
import '../../core/utils/theme.dart';
import '../../core/widgets/car_info_row.dart';
import '../../models/home_model.dart';

class AllDetailsForCar extends StatelessWidget {
  static String id = "AllDetailsForCar";

  const AllDetailsForCar({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HomeModel;
    CarModel? car = args.cars?[0];

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFFF7F2F4),
                      Color(0XFFEFE5E9),
                      Color(0XFFE7D6DD),
                      Color(0XFFDFC9D2),
                      Color(0XFFDAC1CC),
                    ],
                  ),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 12),
                        Image.asset(car!.fullImageCar),
                        const SizedBox(height: 10),
                        Text(
                          car.name,
                          style: theme().textTheme.titleMedium!.copyWith(
                                color: primaryColor,
                                fontSize: 14,
                              ),
                        ),
                        Text(
                          car.modelNumber,
                          style: theme().textTheme.labelLarge!.copyWith(
                                color: const Color(0XFF19478B),
                              ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "تاريخ البيع : ",
                                      style: theme()
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                    ),
                                    Text(
                                      car.sellDate,
                                      style: theme()
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                            fontSize: 15,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "وقت البيع : ",
                                      style: theme()
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                    ),
                                    Text(
                                      car.sellTime,
                                      style: theme()
                                          .textTheme
                                          .labelSmall!
                                          .copyWith(
                                            fontSize: 15,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 9, vertical: 4),
                              decoration: BoxDecoration(
                                color: const Color(0XFF19478B),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "الحد الأدنى\n للمزايد",
                                textAlign: TextAlign.center,
                                style: theme().textTheme.titleMedium!.copyWith(
                                      fontSize: 11,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 20,
                          color: const Color(0XFFEFA7A7),
                          child: Center(
                            child: Text(
                              "الوقت المتبقي : ${car.restTime}",
                              textAlign: TextAlign.center,
                              style: theme().textTheme.titleMedium!.copyWith(
                                    fontSize: 11,
                                    color: primaryColor,
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CarInfoRow(
                                label: "تقدير قيمة البيع :",
                                value: car.estimateSaleValue),
                            CarInfoRow(
                                label: "عداد المسافات :", value: car.odometer),
                            CarInfoRow(
                                label: "نوع سند الملكية :",
                                value: car.typeTitleDeed),
                            CarInfoRow(
                                label: "حالة سند الملكية :",
                                value: car.statusTitleDeed),
                            CarInfoRow(
                                label: "اسم البيع :", value: car.sellName),
                            CarInfoRow(
                                label: "النقاط البارزة :",
                                value: car.importantPoints),
                            CarInfoRow(
                                label: "الاضرار الثانوية :",
                                value: car.damages),
                            CarInfoRow(
                                label: "اسم البائع :", value: car.sellerName),
                            CarInfoRow(
                                label: "رقم تعريف المركبة :",
                                value: car.vehicleIdentificationNumber),
                            CarInfoRow(
                                label: "نمط الكتابة :",
                                value: car.writePattern),
                            CarInfoRow(
                                label: "نوع السيارة :", value: car.carType),
                            CarInfoRow(label: "اللون :", value: car.carColor),
                            CarInfoRow(
                                label: "نوع المحرك :", value: car.engineType),
                            CarInfoRow(label: "قيادة :", value: car.drive),
                            CarInfoRow(
                                label: "الاسطوانات :", value: car.cylinders),
                            CarInfoRow(
                                label: "نقل ثاني اكسيد الكربون :",
                                value: car.carbonDioxideTransport),
                            CarInfoRow(label: "الوقود :", value: car.fuel),
                            CarInfoRow(label: "المفاتيح :", value: car.keys),
                            CarInfoRow(label: "الملاحظات :", value: car.notes),
                            CarInfoRow(
                                label: "التحديث الاخير :",
                                value: car.lastUpdated),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Text(
                            "هذه السيارة يتم بيعها كما هى - حيثما تكون - جميع \nالمزايدات ملزمة وكل المبيعات نهائية.",
                            style: theme().textTheme.labelSmall!.copyWith(
                                color: const Color(0XFF19478B),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              style: theme().textTheme.labelSmall!.copyWith(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'تحذير',
                                  style: TextStyle(
                                    color: primaryColor,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      ' : تشغيل واستخدام وصيانة سيارة المتنقل او السيارة \nخارج الطريق قد يعرضك لمواد كيميائية بما فى ذلك عادم \nالمحرك , اول اكسيد الكربون ',
                                ),
                                const TextSpan(
                                  text: 'للمزيد من المعلومات',
                                  style: TextStyle(
                                    color: Color(0XFF19478B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: const Color(0XFFD9D9D9),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: const Color(0XFF19478B),
                        ),
                      ),
                      child: Text(
                        "المزايدة / \nالشراء الان",
                        textAlign: TextAlign.center,
                        style: theme().textTheme.titleMedium!.copyWith(
                              fontSize: 11,
                              color: const Color(0XFF19478B),
                            ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "الغطاء الحالي :",
                              style: theme().textTheme.labelSmall!.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                            ),
                            Text(
                              car.currentCover,
                              style: const TextStyle(color: Color(0XFF29AB1D)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "اشتر الان :",
                              style: theme().textTheme.labelSmall!.copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                            ),
                            Text(
                              car.buyNow,
                              style: const TextStyle(color: Color(0XFF29AB1D)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
