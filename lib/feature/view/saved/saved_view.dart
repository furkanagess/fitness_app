// ignore_for_file: strict_raw_type, prefer_final_locals, omit_local_variable_types, no_adjacent_strings_in_list, missing_whitespace_between_adjacent_strings

import 'package:fitness_app/product/constants/app_strings.dart';
import 'package:fitness_app/product/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SavedView extends StatelessWidget {
  const SavedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: Padding(
        padding: context.paddingNormalHorizontal,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              WorkoutPlan(),
              WorkoutPlan(),
              WorkoutPlan(),
              SavedWorkoutsList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.theme.colorScheme.secondary,
      title: Text(
        AppStrings.recom,
        style: context.textTheme.titleLarge?.copyWith(
          color: context.theme.colorScheme.surface,
        ),
      ),
    );
  }
}

class SavedWorkoutsList extends StatelessWidget {
  const SavedWorkoutsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppStrings.saved,
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
        Padding(
          padding: context.paddingNormalVertical,
          child: Row(
            children: [
              const SavedWorkouts(),
              const SavedWorkouts(),
              Padding(
                padding: context.paddingLow,
                child: CircleAvatar(
                  backgroundColor: context.theme.colorScheme.primary,
                  radius: 25,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SavedWorkouts extends StatelessWidget {
  const SavedWorkouts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            'https://picsum.photos/200/300',
            width: context.dynamicWidth(0.35),
            fit: BoxFit.fill,
            height: context.dynamicHeight(0.13),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 30,
          child: Container(
            height: context.dynamicHeight(0.045),
            width: context.dynamicWidth(0.24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.theme.colorScheme.onPrimary,
            ),
            child: const Center(
              child: Text(
                AppStrings.runner,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WorkoutPlan extends StatelessWidget {
  const WorkoutPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            'https://picsum.photos/200/300',
            fit: BoxFit.fill,
            height: context.dynamicHeight(0.25),
            width: double.maxFinite,
          ),
        ),
        Padding(
          padding: context.paddingNormalHorizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.workout,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                AppStrings.time,
              ),
            ],
          ),
        ),
        SizedBox(
          height: context.dynamicHeight(0.03),
        ),
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = [
      'Fitness'
          'Body Building'
          'Workout'
          'Training'
    ];

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
