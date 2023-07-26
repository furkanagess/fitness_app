import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/constants/jfif_constants.dart';
import 'package:fitness_app/product/constants/navigation_constants.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:fitness_app/product/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    const current = 0;
    final tabs = <String>[
      AppStrings.all,
      AppStrings.strength,
      AppStrings.cardio,
      AppStrings.flexibility,
    ];
    return Scaffold(
      appBar: _buildAppbar(context),
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.dynamicHeight(0.03)),
              searchBar(context),
              chipListView(context, tabs, current),
              const WorkoutsGridView(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox chipListView(BuildContext context, List<String> tabs, int current) {
    return SizedBox(
      height: context.dynamicHeight(0.1),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        itemBuilder: (context, index) => Padding(
          padding: context.paddingNormalHorizontal,
          child: InkWell(
            onTap: () {
              setState(() {
                current = index;
              });
            },
            child: Chip(
              labelStyle: TextStyle(
                color: context.theme.colorScheme.onSecondary,
              ),
              label: Text(
                tabs[index],
              ),
              backgroundColor: current == index ? context.theme.colorScheme.primary : context.theme.colorScheme.surface,
            ),
          ),
        ),
      ),
    );
  }

  CustomTextfield searchBar(BuildContext context) {
    return CustomTextfield(
      hintText: AppStrings.searchForWorkout,
      suffixIcon: const Icon(Icons.search),
      defaultColor: context.theme.colorScheme.secondary,
      hintColor: context.theme.colorScheme.surface,
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.theme.colorScheme.secondary,
      title: Text(
        AppStrings.discover,
        style: context.textTheme.titleLarge?.copyWith(
          color: context.theme.colorScheme.surface,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.fitness_center_outlined,
            color: context.theme.colorScheme.surface,
          ),
        )
      ],
    );
  }
}

class WorkoutsGridView extends StatelessWidget {
  const WorkoutsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 12,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.8,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, NavigationConstants.playlist);
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  JFIFConstants.instance.workout3,
                  fit: BoxFit.fill,
                  height: context.dynamicHeight(0.25),
                  width: double.maxFinite,
                ),
              ),
            ),
            Padding(
              padding: context.paddingNormalHorizontal,
              child: Text(
                AppStrings.fullBody,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.theme.colorScheme.surface,
                ),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
          ],
        );
      },
    );
  }
}
