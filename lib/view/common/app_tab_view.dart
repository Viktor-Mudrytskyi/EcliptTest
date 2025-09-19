import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_task_eclipt/core/extensions.dart';
import 'package:test_task_eclipt/theme/app_colors.dart';
import 'package:test_task_eclipt/theme/app_text_styles.dart';

class AppTabView extends StatefulWidget {
  const AppTabView({
    super.key,
    required this.tabs,
    this.index,
    required this.onFinish,
  }) : assert(tabs.length > 0, 'Tabs can\'t be empty'),
       assert(
         index == null || (index >= 0 && index < tabs.length),
         'Index must be between 0 and ${tabs.length - 1}',
       );
  final List<Widget> tabs;
  final int? index;
  final VoidCallback onFinish;

  @override
  State<AppTabView> createState() => _AppTabViewState();
}

class _AppTabViewState extends State<AppTabView> {
  late final PageController _controller;

  double _currentPage = 0;
  bool _isLastPage = false;
  bool _isFirstPage = true;

  @override
  void initState() {
    _currentPage = widget.index?.toDouble() ?? 0;
    _controller = PageController(initialPage: widget.index ?? 0);
    _resolve();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 0.0;
      });
      _resolve();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _resolve() {
    setState(() {
      _isFirstPage = _currentPage < 0.5;
      _isLastPage = _currentPage >= widget.tabs.length - 1.5;
    });
  }

  void _backToPrev() {
    if (!_isFirstPage) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNext() {
    if (!_isLastPage) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: context.padding.top)),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${_currentPage.round() + 1}',
                      style: AppTextStyles.base.copyWith(
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: '/${widget.tabs.length}',
                      style: AppTextStyles.base.copyWith(
                        color: AppColors.appGrey4,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                widget.onFinish();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Ink(
                height: 40,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Skip',
                      style: AppTextStyles.base.copyWith(
                        color: AppColors.appBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: PageView(controller: _controller, children: widget.tabs),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: context.padding.bottom,
            left: 21,
            right: 21,
          ),
          child: SizedBox(
            height: 27,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: _isFirstPage
                      ? null
                      : () {
                          _backToPrev();
                        },
                  child: Ink(
                    width: (context.mqSize.width - 42) / 3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: !_isFirstPage
                          ? Text(
                              'Prev',
                              style: AppTextStyles.base.copyWith(
                                color: AppColors.appGrey3,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            )
                          : const Offstage(),
                    ),
                  ),
                ),
                Flexible(
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: widget.tabs.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppColors.activeDot,
                        dotColor: AppColors.passiveDot,
                        spacing: 10,
                        expansionFactor: 4,
                      ),
                    ),
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: _isLastPage
                        ? () {
                            widget.onFinish();
                          }
                        : () {
                            _goToNext();
                          },
                    child: Ink(
                      width: _isLastPage
                          ? (context.mqSize.width - 42) / 2
                          : (context.mqSize.width - 42) / 3,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          !_isLastPage ? 'Next' : 'Get Started',
                          style: AppTextStyles.base.copyWith(
                            color: AppColors.appPink,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
