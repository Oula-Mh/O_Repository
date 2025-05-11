import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/share_widgets/custom_error_widget.dart';
import '../../manger/alnaal/alnaal_cubit.dart';
import 'custom_grid_view_alnaal_item.dart';

class AlnaalListViewBuilder extends StatelessWidget {
  const AlnaalListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlnaalCubit, AlnaalState>(builder: (context, state) {
      if (state is AlnaalSuccess) {
        return ListView.builder(
            padding: const EdgeInsets.only(top: 5),
            physics: const BouncingScrollPhysics(),
            itemCount: state.alnaalModel.length,
            itemBuilder: (context, index) {
              return  CustomGridViewAlnaalItem(alnaalModel:state.alnaalModel[index] ,);
            });
      } else if (state is AlnaalFailure) {
        return CutomErrorWidget(
          errMessage: state.errMessage,
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
