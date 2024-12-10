import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_images.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/core/routes/routes.dart';
import 'package:portfolio/core/theme/app_color.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

class ProjectsList extends StatelessWidget {
  ProjectsList({super.key});

  final List<ProjectDataModel> projectModel = [
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

  @override
  Widget build(BuildContext context) {
    final shuffledData = [...projectModel]..shuffle();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate((shuffledData.length / 2).ceil(), (rowIndex) {
          return Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: MediaQuery.of(context).size.width * 0.02,
              runSpacing: MediaQuery.of(context).size.height * 0.05,
              children: List.generate(4, (colIndex) {
                int itemIndex = rowIndex * 4 + colIndex;
                if (itemIndex >= shuffledData.length) {
                  return Expanded(
                      child: Container()); // Empty widget for alignment
                }
                return SizedBox(
                  width: 250,
                  child: projectItem(context,
                      projectDataModel: projectModel[itemIndex],
                      index: ++itemIndex),
                );
              }),
            ),
          );
        }));
  }

  Widget projectItem(BuildContext context,
      {required ProjectDataModel projectDataModel, required int index}) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(Routes.projectDetailsScreen , arguments: projectDataModel);
      },
      child: Container(
        width: 250,
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-10, 15),
              blurRadius:0.5,
            )
          ],
          border: Border.all(
            color: AppColor.lightBlue,
            width: 2
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                '/$index',
                style: AppTextStyles.font12WhiteSemiBold
                    .copyWith(fontFamily: FontFamilyHelper.dynaPuffFont),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  projectDataModel.title,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.font20BlackBold
                      .copyWith(fontFamily: FontFamilyHelper.robotoFont),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
