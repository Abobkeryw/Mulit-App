import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<_OnboardingPageData> _pages = [
    _OnboardingPageData(
      icon: Icons.apps,
      title: 'Welcome',
      description:
          'Welcome to the Multi-App! Explore four useful mini-apps in one place.',
    ),
    _OnboardingPageData(
      icon: Icons.sports_basketball,
      title: 'Basketball App',
      description: 'Track basketball scores and manage teams easily.',
    ),
    _OnboardingPageData(
      icon: Icons.exposure_plus_1,
      title: 'Counter App',
      description: 'A simple and handy counter for counting anything.',
    ),
    _OnboardingPageData(
      icon: Icons.flashlight_on,
      title: 'Flash Light App',
      description: 'Turn your device into a flashlight instantly.',
    ),
    _OnboardingPageData(
      icon: Icons.screen_share,
      title: 'Flash Screen App',
      description: 'Use your screen as a bright light source.',
    ),
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _skip() {
    _finishOnboarding();
  }

  void _finishOnboarding() {
    Navigator.of(context).pushReplacementNamed('fourapp');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          page.icon,
                          size: 100,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(height: 32),
                        Text(
                          page.title,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          page.description,
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                (index) => _buildDot(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: _skip, child: Text('Skip')),
                  ElevatedButton(
                    onPressed: _nextPage,
                    child: Text(
                      _currentPage == _pages.length - 1 ? 'Done' : 'Next',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: _currentPage == index ? 12 : 8,
      height: _currentPage == index ? 12 : 8,
      decoration: BoxDecoration(
        color:
            _currentPage == index
                ? Theme.of(context).primaryColor
                : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _OnboardingPageData {
  final IconData icon;
  final String title;
  final String description;

  _OnboardingPageData({
    required this.icon,
    required this.title,
    required this.description,
  });
}
