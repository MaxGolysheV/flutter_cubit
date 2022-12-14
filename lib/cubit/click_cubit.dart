import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/themes.dart';
import 'package:meta/meta.dart';

part 'click_state.dart';

class ClickCubit extends Cubit<ClickState> {
  ClickCubit() : super(ClickInitial());


  int count =0;
  void onClick()
  {
    count++;


     if(count==10)
     {
        emit(ClickError('Ашипка +'));
        count = 0;
        return;
     }
     
    emit(Click(count));
  }

  void onClickMinus()
  {
    count--;
     if(count==-10)
     {
        emit(ClickError('Ашипка -'));
        count = 0;
        return;
     }
    emit(Click(count));
  }



  void Side(int c)
  {

    CubitThemes ct = new CubitThemes();
    
    emit(myClick(c, ct.lightPath.toString()));
    
    
    emit(myClick(c, ct.darkPath.toString()));
    
  }
}






