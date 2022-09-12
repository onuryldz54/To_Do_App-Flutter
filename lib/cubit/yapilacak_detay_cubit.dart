import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/repo/yapilacaklardao_repo.dart';

class YapilacakDetayCubit extends Cubit<void>{

  YapilacakDetayCubit() : super(0);

  var yaprepo = YapilacaklarDaoRepo();

  Future<void> guncelle(int yapilacak_id, String yapilacak_is) async{

    await yaprepo.yapilacakGuncelle(yapilacak_id, yapilacak_is);
  }
}