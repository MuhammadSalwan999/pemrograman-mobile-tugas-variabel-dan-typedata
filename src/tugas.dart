import 'dart:io';
void main() {
  stdout.write("Masukkan nama karyawan: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan jumlah jam kerja dalam seminggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (y / n) :");
  bool statusTetap = stdin.readLineSync()!.toLowerCase() == 'y';

  double gajiKotor = jamKerja * upahPerJam;
  double pajak = statusTetap ? gajiKotor * 0.10 : gajiKotor * 0.05;
  double gajiBersih = gajiKotor - pajak;

  print("\n=== Hasil Perhitungan Gaji ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp${gajiKotor.toStringAsFixed(2)}");
  print("Pajak         : Rp${pajak.toStringAsFixed(2)}");
  print("Gaji Bersih   : Rp${gajiBersih.toStringAsFixed(2)}");
}