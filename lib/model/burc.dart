import 'package:flutter/material.dart';

class Burc{
  final String _burcAdi;

  String get burcAdi => _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burKucukResim;
  final String _buyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burKucukResim,
      this._buyukResim);
  @override
  String toString() {
    // TODO: implement toString
    return '${_burcAdi} - $_burKucukResim';
  }

  String get burcTarihi => _burcTarihi;

  String get burcDetayi => _burcDetayi;

  String get burKucukResim => _burKucukResim;

  String get buyukResim => _buyukResim;
}