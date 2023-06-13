import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/core/functions/launch_url.dart';
import 'package:portfolio_brutalism/core/models/button_model.dart';
import 'package:portfolio_brutalism/routes.gr.dart';
import 'package:portfolio_brutalism/widgets/custom_container.dart';
import 'package:portfolio_brutalism/widgets/rive_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.minWidth < 1000) {
        return const Scaffold(
          body: Center(
            child: Text("Coming soon"),
          ),
        );
      } else {
        return AutoTabsRouter(
          routes: const [
            AboutRoute(),
            ProjectsRoute(),
            ConnectRoute(),
          ],
          builder: (context, child) {
            final tabsRouter = AutoTabsRouter.of(context);

            return Scaffold(
              backgroundColor: const Color(0xFF6839fe),
              body: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const NeoBrutalismContainer(
                            child: TitleTVWidget(),
                          ),
                          SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: NeoBrutalismContainer(
                              backgroundColor: Colors.transparent,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Transform.translate(
                                      offset: const Offset(0, -20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: buttonList
                                            .map(
                                              (e) => Expanded(
                                                child: RiveButton(
                                                  title: e.name,
                                                  onTap: () {
                                                    tabsRouter
                                                        .setActiveIndex(e.id);
                                                  },
                                                ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: RiveButton(
                                      path: 'assets/pink_button.riv',
                                      title: 'Join our community',
                                      hoverEnterColor: Colors.white70,
                                      hoverExitColor: Colors.white,
                                      fontSize: 16,
                                      bottomPadding: 10,
                                      onTap: () async {
                                        await Future.delayed(
                                          const Duration(milliseconds: 400),
                                        );
                                        launchUrlInBrowser(
                                          'https://www.7span.in/club',
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: NeoBrutalismContainer(
                        child: SizedBox(
                          child: Center(
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }
}
