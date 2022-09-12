import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/repo/yapilacaklardao_repo.dart';

class YapilacakKayitCubit extends Cubit<void>{
  YapilacakKayitCubit() : super(0);

  var yaprepo = YapilacaklarDaoRepo();

  Future<void> kayit(String yapilacak_is) async{
    await yaprepo.yapilacakKayit(yapilacak_is);
  }
}