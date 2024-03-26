import 'package:get/get.dart';

class JadwalKonsultasiController extends GetxController {
  var isSelectedSenin = false.obs;
  var isSelectedSelasa = false.obs;
  var isSelectedRabu = false.obs;
  var isSelectedKamis = true.obs;
  var isSelectedJumat = false.obs;
  var isSelectedSabtu = false.obs;
  var isSelectedMinggu = false.obs;

  void selectSenin() {
    isSelectedSenin.value = true;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = false;
    update();
  }

  void selectSelasa() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = true;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = false;
    update();
  }

  void selectRabu() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = true;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = false;
    update();
  }

  void selectKamis() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = false;
    update();
  }

  void selectJumat() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = true;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = false;
    update();
  }

  void selectSabtu() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = true;
    isSelectedMinggu.value = false;
    update();
  }

  void selectMinggu() {
    isSelectedSenin.value = false;
    isSelectedSelasa.value = false;
    isSelectedRabu.value = false;
    isSelectedKamis.value = false;
    isSelectedJumat.value = false;
    isSelectedSabtu.value = false;
    isSelectedMinggu.value = true;
    update();
  }

  var isEightSelected = true.obs;
  var isNineSelected = false.obs;
  var isTenSelected = false.obs;

  void selectEight() {
    isEightSelected.value = true;
    isNineSelected.value = false;
    isTenSelected.value = false;
    update();
  }

  void selectNine() {
    isEightSelected.value = false;
    isNineSelected.value = true;
    isTenSelected.value = false;
    update();
  }

  void selectTen() {
    isEightSelected.value = false;
    isNineSelected.value = false;
    isTenSelected.value = true;
    update();
  }
}
