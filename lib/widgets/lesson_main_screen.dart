import 'package:flutter/material.dart';
import 'package:test_screen/constants/colors_constants.dart';
import 'package:test_screen/constants/image_constants.dart';

const previousViewTitle = 'Lessons';
const expressProgCount = 510;
const tabLessonNumber = 1;
const tabLessonName = 'Name of the lesson 1';
const tabSessonNumber = 1;
const tabSessonName = 'Shot description of the session 1';
const extremeSession = '34/42';

class LessonMainScreenWidget extends StatelessWidget {
  const LessonMainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: _buildAppBar(previousViewTitle, expressProgCount.toString()),
        bottomNavigationBar: _buildNavigationBar(),
        body: ListView(children: const [
          _LessonWigdet(),
          _SessionsDescription(),
          _SessionWigdet(),
          _LockSession()
        ]));
  }

  AppBar _buildAppBar(String title, String extremeProg) {
    return AppBar(
      flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          firstGradientColor,
          secondGradientColor,
          thirdGradientColor,
          fourthGradientColor
        ],
      ))),
      centerTitle: false,
      title: Text(title),
      elevation: 0.0,
      leading: const Icon(Icons.chevron_left),
      leadingWidth: 12.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            children: [
              const Image(image: AssetImage(extremeProgImage)),
              const SizedBox(width: 6),
              Text(extremeProg, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }

  BottomNavigationBar _buildNavigationBar() {
    const _labelNavbar = '•';
    return BottomNavigationBar(
      elevation: 0.0,
      backgroundColor: backgroundNavbarColor,
      items: const [
        BottomNavigationBarItem(
          label: _labelNavbar,
          icon: Image(image: AssetImage(sessionButtonImage)),
        ),
        BottomNavigationBarItem(
          label: _labelNavbar,
          icon: Image(image: AssetImage(secondButtonImage)),
        ),
        BottomNavigationBarItem(
          label: _labelNavbar,
          icon: Image(image: AssetImage(personButtonImage)),
        )
      ],
      currentIndex: 0,
      selectedItemColor: selectedNavbarColor,
      unselectedItemColor: backgroundNavbarColor,
      // nu takoe :)
    );
  }
}

class _SessionsDescription extends StatelessWidget {
  const _SessionsDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
          child: Column(
        children: const [
          Text('Sessions',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: whiteTextColor,
              )),
          SizedBox(height: 8),
          Text('Practice to consolidate your knowledge',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: gray600TextColor,
              )),
        ],
      )),
    );
  }
}

class _LessonWigdet extends StatelessWidget {
  const _LessonWigdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: tabLessonBorderColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                tabLessonFirstColor,
                tabLessonSecondColor,
                tabLessonThirdColor
              ],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(24))),
        height: 170, // ??
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Image(image: AssetImage(restartButton)), // or button?
              SizedBox(height: 55),
              Text('Lesson $tabLessonNumber',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: gray300TextColor,
                  )),
              SizedBox(height: 4),
              Text(tabLessonName,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: whiteTextColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class _SessionWigdet extends StatelessWidget {
  const _SessionWigdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: tabSessionBorderColor,
              width: 1,
              style: BorderStyle.solid,
            ),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
              colors: [
                tabSessonFirstColor,
                tabSessonFirstColor,
                tabSessonSecondColor,
                tabSessonThirdColor
              ],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(24))),
        height: 170, // ??
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage(checkImage)),
                  Row(
                    children: const [
                      Image(image: AssetImage(extremeProgImage)),
                      SizedBox(width: 6),
                      Text(extremeSession,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: accentPurpleColor,
                          ))
                    ],
                  )
                ],
              ), // or button?
              const SizedBox(height: 55),
              const Text('Sesson $tabSessonNumber',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: whiteTextColor,
                  )),
              const SizedBox(height: 8),
              const Text(tabSessonName,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: gray500TextColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class _LockSession extends StatelessWidget {
  const _LockSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  color: gray800BckgrndColor,
                  border: Border.all(
                    color: tabSessionBorderColor,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Image(
                image: AssetImage(lockImage),
              )),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'More sessions will be available here later. We will keep you informed.',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: gray600TextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
