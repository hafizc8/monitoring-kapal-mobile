class KapalModel {
  String? idKapal;
  String? namaKapal;
  String? tglTiba;
  String? tglBerangkat;
  String? tglTerima;
  String? tglDiserahkan;
  String? spb;
  String? manifest;
  String? crewlist;
  String? bukuKesehatan;
  String? bukuPelaut;
  String? ijazahPerwira;
  String? bst;
  String? pasport;
  String? suratLaut;
  String? suratUkur;
  String? sertiKonstruksi;
  String? sertiPerlengkapanBarang;
  String? sertiRadio;
  String? sertiLambung;
  String? sertiMesin;
  String? sertiGarisMuat;
  String? sertiPencemaran;
  String? minimumSafeManning;
  String? sertiAntiTeritip;
  String? sertiLiferaft;
  String? sertiDamkar;
  String? hru;
  String? doc;
  String? sertiKeselamatanSementara;
  String? rpt;
  String? bukuSijil;
  String? pkl;
  String? sscec;
  String? wreak;
  String? clc;
  String? orb;
  String? izinStasiunRadio;
  String? sertiAsuransiKapal;
  String? siupal;
  String? skSusunanPerwira;
  String? stempelKapal;
  String? tglInput;
  String? statusDokumen;

  KapalModel({
    this.idKapal,
    this.namaKapal,
    this.tglTiba,
    this.tglBerangkat,
    this.tglTerima,
    this.tglDiserahkan,
    this.spb,
    this.manifest,
    this.crewlist,
    this.bukuKesehatan,
    this.bukuPelaut,
    this.ijazahPerwira,
    this.bst,
    this.pasport,
    this.suratLaut,
    this.suratUkur,
    this.sertiKonstruksi,
    this.sertiPerlengkapanBarang,
    this.sertiRadio,
    this.sertiLambung,
    this.sertiMesin,
    this.sertiGarisMuat,
    this.sertiPencemaran,
    this.minimumSafeManning,
    this.sertiAntiTeritip,
    this.sertiLiferaft,
    this.sertiDamkar,
    this.hru,
    this.doc,
    this.sertiKeselamatanSementara,
    this.rpt,
    this.bukuSijil,
    this.pkl,
    this.sscec,
    this.wreak,
    this.clc,
    this.orb,
    this.izinStasiunRadio,
    this.sertiAsuransiKapal,
    this.siupal,
    this.skSusunanPerwira,
    this.stempelKapal,
    this.tglInput,
    this.statusDokumen,
  });

  KapalModel.fromJson(Map<String, dynamic> json) {
    idKapal = json['id_kapal'];
    namaKapal = json['nama_kapal'];
    tglTiba = json['tgl_tiba'];
    tglBerangkat = json['tgl_berangkat'];
    tglTerima = json['tgl_terima'];
    tglDiserahkan = json['tgl_diserahkan'];
    spb = json['spb'];
    manifest = json['manifest'];
    crewlist = json['crewlist'];
    bukuKesehatan = json['buku_kesehatan'];
    bukuPelaut = json['buku_pelaut'];
    ijazahPerwira = json['ijazah_perwira'];
    bst = json['bst'];
    pasport = json['pasport'];
    suratLaut = json['surat_laut'];
    suratUkur = json['surat_ukur'];
    sertiKonstruksi = json['serti_konstruksi'];
    sertiPerlengkapanBarang = json['serti_perlengkapan_barang'];
    sertiRadio = json['serti_radio'];
    sertiLambung = json['serti_lambung'];
    sertiMesin = json['serti_mesin'];
    sertiGarisMuat = json['serti_garis_muat'];
    sertiPencemaran = json['serti_pencemaran'];
    minimumSafeManning = json['minimum_safe_manning'];
    sertiAntiTeritip = json['serti_anti_teritip'];
    sertiLiferaft = json['serti_liferaft'];
    sertiDamkar = json['serti_damkar'];
    hru = json['hru'];
    doc = json['doc'];
    sertiKeselamatanSementara = json['serti_keselamatan_sementara'];
    rpt = json['rpt'];
    bukuSijil = json['buku_sijil'];
    pkl = json['pkl'];
    sscec = json['sscec'];
    wreak = json['wreak'];
    clc = json['clc'];
    orb = json['orb'];
    izinStasiunRadio = json['izin_stasiun_radio'];
    sertiAsuransiKapal = json['serti_asuransi_kapal'];
    siupal = json['siupal'];
    skSusunanPerwira = json['sk_susunan_perwira'];
    stempelKapal = json['stempel_kapal'];
    tglInput = json['tgl_input'];
    statusDokumen = (spb != null && manifest != null && crewlist != null && bukuKesehatan != null && bukuPelaut != null && ijazahPerwira != null && bst != null && pasport != null && suratLaut != null && suratUkur != null && sertiKonstruksi != null && sertiPerlengkapanBarang != null && sertiRadio != null && sertiLambung != null && sertiMesin != null && sertiGarisMuat != null && sertiPencemaran != null && minimumSafeManning != null && sertiAntiTeritip != null && sertiLiferaft != null && sertiDamkar != null && hru != null && doc != null && sertiKeselamatanSementara != null && rpt != null && bukuSijil != null && pkl != null && sscec != null && wreak != null && clc != null && orb != null && izinStasiunRadio != null && sertiAsuransiKapal != null && siupal != null && skSusunanPerwira != null && stempelKapal != null) ? "Sudah Lengkap" : "Belum Lengkap";
  }
}
