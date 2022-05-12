import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

import '../resource/colors.dart';

class ListTab extends StatelessWidget {
  const ListTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.7,
        child: ContainedTabBarView(
          tabs: [
            ...[1, 2, 3]
                .map(
                  (e) => Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: AppColors.kGrayColor),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                )
                .toList()
          ],
          tabBarProperties: TabBarProperties(
            height: 80,
            width: 50,
            position: TabBarPosition.bottom,
            indicator: ContainerTabIndicator(
              width: 8.0,
              height: 8.0,
              radius: BorderRadius.circular(8.0),
              color: AppColors.kSecondaryColor,
            ),
          ),
          views: const [
            Text(
              'Ứng dụng ColorBlind, là ứng dụng hỗ trợ người mù màu, giúp kiểm tra mức độ mù màu, cũng như hỗ trợ nhận diện màu sắc, và một số tính năng khác, cùng nhau trải nghiệm nhé !!!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            Text(
              'ColorBlind là ứng dụng dùng kiểm tra độ mù màu nhanh chóng, cũng như tham khảo về mức độ mù màu..., chúng ta vẫn nên gặp bác sĩ, để được tư vấn, kiểm tra chính xác nhất...',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
            Text(
              'Cảm ơn bạn đã đọc, và cùng nhau trải nghiệm ColorBlind ngay thôi nào!!!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
          ],
          // ignore: avoid_print
          onChange: (index) => print(index),
        ),
      ),
    );
  }
}
