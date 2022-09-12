import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/entity/yapilacaklar.dart';
import 'package:to_do_app/repo/yapilacaklardao_repo.dart';

class AnasayfaCubit extends Cubit<List<Yapilacaklar>>{

  AnasayfaCubit() : super(<Yapilacaklar>[]);

  var yaprepo = YapilacaklarDaoRepo();

  Future<void> yapilacaklariYukle() async{
    var liste = await yaprepo.tumYapilacaklariAl();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async{
    var liste = await yaprepo.yapilacakAra(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int yapilacak_id) async{
    await yaprepo.yapilacakSil(yapilacak_id);
  }
}