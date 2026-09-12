import 'package:flutter/material.dart';

void main() => runApp(const TradingMasteryApp());

class TradingMasteryApp extends StatelessWidget {
  const TradingMasteryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'إحتراف التداول من الصفر الى الاحترف',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFF080A0D),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFC107), brightness: Brightness.dark),
        cardTheme: CardThemeData(color: const Color(0xFF12161B), elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      ),
      home: const MainShell(),
    );
  }
}

enum VisualType { candle, roadmap, levels, doublePattern, patterns, triangles, review, risk, discipline, psychology, timeframes }

class QuizQuestion {
  final String question;
  final List<String> answers;
  final int correct;
  const QuizQuestion(this.question, this.answers, this.correct);
}

class Lesson {
  final int number;
  final String title;
  final String subtitle;
  final VisualType visual;
  final List<String> points;
  final List<String> steps;
  final List<QuizQuestion> quiz;
  const Lesson(this.number, this.title, this.subtitle, this.visual, this.points, this.steps, this.quiz);
}

const lessons = <Lesson>[
  Lesson(1, 'أساسيات الرسم البياني', 'الشموع وOHLC والقمم والقيعان والاتجاهات', VisualType.candle, [
    'التحليل الفني يقرأ حركة السعر السابقة لمحاولة فهم الحركة القادمة.',
    'الشمعة تتكون من Open وHigh وLow وClose (OHLC).',
    'جسم الشمعة يوضح المسافة بين الافتتاح والإغلاق، والظلال توضح الامتداد إلى High وLow.',
    'الاتجاه الصاعد يعتمد على قمم أعلى وقيعان أعلى (HH + HL)، والهابط على قمم أدنى وقيعان أدنى (LH + LL).',
    'القمة أو القاع الرئيسي لا يساوي كل حركة صغيرة؛ المحاضرة تشرح نقاطاً محلية محددة حولها.',
    'لا توجد استراتيجية تضمن النجاح دائماً؛ الهدف التعلم وتقليل الخسائر غير الضرورية.',
  ], ['افهم OHLC', 'تعلم جسم الشمعة والظلال', 'حدد القمم والقيعان', 'صنف الاتجاه'], [
    QuizQuestion('ما الذي يحدد جسم الشمعة؟', ['High وLow', 'Open وClose', 'حجم التداول'], 1),
    QuizQuestion('ما تسلسل الاتجاه الصاعد؟', ['HH + HL', 'LH + LL', 'قمم متساوية دائماً'], 0),
  ]),
  Lesson(2, 'خريطة الطريق والأسواق', 'كيف تبني أساساً قبل الاستراتيجيات المتقدمة', VisualType.roadmap, [
    'التداول يشمل الفوركس والأسهم والعملات الرقمية والسلع.',
    'المحاضر يبدأ بالمدرسة الكلاسيكية قبل المدارس المتقدمة.',
    'إدارة رأس المال والمخاطر والنفسية واختيار الوسيط مراحل أساسية لاحقة.',
    'TradingView هو الأداة التي طلب المحاضر البدء بها لقراءة الرسوم والأسعار.',
    'المحاضر يحذر من التسرع في اختيار وسيط أو إيداع الأموال قبل بناء الأساس.',
    'المحاضر يعرض موقفاً تحذيرياً من منصات الخيارات الثنائية؛ هذا عرض لموقف المصدر وليس حكماً قانونياً شاملاً.',
  ], ['الرسم البياني', 'الاتجاه والدعم والمقاومة', 'النماذج', 'إدارة المخاطر', 'النفسية', 'الوسيط والأدوات'], [
    QuizQuestion('ما الأداة التي طُلب البدء بها لقراءة الشارت؟', ['TradingView', 'خدمة إشارات', 'منصة عشوائية'], 0),
    QuizQuestion('هل توجد مدرسة تحليل واحدة هي الأفضل للجميع؟', ['نعم', 'لا، توجد مدارس متعددة', 'فقط مدرسة رسمية واحدة'], 1),
  ]),
  Lesson(3, 'الاتجاهات والدعم والمقاومة', 'السياق أولاً ثم المناطق البنيوية', VisualType.levels, [
    'ابدأ بالسؤال: هل الاتجاه صاعد أم هابط أم عرضي؟',
    'في الصاعد نبحث عن HH + HL، وفي الهابط LH + LL.',
    'الدعم منطقة يظهر فيها قاعان أو أكثر عند مستوى متقارب وفق تعريف المحاضرة.',
    'المقاومة منطقة تظهر فيها قمتان أو أكثر عند مستوى متقارب.',
    'الدعم المكسور قد يتحول إلى مقاومة، والمقاومة المكسورة قد تتحول إلى دعم.',
    'إذا كان الرسم غير واضح أو عرضياً، فعدم الدخول خيار تعليمي صحيح.',
    'لا توجد نقطة شراء أو بيع مضمونة؛ الأمثلة تعليمية.',
  ], ['حدد الاتجاه', 'حدد القمم والقيعان', 'ارسم مناطق الدعم', 'ارسم مناطق المقاومة', 'راقب الكسر وإعادة الاختبار'], [
    QuizQuestion('ماذا قد تصبح المقاومة بعد كسرها صعوداً؟', ['دعماً', 'قاعاً فورياً', 'تختفي دائماً'], 0),
    QuizQuestion('ما التصرف عند رسم غير واضح؟', ['عدم التخمين', 'مضاعفة الحجم', 'اختيار اتجاه عشوائي'], 0),
  ]),
  Lesson(4, 'Double Top وDouble Bottom', 'النماذج الثنائية وسياق الانعكاس', VisualType.doublePattern, [
    'Double Top نموذج انعكاسي بعد اتجاه صاعد، وDouble Bottom بعد اتجاه هابط وفق شرح المحاضر.',
    'يجب النظر إلى الاتجاه السابق والسياق، وليس تشابه الشكل فقط.',
    'المستوى الفاصل بين القمتين أو القاعين مهم في قراءة النموذج.',
    'كسر المستوى الفاصل هو إشارة تعليمية وفق المصدر وليس ضماناً للنتيجة.',
    'قبل أي صفقة يجب فهم الدخول ووقف الخسارة والهدف وحجم الصفقة.',
  ], ['حدد الاتجاه السابق', 'حدد القمتين أو القاعين', 'حدد المستوى الفاصل', 'انتظر التأكيد', 'راجع المخاطرة'], [
    QuizQuestion('Double Top يرتبط بأي سياق في المحاضرة؟', ['بعد اتجاه صاعد', 'بعد اتجاه هابط فقط', 'دون سياق'], 0),
    QuizQuestion('هل النموذج يضمن نجاح الصفقة؟', ['نعم', 'لا', 'فقط في الذهب'], 1),
  ]),
  Lesson(5, 'Rectangle وTriple Top/Bottom والرأس والكتفين', 'النماذج الاستمرارية والانعكاسية وخط العنق', VisualType.patterns, [
    'Rectangle يتكون من قمتين وقاعين عند مستويات متقاربة تقريباً ضمن سياق الاتجاه السابق.',
    'Triple Top نموذج انعكاسي هابط بثلاث قمم تقريباً، وTriple Bottom انعكاسي صاعد بثلاثة قيعان تقريباً.',
    'Head & Shoulders نموذج انعكاسي هابط، وInverse Head & Shoulders انعكاسي صاعد.',
    'في الرأس والكتفين يرتبط التفعيل بكسر خط العنق وفق شرح المحاضر.',
    'الهدف النظري في النموذج مرتبط ببنيته كما شرحه المصدر، وليس ضماناً.',
    'لا تجبر الرسم على نموذج غير واضح أو غير متوازن.',
  ], ['حدد الاتجاه', 'حدد القمم والقيعان الرئيسية', 'ارسم حدود النموذج أو خط العنق', 'انتظر الكسر', 'راقب Retest أو الفشل'], [
    QuizQuestion('ما الدور التعليمي لخط العنق؟', ['مستوى بنيوي مهم', 'خط زخرفي', 'مؤشر حجم'], 0),
    QuizQuestion('Triple Bottom يوصف بأنه؟', ['انعكاسي صاعد', 'استمراري هابط', 'عرضي دائماً'], 0),
  ]),
  Lesson(6, 'المثلثات: الاستمرارية', 'Ascending وDescending Triangle داخل الاتجاه', VisualType.triangles, [
    'Ascending Triangle بعد اتجاه صاعد: قمم متقاربة وقيعان صاعدة، والكسر العلوي هو التأكيد الذي شرحه المحاضر.',
    'Descending Triangle بعد اتجاه هابط: قيعان متقاربة وقمم هابطة، والكسر السفلي هو التأكيد الذي شرحه المحاضر.',
    'الهدف النظري الذي شرحه المصدر يقاس بارتفاع المثلث ويُسقط في اتجاه الكسر.',
    'يمكن أن يحدث Retest وتبادل للأدوار بعد الكسر.',
    'لا تفرض المثلث على حركات صغيرة لا تطابق النموذج.',
  ], ['تأكد من الاتجاه', 'اربط النقاط الرئيسية', 'حدد الكسر', 'راقب Retest إن ظهر'], [
    QuizQuestion('Ascending Triangle الاستمراري يأتي بعد؟', ['اتجاه صاعد', 'اتجاه هابط فقط', 'عرضي فقط'], 0),
    QuizQuestion('هل Retest مضمون؟', ['نعم', 'لا، يمكن أن يحدث', 'مرتان دائماً'], 1),
  ]),
  Lesson(7, 'المثلثات الانعكاسية والمتماثل', 'السياق والكسر أهم من الشكل وحده', VisualType.triangles, [
    'Ascending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه هابط وفق شرح المحاضر.',
    'Descending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه صاعد وفق شرح المحاضر.',
    'Symmetrical Triangle له ضلع علوي هابط وضلع سفلي صاعد، ويمكن أن يكون استمرارياً أو انعكاسياً حسب السياق والكسر.',
    'قبل التأكيد توجد منطقة لا ينبغي فيها التخمين؛ الانتظار قرار صحيح.',
    'التدريب التاريخي على TradingView يساعد على اختبار الفكرة بدلاً من افتراض نجاحها.',
    'المحاضر يؤكد أن الهدف هو تقليل الخسائر الكبيرة، لا مطاردة كل حركة.',
  ], ['حدد السياق', 'عدّ النقاط الرئيسية', 'حدد منطقة عدم اليقين', 'انتظر الكسر', 'راجع ما حدث تاريخياً'], [
    QuizQuestion('الضلعان في Symmetrical Triangle يكونان؟', ['علوي هابط وسفلي صاعد', 'كلاهما صاعد', 'كلاهما أفقي دائماً'], 0),
    QuizQuestion('ماذا تفعل قبل تأكيد الاتجاه؟', ['تخمن', 'تنتظر', 'تضاعف الحجم'], 1),
  ]),
  Lesson(8, 'المراجعة الشاملة والتطبيق', 'من الشارت إلى قراءة متكاملة دون إجبار النماذج', VisualType.review, [
    'ابدأ بالاتجاه، ثم القمم والقيعان، ثم الدعم والمقاومة، ثم النموذج الواضح إن وجد.',
    'لا توجد قاعدة واحدة تعمل 100% على كل الأسواق وكل الأوقات.',
    'النماذج تشمل Double Top/Bottom وTriple Top/Bottom وRectangle والرأس والكتفين والمثلثات.',
    'لا تعد كل حركة صغيرة نقطة رئيسية في النموذج؛ استخدم النقاط التي تطابق بنيته.',
    'الكسر قد يفشل، وإعادة الاختبار وتبادل الأدوار مهمان في قراءة الرسم.',
    'إذا لم يكن الرسم واضحاً، عدم التداول خيار صحيح ضمن المنهج التعليمي.',
  ], ['اختر أداة وفريماً', 'حدد الاتجاه', 'حدد HH/HL أو LH/LL', 'ارسم الدعم والمقاومة', 'ابحث عن نموذج واضح', 'سجل ما حدث بعد الكسر'], [
    QuizQuestion('ما أول خطوة في مراجعة الشارت؟', ['تحديد الاتجاه', 'فتح صفقة', 'اختيار اللوت'], 0),
    QuizQuestion('هل يجب إجبار كل شكل على أن يكون نموذجاً؟', ['نعم', 'لا', 'فقط على الذهب'], 1),
  ]),
  Lesson(9, 'إدارة المخاطر والبيب واللوت', 'حماية رأس المال وربط المخاطرة بحجم الصفقة', VisualType.risk, [
    'إدارة المخاطر هدفها حماية رأس المال وتقليل احتمال الخسارة الكبيرة.',
    'مثال المصدر: رصيد 100000 ومخاطرة 2% يعطي حد خسارة نظرياً قدره 2000 في الصفقة.',
    'عدد الوحدات = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند وقف الخسارة.',
    'حدد التحليل ووقف الخسارة أولاً، ثم حدد المخاطرة، ثم احسب حجم الصفقة.',
    'البيب وحدة شائعة لوصف حركة السعر في الفوركس، لكن طريقة عرضه وقيمته تختلف حسب الأداة والوسيط.',
    'اللوت يعبّر عن حجم العقد؛ زيادته تزيد قيمة الربح والخسارة لكل حركة.',
    'أمثلة البيب واللوت في المصدر تعليمية وليست قيمة ثابتة لكل الأدوات.',
  ], ['حدد نقطة الإبطال/الوقف', 'حدد مبلغ المخاطرة', 'احسب المسافة', 'احسب حجم الصفقة', 'تحقق من الخسارة القصوى'], [
    QuizQuestion('متى تحسب حجم الصفقة؟', ['قبل تحديد الوقف', 'بعد تحديد المخاطرة والوقف', 'عشوائياً'], 1),
    QuizQuestion('هدف إدارة المخاطر الأساسي؟', ['حماية رأس المال', 'ضمان الربح', 'رفع اللوت'], 0),
  ]),
  Lesson(10, 'أخطاء المتداولين والانضباط', 'الخطة ووقف الخسارة والاستراتيجية والسجل', VisualType.discipline, [
    'من الأخطاء: الثراء السريع، توقع الفوز دائماً، نسخ الإشارات، والتداول بلا خطة.',
    'المخاطرة في كل صفقة ينبغي أن تُبنى على نسبة أو مبلغ محدد، وليس على لوت ثابت.',
    'لا تزيل أو تحرك وقف الخسارة فقط لتجنب الاعتراف بالخسارة.',
    'لا تنتقل بين استراتيجيات كثيرة دون اختبارها تاريخياً أو على حساب تجريبي.',
    'التداول أثناء التعب أو الغضب أو ضعف التركيز أو الإنترنت غير المستقر يزيد مشكلات التنفيذ.',
    'سجل سبب الصفقة والوقف والهدف والنتيجة والملاحظات وراجع السجل دورياً.',
  ], ['اكتب خطة', 'حدد متى تمنع نفسك من التداول', 'ثبت طريقة اختبار واحدة', 'سجل كل صفقة', 'راجع الأخطاء دورياً'], [
    QuizQuestion('ما الخطأ في وقف الخسارة؟', ['تركه منطقياً', 'تحريكه عشوائياً لتجنب الخسارة', 'تحديده قبل الدخول'], 1),
    QuizQuestion('ما فائدة سجل التداول؟', ['اكتشاف الأخطاء المتكررة', 'ضمان الربح', 'رفع الرافعة'], 0),
  ]),
  Lesson(11, 'الأخطاء النفسية والتطبيق العملي', 'الطمع والخوف والانتقام والتعلق بالصفقة', VisualType.psychology, [
    'الطمع قد يظهر بإلغاء الهدف المخطط أو الإفراط في التداول بعد سلسلة أرباح.',
    'الخوف قد يؤدي إلى إغلاق الصفقة مبكراً أو عدم تنفيذ فرصة مطابقة للخطة.',
    'الانتقام يظهر عند زيادة الحجم بعد وقف الخسارة بهدف استرداد الخسارة سريعاً.',
    'وجود حد خسارة يومي مكتوب هو مثال طرحه المصدر؛ ليس توصية شخصية للمستخدم.',
    'لا تجعل صفقة واحدة تتحكم في مزاجك أو يومك؛ تعامل معها كجزء من سلسلة نتائج.',
    'الإغلاق الجزئي وتحريك الوقف إلى نقطة التعادل وردا كمثال تعليمي في المحاضرة، وليس ضماناً.',
    'التطبيق العملي يؤكد الدعم والمقاومة والكسر وإعادة الاختبار والـFake Breakout دون ادعاء اليقين.',
  ], ['اكتب خطة الخروج', 'راقب الطمع والخوف', 'ضع قاعدة ضد الانتقام', 'سجل الحالة النفسية', 'قارن تطورك بنفسك'], [
    QuizQuestion('ما مثال على Revenge Trading؟', ['الالتزام بالخطة', 'زيادة اللوت بعد خسارة لاستردادها', 'تسجيل الصفقة'], 1),
    QuizQuestion('ما القاعدة الأساسية حول حركة السوق؟', ['كل حركة يجب تداولها', 'مش كل حركة في السوق لازم تركبها', 'لا نحتاج خطة'], 1),
  ]),
  Lesson(12, 'الفريمات والترابط بين HTF وLTF', 'الاتجاه على الفريم الأعلى والمكان ثم التأكيد على الفريم الأدنى', VisualType.timeframes, [
    'الفريم يحدد الفترة التي تمثلها كل شمعة مثل 1m و5m و1H و4H و1D.',
    'HTF وMTF وLTF تصنيفات نسبية؛ المحاضر يركز في هذا الدرس على HTF وLTF.',
    'أمثلة المحاضر: 1D مع 1H، و4H مع 15m، و1H مع 5m.',
    'ابدأ بـHTF لتحديد الاتجاه والمنطقة، ثم انتقل إلى LTF بعد وصول السعر للمنطقة.',
    'HTF يحدد الاتجاه والمكان، وLTF يساعد على اختيار التأكيد/الدخول وفق المنهج المشروح.',
    'لا تفتح فريمات كثيرة بلا حاجة؛ كثرتها قد تسبب التشويش.',
    'المحاضر يشرح أمثلة على الدعم وFVG وOrder Block والسيولة كجزء من مدارس متقدمة؛ التفاصيل الكاملة لهذه المفاهيم ليست كلها في هذه المحاضرة.',
    'وقف الخسارة هو حد مخاطرة/إبطال مختار؛ ضربه لا يعني بالضرورة أن الاتجاه العام انعكس فوراً.',
  ], ['افتح HTF', 'حدد الاتجاه', 'حدد المنطقة', 'انتظر وصول السعر', 'انتقل إلى LTF', 'انتظر التأكيد', 'حدد الوقف والهدف وفق الخطة'], [
    QuizQuestion('ما وظيفة HTF في المنهج؟', ['تحديد الاتجاه والمكان', 'تغيير العملة', 'تحديد حجم الهاتف'], 0),
    QuizQuestion('متى تنتقل إلى LTF؟', ['قبل تحديد HTF', 'بعد وصول السعر إلى منطقة HTF', 'عشوائياً'], 1),
  ]),
];

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int tab = 0;
  final Set<int> completed = <int>{};

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(completed: completed, onOpenLesson: _openLesson),
      CoursePage(completed: completed, onOpenLesson: _openLesson),
      const ToolsPage(),
    ];
    return Scaffold(
      body: SafeArea(child: pages[tab]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (v) => setState(() => tab = v),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard_outlined), selectedIcon: Icon(Icons.dashboard), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Icons.school_outlined), selectedIcon: Icon(Icons.school), label: 'المسار'),
          NavigationDestination(icon: Icon(Icons.calculate_outlined), selectedIcon: Icon(Icons.calculate), label: 'الأدوات'),
        ],
      ),
    );
  }

  void _openLesson(Lesson lesson) async {
    final done = await Navigator.push<bool>(context, MaterialPageRoute(builder: (_) => LessonPage(lesson: lesson, initiallyDone: completed.contains(lesson.number))));
    if (done == true) setState(() => completed.add(lesson.number));
  }
}

class HomePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpenLesson;
  const HomePage({super.key, required this.completed, required this.onOpenLesson});

  @override
  Widget build(BuildContext context) {
    final progress = completed.length / lessons.length;
    final next = lessons.firstWhere((l) => !completed.contains(l.number), orElse: () => lessons.last);
    return ListView(padding: const EdgeInsets.fromLTRB(18, 22, 18, 30), children: [
      _HeroHeader(progress: progress),
      const SizedBox(height: 18),
      Row(children: [
        Expanded(child: _StatCard(value: '${completed.length}/${lessons.length}', label: 'محاضرات مكتملة', icon: Icons.school)),
        const SizedBox(width: 10),
        Expanded(child: _StatCard(value: '${(progress * 100).round()}%', label: 'التقدم', icon: Icons.trending_up)),
      ]),
      const SizedBox(height: 18),
      Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('الخطوة التالية', style: TextStyle(fontSize: 13, color: Colors.white60)),
        const SizedBox(height: 7),
        Text('المحاضرة ${next.number} — ${next.title}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(next.subtitle, style: const TextStyle(color: Colors.white70)),
        const SizedBox(height: 14),
        FilledButton.icon(onPressed: () => onOpenLesson(next), icon: const Icon(Icons.play_arrow), label: const Text('ابدأ التعلم')),
      ]))),
      const SizedBox(height: 18),
      const Text('خريطة الاحتراف', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      ...lessons.take(6).map((l) => _MiniLessonTile(lesson: l, done: completed.contains(l.number), onTap: () => onOpenLesson(l))),
    ]);
  }
}

class CoursePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpenLesson;
  const CoursePage({super.key, required this.completed, required this.onOpenLesson});

  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.fromLTRB(18, 22, 18, 30), children: [
    const Text('المسار الكامل', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
    const SizedBox(height: 6),
    const Text('من أساسيات الشارت إلى إدارة المخاطر والنفسية والتحليل متعدد الفريمات', style: TextStyle(color: Colors.white70)),
    const SizedBox(height: 18),
    ...lessons.map((lesson) => _CourseTile(lesson: lesson, done: completed.contains(lesson.number), onTap: () => onOpenLesson(lesson))),
    const SizedBox(height: 12),
    Card(child: Padding(padding: const EdgeInsets.all(16), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: const [
      Icon(Icons.info_outline, color: Colors.amber),
      SizedBox(width: 12),
      Expanded(child: Text('هذه النسخة التعليمية لا تقدم إشارات شراء أو بيع ولا وعوداً بالأرباح. المفاهيم المتقدمة غير المشروحة في المصادر تُعرض كمواضيع لاحقة، ولا يتم اختراع قواعد لها.', style: TextStyle(color: Colors.white70, height: 1.5))),
    ]))),
  ]);
}

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  final bool initiallyDone;
  const LessonPage({super.key, required this.lesson, required this.initiallyDone});
  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int? selectedAnswer;
  int score = 0;
  final Set<int> answered = <int>{};

  @override
  Widget build(BuildContext context) {
    final l = widget.lesson;
    return Scaffold(
      appBar: AppBar(title: Text('المحاضرة ${l.number}'), centerTitle: true),
      body: ListView(padding: const EdgeInsets.fromLTRB(16, 8, 16, 30), children: [
        _LessonHero(lesson: l),
        const SizedBox(height: 14),
        _SectionTitle(title: 'الرسم التعليمي', icon: Icons.auto_graph),
        Card(child: Padding(padding: const EdgeInsets.all(10), child: SizedBox(height: 270, child: TradingVisual(type: l.visual)))),
        const SizedBox(height: 18),
        _SectionTitle(title: 'شرح مبسط', icon: Icons.menu_book),
        ...l.points.asMap().entries.map((e) => _PointCard(index: e.key + 1, text: e.value)),
        const SizedBox(height: 12),
        _SectionTitle(title: 'طبّق بنفسك', icon: Icons.task_alt),
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
          ...l.steps.asMap().entries.map((e) => _StepRow(number: e.key + 1, text: e.value)),
        ]))),
        const SizedBox(height: 18),
        _SectionTitle(title: 'اختبار المحاضرة', icon: Icons.quiz),
        ...l.quiz.asMap().entries.map((e) => _QuizCard(index: e.key, question: e.value, answered: answered.contains(e.key), selected: selectedAnswer, onAnswer: _answer)),
        const SizedBox(height: 12),
        Card(child: Padding(padding: const EdgeInsets.all(16), child: Row(children: [
          const Icon(Icons.verified, color: Colors.amber),
          const SizedBox(width: 10),
          Expanded(child: Text(answered.length == l.quiz.length ? 'نتيجتك: $score / ${l.quiz.length} — ${score == l.quiz.length ? 'ممتاز، انتقل للمحاضرة التالية.' : 'راجع النقاط ثم أعد المحاولة ذهنياً.'}' : 'أجب عن الاختبار لتثبيت المفاهيم.', style: const TextStyle(fontWeight: FontWeight.bold))),
        ]))),
        const SizedBox(height: 12),
        FilledButton.icon(onPressed: () => Navigator.pop(context, true), icon: const Icon(Icons.check_circle), label: Text(widget.initiallyDone ? 'مكتملة — العودة للمسار' : 'تحديد كمحاضرة مكتملة')),
      ],),
    );
  }

  void _answer(int index, int answer) {
    if (answered.contains(index)) return;
    final q = widget.lesson.quiz[index];
    setState(() {
      selectedAnswer = answer;
      answered.add(index);
      if (answer == q.correct) score++;
    });
  }
}

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.fromLTRB(18, 22, 18, 30), children: [
    const Text('مختبر التداول', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800)),
    const SizedBox(height: 6),
    const Text('أدوات تعليمية تساعدك على فهم الخطة والمخاطرة بدون تنفيذ صفقات حقيقية.', style: TextStyle(color: Colors.white70)),
    const SizedBox(height: 18),
    _ToolCard(icon: Icons.calculate, title: 'حاسبة حجم الصفقة', subtitle: 'احسب الوحدات النظرية من المخاطرة والمسافة إلى الوقف.', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RiskCalculatorPage()))),
    _ToolCard(icon: Icons.fact_check, title: 'قائمة فحص الصفقة', subtitle: 'اتجاه → منطقة → تأكيد → وقف → هدف → مخاطرة.', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ChecklistPage()))),
    _ToolCard(icon: Icons.menu_book, title: 'قاموس التداول', subtitle: 'مصطلحات أساسية مع تعريفات تعليمية مختصرة.', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const GlossaryPage()))),
    _ToolCard(icon: Icons.show_chart, title: 'مختبر الشموع', subtitle: 'تدريب بصري على Open / High / Low / Close والاتجاهات.', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VisualLabPage()))),
    Card(child: Padding(padding: const EdgeInsets.all(16), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: const [
      Icon(Icons.warning_amber_rounded, color: Colors.amber),
      SizedBox(width: 10),
      Expanded(child: Text('الأرقام الناتجة من الأدوات أمثلة تعليمية. لا تستخدمها كإشارة دخول أو كضمان للربح، وقيمة البيب تختلف حسب الأداة والوسيط.', style: TextStyle(color: Colors.white70, height: 1.5))),
    ]))),
  ]);
}

class RiskCalculatorPage extends StatefulWidget {
  const RiskCalculatorPage({super.key});
  @override
  State<RiskCalculatorPage> createState() => _RiskCalculatorPageState();
}

class _RiskCalculatorPageState extends State<RiskCalculatorPage> {
  final balance = TextEditingController(text: '1000');
  final risk = TextEditingController(text: '1');
  final entry = TextEditingController(text: '100');
  final stop = TextEditingController(text: '95');
  double? units;
  double? riskMoney;

  void calculate() {
    final b = double.tryParse(balance.text.replaceAll(',', '.'));
    final r = double.tryParse(risk.text.replaceAll(',', '.'));
    final e = double.tryParse(entry.text.replaceAll(',', '.'));
    final s = double.tryParse(stop.text.replaceAll(',', '.'));
    if (b == null || r == null || e == null || s == null || b <= 0 || r <= 0 || e == s) return;
    final money = b * r / 100;
    final perUnit = (e - s).abs();
    setState(() { riskMoney = money; units = money / perUnit; });
  }

  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('حاسبة حجم الصفقة')), body: ListView(padding: const EdgeInsets.all(18), children: [
    const Text('المعادلة التعليمية', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    const SizedBox(height: 6),
    const Text('عدد الوحدات = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند الوقف.', style: TextStyle(color: Colors.white70, height: 1.5)),
    const SizedBox(height: 16),
    _NumberField(controller: balance, label: 'الرصيد'),
    _NumberField(controller: risk, label: 'المخاطرة %'),
    _NumberField(controller: entry, label: 'سعر الدخول'),
    _NumberField(controller: stop, label: 'سعر وقف الخسارة'),
    const SizedBox(height: 8),
    FilledButton.icon(onPressed: calculate, icon: const Icon(Icons.calculate), label: const Text('احسب')), 
    const SizedBox(height: 16),
    if (riskMoney != null && units != null) Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(children: [
      _ResultRow(label: 'الحد النظري للخسارة', value: riskMoney!.toStringAsFixed(2)),
      const Divider(),
      _ResultRow(label: 'الخسارة لكل وحدة', value: ((double.parse(entry.text) - double.parse(stop.text)).abs()).toStringAsFixed(4)),
      const Divider(),
      _ResultRow(label: 'عدد الوحدات النظري', value: units!.toStringAsFixed(4)),
    ]))),
  ]);
}

class ChecklistPage extends StatefulWidget {
  const ChecklistPage({super.key});
  @override
  State<ChecklistPage> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  final checks = <String>['هل الاتجاه واضح؟', 'هل حددت القمم والقيعان الرئيسية؟', 'هل المنطقة واضحة؟', 'هل يوجد تأكيد على الفريم المناسب؟', 'هل وقف الخسارة منطقي؟', 'هل المخاطرة محددة مسبقاً؟', 'هل الهدف معروف قبل الدخول؟', 'هل حالتك النفسية وتركيزك مناسبين؟'];
  final values = <bool>[];
  @override
  void initState() { super.initState(); values.addAll(List<bool>.filled(checks.length, false)); }
  @override
  Widget build(BuildContext context) { final done = values.where((v) => v).length; return Scaffold(appBar: AppBar(title: const Text('قائمة فحص الصفقة')), body: ListView(padding: const EdgeInsets.all(18), children: [
    Text('$done / ${checks.length} مكتملة', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    const SizedBox(height: 12),
    ...checks.asMap().entries.map((e) => Card(child: CheckboxListTile(value: values[e.key], onChanged: (v) => setState(() => values[e.key] = v ?? false), title: Text(e.value), secondary: Icon(values[e.key] ? Icons.check_circle : Icons.radio_button_unchecked, color: values[e.key] ? Colors.greenAccent : Colors.white38)))),
    const SizedBox(height: 8),
    const Card(child: Padding(padding: EdgeInsets.all(16), child: Text('إذا كانت الشروط غير واضحة، فالانتظار أفضل من التخمين. هذه القائمة للتدريب وليست إشارة تداول.', style: TextStyle(color: Colors.white70, height: 1.5)))),
  ]); }
}

class GlossaryPage extends StatelessWidget {
  const GlossaryPage({super.key});
  static const items = <MapEntry<String, String>>[
    MapEntry('OHLC', 'Open / High / Low / Close: بيانات الشمعة الأساسية.'),
    MapEntry('HH + HL', 'Higher High + Higher Low: تسلسل الاتجاه الصاعد في الشرح.'),
    MapEntry('LH + LL', 'Lower High + Lower Low: تسلسل الاتجاه الهابط في الشرح.'),
    MapEntry('Support', 'منطقة تفاعل سعري حول قيعان متقاربة وفق تعريف المحاضرة.'),
    MapEntry('Resistance', 'منطقة تفاعل سعري حول قمم متقاربة وفق تعريف المحاضرة.'),
    MapEntry('Retest', 'عودة السعر لاختبار مستوى بعد كسره.'),
    MapEntry('Stop Loss', 'حد خسارة/إبطال محدد مسبقاً وفق الخطة.'),
    MapEntry('Risk/Reward', 'مقارنة مقدار المخاطرة المحتملة بالهدف المحتمل في الخطة.'),
    MapEntry('Pip', 'وحدة شائعة لوصف حركة السعر في الفوركس، وتفاصيلها تختلف حسب الأداة.'),
    MapEntry('Lot', 'حجم عقد في الفوركس؛ قيمة الحركة تعتمد على الأداة وحجم العقد.'),
    MapEntry('HTF', 'High Time Frame: الفريم الأعلى المستخدم لتحديد الصورة العامة.'),
    MapEntry('LTF', 'Low Time Frame: الفريم الأدنى المستخدم للتأكيد/اختيار الدخول في منهج المحاضرة.'),
    MapEntry('Fake Breakout', 'كسر يبدو حقيقياً ثم يعود السعر داخل المنطقة؛ لا يوجد ضمان أنه سيحدث أو يفشل.'),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('قاموس التداول')), body: ListView(padding: const EdgeInsets.all(18), children: items.map((e) => Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(e.key, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber)), const SizedBox(height: 5), Text(e.value, style: const TextStyle(color: Colors.white70, height: 1.45))])))).toList());
}

class VisualLabPage extends StatelessWidget {
  const VisualLabPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('مختبر الشموع')), body: ListView(padding: const EdgeInsets.all(16), children: const [
    Card(child: Padding(padding: EdgeInsets.all(8), child: SizedBox(height: 300, child: TradingVisual(type: VisualType.candle)))),
    SizedBox(height: 14),
    Card(child: Padding(padding: EdgeInsets.all(16), child: Text('اقرأ الشمعة من خلال Open وClose وHigh وLow. لون الشمعة مجرد تمثيل بصري؛ التعريف يعتمد على الافتتاح والإغلاق.', style: TextStyle(color: Colors.white70, height: 1.5)))),
  ]);
}

class TradingVisual extends StatelessWidget {
  final VisualType type;
  const TradingVisual({super.key, required this.type});
  @override
  Widget build(BuildContext context) => CustomPaint(painter: TradingPainter(type), child: const SizedBox.expand());
}

class TradingPainter extends CustomPainter {
  final VisualType type;
  TradingPainter(this.type);
  final textStyle = const TextStyle(fontSize: 12, color: Colors.white70);

  @override
  void paint(Canvas canvas, Size size) {
    final bg = Paint()..color = const Color(0xFF0D1116);
    canvas.drawRRect(RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(18)), bg);
    switch (type) {
      case VisualType.candle: _candle(canvas, size); break;
      case VisualType.roadmap: _roadmap(canvas, size); break;
      case VisualType.levels: _levels(canvas, size); break;
      case VisualType.doublePattern: _double(canvas, size); break;
      case VisualType.patterns: _patterns(canvas, size); break;
      case VisualType.triangles: _triangles(canvas, size); break;
      case VisualType.review: _review(canvas, size); break;
      case VisualType.risk: _risk(canvas, size); break;
      case VisualType.discipline: _discipline(canvas, size); break;
      case VisualType.psychology: _psychology(canvas, size); break;
      case VisualType.timeframes: _timeframes(canvas, size); break;
    }
  }

  void grid(Canvas c, Size s) {
    final p = Paint()..color = Colors.white.withOpacity(.07)..strokeWidth = 1;
    for (var i = 1; i < 6; i++) { final y = s.height * i / 6; c.drawLine(Offset(18, y), Offset(s.width - 18, y), p); }
    for (var i = 1; i < 8; i++) { final x = s.width * i / 8; c.drawLine(Offset(x, 16), Offset(x, s.height - 16), p); }
  }

  void label(Canvas c, String text, Offset p, {double size = 12, bool bold = false}) {
    final tp = TextPainter(text: TextSpan(text: text, style: TextStyle(fontSize: size, color: Colors.white70, fontWeight: bold ? FontWeight.bold : FontWeight.normal)), textDirection: TextDirection.rtl)..layout();
    tp.paint(c, p);
  }

  void line(Canvas c, Offset a, Offset b, {double width = 3, Color color = Colors.amber}) => c.drawLine(a, b, Paint()..color = color..strokeWidth = width..strokeCap = StrokeCap.round);

  void candle(Canvas c, Size s) {
    grid(c, s);
    final baseY = s.height * .78;
    label(c, 'شمعة صاعدة', Offset(20, 12), size: 16, bold: true);
    final x = s.width * .48;
    final high = s.height * .18;
    final low = s.height * .82;
    final open = s.height * .60;
    final close = s.height * .34;
    final wick = Paint()..color = Colors.white70..strokeWidth = 3;
    c.drawLine(Offset(x, high), Offset(x, low), wick);
    final body = Paint()..color = const Color(0xFF35D07F);
    c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(x - 24, close, x + 24, open), const Radius.circular(4)), body);
    line(c, Offset(x + 35, high), Offset(x + 70, high)); label(c, 'High', Offset(x + 74, high - 8));
    line(c, Offset(x + 35, low), Offset(x + 70, low)); label(c, 'Low', Offset(x + 74, low - 8));
    line(c, Offset(x - 35, open), Offset(x - 70, open)); label(c, 'Open', Offset(x - 115, open - 8));
    line(c, Offset(x - 35, close), Offset(x - 70, close)); label(c, 'Close', Offset(x - 120, close - 8));
    label(c, 'جسم الشمعة', Offset(x - 45, (open + close) / 2 - 8));
    label(c, 'الظل العلوي', Offset(20, high - 2));
    label(c, 'الظل السفلي', Offset(20, low - 14));
    label(c, 'OHLC = Open • High • Low • Close', Offset(20, baseY), size: 13, bold: true);
  }

  void _chartTitle(Canvas c, String t) => label(c, t, const Offset(20, 12), size: 16, bold: true);

  void _trend(Canvas c, Size s, {required bool up, required bool side}) {
    grid(c, s); _chartTitle(c, side ? 'الاتجاه العرضي' : up ? 'الاتجاه الصاعد — HH + HL' : 'الاتجاه الهابط — LH + LL');
    final pts = side ? [Offset(s.width*.12,s.height*.55),Offset(s.width*.25,s.height*.35),Offset(s.width*.38,s.height*.56),Offset(s.width*.51,s.height*.34),Offset(s.width*.64,s.height*.55),Offset(s.width*.77,s.height*.36),Offset(s.width*.9,s.height*.52)] : up ? [Offset(s.width*.12,s.height*.72),Offset(s.width*.26,s.height*.43),Offset(s.width*.39,s.height*.60),Offset(s.width*.54,s.height*.28),Offset(s.width*.68,s.height*.48),Offset(s.width*.84,s.height*.17)] : [Offset(s.width*.12,s.height*.25),Offset(s.width*.27,s.height*.55),Offset(s.width*.42,s.height*.36),Offset(s.width*.57,s.height*.68),Offset(s.width*.71,s.height*.48),Offset(s.width*.88,s.height*.78)];
    final p = Paint()..color = Colors.amber..strokeWidth = 4..style = PaintingStyle.stroke..strokeCap = StrokeCap.round;
    final path = Path()..moveTo(pts.first.dx, pts.first.dy); for (final q in pts.skip(1)) path.lineTo(q.dx, q.dy); c.drawPath(path, p);
    for (var i = 0; i < pts.length; i++) { c.drawCircle(pts[i], 5, Paint()..color = Colors.white); if (!side && i % 2 == 0) label(c, up ? (i == 0 ? 'L' : 'HL') : (i == 0 ? 'H' : 'LH'), pts[i] + const Offset(-8, 10)); if (!side && i % 2 == 1) label(c, up ? 'HH' : 'LL', pts[i] + const Offset(-8, -24)); }
    if (side) label(c, 'نطاق / توازن نسبي', Offset(s.width*.35, s.height*.82), bold: true);
  }

  void _levels(Canvas c, Size s) {
    grid(c, s); _chartTitle(c, 'الدعم والمقاومة + تبادل الأدوار');
    final sup = s.height*.68, res = s.height*.30;
    final p = Paint()..strokeWidth = 2.5..style = PaintingStyle.stroke;
    p.color = Colors.greenAccent.withOpacity(.8); c.drawLine(Offset(18,sup),Offset(s.width-18,sup),p);
    p.color = Colors.redAccent.withOpacity(.8); c.drawLine(Offset(18,res),Offset(s.width-18,res),p);
    label(c,'مقاومة',Offset(s.width*.72,res-22),bold:true); label(c,'دعم',Offset(s.width*.78,sup+8),bold:true);
    final path = Path()..moveTo(s.width*.1,s.height*.63)..lineTo(s.width*.25,s.height*.42)..lineTo(s.width*.39,s.height*.64)..lineTo(s.width*.53,s.height*.27)..lineTo(s.width*.67,s.height*.47)..lineTo(s.width*.78,s.height*.18)..lineTo(s.width*.91,s.height*.40);
    c.drawPath(path,Paint()..color=Colors.amber..strokeWidth=4..style=PaintingStyle.stroke);
    label(c,'كسر المقاومة',Offset(s.width*.48,s.height*.11)); label(c,'قد تصبح دعماً بعد الكسر',Offset(s.width*.42,s.height*.74),size:11);
  }

  void _double(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'Double Top / Double Bottom');
    final mid=s.width*.50;
    final top=Path()..moveTo(20,s.height*.72)..lineTo(s.width*.25,s.height*.35)..lineTo(s.width*.42,s.height*.60)..lineTo(s.width*.58,s.height*.34)..lineTo(s.width*.76,s.height*.62)..lineTo(s.width*.93,s.height*.46);
    c.drawPath(top,Paint()..color=Colors.redAccent..strokeWidth=4..style=PaintingStyle.stroke);
    line(c,Offset(s.width*.40,s.height*.60),Offset(s.width*.75,s.height*.60),color:Colors.amber,width:2);
    label(c,'Double Top',Offset(s.width*.36,20)); label(c,'المستوى الفاصل',Offset(s.width*.52,s.height*.62));
    final bottom=Path()..moveTo(20,s.height*.28)..lineTo(s.width*.24,s.height*.65)..lineTo(s.width*.42,s.height*.42)..lineTo(s.width*.58,s.height*.66)..lineTo(s.width*.76,s.height*.40)..lineTo(s.width*.94,s.height*.58);
    c.drawPath(bottom,Paint()..color=Colors.greenAccent..strokeWidth=4..style=PaintingStyle.stroke);
    label(c,'Double Bottom',Offset(mid-70,s.height*.82));
  }

  void _patterns(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'النماذج الرئيسية');
    final w=s.width*.42;
    final p=Paint()..style=PaintingStyle.stroke..strokeWidth=3.5..color=Colors.amber;
    final h=Path()..moveTo(18,s.height*.66)..lineTo(w*.28,s.height*.38)..lineTo(w*.48,s.height*.62)..lineTo(w*.68,s.height*.20)..lineTo(w*.88,s.height*.62)..lineTo(w*1.1,s.height*.43); c.drawPath(h,p); label(c,'H&S',Offset(w*.42,s.height*.70),bold:true);
    final inv=Path()..moveTo(s.width*.52,s.height*.38)..lineTo(s.width*.66,s.height*.68)..lineTo(s.width*.77,s.height*.48)..lineTo(s.width*.86,s.height*.78)..lineTo(s.width*.95,s.height*.48); c.drawPath(inv,Paint()..color=Colors.greenAccent..strokeWidth=3.5..style=PaintingStyle.stroke); label(c,'Inverse H&S',Offset(s.width*.62,s.height*.86));
    final rect=RRect.fromRectAndRadius(Rect.fromLTRB(s.width*.06,s.height*.08,s.width*.40,s.height*.28),const Radius.circular(6)); c.drawRRect(rect,Paint()..color=Colors.white24..style=PaintingStyle.stroke); label(c,'Rectangle',Offset(s.width*.17,s.height*.13));
  }

  void _triangles(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'Triangle Family');
    final baseY=s.height*.76, topY=s.height*.25;
    final asc=Path()..moveTo(20,baseY)..lineTo(s.width*.38,baseY)..lineTo(s.width*.62,baseY)..lineTo(s.width*.88,baseY)..moveTo(20,baseY)..lineTo(s.width*.88,topY); c.drawPath(asc,Paint()..color=Colors.greenAccent..strokeWidth=3..style=PaintingStyle.stroke); label(c,'Ascending',Offset(s.width*.13,s.height*.82));
    final desc=Path()..moveTo(s.width*.12,topY)..lineTo(s.width*.88,baseY)..moveTo(s.width*.12,topY)..lineTo(s.width*.88,topY); c.drawPath(desc,Paint()..color=Colors.redAccent..strokeWidth=3..style=PaintingStyle.stroke); label(c,'Descending',Offset(s.width*.43,s.height*.18));
    final sym=Path()..moveTo(s.width*.50,s.height*.82)..lineTo(s.width*.88,s.height*.30)..moveTo(s.width*.50,s.height*.82)..lineTo(s.width*.12,s.height*.30); c.drawPath(sym,Paint()..color=Colors.amber..strokeWidth=3..style=PaintingStyle.stroke); label(c,'Symmetrical',Offset(s.width*.40,s.height*.86));
  }

  void _roadmap(Canvas c, Size s) {
    _chartTitle(c,'خريطة التعلم');
    final labels=['الشارت','الاتجاه','الدعم والمقاومة','النماذج','المخاطر','النفسية','HTF / LTF'];
    for(var i=0;i<labels.length;i++){ final y=38+i*32.0; c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(30,y,s.width-30,y+23),const Radius.circular(10)),Paint()..color=i<4?Colors.amber.withOpacity(.18):Colors.white.withOpacity(.07)); label(c,'${i+1}  ${labels[i]}',Offset(45,y+4),bold:i==0); if(i<labels.length-1) line(c,Offset(s.width*.5,y+23),Offset(s.width*.5,y+31),width:1.5,color:Colors.white30); }
  }

  void _review(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'Workflow — اقرأ الشارت بالترتيب');
    final boxes=['1 الاتجاه','2 القمم والقيعان','3 الدعم/المقاومة','4 النموذج','5 الكسر/التأكيد','6 المخاطرة'];
    for(var i=0;i<boxes.length;i++){ final x=(i%2==0)?24:s.width*.53; final y=48+(i~/2)*65.0; c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(x,y,s.width*.40,42),const Radius.circular(10)),Paint()..color=Colors.amber.withOpacity(.14)); label(c,boxes[i],Offset(x+14,y+13),bold:true); }
  }

  void _risk(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'Risk = account × chosen risk%');
    final y=s.height*.55; line(c,Offset(40,y),Offset(s.width-40,y),width=2,color=Colors.white24);
    final x1=s.width*.18,x2=s.width*.70; line(c,Offset(x1,y-70),Offset(x1,y+35),color=Colors.redAccent,width=4); line(c,Offset(x2,y-45),Offset(x2,y+35),color=Colors.greenAccent,width=4);
    label(c,'دخول',Offset(x1-18,y+44)); label(c,'وقف',Offset(x1-15,y-90)); label(c,'هدف',Offset(x2-15,y-65));
    line(c,Offset(x1,y-55),Offset(x1,y-55),color=Colors.redAccent); label(c,'مسافة الخطر',Offset(s.width*.25,y-30),size:11);
    label(c,'المخاطرة تُحدد قبل حجم الصفقة',Offset(s.width*.25,s.height*.78),bold:true);
  }

  void _discipline(Canvas c, Size s) {
    _chartTitle(c,'خطة المتداول');
    final items=['خطة مكتوبة','مخاطرة محددة','وقف منطقي','سجل تداول','مراجعة'];
    for(var i=0;i<items.length;i++){ final y=45+i*42.0; c.drawCircle(45,y+8,10,Paint()..color=Colors.amber); label(c,items[i],Offset(68,y)); if(i<items.length-1) line(c,Offset(45,y+18),Offset(45,y+42),width:2,color:Colors.white24); }
    label(c,'لا تداول عند الغضب أو التعب أو غياب التركيز',Offset(s.width*.20,s.height*.90),size:11);
  }

  void _psychology(Canvas c, Size s) {
    grid(c,s); _chartTitle(c,'Mindset — طمع / خوف / انتقام');
    final pts=[Offset(s.width*.10,s.height*.68),Offset(s.width*.28,s.height*.38),Offset(s.width*.45,s.height*.55),Offset(s.width*.62,s.height*.24),Offset(s.width*.78,s.height*.63),Offset(s.width*.92,s.height*.42)];
    final path=Path()..moveTo(pts.first.dx,pts.first.dy); for(final p in pts.skip(1)) path.lineTo(p.dx,p.dy); c.drawPath(path,Paint()..color=Colors.amber..strokeWidth=4..style=PaintingStyle.stroke);
    label(c,'خوف',Offset(s.width*.19,s.height*.43)); label(c,'طمع',Offset(s.width*.54,s.height*.16)); label(c,'انتقام',Offset(s.width*.70,s.height*.66)); label(c,'خطة + سجل + توقف عند فقدان الانضباط',Offset(s.width*.18,s.height*.82),bold:true);
  }

  void _timeframes(Canvas c, Size s) {
    _chartTitle(c,'HTF → Zone → LTF → Confirmation');
    final labels=['HTF  1D / 4H / 1H','منطقة مهمة','LTF  1H / 15m / 5m','تأكيد ثم خطة'];
    for(var i=0;i<labels.length;i++){ final y=42+i*48.0; c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(28,y,s.width-28,y+32),const Radius.circular(10)),Paint()..color=i==1?Colors.amber.withOpacity(.20):Colors.white.withOpacity(.07)); label(c,labels[i],Offset(45,y+9),bold:i==0||i==3); if(i<3) line(c,Offset(s.width*.5,y+32),Offset(s.width*.5,y+47),width:1.5,color:Colors.white30); }
  }

  @override
  bool shouldRepaint(covariant TradingPainter oldDelegate) => oldDelegate.type != type;
}

class _HeroHeader extends StatelessWidget {
  final double progress;
  const _HeroHeader({required this.progress});
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(borderRadius: BorderRadius.circular(26), gradient: LinearGradient(colors: [const Color(0xFF1D1A11), const Color(0xFF11161A)], begin: Alignment.topRight, end: Alignment.bottomLeft), border: Border.all(color: Colors.amber.withOpacity(.18))), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(children: [Container(width: 48,height:48,decoration:BoxDecoration(color:Colors.amber.withOpacity(.14),shape:BoxShape.circle),child:const Icon(Icons.candlestick_chart,color:Colors.amber,size:28)),const SizedBox(width:12),const Expanded(child:Text('إحتراف التداول من الصفر الى الاحترف',style:TextStyle(fontSize:22,fontWeight:FontWeight.w900))) ]),
    const SizedBox(height:12), const Text('من قراءة الشمعة إلى الاتجاهات والنماذج وإدارة المخاطر والنفسية والفريمات.',style:TextStyle(color:Colors.white70,height:1.45)),
    const SizedBox(height:18), ClipRRect(borderRadius:BorderRadius.circular(8),child:LinearProgressIndicator(value:progress,minHeight:7)), const SizedBox(height:8), Text('${(progress*100).round()}% من المسار مكتمل',style:const TextStyle(color:Colors.white60,fontSize:12)),
  ]));
}

class _StatCard extends StatelessWidget { final String value,label; final IconData icon; const _StatCard({required this.value,required this.label,required this.icon}); @override Widget build(BuildContext context)=>Card(child:Padding(padding:const EdgeInsets.all(16),child:Row(children:[Icon(icon,color:Colors.amber),const SizedBox(width:10),Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(value,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),Text(label,style:const TextStyle(color:Colors.white54,fontSize:11))])]))); }
class _MiniLessonTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const _MiniLessonTile({required this.lesson,required this.done,required this.onTap}); @override Widget build(BuildContext context)=>Card(child:ListTile(onTap:onTap,leading:CircleAvatar(backgroundColor:done?Colors.green.withOpacity(.18):Colors.amber.withOpacity(.12),child:Icon(done?Icons.check:Icons.play_arrow,color:done?Colors.greenAccent:Colors.amber)),title:Text('${lesson.number}. ${lesson.title}',style:const TextStyle(fontWeight:FontWeight.bold)),subtitle:Text(lesson.subtitle,maxLines:1,overflow:TextOverflow.ellipsis,style:const TextStyle(color:Colors.white54)),trailing:const Icon(Icons.chevron_left))); }
class _CourseTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const _CourseTile({required this.lesson,required this.done,required this.onTap}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:InkWell(borderRadius:BorderRadius.circular(20),onTap:onTap,child:Padding(padding:const EdgeInsets.all(15),child:Row(children:[Container(width:45,height:45,decoration:BoxDecoration(color:done?Colors.green.withOpacity(.15):Colors.amber.withOpacity(.10),borderRadius:BorderRadius.circular(14)),child:Center(child:Text('${lesson.number}',style:TextStyle(fontWeight:FontWeight.bold,color:done?Colors.greenAccent:Colors.amber)))),const SizedBox(width:12),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(lesson.title,style:const TextStyle(fontWeight:FontWeight.bold,fontSize:16)),const SizedBox(height:4),Text(lesson.subtitle,style:const TextStyle(color:Colors.white54,fontSize:12))])),Icon(done?Icons.check_circle:Icons.arrow_back_ios_new,size:18,color:done?Colors.greenAccent:Colors.white38)])))); }
class _LessonHero extends StatelessWidget { final Lesson lesson; const _LessonHero({required this.lesson}); @override Widget build(BuildContext context)=>Card(child:Padding(padding:const EdgeInsets.all(18),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('المحاضرة ${lesson.number}',style:const TextStyle(color:Colors.amber,fontWeight:FontWeight.bold)),const SizedBox(height:6),Text(lesson.title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.w900)),const SizedBox(height:6),Text(lesson.subtitle,style:const TextStyle(color:Colors.white70,fontSize:14,height:1.4))])); }
class _SectionTitle extends StatelessWidget { final String title; final IconData icon; const _SectionTitle({required this.title,required this.icon}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.only(bottom:10),child:Row(children:[Icon(icon,color:Colors.amber,size:20),const SizedBox(width:8),Text(title,style:const TextStyle(fontSize:19,fontWeight:FontWeight.bold))])); }
class _PointCard extends StatelessWidget { final int index; final String text; const _PointCard({required this.index,required this.text}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:8),child:Padding(padding:const EdgeInsets.all(15),child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[Container(width:27,height:27,decoration:BoxDecoration(color:Colors.amber.withOpacity(.12),shape:BoxShape.circle),child:Center(child:Text('$index',style:const TextStyle(color:Colors.amber,fontWeight:FontWeight.bold)))),const SizedBox(width:11),Expanded(child:Text(text,style:const TextStyle(height:1.55,color:Colors.white70))) ]))); }
class _StepRow extends StatelessWidget { final int number; final String text; const _StepRow({required this.number,required this.text}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.symmetric(vertical:8),child:Row(children:[Container(width:30,height:30,decoration:BoxDecoration(color:Colors.white.withOpacity(.06),borderRadius:BorderRadius.circular(9)),child:Center(child:Text('$number'))),const SizedBox(width:10),Expanded(child:Text(text,style:const TextStyle(color:Colors.white70))) ])); }
class _QuizCard extends StatelessWidget { final int index; final QuizQuestion question; final bool answered; final int? selected; final void Function(int,int) onAnswer; const _QuizCard({required this.index,required this.question,required this.answered,required this.selected,required this.onAnswer}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:Padding(padding:const EdgeInsets.all(16),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('سؤال ${index+1}',style:const TextStyle(color:Colors.amber,fontSize:12,fontWeight:FontWeight.bold)),const SizedBox(height:5),Text(question.question,style:const TextStyle(fontWeight:FontWeight.bold,fontSize:15)),const SizedBox(height:10),...question.answers.asMap().entries.map((e){final chosen=answered&&selected==e.key;final correct=answered&&e.key==question.correct;return Padding(padding:const EdgeInsets.only(bottom:6),child:OutlinedButton(onPressed:answered?null:()=>onAnswer(index,e.key),style:OutlinedButton.styleFrom(side:BorderSide(color:correct?Colors.greenAccent:chosen?Colors.redAccent:Colors.white12),alignment:Alignment.centerRight,padding:const EdgeInsets.symmetric(horizontal:12,vertical:12)),child:Row(children:[Icon(correct?Icons.check_circle:chosen?Icons.cancel:Icons.radio_button_unchecked,size:18),const SizedBox(width:8),Expanded(child:Text(e.value))])));})]))); }
class _ToolCard extends StatelessWidget { final IconData icon; final String title,subtitle; final VoidCallback onTap; const _ToolCard({required this.icon,required this.title,required this.subtitle,required this.onTap}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:ListTile(onTap:onTap,contentPadding:const EdgeInsets.all(14),leading:Container(width:48,height:48,decoration:BoxDecoration(color:Colors.amber.withOpacity(.10),borderRadius:BorderRadius.circular(14)),child:Icon(icon,color:Colors.amber)),title:Text(title,style:const TextStyle(fontWeight:FontWeight.bold)),subtitle:Padding(padding:const EdgeInsets.only(top:5),child:Text(subtitle,style:const TextStyle(color:Colors.white54))),trailing:const Icon(Icons.chevron_left))); }
class _NumberField extends StatelessWidget { final TextEditingController controller; final String label; const _NumberField({required this.controller,required this.label}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.only(bottom:10),child:TextField(controller:controller,keyboardType:const TextInputType.numberWithOptions(decimal:true),decoration:InputDecoration(labelText:label,border:OutlineInputBorder(borderRadius:BorderRadius.circular(14))))); }
class _ResultRow extends StatelessWidget { final String label,value; const _ResultRow({required this.label,required this.value}); @override Widget build(BuildContext context)=>Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text(label,style:const TextStyle(color:Colors.white60)),Text(value,style:const TextStyle(fontWeight:FontWeight.bold,fontSize:17,color:Colors.amber))]); }
