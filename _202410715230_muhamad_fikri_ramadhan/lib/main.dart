// ============================================================
// TEMPLATE PORTOFOLIO GAYA TERMINAL (FLUTTER, MOBILE FIRST)
// ------------------------------------------------------------
// Cara ganti isi : edit bagian "DATA" tepat di bawah ini saja.
// Paket wajib    : google_fonts  ->  flutter pub add google_fonts
// Foto (opsional): taruh di assets/foto.jpg lalu daftarkan di
//                  pubspec.yaml (lihat catatan di _IronPhoto).
// ============================================================
import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
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

// Kartu terminal di hero
const kTerminalUser = 'Fikri@portfolio: ~';
const kProfile = <String, Object>{
  'nama': 'Muhamad Fikri Ramadhan',
  'pekerjaan': 'Mahasiswa Informatika',
  'akademisi': 'Informatika, Universitas Bhayangkara Jakarta Raya',
  'riset': ['Computer Architecture','Mobile Development','Software Engineering'],
  'lokasi': 'Bekasi, Indonesia',
};
const kUptime = 'Semester 5';
const kTerminalOk = 'All systems fully operational, Sir. At your service. #JARVIS';

// ---------- Sosial media (dipakai di hero & kontak) ----------
const kSocials = [
  Social(
    label: 'LinkedIn',
    handle: 'linkedin.com/in/username',
    url: 'https://linkedin.com/in/username',
    glyph: 'in',
  ),
  Social(
    label: 'Google Scholar',
    handle: 'Sitasi & publikasi ilmiah',
    url: 'https://scholar.google.com/citations?user=ID',
    icon: Icons.school,
  ),
  Social(
    label: 'Instagram',
    handle: '@username',
    url: 'https://instagram.com/pkrai_0',
    icon: Icons.camera_alt_outlined,
  ),
  Social(
    label: 'Facebook',
    handle: 'facebook.com/username',
    url: 'https://facebook.com/username',
    icon: Icons.facebook,
  ),
  Social(
    label: 'Website',
    handle: 'websitekamu.com',
    url: 'https://websitekamu.com',
    icon: Icons.language,
  ),
];

// ---------- Tentang ----------
// Tanda **teks** membuat teks jadi tebal.
const kAboutParagraphs = [
  'Halo! Saya **Muhamad Fikri Ramadhan**, seorang **Mahasiswa Informatika** yang tertarik pada teknologi, data, dan pengembangan perangkat lunak.',
  'Saat ini saya sedang kuliah di **Universitas Bhayangkara Jakarta Raya** dan aktif sebagai **event Organizer** di **UKM DSC**.',
  'Memegang prinsip bahwa kode yang baik bukan cuma sekadar jalan, tapi juga efisien, rapi, dan memberikan solusi nyata buat penggunanya.',
];
const kAboutInfo = ['NPM: 202410715230', 'ORCID: 0000-0000-0000-0000', 'Bekasi, Indonesia'];
const kStats = [
  Stat(2, '+', 'Tahun Pengalaman'),
  Stat(3, '+', 'Proyek Selesai'),
  Stat(5, '+', 'Sertifikasi'),
  Stat(1, '', 'Penghargaan'),
];
const kSkills = [
  SkillGroup('Data & AI', ['Python', 'SQL', 'Machine Learning', 'ETL']),
  SkillGroup('Web & Software', ['PHP', 'Laravel', 'Flutter', 'JavaScript']),
  SkillGroup('Tools', ['Git', 'Docker', 'Linux(ubuntu)', 'VS Code']),
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
    org: 'MAN1 Kota Bekasi',
    desc:
        'Nginjek fondasi kepemimpinan dan jiwa sosial sejak SMA lewat PMR, Kordiv Acara PHBI ROHIS, serta Sekretaris Karang Taruna RW 07. Berpengalaman di bidang humanitarian, operasional event, dan administrasi.',
    tags: ['Rohis', 'PMR', 'Karang Taruna'],
  ),
  CareerItem(
    period: '2018 — 2022',
    title: 'Sekolah Menengah Pertama (SMP)',
    org: 'SMPIT AVICENNA',
    desc:
        'Aktif di ekskul PMR dan Futsal, meraih Juara 1 Perlombaan Pertolongan Pertama (PP) Tim sebanyak 2 kali, serta menyelesaikan hafalan 2 Juz Al-Qur\'an',
    tags: ['Futsal', 'PMR', '2 Juz Alquran']
  ),
  CareerItem(
    period: '2015 — 2018',
    title: 'Sekolah Dasar (SD)',
    org: 'SDIT Almanar',
    desc: 'Menyelesaikan pendidikan dasar dengan fokus pada pembentukan karakter, akademik, dan kegiatan siswa.',
    tags: ['karakter building', 'akademik']
  ),
];

// ---------- Prestasi ----------
const kAchievements = [
  Achievement(
    icon: Icons.emoji_events_outlined,
    tag: 'Kompetisi',
    title: 'Juara 1 Lomba PP Tim (2x)',
    desc: 'Berhasil meraih Juara 1 tingkat regional sebanyak 2 kali dalam kategori Pertolongan Pertama (PP) Tim melalui ekskul PMR.',
  ),
  Achievement(
    icon: Icons.groups_outlined,
    tag: 'Kepemimpinan',
    title: 'Kordiv Acara PHBI ROHIS',
    desc: 'Memimpin perencanaan dan pelaksanaan seluruh kegiatan perayaan hari besar Islam di lingkungan MAN 1 Kota Bekasi.',
  ),
  Achievement(
    icon: Icons.assignment_turned_in_outlined,
    tag: 'Organisasi',
    title: 'Sekretaris Karang Taruna RW 07',
    desc: 'Mengelola administrasi, penyusunan dokumen resmi, serta koordinasi kegiatan kepemudaan warga di tingkat RW.',
  ),
  Achievement(
    icon: Icons.auto_stories_outlined,
    tag: 'Keagamaan',
    title: 'Hafiz 2 Juz Al-Qur\'an',
    desc: 'Menyelesaikan program hafalan 2 Juz Al-Qur\'an dengan baik selama menempuh studi di SMPIT Avicenna.',
  ),
  Achievement(
    icon: Icons.sports_soccer_outlined,
    tag: 'Olahraga',
    title: 'Tim Futsal Sekolah',
    desc: 'Aktif sebagai pemain inti tim Futsal SMPIT Avicenna dan berpartisipasi dalam berbagai turnamen antarsekolah.',
  ),
  Achievement(
    icon: Icons.school_outlined,
    tag: 'Akademik',
    title: 'Mahasiswa Informatika Ubhara Jaya',
    desc: 'Terdaftar aktif di Universitas Bhayangkara Jakarta Raya dengan fokus pada Organisasi Komputer & Mobile Dev.',
  ),
];
// ---------- Proyek ----------
const kProjects = [
  Project(
    category: 'Mobile',
    year: '2026',
    title: 'Terminal UI Portfolio App',
    desc: 'Aplikasi portofolio Flutter modern bergaya terminal interaktif dengan efek visual kustom dan tata letak responsive.',
    url: 'https://github.com/username/terminal-portfolio',
    tags: ['Flutter', 'Dart', 'Google Fonts'],
  ),
  Project(
    category: 'Web',
    year: '2026',
    title: 'Personal Web Showcase',
    desc: 'Website portofolio dan showcase profil modern yang disebarkan secara otomatis melalui platform Vercel.',
    url: 'https://vercel.com',
    tags: ['Vercel', 'JavaScript', 'HTML/CSS'],
  ),
  Project(
    category: 'Sistem',
    year: '2026',
    title: 'Simulasi Organisasi Komputer',
    desc: 'Eksperimen arsitektur sistem dan logika instruksi mesin untuk pendalaman mata kuliah Pengantar Organisasi Komputer.',
    url: 'https://github.com/username/org-komputer-sim',
    tags: ['CompOrg', 'Logic', 'Architecture'],
  ),
  Project(
    category: 'Tools',
    year: '2025',
    title: 'Notion Workspace Management',
    desc: 'Sistem dokumentasi tugas perkuliahan dan manajemen alur kerja proyek yang terstruktur di Notion.',
    url: 'https://notion.so',
    tags: ['Notion', 'Productivity', 'Workflow'],
  ),
  Project(
    category: 'Web',
    year: '2025',
    title: 'Academic & Event Design Pack',
    desc: 'Perancangan materi visual, presentasi interaktif, dan media promosi acara menggunakan Canva.',
    url: 'https://canva.com',
    tags: ['Canva', 'Graphic Design', 'UI Concept'],
  ),
  Project(
    category: 'Mobile',
    year: '2025',
    title: 'Cross-Platform Mobile App Concept',
    desc: 'Eksperimen antarmuka dan komponen aplikasi mobile Android/iOS menggunakan framework Flutter.',
    url: 'https://github.com/username/flutter-mobile-app',
    tags: ['Flutter', 'Dart', 'UI/UX'],
  ),
];

// ---------- Kontak & footer ----------
const kContactIntro =
    'Tertarik berkolaborasi atau sekadar berdiskusi soal teknologi? Hubungi aku lewat kanal di bawah atau isi formulir ini.';

// ============================================================
// WARNA & FONT  (disampel dari screenshot situs)
// ============================================================
const bg = Color(0xFF060A13);
const bgTerminal = Color(0xFF080D19);
const bgTerminalBar = Color(0xFF121722);
const cyan = Color(0xFF00E5FF);
const purple = Color(0xFF7C4DFF);
const green = Color(0xFF7EE787);
const gold = Color(0xFFFFB700);
const textPrimary = Color(0xFFE6EDF7);
const textMuted = Color(0xFF8892A6);
const borderColor = Color(0x2600E5FF);
const kGradient = LinearGradient(colors: [cyan, purple]);

// Warna dengan opacity tanpa withOpacity (supaya bebas warning deprecated).
Color cyanA(double o) => Color.fromRGBO(0, 229, 255, o);
Color purpleA(double o) => Color.fromRGBO(124, 77, 255, o);
Color goldA(double o) => Color.fromRGBO(255, 183, 0, o);
Color redA(double o) => Color.fromRGBO(255, 45, 45, o);

TextStyle mono({
  double size = 14,
  Color color = textPrimary,
  FontWeight weight = FontWeight.w500,
  double? spacing,
  double? height,
}) =>
    GoogleFonts.jetBrainsMono(
      fontSize: size,
      color: color,
      fontWeight: weight,
      letterSpacing: spacing,
      height: height,
    );

// Font judul: Space Grotesk (perkiraan, mirip font judul di situs).
TextStyle heading({
  double size = 28,
  Color color = textPrimary,
  FontWeight weight = FontWeight.w700,
  double? spacing,
  double? height,
}) =>
    GoogleFonts.spaceGrotesk(
      fontSize: size,
      color: color,
      fontWeight: weight,
      letterSpacing: spacing,
      height: height,
    );

void showToast(BuildContext context, String msg) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: mono(size: 12.5, color: bg, weight: FontWeight.w600),
        ),
        backgroundColor: cyan,
        behavior: SnackBarBehavior.floating,
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
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: bg,
      systemNavigationBarIconBrightness: Brightness.light,
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
        brightness: Brightness.dark,
        scaffoldBackgroundColor: bg,
        colorScheme: const ColorScheme.dark(
          primary: cyan,
          secondary: purple,
          surface: bgTerminal,
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
    'Pendidikan', 
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
            // Konten dibatasi 600px supaya di jendela lebar (Edge/desktop)
            // tetap tampil seperti layar HP.
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
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
                              child: _HeroSection(
                                onPrimary: () => _goTo(5),
                                onSecondary: () => _goTo(4),
                              ),
                            ),
                            KeyedSubtree(
                              key: _keys[1],
                              child: const _AboutSection(),
                            ),
                            KeyedSubtree(
                              key: _keys[2],
                              child: const _CareerSection(),
                            ),
                            KeyedSubtree(
                              key: _keys[3],
                              child: const _AchievementsSection(),
                            ),
                            KeyedSubtree(
                              key: _keys[4],
                              child: const _ProjectsSection(),
                            ),
                            KeyedSubtree(
                              key: _keys[5],
                              child: const _ContactSection(),
                            ),
                            _FooterSection(onTop: () => _goTo(0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------- Header ----------
  Widget _buildHeader() {
    return ValueListenableBuilder<bool>(
      valueListenable: _headerScrolled,
      builder: (context, scrolled, _) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: scrolled ? const Color(0xEB060A13) : Colors.transparent,
            border: Border(
              bottom: BorderSide(
                color: scrolled ? borderColor : Colors.transparent,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _Logo(),
              _HamburgerButton(
                onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
              ),
            ],
          ),
        );
      },
    );
  }

  // ---------- Drawer ----------
  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: bgTerminal,
      shape: const RoundedRectangleBorder(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
              child: Text(
                kTerminalUser,
                style: mono(size: 12, color: textMuted),
              ),
            ),
            const Divider(color: borderColor, height: 1),
            const SizedBox(height: 8),
            ValueListenableBuilder<int>(
              valueListenable: _activeNav,
              builder: (context, active, _) {
                return Column(
                  children: List.generate(_sections.length, (i) {
                    final isActive = i == active;
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        _goTo(i);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 14,
                        ),
                        child: Row(
                          children: [
                            Text(
                              isActive ? '> ' : '  ',
                              style: mono(color: cyan, weight: FontWeight.w700),
                            ),
                            Text(
                              _sections[i],
                              style: mono(
                                size: 15,
                                color: isActive ? cyan : textPrimary,
                                weight:
                                    isActive ? FontWeight.w700 : FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
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
    final nameStyle = heading(size: 46, spacing: -1.5, height: 1.1);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '\$ ',
                  style: mono(size: 15, color: cyan, weight: FontWeight.w700),
                ),
                TextSpan(text: 'whoami', style: mono(size: 15, color: textMuted)),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 12,
            children: [
              Text(kNameFirst, style: nameStyle),
              _GradientText(kNameLast, nameStyle),
            ],
          ),
          const SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '>_ ',
                style: mono(size: 16, color: purple, weight: FontWeight.w700),
              ),
              Expanded(
                child: _TypingText(
                  text: kRole,
                  style: mono(size: 16, color: cyan),
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Container(
            padding: const EdgeInsets.only(left: 14),
            decoration: const BoxDecoration(
              border: Border(left: BorderSide(color: purple, width: 3)),
            ),
            child: Text(
              '"$kQuote"',
              style: heading(
                size: 15,
                color: textMuted,
                weight: FontWeight.w400,
                height: 1.6,
              ).copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 26),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _GradientButton(label: kPrimaryButton, onTap: onPrimary),
              _OutlineButton(label: kSecondaryButton, onTap: onSecondary),
            ],
          ),
          const SizedBox(height: 22),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (final s in kSocials) _SocialIcon(social: s),
            ],
          ),
          const SizedBox(height: 28),
          const _TerminalCard(),
          const SizedBox(height: 32),
          const Center(child: _IronPhoto()),
        ],
      ),
    );
  }
}

// ---------- Teks mengetik + kursor berkedip ----------
class _TypingText extends StatefulWidget {
  final String text;
  final TextStyle style;
  const _TypingText({required this.text, required this.style});

  @override
  State<_TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<_TypingText> {
  int _count = 0;
  bool _cursorOn = true;
  Timer? _typeTimer;
  Timer? _blinkTimer;

  @override
  void initState() {
    super.initState();
    _typeTimer = Timer.periodic(const Duration(milliseconds: 70), (t) {
      if (!mounted || _count >= widget.text.length) {
        t.cancel();
        return;
      }
      setState(() => _count++);
    });
    _blinkTimer = Timer.periodic(const Duration(milliseconds: 530), (_) {
      if (mounted) setState(() => _cursorOn = !_cursorOn);
    });
  }

  @override
  void dispose() {
    _typeTimer?.cancel();
    _blinkTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: widget.style,
        children: [
          TextSpan(text: widget.text.substring(0, _count)),
          TextSpan(
            text: '▌',
            style: TextStyle(color: _cursorOn ? cyan : Colors.transparent),
          ),
        ],
      ),
    );
  }
}

class _BlinkingCursor extends StatefulWidget {
  const _BlinkingCursor();

  @override
  State<_BlinkingCursor> createState() => _BlinkingCursorState();
}

class _BlinkingCursorState extends State<_BlinkingCursor> {
  bool _on = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 530), (_) {
      if (mounted) setState(() => _on = !_on);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '▌',
      style: mono(size: 13, color: _on ? cyan : Colors.transparent),
    );
  }
}

// ---------- Ikon sosmed kecil di hero ----------
class _SocialIcon extends StatelessWidget {
  final Social social;
  const _SocialIcon({required this.social});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0x0AFFFFFF),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => openLink(context, social.url),
          child: Center(child: _SocialGlyph(social: social, size: 20)),
        ),
      ),
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
      return Icon(social.icon, size: size, color: textMuted);
    }
    return Text(
      social.glyph ?? '',
      style: mono(size: size - 3, color: textMuted, weight: FontWeight.w800),
    );
  }
}

// ---------- Kartu terminal (cat profil.json) ----------
class _TerminalCard extends StatelessWidget {
  const _TerminalCard();

  Widget _dot(Color c) => Container(
        width: 11,
        height: 11,
        margin: const EdgeInsets.only(right: 7),
        decoration: BoxDecoration(color: c, shape: BoxShape.circle),
      );

  Widget _cmd(String c) => Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '\$ ',
              style: mono(size: 13, color: cyan, weight: FontWeight.w700),
            ),
            TextSpan(
              text: c,
              style: mono(size: 13, color: cyan, weight: FontWeight.w600),
            ),
          ],
        ),
      );

  List<InlineSpan> _jsonSpans() {
    final base = mono(size: 12.5, color: textMuted, height: 1.7);
    final keyStyle = base.copyWith(color: purple);
    final strStyle = base.copyWith(color: green);
    final spans = <InlineSpan>[TextSpan(text: '{\n', style: base)];
    final entries = kProfile.entries.toList();
    for (int i = 0; i < entries.length; i++) {
      final e = entries[i];
      final comma = i < entries.length - 1 ? ',\n' : '\n';
      spans.add(TextSpan(text: '  "${e.key}"', style: keyStyle));
      spans.add(TextSpan(text: ': ', style: base));
      final v = e.value;
      if (v is List) {
        spans.add(TextSpan(text: '[', style: base));
        for (int j = 0; j < v.length; j++) {
          spans.add(TextSpan(text: '"${v[j]}"', style: strStyle));
          if (j < v.length - 1) spans.add(TextSpan(text: ', ', style: base));
        }
        spans.add(TextSpan(text: ']$comma', style: base));
      } else {
        spans.add(TextSpan(text: '"$v"', style: strStyle));
        spans.add(TextSpan(text: comma, style: base));
      }
    }
    spans.add(TextSpan(text: '}', style: base));
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: bgTerminal,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor),
        boxShadow: [BoxShadow(color: cyanA(0.06), blurRadius: 30)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: bgTerminalBar,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                _dot(const Color(0xFFFF5F57)),
                _dot(const Color(0xFFFEBC2E)),
                _dot(const Color(0xFF28C840)),
                const Spacer(),
                Text(kTerminalUser, style: mono(size: 11.5, color: textMuted)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _cmd('cat profil.json'),
                const SizedBox(height: 4),
                Text.rich(TextSpan(children: _jsonSpans())),
                const SizedBox(height: 6),
                _cmd('uptime --karier'),
                const SizedBox(height: 4),
                Text(
                  kUptime,
                  style: mono(size: 12.5, color: textMuted, height: 1.6),
                ),
                const SizedBox(height: 6),
                _cmd('sudo kerjakan --dengan-sepenuh-hati'),
                const SizedBox(height: 4),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '[OK] ',
                        style: mono(
                          size: 12.5,
                          color: green,
                          weight: FontWeight.w700,
                          height: 1.6,
                        ),
                      ),
                      TextSpan(
                        text: kTerminalOk,
                        style: mono(size: 12.5, color: textMuted, height: 1.6),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      '\$ ',
                      style: mono(size: 13, color: cyan, weight: FontWeight.w700),
                    ),
                    const _BlinkingCursor(),
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

// ---------- Foto dengan efek Iron Man (ketuk untuk nyala/mati) ----------
// Agar foto asli tampil:
//  1. buat folder assets/ di root proyek, simpan fotomu sebagai foto.jpg
//  2. di pubspec.yaml (bagian flutter:) tambahkan:
//       assets:
//         - assets/foto.jpg
//  Jangan daftarkan dulu kalau filenya belum ada (build akan gagal).
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
  static const _matOff = <double>[
    0.65, 0.20, 0.15, 0, 0,
    0.20, 0.65, 0.15, 0, 0,
    0.20, 0.20, 0.60, 0, 0,
    0, 0, 0, 1, 0,
  ];

  Widget _placeholder() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF101830), Color(0xFF0A0F1C)],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person, size: 90, color: Color(0x3DFFFFFF)),
            const SizedBox(height: 8),
            Text(
              'taruh fotomu di\nassets/foto.jpg',
              textAlign: TextAlign.center,
              style: mono(size: 11.5, color: textMuted),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final on = _on;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => setState(() => _on = !_on),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 550),
            curve: Curves.easeOutCubic,
            width: 280,
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: bgTerminal,
              border: Border.all(color: on ? goldA(0.6) : cyanA(0.25)),
              boxShadow: on
                  ? [
                      BoxShadow(color: redA(0.35), blurRadius: 60),
                      BoxShadow(color: goldA(0.18), blurRadius: 100),
                    ]
                  : [BoxShadow(color: cyanA(0.08), blurRadius: 40)],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AnimatedScale(
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeOutCubic,
                    scale: on ? 1.08 : 1.02,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.matrix(on ? _matOn : _matOff),
                      child: Image.asset(
                        kPhotoAsset,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _placeholder(),
                      ),
                    ),
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
                    top: 14,
                    left: 14,
                    child: _HudCorner(isOn: on, top: true, left: true),
                  ),
                  Positioned(
                    top: 14,
                    right: 14,
                    child: _HudCorner(isOn: on, top: true, left: false),
                  ),
                  Positioned(
                    bottom: 14,
                    left: 14,
                    child: _HudCorner(isOn: on, top: false, left: true),
                  ),
                  Positioned(
                    bottom: 14,
                    right: 14,
                    child: _HudCorner(isOn: on, top: false, left: false),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: mono(size: 12, color: on ? gold : textMuted, spacing: 0.6),
          child: Text(on ? '> MODE IRON MAN: ON' : '> ketuk fotoku'),
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
                    gold,
                    Colors.white,
                    gold,
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
                  border: Border.all(color: cyanA(0.5 * (1 - t))),
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
                        cyan,
                        Color(0x4000E5FF),
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.18, 0.40, 0.62, 0.72],
                    ),
                    boxShadow: [
                      BoxShadow(color: cyanA(0.8), blurRadius: 24, spreadRadius: 6),
                      BoxShadow(color: cyanA(0.3), blurRadius: 55, spreadRadius: 18),
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
    const side = BorderSide(color: gold, width: 2);
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
    final base = heading(size: 15, color: textMuted, weight: FontWeight.w400, height: 1.75);
    final bold = base.copyWith(color: textPrimary, fontWeight: FontWeight.w700);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '01', title: 'Tentang Saya'),
          const SizedBox(height: 24),
          for (int i = 0; i < kAboutParagraphs.length; i++)
            _Reveal(
              delay: Duration(milliseconds: 80 * i),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: Text.rich(
                  TextSpan(children: _markup(kAboutParagraphs[i], base, bold)),
                ),
              ),
            ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [for (final s in kAboutInfo) _Chip(s)],
          ),
          const SizedBox(height: 28),
          LayoutBuilder(
            builder: (context, c) {
              final w = (c.maxWidth - 12) / 2;
              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  for (final s in kStats)
                    SizedBox(width: w, child: _StatCard(stat: s)),
                ],
              );
            },
          ),
          const SizedBox(height: 32),
          for (final g in kSkills)
            _Reveal(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '// ${g.title}',
                      style: mono(
                        size: 12.5,
                        color: cyan,
                        weight: FontWeight.w600,
                        spacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [for (final s in g.items) _Chip(s, accent: true)],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final Stat stat;
  const _StatCard({required this.stat});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0x0AFFFFFF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _CountUp(
            value: stat.value,
            suffix: stat.suffix,
            style: heading(size: 34, spacing: -1),
          ),
          const SizedBox(height: 4),
          Text(stat.label, style: mono(size: 11.5, color: textMuted, height: 1.4)),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '02', title: 'Karir'),
          const SizedBox(height: 28),
          for (int i = 0; i < kCareer.length; i++)
            _Reveal(
              child: _CareerTile(
                item: kCareer[i],
                first: i == 0,
                last: i == kCareer.length - 1,
              ),
            ),
        ],
      ),
    );
  }
}

class _CareerTile extends StatelessWidget {
  final CareerItem item;
  final bool first, last;
  const _CareerTile({
    required this.item,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // garis vertikal
        Positioned(
          left: 5,
          width: 2,
          top: first ? 28 : 0,
          bottom: last ? null : 0,
          height: last ? 28 : null,
          child: ColoredBox(color: cyanA(0.22)),
        ),
        // titik node
        Positioned(
          left: 0,
          top: 22,
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bg,
              border: Border.all(color: cyan, width: 2),
              boxShadow: [BoxShadow(color: cyanA(0.5), blurRadius: 10)],
            ),
          ),
        ),
        // kartu
        Padding(
          padding: EdgeInsets.only(left: 30, bottom: last ? 0 : 18),
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0x0AFFFFFF),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: borderColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.period,
                    style: mono(
                      size: 11.5,
                      color: cyan,
                      weight: FontWeight.w600,
                      spacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(item.title, style: heading(size: 18, height: 1.25)),
                  const SizedBox(height: 4),
                  Text(
                    item.org,
                    style: mono(size: 12.5, color: const Color(0xFFA791FF)),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    item.desc,
                    style: heading(
                      size: 14,
                      color: textMuted,
                      weight: FontWeight.w400,
                      height: 1.65,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [for (final t in item.tags) _Chip(t, accent: true)],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '03', title: 'Prestasi'),
          const SizedBox(height: 28),
          LayoutBuilder(
            builder: (context, c) {
              final cols = c.maxWidth >= 480 ? 2 : 1;
              final w = (c.maxWidth - 12 * (cols - 1)) / cols;
              return Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  for (int i = 0; i < kAchievements.length; i++)
                    SizedBox(
                      width: w,
                      child: _Reveal(
                        delay: Duration(milliseconds: 60 * (i % 2)),
                        child: _AchievementCard(item: kAchievements[i]),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final Achievement item;
  const _AchievementCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0x0AFFFFFF),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: purpleA(0.12),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: purpleA(0.35)),
            ),
            child: Icon(item.icon, size: 22, color: const Color(0xFFA791FF)),
          ),
          const SizedBox(height: 14),
          Text(
            item.tag.toUpperCase(),
            style: mono(size: 10.5, color: cyan, weight: FontWeight.w600, spacing: 1.2),
          ),
          const SizedBox(height: 6),
          Text(item.title, style: heading(size: 16, height: 1.3)),
          const SizedBox(height: 8),
          Text(
            item.desc,
            style: heading(
              size: 13,
              color: textMuted,
              weight: FontWeight.w400,
              height: 1.6,
            ),
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
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => setState(() => _filter = label),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? cyanA(0.12) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: selected ? cyan : borderColor),
        ),
        child: Text(
          label,
          style: mono(
            size: 12.5,
            color: selected ? cyan : textMuted,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = ['Semua', ...kProjects.map((p) => p.category).toSet()];
    final shown = kProjects
        .where((p) => _filter == 'Semua' || p.category == _filter)
        .toList();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '04', title: 'Proyek'),
          const SizedBox(height: 24),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [for (final c in categories) _filterChip(c)],
          ),
          const SizedBox(height: 20),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Column(
              key: ValueKey(_filter),
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final p in shown)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: _ProjectCard(project: p),
                  ),
              ],
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
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: const Color(0x0AFFFFFF),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: borderColor),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => openLink(context, project.url),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(project.year, style: mono(size: 12, color: textMuted)),
                    const SizedBox(width: 10),
                    _Chip(project.category),
                  ],
                ),
                const SizedBox(height: 12),
                Text(project.title, style: heading(size: 18, height: 1.25)),
                const SizedBox(height: 8),
                Text(
                  project.desc,
                  style: heading(
                    size: 14,
                    color: textMuted,
                    weight: FontWeight.w400,
                    height: 1.65,
                  ),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [for (final t in project.tags) _Chip(t, accent: true)],
                ),
                const SizedBox(height: 14),
                Text(
                  'Buka proyek →',
                  style: mono(size: 12.5, color: cyan, weight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
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
    OutlineInputBorder border(Color c) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: c),
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label.toUpperCase(),
          style: mono(size: 11, color: textMuted, weight: FontWeight.w600, spacing: 1),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          validator: validator,
          style: mono(size: 13.5),
          cursorColor: cyan,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: mono(size: 13.5, color: const Color(0xFF4A5468)),
            filled: true,
            fillColor: bgTerminal,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            border: border(borderColor),
            enabledBorder: border(borderColor),
            focusedBorder: border(cyan),
            errorBorder: border(const Color(0xFFFF5F57)),
            focusedErrorBorder: border(const Color(0xFFFF5F57)),
            errorStyle: mono(size: 11, color: const Color(0xFFFF5F57)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _SectionTitle(number: '05', title: 'Mari Terhubung'),
          const SizedBox(height: 20),
          Text(
            kContactIntro,
            style: heading(
              size: 15,
              color: textMuted,
              weight: FontWeight.w400,
              height: 1.7,
            ),
          ),
          const SizedBox(height: 22),
          for (final s in kSocials)
            _Reveal(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: _LinkTile(social: s),
              ),
            ),
          const SizedBox(height: 22),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0x0AFFFFFF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor),
            ),
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
                  const SizedBox(height: 14),
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
                  const SizedBox(height: 14),
                  _field(
                    'Pesan',
                    _message,
                    'Ceritakan proyek atau idemu...',
                    maxLines: 4,
                    validator: (v) =>
                        (v == null || v.trim().isEmpty) ? 'Pesan wajib diisi' : null,
                  ),
                  const SizedBox(height: 18),
                  _GradientButton(label: 'Kirim Pesan →', onTap: _submit),
                  const SizedBox(height: 12),
                  Text(
                    '// form ini masih mode demo',
                    textAlign: TextAlign.center,
                    style: mono(size: 11, color: textMuted),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  final Social social;
  const _LinkTile({required this.social});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: const Color(0x0AFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => openLink(context, social.url),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: cyanA(0.08),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: cyanA(0.25)),
                  ),
                  child: Center(child: _SocialGlyph(social: social, size: 19)),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        social.label,
                        style: heading(size: 15, weight: FontWeight.w600),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        social.handle,
                        overflow: TextOverflow.ellipsis,
                        style: mono(size: 11.5, color: textMuted),
                      ),
                    ],
                  ),
                ),
                Text('→', style: mono(size: 16, color: cyan, weight: FontWeight.w700)),
              ],
            ),
          ),
        ),
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
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 1, color: borderColor),
          const SizedBox(height: 20),
          Text.rich(
            TextSpan(
              style: mono(size: 12.5, color: textMuted),
              children: [
                const TextSpan(text: '\$ echo "Dibangun dengan '),
                TextSpan(text: '♥', style: mono(size: 12.5, color: cyan)),
                const TextSpan(text: ' dan banyak kopi"'),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: Text(
                  '© ${DateTime.now().year} $kNameFirst $kNameLast — $kRole',
                  style: mono(size: 11.5, color: textMuted, height: 1.5),
                ),
              ),
              const SizedBox(width: 12),
              Material(
                color: Colors.transparent,
                child: Ink(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: cyanA(0.08),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: cyanA(0.3)),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: onTop,
                    child: Center(
                      child: Text(
                        '↑',
                        style: mono(size: 18, color: cyan, weight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// WIDGET BERSAMA
// ============================================================
class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final base = mono(size: 22, weight: FontWeight.w700, spacing: 1);
    return Text.rich(
      TextSpan(
        style: base,
        children: [
          TextSpan(text: '<', style: base.copyWith(color: cyan)),
          TextSpan(text: 'MFR', style: base.copyWith(color: textPrimary)),
          TextSpan(text: '/>', style: base.copyWith(color: cyan)),
        ],
      ),
    );
  }
}

class _HamburgerButton extends StatelessWidget {
  final VoidCallback onTap;
  const _HamburgerButton({required this.onTap});

  Widget _line() => Container(
        width: 26,
        height: 2.5,
        decoration: const BoxDecoration(
          color: cyan,
          boxShadow: [BoxShadow(color: Color(0x6600E5FF), blurRadius: 6)],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      radius: 26,
      child: SizedBox(
        width: 44,
        height: 44,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _line(),
              const SizedBox(height: 6),
              _line(),
              const SizedBox(height: 6),
              _line(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String number, title;
  const _SectionTitle({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '// $number',
          style: mono(size: 13, color: cyan, weight: FontWeight.w600, spacing: 1),
        ),
        const SizedBox(height: 8),
        Text(title, style: heading(size: 30, spacing: -0.8, height: 1.15)),
        const SizedBox(height: 10),
        Container(
          width: 48,
          height: 3,
          decoration: BoxDecoration(
            gradient: kGradient,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final bool accent;
  const _Chip(this.label, {this.accent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
      decoration: BoxDecoration(
        color: accent ? cyanA(0.08) : const Color(0x0AFFFFFF),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: accent ? cyanA(0.3) : const Color(0x1AFFFFFF),
        ),
      ),
      child: Text(
        label,
        style: mono(size: 12, color: accent ? cyan : textMuted),
      ),
    );
  }
}

class _GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  const _GradientText(this.text, this.style);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => kGradient.createShader(rect),
      child: Text(text, style: style.copyWith(color: Colors.white)),
    );
  }
}

class _GradientButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _GradientButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          gradient: kGradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: cyanA(0.3), blurRadius: 18)],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text(
                label,
                style: mono(size: 13.5, color: bg, weight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _OutlineButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const _OutlineButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cyan),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Text(
              label,
              style: mono(size: 13.5, color: cyan, weight: FontWeight.w700),
            ),
          ),
        ),
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
        builder: (context, v, _) => _GradientText('${v.round()}$suffix', style),
      ),
    );
  }
}

// ============================================================
// LATAR: grid tipis + jaring titik yang bergerak pelan
// ============================================================
class _Particle {
  final double x, y, vx, vy;
  const _Particle(this.x, this.y, this.vx, this.vy);
}

class _Background extends StatefulWidget {
  const _Background();

  @override
  State<_Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<_Background>
    with SingleTickerProviderStateMixin {
  final _time = ValueNotifier<double>(0);
  late final Ticker _ticker;
  late final List<_Particle> _particles;

  @override
  void initState() {
    super.initState();
    final rnd = math.Random(7);
    _particles = List.generate(
      45,
      (_) => _Particle(
        rnd.nextDouble(),
        rnd.nextDouble(),
        (rnd.nextDouble() - 0.5) * 0.02,
        (rnd.nextDouble() - 0.5) * 0.02,
      ),
    );
    _ticker = createTicker((d) => _time.value = d.inMicroseconds / 1e6)..start();
  }

  @override
  void dispose() {
    _ticker.dispose();
    _time.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: _BackgroundPainter(_particles, _time),
        size: Size.infinite,
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  final List<_Particle> particles;
  final ValueListenable<double> time;
  _BackgroundPainter(this.particles, this.time) : super(repaint: time);

  @override
  void paint(Canvas canvas, Size size) {
    // grid
    final grid = Paint()
      ..color = const Color(0x0800E5FF)
      ..strokeWidth = 1;
    const step = 50.0;
    for (double x = 0; x <= size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), grid);
    }
    for (double y = 0; y <= size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), grid);
    }

    // jaring titik
    final t = time.value;
    final pts = <Offset>[
      for (final p in particles)
        Offset(
          ((p.x + p.vx * t) % 1.0) * size.width,
          ((p.y + p.vy * t) % 1.0) * size.height,
        ),
    ];
    const maxDist = 150.0;
    final line = Paint()..strokeWidth = 1;
    for (int i = 0; i < pts.length; i++) {
      for (int j = i + 1; j < pts.length; j++) {
        final d = (pts[i] - pts[j]).distance;
        if (d < maxDist) {
          line.color = cyanA((1 - d / maxDist) * 0.22);
          canvas.drawLine(pts[i], pts[j], line);
        }
      }
    }
    final node = Paint()..color = cyanA(0.45);
    for (final p in pts) {
      canvas.drawCircle(p, 2, node);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}