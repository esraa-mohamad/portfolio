import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/features/projects/screen/project_screen/widgets/project_item.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({super.key, required this.crossAxisCount});

  final List<ProjectDataModel> projectModelList = [
    ProjectDataModel(
      imagePath: AppImages.dnaImage,
      title: 'Double Helix Detective System "Dna Testing System"',
      description:
          'The main objective in this project to collect data in database by using file DNA.\nIt is responsible for searching about only person , or person and hir relatives and paternity proof processes.\nUsing 2 api of database and machine learning.',
      tools:
          "\n- Retrofit to connect API.\n- Json serializable to handle model and request.\n- Stream & Sink to rebuild ui by data\n- GetIt to make dependency injection",
      linkUrl:
          'https://github.com/esraa-mohamad/Graduation-Project-Double-Helix-Detective-System',
    ),
    ProjectDataModel(
      imagePath: AppImages.calculationImage,
      title: 'Simple Calculator',
      description:
          'Performs arithmetic operations such as addition, subtraction, multiplication and division.\nObserves the correct processes in writing.\nShow operations history and delete from it',
      tools:
          "\n- Provider to rebuild ui with expression and result .\n- Expression to make correct expression.\n- Switch toggle animation to make light&dart theme",
      linkUrl: 'https://github.com/esraa-mohamad/calculator-app',
    ),
    ProjectDataModel(
      imagePath: AppImages.newsImage,
      title: 'News App',
      description:
          'Show last news from news api.\nShow news depend on category.\nSave news data in local data in app',
      tools:
          "\n- Dio to connect with API .\n- Url launcher to open news web view",
      linkUrl: 'https://github.com/esraa-mohamad/news_app',
    ),
    ProjectDataModel(
      imagePath: AppImages.fruitsImage,
      title: 'Fruits Ecommerce',
      description:
          'Simple login using name.\nShow all fruits available in store.\nShow fruits from category.\nAdd fruits in cart',
      tools:
          "\n- Sqflite to add , select , search and delete items from app .\n- BloC  to connect with sqflite and rebuild ui",
      linkUrl: 'https://github.com/esraa-mohamad/ecommerce_fruits_sqflite',
    ),
    ProjectDataModel(
      imagePath: AppImages.beautyImage,
      title: 'Beauty Ecommerce',
      description:
          'Show beauty makeup.\nShow makeup depend on its brand.\nSearch about makeup using its product type.\nAdd makeup in cart',
      tools:
          "\n- Retrofit to connect with api authentication and makeup.\n- Json Serializable to make model response and request about API\n- BloC  to connect with repo and rebuild ui\n- GetIt to make dependency injection that connect with files",
      linkUrl: 'https://github.com/esraa-mohamad/beauty_ecommerce',
    ),
  ];

  final int crossAxisCount ;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: projectModelList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 40.h ,
        crossAxisSpacing: 35.w ,
        mainAxisExtent: 200.h,
      ),
      itemBuilder: (context, index) {
        return ProjectItem(
          projectDataModel: projectModelList[index],
          index: index++,
        );
      },
    );
  }
}
