import 'package:flutter/material.dart';

void main() {
  runApp(FSkoolApp());
}

// ─────────────────────────────────────────
//  APP ROOT
// ─────────────────────────────────────────
class FSkoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fSkOOL',
      theme: ThemeData(
        primaryColor: Color(0xFF0B2E59),
        fontFamily: 'sans-serif',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0B2E59)),
      ),
      home: LoginScreen(),
    );
  }
}

// ─────────────────────────────────────────
//  LOGIN SCREEN
// ─────────────────────────────────────────
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF06142E),
              Color(0xFF0B2E59),
              Color(0xFF0D3B70),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Container(
                width: double.infinity,
                constraints: BoxConstraints(maxWidth: 420),
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 60,
                      offset: Offset(0, 24),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // ── Logo + App Name ──
                    Center(
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF06142E), Color(0xFF29B6F6)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF0B2E59).withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text('🎓', style: TextStyle(fontSize: 38)),
                            ),
                          ),
                          SizedBox(height: 14),
                          Text(
                            'fSkOOL',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF06142E),
                              letterSpacing: -1,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Your smart school companion',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 32),

                    // ── Welcome Text ──
                    Text(
                      'Welcome back 👋',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Sign in to continue to your dashboard',
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),

                    SizedBox(height: 28),

                    // ── Username Field ──
                    _fieldLabel('Username or Email'),
                    SizedBox(height: 8),
                    TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'e.g. sumit@fskool.edu',
                        prefixIcon: Icon(Icons.person_outline, color: Color(0xFF0B2E59)),
                        filled: true,
                        fillColor: Color(0xFFF0F7FF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Color(0xFF0B2E59), width: 2),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[400]),
                      ),
                    ),

                    SizedBox(height: 18),

                    // ── Password Field ──
                    _fieldLabel('Password'),
                    SizedBox(height: 8),
                    TextField(
                      controller: passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF0B2E59)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                            color: Colors.grey[500],
                          ),
                          onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF0F7FF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Color(0xFF0B2E59), width: 2),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[400]),
                      ),
                    ),

                    SizedBox(height: 8),

                    // ── Forgot Password ──
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color(0xFF0B2E59),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 8),

                    // ── Login Button ──
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0B2E59),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          elevation: 6,
                          shadowColor: Color(0xFF0B2E59).withOpacity(0.4),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => HomeScreen()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Log In',
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, size: 20),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    // ── Create Account ──
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New student? ', style: TextStyle(color: Colors.grey[500], fontSize: 14)),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                color: Color(0xFF0B2E59),
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _fieldLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Color(0xFF0B2E59),
      ),
    );
  }
}

// ─────────────────────────────────────────
//  HOME SCREEN
// ─────────────────────────────────────────
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    CommunityTab(),
    AIChatTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFF),

      // ─────────────────────────────
      //  DRAWER
      // ─────────────────────────────
      drawer: Drawer(
        backgroundColor: Color(0xFF06142E),
        child: Column(
          children: [
            // Drawer Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(24, 60, 24, 24),
              decoration: BoxDecoration(
                color: Color(0xFF0F1E36),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF29B6F6), Color(0xFF0B2E59)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF29B6F6).withOpacity(0.3),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text('🎓', style: TextStyle(fontSize: 28)),
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    'Sumit Sharma',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Grade 10 · Roll No. 24',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),

            // Drawer Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 12),
                children: [
                  _drawerItem(Icons.home_rounded, 'Home', isActive: true),
                  _drawerItem(Icons.person_outline_rounded, 'Profile'),
                  _drawerItem(Icons.bar_chart_rounded, 'My Results'),
                  _drawerItem(Icons.calendar_today_rounded, 'Timetable'),
                  _drawerItem(Icons.settings_outlined, 'Settings'),
                  Divider(color: Colors.white12, height: 32),
                  _drawerItem(Icons.logout_rounded, 'Log Out', isLogout: true),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'fSkOOL v1.0.0 · © 2026',
                style: TextStyle(color: Colors.white24, fontSize: 11),
              ),
            ),
          ],
        ),
      ),

      // ─────────────────────────────
      //  BODY
      // ─────────────────────────────
      body: _tabs[_currentIndex],

      // ─────────────────────────────
      //  BOTTOM NAVIGATION
      // ─────────────────────────────
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 20,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                _bottomNavItem(Icons.home_rounded, 'Home', 0),
                _bottomNavItem(Icons.people_rounded, 'Community', 1),
                _bottomNavItem(Icons.smart_toy_rounded, 'AI Chat', 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerItem(
    IconData icon,
    String title, {
    bool isActive = false,
    bool isLogout = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF29B6F6).withOpacity(0.15) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          left: BorderSide(
            color: isActive ? Color(0xFF29B6F6) : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isLogout
              ? Colors.redAccent
              : isActive
                  ? Color(0xFF29B6F6)
                  : Colors.white70,
          size: 22,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: isLogout
                ? Colors.redAccent
                : isActive
                    ? Colors.white
                    : Colors.white70,
            fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
            fontSize: 15,
          ),
        ),
        onTap: () => Navigator.pop(context),
        dense: true,
      ),
    );
  }

  Widget _bottomNavItem(IconData icon, String label, int index) {
    final bool isSelected = _currentIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _currentIndex = index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Color(0xFF0B2E59) : Colors.grey[400],
              size: 26,
            ),
            SizedBox(height: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                color: isSelected ? Color(0xFF0B2E59) : Colors.grey[400],
              ),
            ),
            SizedBox(height: 4),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: isSelected ? 20 : 0,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xFF0B2E59),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────
//  HOME TAB
// ─────────────────────────────────────────
class HomeTab extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {'emoji': '✅', 'label': 'Attendance', 'color': Color(0xFF10B981), 'bg': Color(0xFFD1FAE5)},
    {'emoji': '📊', 'label': 'Results',    'color': Color(0xFF3B82F6), 'bg': Color(0xFFDBEAFE)},
    {'emoji': '🕐', 'label': 'Schedule',   'color': Color(0xFF8B5CF6), 'bg': Color(0xFFEDE9FE)},
    {'emoji': '📅', 'label': 'Calendar',   'color': Color(0xFFF59E0B), 'bg': Color(0xFFFEF3C7)},
    {'emoji': '👨‍🏫', 'label': 'Teachers',  'color': Color(0xFFEF4444), 'bg': Color(0xFFFEE2E2)},
    {'emoji': '🎮', 'label': 'Games',      'color': Color(0xFFEC4899), 'bg': Color(0xFFFCE7F3)},
    {'emoji': '📚', 'label': 'Syllabus',   'color': Color(0xFF06B6D4), 'bg': Color(0xFFCFFAFE)},
    {'emoji': '📝', 'label': 'Homework',   'color': Color(0xFFF97316), 'bg': Color(0xFFFFEDD5)},
    {'emoji': '📖', 'label': 'Books',      'color': Color(0xFF14B8A6), 'bg': Color(0xFFCCFBF1)},
    {'emoji': '🗒️', 'label': 'Notes',      'color': Color(0xFF6366F1), 'bg': Color(0xFFE0E7FF)},
    {'emoji': '🏫', 'label': 'Campus',     'color': Color(0xFF84CC16), 'bg': Color(0xFFECFCCB)},
    {'emoji': '⋯',  'label': 'More',       'color': Color(0xFF9CA3AF), 'bg': Color(0xFFF3F4F6)},
  ];

  final List<Map<String, dynamic>> notices = [
    {
      'tag': '📢 Notice',
      'title': 'Annual Sports Day',
      'date': 'Jun 15',
      'desc': 'All students must report by 8:00 AM in sports uniform.',
      'bg': Color(0xFFEEF2FF),
      'border': Color(0xFF6366F1),
    },
    {
      'tag': '🏖️ Holiday',
      'title': 'Summer Break',
      'date': 'Jun 20–Jul 10',
      'desc': 'School will remain closed. Enjoy your break!',
      'bg': Color(0xFFFFF7ED),
      'border': Color(0xFFF97316),
    },
    {
      'tag': '📝 Exam',
      'title': 'Unit Test — Math',
      'date': 'Jun 12',
      'desc': 'Chapters 5–8. Bring calculator & geometry box.',
      'bg': Color(0xFFF0FDF4),
      'border': Color(0xFF22C55E),
    },
  ];

  final List<Map<String, dynamic>> todayClasses = [
    {
      'time': '8:00 AM',
      'subject': 'Mathematics',
      'teacher': 'Mr. Verma',
      'room': 'Room 12',
      'color': Color(0xFF3B82F6),
      'bg': Color(0xFFEFF6FF),
      'done': true,
    },
    {
      'time': '9:00 AM',
      'subject': 'English',
      'teacher': 'Ms. Priya',
      'room': 'Room 08',
      'color': Color(0xFF8B5CF6),
      'bg': Color(0xFFF5F3FF),
      'done': false,
    },
    {
      'time': '10:00 AM',
      'subject': 'Physics',
      'teacher': 'Mr. Gupta',
      'room': 'Lab 2',
      'color': Color(0xFFEF4444),
      'bg': Color(0xFFFFF1F2),
      'done': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        // ── Top Bar ──
        SliverToBoxAdapter(child: _buildTopBar(context)),

        // ── Stats Strip ──
        SliverToBoxAdapter(child: _buildStatsStrip()),

        // ── Section: Quick Access ──
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 28, 16, 12),
            child: Text(
              'Quick Access',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF06142E)),
            ),
          ),
        ),

        // ── Feature Grid ──
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, i) => _featureItem(features[i]),
              childCount: features.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
          ),
        ),

        // ── Section: School Notices ──
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 32, 16, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '📢 School Notices',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF06142E)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See all →', style: TextStyle(color: Color(0xFF0B2E59), fontWeight: FontWeight.w600, fontSize: 13)),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => _noticeCard(notices[i]),
              childCount: notices.length,
            ),
          ),
        ),

        // ── Section: Today's Classes ──
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 32, 16, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '📅 Today\'s Classes',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF06142E)),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Full schedule →', style: TextStyle(color: Color(0xFF0B2E59), fontWeight: FontWeight.w600, fontSize: 13)),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 100),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => _classCard(todayClasses[i]),
              childCount: todayClasses.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top + 12, 16, 16),
      child: Row(
        children: [
          Builder(
            builder: (ctx) => GestureDetector(
              onTap: () => Scaffold.of(ctx).openDrawer(),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xFFEAF6FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.menu_rounded, color: Color(0xFF0B2E59), size: 22),
              ),
            ),
          ),
          SizedBox(width: 12),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF06142E), Color(0xFF29B6F6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('🎓', style: TextStyle(fontSize: 22))),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good morning 👋', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                Text(
                  'Sumit Sharma',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xFF06142E)),
                ),
              ],
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Color(0xFFFFF7ED),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Center(child: Icon(Icons.notifications_outlined, color: Color(0xFFF97316), size: 22)),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Color(0xFFEAF6FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.person_outline_rounded, color: Color(0xFF0B2E59), size: 22),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsStrip() {
    final stats = [
      {'label': 'Attendance', 'value': '92%', 'icon': '✅', 'color': Color(0xFF10B981), 'bg': Color(0xFFD1FAE5)},
      {'label': 'Avg. Grade', 'value': 'A−',  'icon': '📊', 'color': Color(0xFF3B82F6), 'bg': Color(0xFFDBEAFE)},
      {'label': 'Pending HW', 'value': '3',   'icon': '📝', 'color': Color(0xFFF59E0B), 'bg': Color(0xFFFEF3C7)},
    ];

    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(16, 20, 16, 0),
        itemCount: stats.length,
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemBuilder: (_, i) {
          final s = stats[i];
          return Container(
            width: 120,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: Offset(0, 2))],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(s['icon'] as String, style: TextStyle(fontSize: 22)),
                SizedBox(height: 6),
                Text(
                  s['value'] as String,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: s['color'] as Color),
                ),
                Text(s['label'] as String, style: TextStyle(fontSize: 11, color: Colors.grey[500])),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _featureItem(Map<String, dynamic> f) {
    return Column(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: f['bg'] as Color,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: Offset(0, 2))],
          ),
          child: Center(child: Text(f['emoji'] as String, style: TextStyle(fontSize: 26))),
        ),
        SizedBox(height: 7),
        Text(
          f['label'] as String,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: Color(0xFF1A1A2E)),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _noticeCard(Map<String, dynamic> n) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: n['bg'] as Color,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: n['border'] as Color, width: 4)),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8, offset: Offset(0, 2))],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  n['tag'] as String,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: n['border'] as Color),
                ),
                SizedBox(height: 4),
                Text(
                  n['title'] as String,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF1A1A2E)),
                ),
                SizedBox(height: 4),
                Text(
                  n['desc'] as String,
                  style: TextStyle(fontSize: 13, color: Colors.grey[600], height: 1.4),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              n['date'] as String,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: n['border'] as Color),
            ),
          ),
        ],
      ),
    );
  }

  Widget _classCard(Map<String, dynamic> c) {
    final bool done = c['done'] as bool;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: done ? Color(0xFFF9FAFB) : Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: done ? Color(0xFFE5E7EB) : (c['bg'] as Color), width: 1.5),
        boxShadow: done
            ? []
            : [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8, offset: Offset(0, 2))],
      ),
      child: Opacity(
        opacity: done ? 0.6 : 1.0,
        child: Row(
          children: [
            SizedBox(
              width: 52,
              child: Column(
                children: [
                  Text(
                    c['time'].toString().split(' ')[0],
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: done ? Colors.grey : Color(0xFF06142E)),
                  ),
                  Text(
                    c['time'].toString().split(' ')[1],
                    style: TextStyle(fontSize: 10, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Container(width: 3, height: 44, decoration: BoxDecoration(color: c['color'] as Color, borderRadius: BorderRadius.circular(4))),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    c['subject'] as String,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF1A1A2E)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '${c['teacher']} · ${c['room']}',
                    style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            done
                ? Text('✅', style: TextStyle(fontSize: 18))
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: c['bg'] as Color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Upcoming',
                      style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: c['color'] as Color),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────
//  COMMUNITY TAB
// ─────────────────────────────────────────
class CommunityTab extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {'emoji': '📌', 'text': 'Study group for Math unit test — Join!', 'author': 'Class Rep', 'time': '2h ago', 'likes': 12},
    {'emoji': '🏆', 'text': 'Quiz Bowl results are out! Check your scores now.', 'author': 'School Admin', 'time': '5h ago', 'likes': 34},
    {'emoji': '📸', 'text': 'Sports Day photos have been uploaded to the gallery!', 'author': 'Sports Club', 'time': '1d ago', 'likes': 87},
    {'emoji': '🎉', 'text': 'Welcome all new students to Grade 10! Let\'s have a great year.', 'author': 'Principal', 'time': '2d ago', 'likes': 56},
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          floating: true,
          automaticallyImplyLeading: false,
          title: Text(
            '👥 Community',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Color(0xFF06142E)),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 100),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) {
                final p = posts[i];
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8, offset: Offset(0, 2))],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(p['emoji'] as String, style: TextStyle(fontSize: 20)),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              p['author'] as String,
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF0B2E59)),
                            ),
                          ),
                          Text(p['time'] as String, style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(p['text'] as String, style: TextStyle(fontSize: 14, color: Color(0xFF1A1A2E), height: 1.4)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.favorite_border_rounded, size: 16, color: Colors.grey[400]),
                          SizedBox(width: 4),
                          Text('${p['likes']}', style: TextStyle(fontSize: 13, color: Colors.grey[500])),
                          SizedBox(width: 16),
                          Icon(Icons.chat_bubble_outline_rounded, size: 16, color: Colors.grey[400]),
                          SizedBox(width: 4),
                          Text('Reply', style: TextStyle(fontSize: 13, color: Colors.grey[500])),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: posts.length,
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────
//  AI CHAT TAB
// ─────────────────────────────────────────
class AIChatTab extends StatefulWidget {
  @override
  State<AIChatTab> createState() => _AIChatTabState();
}

class _AIChatTabState extends State<AIChatTab> {
  final TextEditingController _chatController = TextEditingController();
  final List<Map<String, String>> _messages = [
    {'role': 'ai', 'text': '👋 Hi Sumit! I\'m your AI tutor. Ask me anything — from quadratic equations to essay tips!'},
  ];

  void _sendMessage() {
    final text = _chatController.text.trim();
    if (text.isEmpty) return;
    setState(() {
      _messages.add({'role': 'user', 'text': text});
      _chatController.clear();
      // Simulated response
      _messages.add({'role': 'ai', 'text': 'Great question! Let me help you with that. (Connect to your AI backend to get real answers.)'});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Header
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).padding.top + 12, 20, 16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF06142E), Color(0xFF29B6F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(child: Text('🤖', style: TextStyle(fontSize: 20))),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('AI Study Assistant', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Color(0xFF06142E))),
                  Text('Always here to help', style: TextStyle(fontSize: 12, color: Colors.grey[500])),
                ],
              ),
            ],
          ),
        ),

        // Messages
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: _messages.length,
            itemBuilder: (_, i) {
              final msg = _messages[i];
              final isAI = msg['role'] == 'ai';
              return Align(
                alignment: isAI ? Alignment.centerLeft : Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(bottom: 12, right: isAI ? 60 : 0, left: isAI ? 0 : 60),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: isAI ? Color(0xFFEFF6FF) : Color(0xFF0B2E59),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(isAI ? 4 : 16),
                      bottomRight: Radius.circular(isAI ? 16 : 4),
                    ),
                  ),
                  child: Text(
                    msg['text'] ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      color: isAI ? Color(0xFF1A1A2E) : Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        // Input
        Container(
          padding: EdgeInsets.fromLTRB(16, 12, 16, MediaQuery.of(context).padding.bottom + 80),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 12, offset: Offset(0, -3))],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _chatController,
                  decoration: InputDecoration(
                    hintText: 'Ask a question...',
                    filled: true,
                    fillColor: Color(0xFFF8FAFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: _sendMessage,
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    color: Color(0xFF0B2E59),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(Icons.arrow_upward_rounded, color: Colors.white, size: 22),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
