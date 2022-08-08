import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

import '../widgets/default_elevated_button.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: secondaryColor,
                        width: 2.0,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset(
                          'assets/images/Ellipse 2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Monica Gamage',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: primaryTextColor,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    '@monicagamage',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: primaryRedTextColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 22,
                    width: 90,
                    child: DefaultElevatedButton(
                      color: secondaryColor,
                      text: 'Logout',
                      textColor: primaryTextColor,
                      textFontSize: 10,
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashboardScreen(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Center(child: Image.asset('assets/images/Group 7.png')),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Good Morning',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Tasks List',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: primaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Tasks List',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: primaryColor,
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Cook Rice and Chicken at 10 am',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: .5,
                                      color: Colors.black,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Learn Reactjs at 12 pm',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: .5,
                                      color: Colors.black,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Have Launch at 1pm',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: .5,
                                      color: Colors.black,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Learn HTML and CSS at 3pm',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 17,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: .5,
                                      color: Colors.black,
                                    ),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Have Dinner at 8pm',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
