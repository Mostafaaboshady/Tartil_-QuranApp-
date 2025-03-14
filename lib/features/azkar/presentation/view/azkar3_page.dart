import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/features/azkar/presentation/manager/azkar_cubit.dart';

class AzkarPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أذكار النوم',style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xFF2ea585),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/nigh3.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: BlocProvider(
          create: (context) => AzkarCubit()..fetchAzkar3(),
          child: BlocBuilder<AzkarCubit, AzkarState>(
            builder: (context, state) {
              if (state is AzkarLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is AzkarLoaded) {
                return ListView.builder(
                  itemCount: state.azkarList.length,
                  itemBuilder: (context, index) {
                    final azkar = state.azkarList[index];
                    return Card(
                      margin: EdgeInsets.all(10),
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              azkar.content,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20),

                            Text(
                              azkar.description,
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else if (state is AzkarError) {
                return Center(
                  child: Text(
                    state.message,
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                );
              }
              return Center(
                child: Text(
                  'اضغط على الزر لتحميل الأذكار',
                  style: TextStyle(fontSize: 18),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}