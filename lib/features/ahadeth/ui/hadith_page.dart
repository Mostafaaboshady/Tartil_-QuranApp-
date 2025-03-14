import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/features/ahadeth/controller/hadith_cubit.dart';

import '../../../core/utils/NetWork/Hadith_Repository.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'أحاديث',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2ea585),
      ),
      body: BlocProvider(
        create: (context) => HadithCubit(HadithRepository())..fetchHadiths(),
        child: BlocBuilder<HadithCubit, HadithState>(
          builder: (context, state) {
            if (state is HadithLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HadithLoaded) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                  itemCount: state.hadiths.length,
                  itemBuilder: (context, index) {
                    final hadith = state.hadiths[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hadith.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xFF2ea585),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                hadith.arab,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (state is HadithError) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: Text('No data'));
            }
          },
        ),
      ),
    );
  }
}
