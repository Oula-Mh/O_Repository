import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypro/features/home/presentation/views/widgets/custom_grid_view_loading.dart';
import '../../../../../core/share_widgets/custom_error_widget.dart';
import '../../manger/shoes_models/shoes_models_cubit.dart';
import 'custom_grid_view_item.dart';

class HomeGridViewBuilder extends StatelessWidget {
  const HomeGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoesModelsCubit, ShoesModelsState>(
      builder: (context, state) {
        if (state is ShoesModelSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: GridView.builder(
              padding:const EdgeInsets.only(top: 5),
             physics:const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: state.shoesModels.length,
              itemBuilder: (context, index) {
                return  CustomGridViewItem(shoesModelsModel: state.shoesModels[index],);
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 2.8 / 4),
            ),
          );
        } else if (state is ShoesModelsFailure) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              child: Center(
                child: CutomErrorWidget(
                  errMessage: state.errMessage,
                ),
              ));
        } else {
         return SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: GridView.builder(
              padding:const EdgeInsets.only(top: 5),
              physics:const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CustomGridViewLoading();
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 2.8 / 4),
            ),
          );
        }
      },
    );
  }
}
