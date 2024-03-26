import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hack/app/shared/theme/color.dart';
import '../controllers/notifikasi_page_controller.dart';

class NotifikasiPageView extends GetView<NotifikasiPageController> {
  const NotifikasiPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Notifikasi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Hari Ini',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: 3, // Jumlah notifikasi
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(
                        _getIcon(index),
                        scale: 1.5,
                      ),
                      title: Text(
                        _getTitle(index),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        _getSubtitle(index),
                        style: TextStyle(
                          fontSize: 12,
                          color: grey,
                        ),
                      ),
                      trailing: Text(
                        _getTime(index),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getIcon(int index) {
    switch (index) {
      case 0:
        return 'assets/images/icons/lonceng.png';
      case 1:
        return 'assets/images/icons/succes.png';
      case 2:
        return 'assets/images/icons/money.png';
      default:
        return '';
    }
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Kesehatanmu telah meningkat';
      case 1:
        return 'Pembayaranmu berhasil';
      case 2:
        return 'Selamat kamu berhasil menghemat';
      default:
        return '';
    }
  }

  String _getSubtitle(int index) {
    switch (index) {
      case 0:
        return 'Kamu berhasil mengurangi konsumsi rokok sebesar 20%';
      case 1:
        return 'Konsultasikan kondisi kesehatanmu pada dokter pilihanmu';
      case 2:
        return 'Kamu berhasil menghemat uangmu sekitar IDR 32.000 hari ini';
      default:
        return '';
    }
  }

  String _getTime(int index) {
    switch (index) {
      case 0:
        return '09.01';
      case 1:
        return '08.25';
      case 2:
        return '07.03';
      default:
        return '';
    }
  }
}
