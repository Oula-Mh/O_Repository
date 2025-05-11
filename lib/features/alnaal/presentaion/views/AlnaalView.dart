import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypro/features/alnaal/presentaion/manger/alnaal/alnaal_cubit.dart';
import 'package:mypro/features/alnaal/presentaion/views/widgets/body_alnaal.dart';
import 'package:mypro/features/home/data/models/shoes_models_model.dart';
import '../../../../core/share_widgets/top_bar.dart';

class AlnaalView extends StatefulWidget {
  final ShoesModelsModel shoesModels;
  const AlnaalView({required this.shoesModels,super.key});

  @override
  State<AlnaalView> createState() => _AlnaalViewState();
}

class _AlnaalViewState extends State<AlnaalView> {
  @override
  void initState() {
BlocProvider.of<AlnaalCubit>(context).fetchAllAlnaal(id: widget.shoesModels.id);
super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: TopBar(title: "تفاصيل الموديل",),
          ),
             Positioned(
            top: 95,
            left: 15,
            right: 15,
            child: BodyAlnaal(shoesModelsModel: widget.shoesModels,),
          ),
        ],
      ),
    );
  }
}
