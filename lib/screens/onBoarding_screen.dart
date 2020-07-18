import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/onBoarding_widget.dart';
import '../Provider/onBoarding_provider.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<OnBoardingScreen> {
  int _currentValue = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final viewData = Provider.of<OnBoardingProvider>(
      context,
      listen: false,
    );
    final viewList = viewData.slides;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
            itemCount: viewList.length,
            itemBuilder: (context, index) {
              return ChangeNotifierProvider.value(
                value: viewList[index],
                child: OnBoardingWidget(),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        viewList.length,
                        (index) {
                          return Dots(
                              currentValue: _currentValue, index: index);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInToLinear);
                  },
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    height: 60,
                    width: _currentValue != (viewList.length - 1) ? 60 : 200,
                    duration: Duration(milliseconds: 400),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: _currentValue != (viewList.length - 1)
                        ? Icon(
                            Icons.navigate_next,
                            size: 60,
                            color: Colors.white,
                          )
                        : Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: const Text(
                              'Acessar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Dots extends StatelessWidget {
  final int currentValue;
  final int index;

  const Dots({
    this.currentValue,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 10,
      width: (currentValue == index) ? 25 : 10,
      decoration: BoxDecoration(
        color: (currentValue == index)
            ? Colors.black
            : Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
