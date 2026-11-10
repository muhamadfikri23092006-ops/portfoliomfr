// ============================================================
// TEMPLATE PORTOFOLIO "KERTAS & TINTA" (FLUTTER, RESPONSIF HP + WEB)
// ------------------------------------------------------------
// Cara ganti isi : edit bagian "DATA" tepat di bawah ini saja.
// Paket wajib    : google_fonts  ->  flutter pub add google_fonts
// Foto (opsional): taruh di assets/foto.jpg lalu daftarkan di
//                  pubspec.yaml (lihat catatan di _IronPhoto).
// ============================================================
import 'dart:math' as math;

import 'package:flutter/foundation.dart' show ValueNotifier;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// ============================================================
// DATA  —  EDIT BAGIAN INI UNTUK MENGGANTI ISI
// ============================================================
class Social {
  final String label, handle, url;
  final IconData? icon; // pakai icon ...
  final String? glyph; // ... atau teks pendek, mis. "in"
  const Social({
    required this.label,
    required this.handle,
    required this.url,
    this.icon,
    this.glyph,
  });
}

class Stat {
  final int value;
  final String suffix, label;
  const Stat(this.value, this.suffix, this.label);
}

class SkillGroup {
  final String title;
  final List<String> items;
  const SkillGroup(this.title, this.items);
}

class CareerItem {
  final String period, title, org, desc;
  final List<String> tags;
  const CareerItem({
    required this.period,
    required this.title,
    required this.org,
    required this.desc,
    required this.tags,
  });
}

class Achievement {
  final IconData icon;
  final String tag, title, desc;
  const Achievement({
    required this.icon,
    required this.tag,
    required this.title,
    required this.desc,
  });
}

class Project {
  final String category, year, title, desc, url;
  final List<String> tags;
  const Project({
    required this.category,
    required this.year,
    required this.title,
    required this.desc,
    required this.url,
    required this.tags,
  });
}

// ---------- Hero ----------
const kNameFirst = 'Muhamad';
const kNameLast = 'Fikri Ramadhan';
const kRole = 'Mahasiswa Informatika';
const kQuote =
    'Ngetik kode sambil dengerin Somebody Pleasure by Aziz Hedra, ngabisin kopi, demi ngerapihin logika sistem yang eror.';
const kPrimaryButton = 'Hubungi Saya';
const kSecondaryButton = 'Lihat Proyek';
const kPhotoAsset = 'assets/foto.jpg';

// Kartu profil di hero
const kHandle = 'fikri@portfolio: ~';
const kProfile = <String, Object>{
  'nama': 'Muhamad Fikri Ramadhan',
  'pekerjaan': 'Mahasiswa Informatika',
  'akademisi': 'Informatika, Universitas Bhayangkara Jakarta Raya',
  'riset': ['Computer Architecture', 'Mobile Development', 'Software Engineering'],
  'lokasi': 'Bekasi, Indonesia',
};
const kExperienceLine = 'Semester 5';
const kStatusLine = '[OK] All systems fully operational, Sir. At your service. #JARVIS';

// ---------- Sosial media (dipakai di hero & kontak) ----------
const kSocials = [
  Social(
    label: 'LinkedIn',
    handle: 'linkedin.com/in/muhamadfikri',
    url: 'https://linkedin.com/in/muhamadfikri',
    glyph: 'in',
  ),
  Social(
    label: 'GitHub',
    handle: 'github.com/muhamadfikri23092006-ops',
    url: 'https://github.com/muhamadfikri23092006-ops',
    icon: Icons.code,
  ),
  Social(
    label: 'Instagram',
    handle: '@pkrai_0',
    url: 'https://instagram.com/pkrai_0',
    icon: Icons.camera_alt_outlined,
  ),
  Social(
    label: 'Vercel Showcase',
    handle: 'portfoliomfr.vercel.app',
    url: 'https://portfoliomfr.vercel.app',
    icon: Icons.change_history,
  ),
];

// ---------- Tentang ----------
// Tanda **teks** membuat teks jadi tebal (dengan stabilo kuning).
const kAboutParagraphs = [
  'Halo! Saya **Muhamad Fikri Ramadhan**, seorang **Mahasiswa Informatika** yang tertarik pada teknologi, data, dan pengembangan perangkat lunak.',
  'Saat ini saya sedang kuliah di **Universitas Bhayangkara Jakarta Raya** dan aktif sebagai **Event Organizer** di **UKM DSC**.',
  'Memegang prinsip bahwa kode yang baik bukan cuma sekadar jalan, tapi juga efisien, rapi, dan memberikan solusi nyata buat penggunanya.',
];
const kAboutInfo = [
  'NPM: 202410715230',
  'ORCID: 0000-0000-0000-0000',
  'Bekasi, Indonesia',
];
const kStats = [
  Stat(2, '+', 'Tahun Pengalaman'),
  Stat(3, '+', 'Proyek Selesai'),
  Stat(5, '+', 'Sertifikasi'),
  Stat(1, '', 'Penghargaan'),
];
const kSkills = [
  SkillGroup('Data & AI', ['Python', 'SQL', 'Machine Learning', 'ETL']),
  SkillGroup('Web & Software', ['PHP', 'Laravel', 'Flutter', 'JavaScript']),
  SkillGroup('Tools', ['Git', 'Docker', 'Linux (Ubuntu)', 'VS Code']),
];

// ---------- Karir ----------
const kCareer = [
  CareerItem(
    period: '2024 — Sekarang',
    title: 'Mahasiswa Informatika Semester 5',
    org: 'Universitas Bhayangkara Jakarta Raya · Bekasi',
    desc:
        'Aktif mengikuti perkuliahan Informatika dengan minat khusus pada arsitektur komputer dan pemrograman aplikasi. Berhasil menyelesaikan beberapa modul dan proyek showcase interaktif.',
    tags: ['Mahasiswa Aktif', 'F5A6', 'EO DSC'],
  ),
  CareerItem(
    period: '2022 — 2024',
    title: 'Sekolah Menengah Atas (SMA) IPA',
    org: 'MAN 1 Kota Bekasi',
    desc:
        'Nginjek fondasi kepemimpinan dan jiwa sosial sejak SMA lewat PMR, Kordiv Acara PHBI ROHIS, serta Sekretaris Karang Taruna RW 07. Berpengalaman di bidang humanitarian, operasional event, dan administrasi.',
    tags: ['Rohis', 'PMR', 'Karang Taruna'],
  ),
  CareerItem(
    period: '2018 — 2022',
    title: 'Sekolah Menengah Pertama (SMP)',
    org: 'SMPIT Avicenna',
    desc:
        "Aktif di ekskul PMR dan Futsal, meraih Juara 1 Perlombaan Pertolongan Pertama (PP) Tim sebanyak 2 kali, serta menyelesaikan hafalan 2 Juz Al-Qur'an.",
    tags: ['Futsal', 'PMR', '2 Juz Alquran'],
  ),
  CareerItem(
    period: '2012 — 2018',
    title: 'Sekolah Dasar (SD)',
    org: 'SDIT Al Manar',
    desc:
        'Menyelesaikan pendidikan dasar berbasis Islam terpadu dengan fokus pada pembentukan karakter, akademik, dan kegiatan siswa.',
    tags: ['Karakter Building', 'Akademik', 'SDIT Al Manar'],
  ),
];

// ---------- Prestasi ----------
const kAchievements = [
  Achievement(
    icon: Icons.emoji_events_outlined,
    tag: 'Kompetisi',
    title: 'Juara 1 Lomba PP Tim (2x)',
    desc:
        'Berhasil meraih Juara 1 tingkat regional sebanyak 2 kali dalam kategori Pertolongan Pertama (PP) Tim melalui ekskul PMR.',
  ),
  Achievement(
    icon: Icons.flag_outlined,
    tag: 'Kepemimpinan',
    title: 'Kordiv Acara PHBI ROHIS',
    desc:
        'Memimpin perencanaan dan pelaksanaan seluruh kegiatan perayaan hari besar Islam di lingkungan MAN 1 Kota Bekasi.',
  ),
  Achievement(
    icon: Icons.groups_outlined,
    tag: 'Organisasi',
    title: 'Sekretaris Karang Taruna RW 07',
    desc:
        'Mengelola administrasi, penyusunan dokumen resmi, serta koordinasi kegiatan kepemudaan warga di tingkat RW.',
  ),
  Achievement(
    icon: Icons.menu_book_outlined,
    tag: 'Keagamaan',
    title: "Hafiz 2 Juz Al-Qur'an",
    desc:
        "Menyelesaikan program hafalan 2 Juz Al-Qur'an dengan baik selama menempuh studi di SMPIT Avicenna.",
  ),
  Achievement(
    icon: Icons.sports_soccer_outlined,
    tag: 'Olahraga',
    title: 'Tim Futsal Sekolah',
    desc:
        'Aktif sebagai pemain inti tim Futsal SMPIT Avicenna dan berpartisipasi dalam berbagai turnamen antarsekolah.',
  ),
  Achievement(
    icon: Icons.school_outlined,
    tag: 'Akademik',
    title: 'Mahasiswa Informatika Ubhara Jaya',
    desc:
        'Terdaftar aktif di Universitas Bhayangkara Jakarta Raya dengan fokus pada Organisasi Komputer & Mobile Dev.',
  ),
];

// ---------- Proyek ----------
const kProjects = [
  Project(
    category: 'Mobile',
    year: '2026',
    title: 'Terminal UI Portfolio App',
    desc:
        'Aplikasi portofolio Flutter modern bergaya terminal interaktif dengan efek visual kustom dan tata letak responsive.',
    url: 'https://github.com/muhamadfikri23092006-ops/portfoliomfr',
    tags: ['Flutter', 'Dart', 'Google Fonts'],
  ),
  Project(
    category: 'Web',
    year: '2026',
    title: 'Personal Web Showcase',
    desc:
        'Website portofolio dan showcase profil modern yang disebarkan secara otomatis melalui platform Vercel.',
    url: 'https://portfoliomfr.vercel.app',
    tags: ['Vercel', 'JavaScript', 'HTML/CSS'],
  ),
  Project(
    category: 'Sistem',
    year: '2026',
    title: 'Simulasi Organisasi Komputer',
    desc:
        'Eksperimen arsitektur sistem dan logika instruksi mesin untuk pendalaman mata kuliah Pengantar Organisasi Komputer.',
    url: 'https://github.com/muhamadfikri23092006-ops/org-komputer-sim',
    tags: ['CompOrg', 'Logic', 'Architecture'],
  ),
  Project(
    category: 'Tools',
    year: '2025',
    title: 'Notion Workspace Management',
    desc:
        'Sistem dokumentasi tugas perkuliahan dan manajemen alur kerja proyek yang terstruktur di Notion.',
    url: 'https://notion.so',
    tags: ['Notion', 'Productivity', 'Workflow'],
  ),
  Project(
    category: 'Web',
    year: '2025',
    title: 'Academic & Event Design Pack',
    desc:
        'Perancangan materi visual, presentasi interaktif, dan media promosi acara menggunakan Canva.',
    url: 'https://canva.com',
    tags: ['Canva', 'Graphic Design', 'UI Concept'],
  ),
  Project(
    category: 'Mobile',
    year: '2025',
    title: 'Cross-Platform Mobile App Concept',
    desc:
        'Eksperimen antarmuka dan komponen aplikasi mobile Android/iOS menggunakan framework Flutter.',
    url: 'https://github.com/muhamadfikri23092006-ops/flutter-mobile-app',
    tags: ['Flutter', 'Dart', 'UI/UX'],
  ),
];

// ---------- Kontak & footer ----------
const kContactIntro =
    'Tertarik berkolaborasi atau sekadar berdiskusi soal teknologi? Hubungi aku lewat kanal di bawah atau isi formulir ini.';
// Catatan kecil di bawah form. Ganti setelah form benar-benar terhubung.
const kFormNote = '// form ini masih mode demo';
const kFooterNote = '\$ echo "Dibangun dengan ♥ dan banyak kopi"';

// ============================================================
// PALET & FONT  —  tema "Kertas & Tinta" (neo-brutalist)
// ============================================================
// Konsep: kertas krem + garis tinta tebal + bayangan keras tanpa
// blur + warna pastel ala stabilo. Semua warna & font ada di blok
// ini, jadi mengganti tema cukup dengan mengubah blok ini.
const paper = Color(0xFFF4EEE3); // latar kertas
const paperDark = Color(0xFFE8DFCC);
const ink = Color(0xFF15130F); // tinta: teks + semua garis tepi
const cardBg = Color(0xFFFFFFFF);
const tomato = Color(0xFFFF4F2E); // aksen utama
const sun = Color(0xFFFFC93C); // kuning stabilo
const sky = Color(0xFF7CC8FF);
const lilac = Color(0xFFC3B1FF);
const mint = Color(0xFF8FE3B8);
const textPrimary = ink;
const textMuted = Color(0xFF55504A);
const kPastels = [sun, sky, lilac, mint];

// Khusus efek "Iron Man" pada foto.
const ironRed = Color(0xFFFF2D2D);
const ironGold = Color(0xFFFFB700);
const arcCyan = Color(0xFF00E5FF);

Color goldA(double o) => Color.fromRGBO(255, 183, 0, o);
Color redA(double o) => Color.fromRGBO(255, 45, 45, o);
Color arcA(double o) => Color.fromRGBO(0, 229, 255, o);

// Teks yang sama selalu dapat warna pastel yang sama
// (mis. semua tag "Flutter" berwarna sama).
Color pastelFor(String s) =>
    kPastels[s.codeUnits.fold<int>(0, (a, b) => a + b) % kPastels.length];

// Kotak bergaya brutal: garis tinta tebal + bayangan keras (tanpa blur).
BoxDecoration brutal({
  Color fill = cardBg,
  double radius = 14,
  double shadow = 5,
  double border = 2,
}) =>
    BoxDecoration(
      color: fill,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: ink, width: border),
      boxShadow: shadow <= 0
          ? null
          : [BoxShadow(color: ink, offset: Offset(shadow, shadow))],
    );

// Tiga font: label = Space Mono, teks isi = DM Sans, judul = Archivo Black.
TextStyle mono({
  double size = 14,
  Color color = ink,
  FontWeight weight = FontWeight.w400,
  double? spacing,
  double? height,
}) =>
    GoogleFonts.spaceMono(
      fontSize: size,
      color: color,
      fontWeight: weight,
      letterSpacing: spacing,
      height: height,
    );

TextStyle body({
  double size = 15,
  Color color = ink,
  FontWeight weight = FontWeight.w400,
  double? spacing,
  double? height = 1.6,
}) =>
    GoogleFonts.dmSans(
      fontSize: size,
      color: color,
      fontWeight: weight,
      letterSpacing: spacing,
      height: height,
    );

// weight >= w700 -> judul tebal (Archivo Black, hanya punya 1 bobot).
// weight di bawahnya -> teks isi (DM Sans).
TextStyle heading({
  double size = 28,
  Color color = ink,
  FontWeight weight = FontWeight.w700,
  double? spacing,
  double? height,
}) {
  if (weight.value >= 700) {
    return GoogleFonts.archivoBlack(
      fontSize: size,
      color: color,
      letterSpacing: spacing,
      height: height,
    );
  }
  return GoogleFonts.dmSans(
    fontSize: size,
    color: color,
    fontWeight: weight,
    letterSpacing: spacing,
    height: height,
  );
}

// ============================================================
// RESPONSIF (web + mobile)
// ------------------------------------------------------------
//   < 700px    : HP      (1 kolom, menu hamburger)
//   700-899px  : tablet  (padding lebih lega, menu hamburger)
//   >= 900px   : web     (2-3 kolom, menu tampil di header)
// ============================================================
const kMaxContent = 1100.0; // lebar maksimum konten di layar lebar
const kWideBreak = 900.0; // batas mulai layout web

bool isWide(BuildContext c) => MediaQuery.of(c).size.width >= kWideBreak;
double pagePad(BuildContext c) => MediaQuery.of(c).size.width >= 700 ? 40 : 20;
double sectionPad(BuildContext c) => isWide(c) ? 72 : 40;

// Membatasi lebar konten dan menaruhnya di tengah layar.
class _Page extends StatelessWidget {
  final Widget child;
  const _Page({required this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxContent),
        child: child,
      ),
    );
  }
}

// Grid responsif. Jumlah kolom ditentukan fungsi `columns` dari lebar
// yang tersedia, dan tinggi kartu dalam satu baris disamakan.
class _Grid extends StatelessWidget {
  final List<Widget> children;
  final int Function(double width) columns;
  final double gap;
  const _Grid({required this.children, required this.columns, this.gap = 14});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = columns(c.maxWidth);
        if (cols <= 1) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < children.length; i++)
                Padding(
                  padding: EdgeInsets.only(
                    bottom: i == children.length - 1 ? 0 : gap,
                  ),
                  child: children[i],
                ),
            ],
          );
        }
        final rows = <Widget>[];
        for (int i = 0; i < children.length; i += cols) {
          final slice = children.sublist(i, math.min(i + cols, children.length));
          rows.add(
            Padding(
              padding: EdgeInsets.only(
                bottom: i + cols >= children.length ? 0 : gap,
              ),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (int j = 0; j < cols; j++) ...[
                      if (j > 0) SizedBox(width: gap),
                      Expanded(
                        child: j < slice.length
                            ? slice[j]
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          );
        }
        return Column(children: rows);
      },
    );
  }
}

void showToast(BuildContext context, String msg) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: mono(size: 12.5, color: paper, weight: FontWeight.w700),
        ),
        backgroundColor: ink,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: sun, width: 2),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
}

// Sementara: link DISALIN ke clipboard (tanpa paket tambahan).
// Untuk benar-benar membuka browser: flutter pub add url_launcher,
// lalu ganti isi fungsi ini dengan launchUrl(Uri.parse(url)).
Future<void> openLink(BuildContext context, String url) async {
  await Clipboard.setData(ClipboardData(text: url));
  if (!context.mounted) return;
  showToast(context, 'Link disalin: $url');
}

// ============================================================
// MAIN & APP
// ============================================================
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: paper,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '$kNameFirst $kNameLast — $kRole',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: paper,
        colorScheme: const ColorScheme.light(
          primary: tomato,
          secondary: sun,
          surface: paper,
          onSurface: ink,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: tomato,
          selectionColor: Color(0x66FFC93C),
        ),
        useMaterial3: true,
      ),
      home: const PortfolioPage(),
    );
  }
}

// ============================================================
// HALAMAN UTAMA: header, drawer menu, scroll antar section
// ============================================================
class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  static const _sections = [
    'Beranda',
    'Tentang',
    'Karir',
    'Prestasi',
    'Proyek',
    'Kontak',
  ];

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scroll = ScrollController();
  final _keys = List.generate(_sections.length, (_) => GlobalKey());
  final _activeNav = ValueNotifier<int>(0);
  final _headerScrolled = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scroll.removeListener(_onScroll);
    _scroll.dispose();
    _activeNav.dispose();
    _headerScrolled.dispose();
    super.dispose();
  }

  void _onScroll() {
    _headerScrolled.value = _scroll.offset > 20;

    final pos = _scroll.position;
    if (pos.maxScrollExtent > 0 && pos.pixels >= pos.maxScrollExtent - 8) {
      _activeNav.value = _sections.length - 1;
      return;
    }
    for (int i = _keys.length - 1; i >= 0; i--) {
      final box = _keys[i].currentContext?.findRenderObject() as RenderBox?;
      if (box != null && box.hasSize && box.localToGlobal(Offset.zero).dy < 200) {
        _activeNav.value = i;
        return;
      }
    }
    _activeNav.value = 0;
  }

  void _goTo(int i) {
    final ctx = _keys[i].currentContext;
    if (ctx == null) return;
    Scrollable.ensureVisible(
      ctx,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _buildDrawer(),
      body: Stack(
        children: [
          const Positioned.fill(
            child: IgnorePointer(child: _Background()),
          ),
          SafeArea(
            child: Column(
              children: [
                _buildHeader(),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scroll,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        KeyedSubtree(
                          key: _keys[0],
                          child: _Page(
                            child: _HeroSection(
                              onPrimary: () => _goTo(5),
                              onSecondary: () => _goTo(4),
                            ),
                          ),
                        ),
                        const _TickerBand(),
                        KeyedSubtree(
                          key: _keys[1],
                          child: const _Page(child: _AboutSection()),
                        ),
                        KeyedSubtree(
                          key: _keys[2],
                          child: const _Page(child: _CareerSection()),
                        ),
                        KeyedSubtree(
                          key: _keys[3],
                          child: const _Page(child: _AchievementsSection()),
                        ),
                        KeyedSubtree(
                          key: _keys[4],
                          child: const _Page(child: _ProjectsSection()),
                        ),
                        KeyedSubtree(
                          key: _keys[5],
                          child: const _Page(child: _ContactSection()),
                        ),
                        _Page(child: _FooterSection(onTop: () => _goTo(0))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ---------- Header ----------
  // Layar lebar : stiker logo di kiri, menu langsung di kanan.
  // Layar sempit: stiker logo di kiri, tombol hamburger di kanan.
  Widget _buildHeader() {
    return ValueListenableBuilder<bool>(
      valueListenable: _headerScrolled,
      builder: (context, scrolled, _) {
        final wide = isWide(context);
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: scrolled ? paper : Colors.transparent,
            border: Border(
              bottom: BorderSide(
                color: scrolled ? ink : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: _Page(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: pagePad(context),
                vertical: wide ? 12 : 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const _Logo(),
                  if (wide)
                    _buildDesktopNav()
                  else
                    _HamburgerButton(
                      onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDesktopNav() {
    return ValueListenableBuilder<int>(
      valueListenable: _activeNav,
      builder: (context, active, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < _sections.length; i++)
              _NavLink(
                label: _sections[i],
                active: i == active,
                onTap: () => _goTo(i),
              ),
          ],
        );
      },
    );
  }

  // ---------- Drawer (menu HP) ----------
  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: paper,
      width: 300,
      shape: const RoundedRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: ink, width: 3)),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 22, 16, 14),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        kHandle,
                        overflow: TextOverflow.ellipsis,
                        style: mono(size: 13, weight: FontWeight.w700),
                      ),
                    ),
                    _Lift(
                      width: 40,
                      height: 40,
                      fill: sun,
                      radius: 10,
                      shadow: 3,
                      onTap: () => _scaffoldKey.currentState?.closeEndDrawer(),
                      child: const Center(
                        child: Icon(Icons.close_rounded, size: 22, color: ink),
                      ),
                    ),
                  ],
                ),
              ),
              Container(height: 3, color: ink),
              Expanded(
                child: ValueListenableBuilder<int>(
                  valueListenable: _activeNav,
                  builder: (context, active, _) {
                    return ListView(
                      padding: const EdgeInsets.only(top: 8),
                      children: [
                        for (int i = 0; i < _sections.length; i++)
                          Material(
                            color: i == active ? sun : Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                _scaffoldKey.currentState?.closeEndDrawer();
                                _goTo(i);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 40,
                                      child: Text(
                                        '0${i + 1}',
                                        style: mono(
                                          size: 12.5,
                                          color: i == active ? ink : textMuted,
                                          weight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        _sections[i],
                                        style: heading(size: 26),
                                      ),
                                    ),
                                    if (i == active)
                                      const Icon(
                                        Icons.arrow_back_rounded,
                                        size: 20,
                                        color: ink,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
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
}

// ============================================================
// HERO
// ============================================================
class _HeroSection extends StatelessWidget {
  final VoidCallback onPrimary;
  final VoidCallback onSecondary;
  const _HeroSection({required this.onPrimary, required this.onSecondary});

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);

    // Blok teks: sapaan, nama raksasa, profesi, kutipan, tombol, sosmed.
    final intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
          decoration: brutal(fill: mint, radius: 30, shadow: 3),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 9,
                height: 9,
                decoration: const BoxDecoration(
                  color: tomato,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 9),
              Text(
                'Halo, perkenalkan',
                style: mono(size: 12, weight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(height: wide ? 26 : 20),
        LayoutBuilder(
          builder: (context, c) {
            List<String> split(String s) =>
                s.toUpperCase().split(' ').where((w) => w.isNotEmpty).toList();
            final firstWords = split(kNameFirst);
            final lastWords = split(kNameLast);
            final longest = [...firstWords, ...lastWords]
                .fold<int>(1, (m, w) => math.max(m, w.length));
            final avail = c.maxWidth - (wide ? 56 : 40);
            final size = (avail / (longest * 0.8))
                .clamp(34.0, wide ? 104.0 : 64.0)
                .toDouble();
            final style = heading(size: size, spacing: -1.5, height: 1.0);
            Widget line(String t) => FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(t, style: style),
                );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final w in firstWords) line(w),
                const SizedBox(height: 6),
                Transform.rotate(
                  angle: -0.025,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: wide ? 24 : 14,
                      vertical: wide ? 8 : 4,
                    ),
                    decoration:
                        brutal(fill: tomato, radius: 12, shadow: wide ? 8 : 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [for (final w in lastWords) line(w)],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        SizedBox(height: wide ? 28 : 22),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
          decoration: BoxDecoration(
            color: ink,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star_rounded, size: 18, color: sun),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  kRole,
                  style: mono(
                    size: wide ? 15 : 13.5,
                    color: paper,
                    weight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 560),
          child: Container(
            padding: const EdgeInsets.fromLTRB(18, 14, 18, 16),
            decoration: brutal(fill: cardBg, radius: 14, shadow: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('“', style: heading(size: 52, color: tomato, height: 0.95)),
                const SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      kQuote,
                      style: body(
                        size: wide ? 17 : 15.5,
                        weight: FontWeight.w500,
                        height: 1.55,
                      ).copyWith(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            _PrimaryButton(label: kPrimaryButton, onTap: onPrimary),
            _SecondaryButton(label: kSecondaryButton, onTap: onSecondary),
          ],
        ),
        const SizedBox(height: 26),
        Wrap(
          spacing: 14,
          runSpacing: 14,
          children: [
            for (int i = 0; i < kSocials.length; i++)
              _SocialIcon(
                social: kSocials[i],
                fill: kPastels[i % kPastels.length],
              ),
          ],
        ),
      ],
    );

    final pad = EdgeInsets.fromLTRB(
      pagePad(context),
      wide ? 56 : 28,
      pagePad(context),
      wide ? 72 : 36,
    );

    // HP: ditumpuk ke bawah.
    if (!wide) {
      return Padding(
        padding: pad,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            intro,
            const SizedBox(height: 44),
            const Center(child: _PhotoStage()),
            const SizedBox(height: 44),
            const _ProfileCard(),
          ],
        ),
      );
    }

    // Web: teks + kartu profil di kiri, foto di kanan.
    return Padding(
      padding: pad,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                intro,
                const SizedBox(height: 40),
                const _ProfileCard(),
              ],
            ),
          ),
          const SizedBox(width: 56),
          const Expanded(flex: 4, child: Center(child: _PhotoStage())),
        ],
      ),
    );
  }
}

// ---------- Ikon sosmed (kotak pastel) ----------
class _SocialIcon extends StatelessWidget {
  final Social social;
  final Color fill;
  const _SocialIcon({required this.social, required this.fill});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      width: 48,
      height: 48,
      fill: fill,
      radius: 12,
      shadow: 4,
      onTap: () => openLink(context, social.url),
      child: Center(child: _SocialGlyph(social: social, size: 22)),
    );
  }
}

class _SocialGlyph extends StatelessWidget {
  final Social social;
  final double size;
  const _SocialGlyph({required this.social, required this.size});

  @override
  Widget build(BuildContext context) {
    if (social.icon != null) {
      return Icon(social.icon, size: size, color: ink);
    }
    return Text(
      social.glyph ?? '',
      style: mono(size: size - 4, weight: FontWeight.w700),
    );
  }
}

// ---------- Kartu profil (isi dari kProfile) ----------
class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  Widget _row(String label, Object value, {required bool last}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11),
      decoration: BoxDecoration(
        border: last
            ? null
            : const Border(
                bottom: BorderSide(color: Color(0x3315130F), width: 1.4),
              ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 96,
            child: Text(
              label.toUpperCase(),
              style: mono(
                size: 10.5,
                color: textMuted,
                weight: FontWeight.w700,
                spacing: 0.8,
              ),
            ),
          ),
          Expanded(
            child: value is List
                ? Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [for (final v in value) _Chip('$v', accent: true)],
                  )
                : Text(
                    '$value',
                    style: body(size: 14.5, weight: FontWeight.w600, height: 1.4),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final entries = kProfile.entries.toList();
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: brutal(fill: cardBg, radius: 18, shadow: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            decoration: const BoxDecoration(
              color: tomato,
              border: Border(bottom: BorderSide(color: ink, width: 2)),
            ),
            child: Row(
              children: [
                Text(
                  'KARTU PROFIL',
                  style: mono(size: 12, weight: FontWeight.w700, spacing: 1.5),
                ),
                const Spacer(),
                Flexible(
                  child: Text(
                    kHandle,
                    overflow: TextOverflow.ellipsis,
                    style: mono(size: 12, weight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 6),
            child: Column(
              children: [
                for (int i = 0; i < entries.length; i++)
                  _row(
                    entries[i].key,
                    entries[i].value,
                    last: i == entries.length - 1,
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(18, 14, 18, 16),
            decoration: const BoxDecoration(
              color: paperDark,
              border: Border(top: BorderSide(color: ink, width: 2)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kExperienceLine,
                  style: mono(size: 12, weight: FontWeight.w700, height: 1.5),
                ),
                const SizedBox(height: 12),
                Transform.rotate(
                  angle: -0.05,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: tomato, width: 2.2),
                    ),
                    child: Text(
                      kStatusLine.toUpperCase(),
                      style: mono(
                        size: 11,
                        color: tomato,
                        weight: FontWeight.w700,
                        spacing: 0.6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ---------- Foto dengan efek Iron Man (ketuk untuk nyala/mati) ----------
// Agar foto asli tampil:
//  1. buat folder assets/ di root proyek, simpan fotomu sebagai foto.jpg
//  2. di pubspec.yaml (bagian flutter:) tambahkan:
//       assets:
//         - assets/foto.jpg
//  Jangan daftarkan dulu kalau filenya belum ada (build akan gagal).

// Panggung foto: foto + bulatan dekoratif di belakangnya.
class _PhotoStage extends StatelessWidget {
  const _PhotoStage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(right: -18, top: 6, child: const _Blob(size: 110, color: sun)),
        Positioned(
          left: -14,
          bottom: 70,
          child: const _Blob(size: 70, color: lilac),
        ),
        const _IronPhoto(),
      ],
    );
  }
}

class _Blob extends StatelessWidget {
  final double size;
  final Color color;
  const _Blob({required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: ink, width: 2.5),
      ),
    );
  }
}

class _IronPhoto extends StatefulWidget {
  const _IronPhoto();

  @override
  State<_IronPhoto> createState() => _IronPhotoState();
}

class _IronPhotoState extends State<_IronPhoto> {
  bool _on = false;

  static const _matOn = <double>[
    1.15, 0, 0, 0, -10,
    0, 1.15, 0, 0, -10,
    0, 0, 1.05, 0, -5,
    0, 0, 0, 1, 0,
  ];

  Widget _placeholder() {
    return Container(
      color: paperDark,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person_rounded, size: 96, color: ink),
            const SizedBox(height: 8),
            Text(
              'taruh fotomu di\nassets/foto.jpg',
              textAlign: TextAlign.center,
              style: mono(size: 11.5, weight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final on = _on;
    final wide = isWide(context);

    Widget image = Image.asset(
      kPhotoAsset,
      fit: BoxFit.cover,
      errorBuilder: (_, __, ___) => _placeholder(),
    );
    if (on) {
      image = ColorFiltered(
        colorFilter: const ColorFilter.matrix(_matOn),
        child: image,
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => setState(() => _on = !_on),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            // Foto sedikit miring seperti stiker; lurus saat mode menyala.
            child: AnimatedRotation(
              turns: on ? 0 : -0.0055,
              duration: const Duration(milliseconds: 450),
              curve: Curves.easeOutBack,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 550),
                curve: Curves.easeOutCubic,
                width: wide ? 320 : 280,
                height: wide ? 400 : 340,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: on ? ironGold : sky,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: ink, width: 3),
                  boxShadow: [
                    const BoxShadow(color: ink, offset: Offset(9, 9)),
                    if (on)
                      BoxShadow(
                        color: redA(0.45),
                        blurRadius: 60,
                        spreadRadius: 4,
                      ),
                    if (on) BoxShadow(color: goldA(0.35), blurRadius: 110),
                  ],
                ),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: ink, width: 2.5),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      AnimatedScale(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeOutCubic,
                        scale: on ? 1.08 : 1.02,
                        child: image,
                      ),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 550),
                        opacity: on ? 1 : 0,
                        child: IgnorePointer(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: const Alignment(0, 0.1),
                                radius: 0.6,
                                colors: [redA(0.35), Colors.transparent],
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 550),
                        opacity: on ? 1 : 0,
                        child: IgnorePointer(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  goldA(0.10),
                                  Colors.transparent,
                                  Colors.transparent,
                                  redA(0.18),
                                ],
                                stops: const [0.0, 0.4, 0.55, 1.0],
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (on) const _ScanLine(),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: on ? 1 : 0,
                        child: Align(
                          alignment: const Alignment(0, 0.16),
                          child: AnimatedScale(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeOutBack,
                            scale: on ? 1.0 : 0.4,
                            child: const _ArcReactor(),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        left: 12,
                        child: _HudCorner(isOn: on, top: true, left: true),
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: _HudCorner(isOn: on, top: true, left: false),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 12,
                        child: _HudCorner(isOn: on, top: false, left: true),
                      ),
                      Positioned(
                        bottom: 12,
                        right: 12,
                        child: _HudCorner(isOn: on, top: false, left: false),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 26),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: brutal(
            fill: on ? ironGold : cardBg,
            radius: 30,
            shadow: 3,
          ),
          child: Text(
            on ? '⚡ MODE IRON MAN: ON' : 'Ketuk fotoku',
            style: mono(size: 12, weight: FontWeight.w700, spacing: 0.6),
          ),
        ),
      ],
    );
  }
}

class _ScanLine extends StatefulWidget {
  const _ScanLine();

  @override
  State<_ScanLine> createState() => _ScanLineState();
}

class _ScanLineState extends State<_ScanLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    )..repeat();
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      builder: (context, _) {
        final t = _c.value;
        final top = -0.08 + 1.16 * t;
        final opacity = t < 0.12 ? t / 0.12 : (t > 0.88 ? (1 - t) / 0.12 : 1.0);
        return Align(
          alignment: Alignment(0, 2 * top - 1),
          child: Opacity(
            opacity: opacity.clamp(0.0, 1.0),
            child: Container(
              height: 3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    ironGold,
                    Colors.white,
                    ironGold,
                    Colors.transparent,
                  ],
                ),
                boxShadow: [
                  BoxShadow(color: goldA(0.7), blurRadius: 24, spreadRadius: 5),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ArcReactor extends StatefulWidget {
  const _ArcReactor();

  @override
  State<_ArcReactor> createState() => _ArcReactorState();
}

class _ArcReactorState extends State<_ArcReactor>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat();
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 74,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          AnimatedBuilder(
            animation: _c,
            builder: (context, _) {
              final t = _c.value;
              return Container(
                width: 74 + 32 * t,
                height: 74 + 32 * t,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: arcA(0.5 * (1 - t))),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _c,
            builder: (context, _) {
              final pulse = 1 + 0.12 * math.sin(_c.value * 2 * math.pi);
              return Transform.scale(
                scale: pulse,
                child: Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const RadialGradient(
                      colors: [
                        Colors.white,
                        Color(0xFFB8F4FF),
                        arcCyan,
                        Color(0x4000E5FF),
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.18, 0.40, 0.62, 0.72],
                    ),
                    boxShadow: [
                      BoxShadow(color: arcA(0.8), blurRadius: 24, spreadRadius: 6),
                      BoxShadow(color: arcA(0.3), blurRadius: 55, spreadRadius: 18),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HudCorner extends StatelessWidget {
  final bool isOn;
  final bool top, left;
  const _HudCorner({required this.isOn, required this.top, required this.left});

  @override
  Widget build(BuildContext context) {
    const side = BorderSide(color: ironGold, width: 2.5);
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: isOn ? 1 : 0,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOutBack,
        offset: isOn
            ? Offset.zero
            : Offset(left ? -0.45 : 0.45, top ? -0.45 : 0.45),
        child: Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            border: Border(
              top: top ? side : BorderSide.none,
              bottom: !top ? side : BorderSide.none,
              left: left ? side : BorderSide.none,
              right: !left ? side : BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// TENTANG (// 01)
// ============================================================
class _AboutSection extends StatelessWidget {
  const _AboutSection();

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);
    final base = body(size: wide ? 17 : 16, color: textMuted, height: 1.7);
    // Kata tebal diberi stabilo kuning.
    final bold = base.copyWith(
      color: ink,
      fontWeight: FontWeight.w800,
      backgroundColor: const Color(0x66FFC93C),
    );

    final text = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < kAboutParagraphs.length; i++)
          _Reveal(
            delay: Duration(milliseconds: 80 * i),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text.rich(
                TextSpan(children: _markup(kAboutParagraphs[i], base, bold)),
              ),
            ),
          ),
        const SizedBox(height: 6),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [for (final s in kAboutInfo) _Chip(s)],
        ),
      ],
    );

    final skills = Container(
      padding: const EdgeInsets.all(20),
      decoration: brutal(fill: cardBg, radius: 18, shadow: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < kSkills.length; i++)
            _Reveal(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: i == kSkills.length - 1 ? 0 : 22,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 11,
                          height: 11,
                          decoration: BoxDecoration(
                            color: tomato,
                            border: Border.all(color: ink, width: 2),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          kSkills[i].title.toUpperCase(),
                          style: mono(
                            size: 12,
                            weight: FontWeight.w700,
                            spacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final s in kSkills[i].items)
                          _Chip(s, accent: true),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );

    final stats = LayoutBuilder(
      builder: (context, c) {
        final cols = c.maxWidth >= 640 ? 4 : 2;
        const gap = 18.0;
        final w = ((c.maxWidth - gap * (cols - 1)) / cols).floorToDouble();
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (int i = 0; i < kStats.length; i++)
              SizedBox(
                width: w,
                child: _StatCard(
                  stat: kStats[i],
                  fill: kPastels[i % kPastels.length],
                ),
              ),
          ],
        );
      },
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pagePad(context),
        vertical: sectionPad(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '01', title: 'Tentang Saya'),
          SizedBox(height: wide ? 36 : 28),
          if (wide) ...[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 6, child: text),
                const SizedBox(width: 56),
                Expanded(flex: 5, child: skills),
              ],
            ),
            const SizedBox(height: 40),
            stats,
          ] else ...[
            text,
            const SizedBox(height: 28),
            stats,
            const SizedBox(height: 36),
            skills,
          ],
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final Stat stat;
  final Color fill;
  const _StatCard({required this.stat, required this.fill});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: fill,
      radius: 16,
      shadow: 5,
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CountUp(
            value: stat.value,
            suffix: stat.suffix,
            style: heading(size: 44, spacing: -1),
          ),
          const SizedBox(height: 6),
          Text(
            stat.label,
            style: mono(size: 11.5, weight: FontWeight.w700, height: 1.35),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// KARIR (// 02) — timeline vertikal
// ============================================================
class _CareerSection extends StatelessWidget {
  const _CareerSection();

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pagePad(context),
        vertical: sectionPad(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '02', title: 'Karir'),
          SizedBox(height: wide ? 40 : 30),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 860),
            child: Column(
              children: [
                for (int i = 0; i < kCareer.length; i++)
                  _Reveal(
                    child: _CareerTile(
                      item: kCareer[i],
                      index: i,
                      first: i == 0,
                      last: i == kCareer.length - 1,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CareerTile extends StatelessWidget {
  final CareerItem item;
  final int index;
  final bool first, last;
  const _CareerTile({
    required this.item,
    required this.index,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    final accent = kPastels[index % kPastels.length];
    return Stack(
      children: [
        // garis vertikal tinta
        Positioned(
          left: 8,
          width: 3,
          top: first ? 30 : 0,
          bottom: last ? null : 0,
          height: last ? 30 : null,
          child: const ColoredBox(color: ink),
        ),
        // penanda berlian
        Positioned(
          left: 0,
          top: 21,
          child: Transform.rotate(
            angle: math.pi / 4,
            child: Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: accent,
                border: Border.all(color: ink, width: 2.5),
              ),
            ),
          ),
        ),
        // kartu
        Padding(
          padding: EdgeInsets.only(left: 40, right: 6, bottom: last ? 8 : 24),
          child: SizedBox(
            width: double.infinity,
            child: _Lift(
              fill: cardBg,
              radius: 16,
              shadow: 5,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: accent,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: ink, width: 1.8),
                    ),
                    child: Text(
                      item.period,
                      style: mono(size: 11.5, weight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(item.title, style: heading(size: 20, height: 1.2)),
                  const SizedBox(height: 6),
                  Text(
                    item.org,
                    style: mono(
                      size: 12.5,
                      color: textMuted,
                      weight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item.desc,
                    style: body(size: 14.5, color: textMuted, height: 1.65),
                  ),
                  const SizedBox(height: 14),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      for (final t in item.tags) _Chip(t, accent: true),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// PRESTASI (// 03)
// ============================================================
class _AchievementsSection extends StatelessWidget {
  const _AchievementsSection();

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pagePad(context),
        vertical: sectionPad(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '03', title: 'Prestasi'),
          SizedBox(height: wide ? 40 : 30),
          _Grid(
            columns: (w) => w >= 900 ? 3 : (w >= 480 ? 2 : 1),
            gap: 20,
            children: [
              for (int i = 0; i < kAchievements.length; i++)
                _Reveal(
                  delay: Duration(milliseconds: 60 * (i % 3)),
                  child: _AchievementCard(
                    item: kAchievements[i],
                    fill: kPastels[i % kPastels.length],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final Achievement item;
  final Color fill;
  const _AchievementCard({required this.item, required this.fill});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: fill,
      radius: 18,
      shadow: 6,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: cardBg,
              shape: BoxShape.circle,
              border: Border.all(color: ink, width: 2.2),
            ),
            child: Icon(item.icon, size: 24, color: ink),
          ),
          const SizedBox(height: 16),
          Text(
            item.tag.toUpperCase(),
            style: mono(size: 11, weight: FontWeight.w700, spacing: 1.3),
          ),
          const SizedBox(height: 6),
          Text(item.title, style: heading(size: 20, height: 1.2)),
          const SizedBox(height: 10),
          Text(
            item.desc,
            style: body(size: 14.5, color: const Color(0xFF2B2722), height: 1.6),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PROYEK (// 04) — dengan filter kategori
// ============================================================
class _ProjectsSection extends StatefulWidget {
  const _ProjectsSection();

  @override
  State<_ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<_ProjectsSection> {
  String _filter = 'Semua';

  Widget _filterChip(String label) {
    final selected = label == _filter;
    return _Lift(
      fill: selected ? ink : cardBg,
      radius: 30,
      shadow: selected ? 0 : 3,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
      onTap: () => setState(() => _filter = label),
      child: Text(
        label,
        style: mono(
          size: 12.5,
          color: selected ? paper : ink,
          weight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);
    final categories = ['Semua', ...kProjects.map((p) => p.category).toSet()];
    final shown = kProjects
        .where((p) => _filter == 'Semua' || p.category == _filter)
        .toList();
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pagePad(context),
        vertical: sectionPad(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '04', title: 'Proyek'),
          SizedBox(height: wide ? 36 : 28),
          Wrap(
            spacing: 14,
            runSpacing: 14,
            children: [for (final c in categories) _filterChip(c)],
          ),
          const SizedBox(height: 28),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: KeyedSubtree(
              key: ValueKey(_filter),
              child: _Grid(
                columns: (w) => w >= 900 ? 3 : (w >= 560 ? 2 : 1),
                gap: 20,
                children: [
                  for (final p in shown) _ProjectCard(project: p),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final Project project;
  const _ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: cardBg,
      radius: 18,
      shadow: 6,
      clip: Clip.antiAlias,
      onTap: () => openLink(context, project.url),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            decoration: BoxDecoration(
              color: pastelFor(project.category),
              border: const Border(bottom: BorderSide(color: ink, width: 2)),
            ),
            child: Row(
              children: [
                Text(project.year, style: heading(size: 28, spacing: -0.5)),
                const Spacer(),
                _Chip(project.category),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(project.title, style: heading(size: 20, height: 1.2)),
                const SizedBox(height: 8),
                Text(
                  project.desc,
                  style: body(size: 14.5, color: textMuted, height: 1.6),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final t in project.tags) _Chip(t, accent: true),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Buka proyek',
                      style: mono(size: 12.5, weight: FontWeight.w700),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.north_east, size: 16, color: tomato),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// KONTAK (// 05) — link sosmed + form (mode demo)
// ============================================================
class _ContactSection extends StatefulWidget {
  const _ContactSection();

  @override
  State<_ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<_ContactSection> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _message = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _message.dispose();
    super.dispose();
  }

  void _submit() {
    if (_form.currentState?.validate() ?? false) {
      // TODO: hubungkan ke email/server/Firebase di sini.
      showToast(context, 'Pesan terkirim! (mode demo)');
      _name.clear();
      _email.clear();
      _message.clear();
    }
  }

  Widget _field(
    String label,
    TextEditingController controller,
    String hint, {
    int maxLines = 1,
    String? Function(String?)? validator,
  }) {
    OutlineInputBorder border(Color c, double w) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: c, width: w),
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: mono(size: 11, weight: FontWeight.w700, spacing: 1),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          style: body(size: 15, weight: FontWeight.w500),
          cursorColor: tomato,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: body(size: 15, color: const Color(0xFF8C867C)),
            filled: true,
            fillColor: cardBg,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            border: border(ink, 2),
            enabledBorder: border(ink, 2),
            focusedBorder: border(tomato, 2.5),
            errorBorder: border(tomato, 2),
            focusedErrorBorder: border(tomato, 2.5),
            errorStyle: mono(
              size: 11,
              color: const Color(0xFFB3261E),
              weight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final wide = isWide(context);

    final intro = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kContactIntro,
          style: body(size: 16, color: textMuted, height: 1.7),
        ),
        const SizedBox(height: 24),
        for (int i = 0; i < kSocials.length; i++)
          _Reveal(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _LinkTile(
                social: kSocials[i],
                fill: kPastels[i % kPastels.length],
              ),
            ),
          ),
      ],
    );

    final form = Container(
      padding: const EdgeInsets.all(22),
      decoration: brutal(fill: lilac, radius: 20, shadow: 7),
      child: Form(
        key: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _field(
              'Nama',
              _name,
              'Nama kamu',
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Nama wajib diisi' : null,
            ),
            const SizedBox(height: 16),
            _field(
              'Email',
              _email,
              'email@contoh.com',
              validator: (v) {
                final t = v?.trim() ?? '';
                if (t.isEmpty) return 'Email wajib diisi';
                if (!t.contains('@') || !t.contains('.')) {
                  return 'Format email belum benar';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            _field(
              'Pesan',
              _message,
              'Ceritakan proyek atau idemu...',
              maxLines: 4,
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Pesan wajib diisi' : null,
            ),
            const SizedBox(height: 22),
            _PrimaryButton(label: 'Kirim Pesan →', onTap: _submit),
            const SizedBox(height: 14),
            Text(
              kFormNote,
              textAlign: TextAlign.center,
              style: mono(size: 11, weight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: pagePad(context),
        vertical: sectionPad(context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '05', title: 'Mari Terhubung'),
          SizedBox(height: wide ? 36 : 28),
          if (wide)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 5, child: intro),
                const SizedBox(width: 56),
                Expanded(flex: 6, child: form),
              ],
            )
          else ...[
            intro,
            const SizedBox(height: 16),
            form,
          ],
        ],
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  final Social social;
  final Color fill;
  const _LinkTile({required this.social, required this.fill});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: cardBg,
      radius: 14,
      shadow: 4,
      padding: const EdgeInsets.all(14),
      onTap: () => openLink(context, social.url),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: brutal(fill: fill, radius: 10, shadow: 0),
            child: Center(child: _SocialGlyph(social: social, size: 20)),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  social.label,
                  style: body(size: 15.5, weight: FontWeight.w700, height: 1.2),
                ),
                const SizedBox(height: 3),
                Text(
                  social.handle,
                  overflow: TextOverflow.ellipsis,
                  style: mono(size: 11.5, color: textMuted),
                ),
              ],
            ),
          ),
          const Icon(Icons.north_east, size: 18, color: ink),
        ],
      ),
    );
  }
}

// ============================================================
// FOOTER
// ============================================================
class _FooterSection extends StatelessWidget {
  final VoidCallback onTop;
  const _FooterSection({required this.onTop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(pagePad(context), 16, pagePad(context), 36),
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: ink,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kFooterNote,
                    style: heading(size: 16, color: paper, height: 1.3),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '© ${DateTime.now().year} $kNameFirst $kNameLast — $kRole',
                    style: mono(
                      size: 11.5,
                      color: const Color(0xFFBDB6A8),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Material(
              color: sun,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: onTop,
                child: const SizedBox(
                  width: 48,
                  height: 48,
                  child: Icon(Icons.arrow_upward_rounded, size: 24, color: ink),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// WIDGET BERSAMA
// ============================================================
// Kotak interaktif bergaya brutal: saat di-hover (web) kotak "terangkat",
// saat ditekan kotak "menekan" bayangannya. Dipakai di hampir semua kartu.
class _Lift extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color fill;
  final double radius;
  final double shadow;
  final EdgeInsetsGeometry padding;
  final double? width;
  final double? height;
  final Clip clip;
  const _Lift({
    required this.child,
    this.onTap,
    this.fill = cardBg,
    this.radius = 14,
    this.shadow = 5,
    this.padding = EdgeInsets.zero,
    this.width,
    this.height,
    this.clip = Clip.none,
  });

  @override
  State<_Lift> createState() => _LiftState();
}

class _LiftState extends State<_Lift> {
  bool _hover = false;
  bool _down = false;

  @override
  Widget build(BuildContext context) {
    final tappable = widget.onTap != null;
    final move = _down ? widget.shadow * 0.8 : (_hover ? -3.0 : 0.0);
    final sh = _down
        ? widget.shadow * 0.2
        : (_hover ? widget.shadow + 3 : widget.shadow);
    final box = AnimatedContainer(
      duration: const Duration(milliseconds: 110),
      curve: Curves.easeOut,
      width: widget.width,
      height: widget.height,
      padding: widget.padding,
      clipBehavior: widget.clip,
      transform: Matrix4.translationValues(move, move, 0),
      decoration: brutal(fill: widget.fill, radius: widget.radius, shadow: sh),
      child: widget.child,
    );
    return MouseRegion(
      cursor: tappable ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() {
        _hover = false;
        _down = false;
      }),
      child: tappable
          ? GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapDown: (_) => setState(() => _down = true),
              onTapUp: (_) => setState(() => _down = false),
              onTapCancel: () => setState(() => _down = false),
              onTap: widget.onTap,
              child: box,
            )
          : box,
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _PrimaryButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: tomato,
      radius: 12,
      shadow: 4,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      onTap: onTap,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: Text(label, style: mono(size: 13.5, weight: FontWeight.w700)),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _SecondaryButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return _Lift(
      fill: cardBg,
      radius: 12,
      shadow: 4,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      onTap: onTap,
      child: Center(
        widthFactor: 1,
        heightFactor: 1,
        child: Text(label, style: mono(size: 13.5, weight: FontWeight.w700)),
      ),
    );
  }
}

// Logo = inisial dari kNameFirst + kNameLast (otomatis ikut data).
class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final a = kNameFirst.isNotEmpty ? kNameFirst[0] : '';
    final b = kNameLast.isNotEmpty ? kNameLast[0] : '';
    final initials = '$a$b'.toUpperCase();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.rotate(
          angle: -0.06,
          child: Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: brutal(fill: tomato, radius: 12, shadow: 3),
            child: Text(initials, style: heading(size: 19, spacing: 0.5)),
          ),
        ),
        if (MediaQuery.of(context).size.width >= 1100) ...[
          const SizedBox(width: 14),
          Text('$kNameFirst $kNameLast', style: heading(size: 17)),
        ],
      ],
    );
  }
}

class _HamburgerButton extends StatelessWidget {
  final VoidCallback onTap;
  const _HamburgerButton({required this.onTap});

  Widget _line() => Container(width: 20, height: 3, color: ink);

  @override
  Widget build(BuildContext context) {
    return _Lift(
      width: 46,
      height: 46,
      fill: sun,
      radius: 12,
      shadow: 3,
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _line(),
          const SizedBox(height: 5),
          _line(),
          const SizedBox(height: 5),
          _line(),
        ],
      ),
    );
  }
}

// Link menu di header (layar lebar): pil tinta saat aktif, kuning saat di-hover.
class _NavLink extends StatefulWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;
  const _NavLink({
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  State<_NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<_NavLink> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final fillColor =
        widget.active ? ink : (_hover ? sun : Colors.transparent);
    final textColor = widget.active ? paper : ink;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.only(left: 6),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: widget.active || _hover ? ink : Colors.transparent,
              width: 2,
            ),
          ),
          child: Text(
            widget.label,
            style: mono(size: 13, color: textColor, weight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}

// Judul section: stiker nomor + garis tinta + judul dengan stabilo kuning.
class _SectionTitle extends StatelessWidget {
  final String number, title;
  const _SectionTitle({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = isWide(context) ? 46.0 : 34.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Row(
            children: [
              Transform.rotate(
                angle: -0.06,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: brutal(fill: sun, radius: 8, shadow: 3),
                  child: Text(
                    number,
                    style: mono(size: 14, weight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(child: Container(height: 2.5, color: ink)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -4,
              right: -4,
              bottom: 4,
              height: size * 0.34,
              child: const ColoredBox(color: sun),
            ),
            Text(title, style: heading(size: size, spacing: -1, height: 1.1)),
          ],
        ),
      ],
    );
  }
}

// Chip: polos (putih) atau berwarna pastel (accent) sesuai teksnya.
class _Chip extends StatelessWidget {
  final String label;
  final bool accent;
  const _Chip(this.label, {this.accent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: accent ? pastelFor(label) : cardBg,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: ink, width: 1.6),
      ),
      child: Text(label, style: mono(size: 11.5, weight: FontWeight.w700)),
    );
  }
}

// Pita berjalan: nama-nama skill (dari kSkills) bergulir tanpa henti.
class _TickerBand extends StatefulWidget {
  const _TickerBand();

  @override
  State<_TickerBand> createState() => _TickerBandState();
}

class _TickerBandState extends State<_TickerBand>
    with SingleTickerProviderStateMixin {
  final _sc = ScrollController();
  late final Ticker _ticker;
  late final List<String> _items = [for (final g in kSkills) ...g.items];

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((d) {
      if (_sc.hasClients) _sc.jumpTo(d.inMicroseconds / 1e6 * 55);
    })..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _sc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) return const SizedBox.shrink();
    return Container(
      height: 56,
      decoration: const BoxDecoration(
        color: sun,
        border: Border.symmetric(horizontal: BorderSide(color: ink, width: 2)),
      ),
      child: ListView.builder(
        controller: _sc,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _items[i % _items.length].toUpperCase(),
                    style: heading(size: 17, spacing: 0.5),
                  ),
                  const SizedBox(width: 36),
                  const Icon(Icons.star_rounded, size: 20, color: tomato),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Mengubah "teks **tebal** biasa" menjadi potongan TextSpan.
List<InlineSpan> _markup(String s, TextStyle base, TextStyle bold) {
  final parts = s.split('**');
  return [
    for (int i = 0; i < parts.length; i++)
      TextSpan(text: parts[i], style: i.isOdd ? bold : base),
  ];
}

// ---------- Animasi saat muncul di layar ----------
// Memanggil builder dengan visible=true begitu widget masuk area layar
// (sekali saja). Tidak butuh paket tambahan.
class _OnVisible extends StatefulWidget {
  final Widget Function(BuildContext context, bool visible) builder;
  final Duration delay;
  const _OnVisible({required this.builder, this.delay = Duration.zero});

  @override
  State<_OnVisible> createState() => _OnVisibleState();
}

class _OnVisibleState extends State<_OnVisible> {
  bool _visible = false;
  bool _triggered = false;
  ScrollPosition? _position;
  double _screenH = 800;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _position = Scrollable.maybeOf(context)?.position;
      _position?.addListener(_check);
      _check();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _screenH = MediaQuery.of(context).size.height;
  }

  void _check() {
    if (_triggered || !mounted) return;
    final ro = context.findRenderObject();
    if (ro is! RenderBox || !ro.attached || !ro.hasSize) return;
    if (ro.localToGlobal(Offset.zero).dy < _screenH * 0.92) {
      _triggered = true;
      _position?.removeListener(_check);
      if (widget.delay == Duration.zero) {
        setState(() => _visible = true);
      } else {
        Future.delayed(widget.delay, () {
          if (mounted) setState(() => _visible = true);
        });
      }
    }
  }

  @override
  void dispose() {
    _position?.removeListener(_check);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, _visible);
}

class _Reveal extends StatelessWidget {
  final Widget child;
  final Duration delay;
  const _Reveal({required this.child, this.delay = Duration.zero});

  @override
  Widget build(BuildContext context) {
    return _OnVisible(
      delay: delay,
      builder: (context, visible) => AnimatedOpacity(
        opacity: visible ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
        child: AnimatedSlide(
          offset: visible ? Offset.zero : const Offset(0, 0.06),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutCubic,
          child: child,
        ),
      ),
    );
  }
}

class _CountUp extends StatelessWidget {
  final int value;
  final String suffix;
  final TextStyle style;
  const _CountUp({required this.value, required this.suffix, required this.style});

  @override
  Widget build(BuildContext context) {
    return _OnVisible(
      builder: (context, visible) => TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: visible ? value.toDouble() : 0),
        duration: const Duration(milliseconds: 1600),
        curve: Curves.easeOutCubic,
        builder: (context, v, _) => Text('${v.round()}$suffix', style: style),
      ),
    );
  }
}

// ============================================================
// LATAR: kertas bertitik (statis, ringan di baterai)
// ============================================================
class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return const RepaintBoundary(
      child: CustomPaint(painter: _DotPainter(), size: Size.infinite),
    );
  }
}

class _DotPainter extends CustomPainter {
  const _DotPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color(0x2215130F);
    const step = 26.0;
    for (double y = 14; y < size.height; y += step) {
      for (double x = 14; x < size.width; x += step) {
        canvas.drawCircle(Offset(x, y), 1.2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}