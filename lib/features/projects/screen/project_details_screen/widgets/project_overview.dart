import 'package:flutter/material.dart';
import 'package:portfolio/core/helper/app_functions.dart';
import 'package:portfolio/core/models/project_data_model.dart';
import 'package:portfolio/core/theme/app_text_styles.dart';
import 'package:portfolio/core/theme/font_family_helper.dart';

import '../../../../../core/theme/app_color.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({super.key, required this.projectDataModel});

  final ProjectDataModel projectDataModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.07,
          vertical: MediaQuery.of(context).size.height * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Text(
            'Project Overview',
            style: AppTextStyles.font50BlackBold.copyWith(
              fontFamily: FontFamilyHelper.caveatFont,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            projectDataModel.description,
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.font18LightBlueMedium
                .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project tools',
                    style: AppTextStyles.font30BlackBold
                        .copyWith(fontFamily: FontFamilyHelper.caveatFont),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    projectDataModel.tools,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font14LightBlueMedium
                        .copyWith(fontFamily: FontFamilyHelper.poppinsFont),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project link',
                    style: AppTextStyles.font30BlackBold
                        .copyWith(fontFamily: FontFamilyHelper.caveatFont),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      AppFunctions.launchLinks(projectDataModel.linkUrl);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: AppColor.bleuDeFrance,
                              offset: Offset(-15, 10),
                              blurRadius: 0.2),
                        ],
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'See My Work  ',
                            style: AppTextStyles.font18BlackSemiBold.copyWith(
                              fontFamily: FontFamilyHelper.caveatFont,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
        ],
      ),
    );
  }
}
