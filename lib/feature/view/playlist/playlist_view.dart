import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Runner's Yoga",
        ),
        backgroundColor: context.theme.colorScheme.secondary,
        elevation: 0,
      ),
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                width: context.dynamicWidth(0.8),
                child: SvgPicture.asset(
                  SVGConstants.instance.training,
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: context.paddingNormalHorizontal,
                        child: Text(
                          "Workout Playlist",
                          style: context.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    min: 0,
                    max: 29,
                    value: 3,
                    onChanged: (value) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2:31",
                          style: context.textTheme.bodySmall?.copyWith(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "-21:30",
                          style: context.textTheme.bodySmall?.copyWith(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: context.theme.colorScheme.primary,
                    child: const Icon(Icons.pause),
                    elevation: 0,
                    onPressed: () {},
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.equalizer,
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
}
