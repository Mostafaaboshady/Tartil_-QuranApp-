import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/features/home/presentation/manager/cubit/all_ayas_cubit.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/ayah_body.dart';

class ListAyahBody extends StatelessWidget {
  const ListAyahBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllAyasCubitCubit, AllAyasState>(
        builder: (context, state) {
          if (state is AllAyasLoading) {
        return Center(child: CircularProgressIndicator());
      } else if (state is AllAyasLoaddid) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFF2ea585),
            elevation: 0,
            title: const Text(
              'القران الكريم',
              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold,fontSize: 25),
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AyahBody(
                  images: Image.asset(
                    state.ayas[index].revelationType == 'Meccan'
                        ? 'assets/images/ca4.jpg'
                        : 'assets/images/ca6.jpg',
                    fit: BoxFit.fill,
                  ),
                  nameAyah: '${state.ayas[index].name}',
                  numberAyah: '${state.ayas[index].ayahs?.length ?? 0}',
                  onPressed: () {
                    Navigator.pushNamed(context, '/details_ayas', arguments:
                    state.ayas[index],
          
          
                    );
                  },
                );
              },
              itemCount: state.ayas.length,
            ),
          ),
        );
          Center(child: Text(state.toString()));
      } else {
        return  Center(child: Text(state.toString()));
      }
    });
  }
}
