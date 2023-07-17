import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilePhoto(),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            const FollowInfoRow(),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            const StatisticsHeader(),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
            const StatisticsRow(),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            const AchievementsHeader(),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
            const AchievementsTrackPageView()
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.settings,
        ),
      ),
    );
  }
}

class AchievementsTrackPageView extends StatelessWidget {
  const AchievementsTrackPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.2),
      child: PageView.builder(
        itemCount: 5,
        controller: PageController(viewportFraction: 0.9),
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Padding(
            padding: context.paddingLowHorizontal,
            child: Card(
              color: context.theme.colorScheme.onBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.workoutTracker,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.01),
                    ),
                    const Text(
                      AppStrings.workoutDescp,
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.03),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.progress,
                        ),
                        Text(
                          AppStrings.progressNumber,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 5,
                      color: context.theme.colorScheme.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AchievementsHeader extends StatelessWidget {
  const AchievementsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.achievements,
      style: context.textTheme.titleLarge,
    );
  }
}

class StatisticsRow extends StatelessWidget {
  const StatisticsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const Icon(
              Icons.analytics_outlined,
            ),
            Text(
              AppStrings.staticticsNumber,
              style: context.textTheme.titleLarge,
            ),
            const Text(
              AppStrings.roundTotal,
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.local_fire_department_outlined,
            ),
            Text(
              AppStrings.staticticsNumber,
              style: context.textTheme.titleLarge,
            ),
            const Text(
              AppStrings.calories,
            )
          ],
        ),
        Column(
          children: [
            const Icon(
              Icons.coffee,
            ),
            Text(
              AppStrings.staticticsNumber,
              style: context.textTheme.titleLarge,
            ),
            const Text(
              AppStrings.staticticsNumber,
            )
          ],
        ),
      ],
    );
  }
}

class StatisticsHeader extends StatelessWidget {
  const StatisticsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.myStatistics,
      style: context.textTheme.titleLarge,
    );
  }
}

class FollowInfoRow extends StatelessWidget {
  const FollowInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              AppStrings.numbers,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.theme.colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              AppStrings.followers,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.theme.colorScheme.surface,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              AppStrings.numbers,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.theme.colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              AppStrings.following,
              style: context.textTheme.titleMedium?.copyWith(
                color: context.theme.colorScheme.surface,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: NetworkImage(
            'https://picsum.photos/200/300',
          ),
        ),
      ],
    );
  }
}
