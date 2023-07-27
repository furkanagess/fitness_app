import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/constants/svg_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaylistView extends StatelessWidget {
  const PlaylistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: const Column(
          children: [
            Expanded(
              flex: 4,
              child: VideoPlayer(),
            ),
            Expanded(
              child: HeaderAndSlider(),
            ),
            Expanded(
              child: VideoControllerRow(),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      title: const Text(
        AppStrings.header,
      ),
    );
  }
}

class VideoControllerRow extends StatelessWidget {
  const VideoControllerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          elevation: 0,
          onPressed: () {},
          child: const Icon(Icons.pause),
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
    );
  }
}

class HeaderAndSlider extends StatelessWidget {
  const HeaderAndSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: context.paddingNormalHorizontal,
              child: Text(
                AppStrings.workoutPlaylist,
                style: context.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Slider(
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
                AppStrings.timeCount,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.error,
                ),
              ),
              Text(
                AppStrings.timeCount2,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.theme.colorScheme.error,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.8),
      child: SvgPicture.asset(
        SVGConstants.instance.training,
      ),
    );
  }
}
