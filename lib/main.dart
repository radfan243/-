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
        scaffoldBackgroundColor: const Color(0xFF080A0D),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber, brightness: Brightness.dark),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF080A0D), elevation: 0),
      ),
      home: const MainShell(),
    );
  }
}

enum VisualType { candle, roadmap, trend, levels, doublePattern, patterns, triangles, risk, psychology, timeframes }

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
    'جسم الشمعة بين الافتتاح والإغلاق، والظلال تصل إلى أعلى وأدنى سعر.',
    'الصاعد: قمم أعلى وقيعان أعلى HH + HL. الهابط: قمم أدنى وقيعان أدنى LH + LL.',
    'القمة أو القاع المحلي يحتاج سياقاً؛ ليس كل ارتفاع أو انخفاض نقطة رئيسية.',
    'لا توجد استراتيجية تضمن النجاح دائماً؛ الهدف فهم السوق وتقليل الخسائر غير الضرورية.',
  ], ['افهم OHLC', 'تعلم جسم الشمعة والظلال', 'حدد القمم والقيعان', 'حدد الاتجاه'], [
    QuizQuestion('ما الذي يحدد جسم الشمعة؟', ['High وLow', 'Open وClose', 'حجم التداول'], 1),
    QuizQuestion('ما تسلسل الاتجاه الصاعد؟', ['HH + HL', 'LH + LL', 'قمم متساوية دائماً'], 0),
  ]),
  Lesson(2, 'خريطة الطريق والأسواق', 'من الأساسيات إلى التطبيق وإدارة المخاطر', VisualType.roadmap, [
    'التداول يشمل الفوركس والأسهم والعملات الرقمية والسلع.',
    'المنهج يبدأ بالمدرسة الكلاسيكية قبل المدارس المتقدمة.',
    'إدارة رأس المال والمخاطر والنفسية واختيار الوسيط مراحل أساسية.',
    'TradingView أداة تعليمية لقراءة الرسوم والأسعار والتدرب على التحليل.',
    'لا تتعجل اختيار وسيط أو إيداع أموال قبل بناء الأساس المطلوب.',
    'تحذيرات المحاضر من الخيارات الثنائية تُعرض هنا كموقف المصدر التعليمي، وليست حكماً قانونياً شاملاً.',
  ], ['الشارت', 'الاتجاه والدعم والمقاومة', 'النماذج', 'المخاطر', 'النفسية', 'الأدوات والوسيط'], [
    QuizQuestion('ما الأداة التي يبدأ بها المنهج لقراءة الشارت؟', ['TradingView', 'خدمة إشارات', 'منصة عشوائية'], 0),
    QuizQuestion('هل توجد مدرسة واحدة هي الأفضل للجميع؟', ['نعم', 'لا، توجد مدارس متعددة', 'فقط مدرسة رسمية'], 1),
  ]),
  Lesson(3, 'الاتجاهات والدعم والمقاومة', 'السياق أولاً ثم المناطق البنيوية', VisualType.levels, [
    'ابدأ بالسؤال: صاعد أم هابط أم عرضي؟',
    'في الصاعد HH + HL، وفي الهابط LH + LL.',
    'الدعم منطقة يظهر فيها تفاعل سعري حول قيعان متقاربة وفق شرح المحاضرة.',
    'المقاومة منطقة يظهر فيها تفاعل سعري حول قمم متقاربة.',
    'الدعم المكسور قد يتحول إلى مقاومة، والمقاومة المكسورة قد تتحول إلى دعم.',
    'عند عدم وضوح الاتجاه، الانتظار أفضل من التخمين في إطار المنهج.',
  ], ['حدد الاتجاه', 'حدد القمم والقيعان', 'ارسم الدعم', 'ارسم المقاومة', 'راقب الكسر وإعادة الاختبار'], [
    QuizQuestion('ماذا قد تصبح المقاومة بعد كسرها صعوداً؟', ['دعماً', 'قاعاً فورياً', 'تختفي دائماً'], 0),
    QuizQuestion('ماذا تفعل عند رسم غير واضح؟', ['لا تتخمن', 'ضاعف الحجم', 'اختر اتجاهاً عشوائياً'], 0),
  ]),
  Lesson(4, 'Double Top وDouble Bottom', 'النماذج الثنائية وسياق الانعكاس', VisualType.doublePattern, [
    'Double Top نموذج انعكاسي بعد اتجاه صاعد، وDouble Bottom بعد اتجاه هابط وفق شرح المحاضر.',
    'تشابه الشكل وحده لا يكفي؛ الاتجاه السابق والسياق مهمان.',
    'المستوى الفاصل بين القمتين أو القاعين عنصر مهم في قراءة النموذج.',
    'الكسر في النموذج إشارة تعليمية وليس ضماناً للنتيجة.',
    'لا تحوّل الرسم التعليمي إلى توصية شخصية.',
  ], ['حدد الاتجاه السابق', 'حدد القمتين أو القاعين', 'حدد المستوى الفاصل', 'انتظر التأكيد', 'راجع المخاطرة'], [
    QuizQuestion('Double Top يأتي في أي سياق؟', ['بعد اتجاه صاعد', 'بعد اتجاه هابط فقط', 'دون سياق'], 0),
    QuizQuestion('هل النموذج يضمن النجاح؟', ['نعم', 'لا', 'فقط في الذهب'], 1),
  ]),
  Lesson(5, 'Rectangle وTriple Top/Bottom والرأس والكتفين', 'نماذج الاستمرارية والانعكاس وخط العنق', VisualType.patterns, [
    'Rectangle يتكون من قمتين وقاعين عند مستويات متقاربة تقريباً ضمن السياق السابق.',
    'Triple Top انعكاسي هابط بثلاث قمم تقريباً، وTriple Bottom انعكاسي صاعد بثلاثة قيعان تقريباً.',
    'Head & Shoulders انعكاسي هابط، وInverse Head & Shoulders انعكاسي صاعد.',
    'في الرأس والكتفين يرتبط التفعيل بكسر خط العنق وفق شرح المحاضر.',
    'الأهداف ووقف الخسارة مرتبطة ببنية النموذج في الشرح وليست مضمونة.',
    'لا تجبر الشارت على نموذج غير واضح أو غير متوازن.',
  ], ['حدد السياق', 'حدد القمم والقيعان', 'ارسم النموذج أو خط العنق', 'انتظر الكسر', 'راقب Retest والفشل'], [
    QuizQuestion('ما أهمية خط العنق؟', ['مستوى بنيوي', 'زخرفة', 'مؤشر حجم'], 0),
    QuizQuestion('Triple Bottom يوصف بأنه؟', ['انعكاسي صاعد', 'استمراري هابط', 'عرضي دائماً'], 0),
  ]),
  Lesson(6, 'المثلثات: الاستمرارية', 'Ascending وDescending Triangle', VisualType.triangles, [
    'Ascending Triangle بعد اتجاه صاعد: قمم متقاربة وقيعان صاعدة، والكسر العلوي هو التأكيد الذي شرحه المحاضر.',
    'Descending Triangle بعد اتجاه هابط: قيعان متقاربة وقمم هابطة، والكسر السفلي هو التأكيد.',
    'الهدف النظري الذي شرحه المصدر يقاس بارتفاع المثلث ويُسقط في اتجاه الكسر.',
    'قد يحدث Retest وتبادل للأدوار بعد الكسر.',
    'لا تفرض المثلث على حركات صغيرة لا تطابق النموذج.',
  ], ['تأكد من الاتجاه', 'اربط النقاط الرئيسية', 'حدد الكسر', 'راقب Retest'], [
    QuizQuestion('Ascending Triangle الاستمراري يأتي بعد؟', ['اتجاه صاعد', 'اتجاه هابط فقط', 'عرضي فقط'], 0),
    QuizQuestion('هل Retest مضمون؟', ['نعم', 'لا، يمكن أن يحدث', 'مرتان دائماً'], 1),
  ]),
  Lesson(7, 'المثلثات الانعكاسية والمتماثل', 'السياق والكسر أهم من الشكل وحده', VisualType.triangles, [
    'Ascending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه هابط وفق المصدر.',
    'Descending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه صاعد وفق المصدر.',
    'Symmetrical Triangle له ضلع علوي هابط وضلع سفلي صاعد، ويمكن أن يكون استمرارياً أو انعكاسياً حسب السياق والكسر.',
    'قبل التأكيد توجد منطقة لا ينبغي فيها التخمين.',
    'النموذج يجب أن يكون موجوداً على الرسم فعلاً، وليس مجرد شكل متخيل.',
  ], ['حدد الاتجاه السابق', 'ارسم الضلعين', 'انتظر الكسر', 'قارن السياق قبل وبعد الكسر'], [
    QuizQuestion('Symmetrical Triangle يمكن أن يكون؟', ['استمرارياً أو انعكاسياً', 'صاعداً دائماً', 'هابطاً دائماً'], 0),
    QuizQuestion('قبل التأكيد الأفضل هو؟', ['التخمين', 'الانتظار', 'زيادة المخاطرة'], 1),
  ]),
  Lesson(8, 'المراجعة والتطبيق على الشارت', 'Workflow عملي لقراءة أي رسم', VisualType.roadmap, [
    'لا توجد قاعدة واحدة تعمل بنسبة 100% في كل الأسواق والفترات.',
    'ابدأ بالاتجاه ثم القمم والقيعان ثم الدعم والمقاومة ثم النموذج إن كان واضحاً.',
    'لا تجبر Double Top أو Head & Shoulders أو Triangle على شكل غير متوازن.',
    'الكسر قد يفشل، وRetest وتبادل الأدوار جزء من القراءة التعليمية.',
    'التدريب التاريخي على TradingView يساعد على اختبار الفكرة قبل الحكم عليها.',
    'الانتظار وعدم التداول قرار صحيح عندما تكون الشروط غير واضحة.',
  ], ['اختر الأصل والفريم', 'حدد الاتجاه', 'حدد القمم والقيعان', 'حدد المناطق', 'ابحث عن نموذج واضح', 'راجع ما حدث بعد الكسر'], [
    QuizQuestion('ما أول خطوة في Workflow؟', ['الاتجاه', 'حجم الصفقة', 'الرافعة'], 0),
    QuizQuestion('هل كل كسر ينجح؟', ['نعم', 'لا', 'دائماً في الأسهم'], 1),
  ]),
  Lesson(9, 'إدارة المخاطر والبيب واللوت', 'حماية رأس المال قبل التفكير في الربح', VisualType.risk, [
    'إدارة المخاطر هدفها المحافظة على رأس المال وتقليل أثر الخسائر الكبيرة.',
    'المثال التعليمي في المصدر يستخدم نسبة مخاطرة محددة من الرصيد قبل حساب حجم الصفقة.',
    'المعادلة التعليمية: عدد الوحدات = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند الوقف.',
    'في الفوركس تُستخدم مفاهيم pip وlot، وقيمة النقطة تختلف حسب الأداة وحجم العقد.',
    'الأمثلة الرقمية في المحاضرة أمثلة تعليمية وليست قيماً عالمية لكل وسيط أو أداة.',
    'خطط للخسارة قبل الدخول ولا تجعل حجم الصفقة هو الذي يحدد وقفك.',
  ], ['حدد وقفاً منطقياً', 'حدد أقصى خسارة مقبولة', 'احسب حجم الصفقة', 'راجع القيمة الفعلية للنقطة/العقد'], [
    QuizQuestion('ما الذي يحدد حجم الصفقة في المعادلة؟', ['المخاطرة والمسافة إلى الوقف', 'الرغبة في الربح فقط', 'اسم العملة'], 0),
    QuizQuestion('هل قيمة pip واحدة لكل الأدوات؟', ['نعم', 'لا، تختلف حسب الأداة والحجم', 'فقط في الذهب'], 1),
  ]),
  Lesson(10, 'أخطاء التفكير والانضباط', 'الخطة والسجل وعدم القفز بين الاستراتيجيات', VisualType.psychology, [
    'التوقعات السريعة للثراء قد تدفع إلى أحجام كبيرة ومخاطر غير مناسبة.',
    'الخسائر جزء من التداول؛ لا تغيّر منهجك بسبب صفقتين أو ثلاث فقط.',
    'لا تنسخ إشارات أشخاص يدّعون نجاحاً شبه مضمون؛ افهم سبب الدخول والخروج.',
    'المخاطرة يجب أن تكون مرتبطة بالخطة، لا بلوت ثابت أو وقف عشوائي.',
    'السجل يسجل الأصل والاتجاه وسبب الدخول والوقف والهدف والنتيجة والملاحظات.',
    'لا تتداول وأنت متعب أو غاضب أو غير مركز أو مع إنترنت/هاتف غير مستقر.',
  ], ['اكتب خطة', 'اختبر منهجاً واحداً', 'سجل كل صفقة', 'راجع النتائج دورياً', 'توقف عند فقدان الانضباط'], [
    QuizQuestion('لماذا نستخدم سجل التداول؟', ['لاكتشاف الأخطاء المتكررة', 'لزيادة الرافعة', 'لضمان الربح'], 0),
    QuizQuestion('هل يجب تغيير الاستراتيجية بعد خسارتين؟', ['نعم دائماً', 'لا، اختبر عينة كافية', 'زد اللوت'], 1),
  ]),
  Lesson(11, 'الأخطاء النفسية والتطبيق العملي', 'الطمع والخوف والانتقام والتعلق بالصفقة', VisualType.psychology, [
    'الطمع قد يدفع لإزالة الهدف أو الإفراط في التداول بعد يوم رابح.',
    'الخوف قد يؤدي إلى إغلاق الصفقة مبكراً أو عدم تنفيذ خطة مجربة.',
    'الانتقام يظهر عند زيادة الحجم بعد الخسارة لمحاولة استرجاعها بسرعة.',
    'التعلق بصفقة واحدة يجعل النتيجة تتحكم في المزاج والتركيز.',
    'المحاضر يشرح أمثلة للإغلاق الجزئي وتحريك الوقف إلى التعادل كأفكار تعليمية.',
    'ليست كل حركة في السوق فرصة؛ المقارنة الصحيحة تكون بتقدمك أنت.',
  ], ['حدد الخطة قبل الدخول', 'لا تطارد الحركة', 'ضع حد خسارة يومي في خطتك', 'راجع السجل', 'افصل مشاعرك عن صفقة واحدة'], [
    QuizQuestion('ما مشكلة الانتقام؟', ['زيادة المخاطرة تحت ضغط المشاعر', 'تحسين الخطة', 'تقليل الحجم دائماً'], 0),
    QuizQuestion('هل كل حركة يجب أن تتداولها؟', ['نعم', 'لا', 'فقط الحركة السريعة'], 1),
  ]),
  Lesson(12, 'الفريمات والترابط بين HTF وLTF', 'الصورة الكبيرة ثم المنطقة ثم التأكيد', VisualType.timeframes, [
    'الفريم يحدد المدة التي تمثلها كل شمعة؛ مثل 5 دقائق أو ساعة أو يوم.',
    'HTF هو الفريم الأعلى للصورة العامة، وLTF الفريم الأدنى للتأكيد واختيار الدخول في منهج المحاضرة.',
    'أمثلة المصدر: 1D مع 1H، أو 4H مع 15m، أو 1H مع 5m.',
    'المنهج: HTF يحدد الاتجاه والمنطقة، ثم تنتقل إلى LTF بعد وصول السعر للمنطقة وتنتظر تأكيداً.',
    'إذا كان HTF صاعداً وLTF ما زال هابطاً، الانتظار حتى يظهر توافق أفضل من الدخول العشوائي.',
    'وقف الخسارة حد مخاطرة وليس بالضرورة نقطة التحول البنيوية الحقيقية.',
    'المحاضرة تذكر Fibonacci وSMC والسيولة وFVG وOrder Blocks كمواضيع متقدمة؛ لا تعتبر كل تفاصيلها مشروحة هنا.',
  ], ['حدد HTF', 'حدد الاتجاه', 'حدد المنطقة', 'انتظر وصول السعر', 'انتقل إلى LTF', 'انتظر التأكيد ثم خطط للمخاطرة'], [
    QuizQuestion('ما وظيفة HTF في المنهج؟', ['تحديد الصورة والاتجاه والمنطقة', 'تحديد اسم الوسيط', 'ضمان الصفقة'], 0),
    QuizQuestion('متى تنتقل إلى LTF؟', ['بعد وصول السعر للمنطقة المهمة', 'دائماً قبل HTF', 'عشوائياً'], 0),
  ]),
];

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int tab = 0;
  final completed = <int>{};
  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(completed: completed, onOpen: openLesson),
      CoursePage(completed: completed, onOpen: openLesson),
      const ToolsPage(),
      const GlossaryPage(),
    ];
    return Scaffold(
      body: SafeArea(child: pages[tab]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (v) => setState(() => tab = v),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard_outlined), selectedIcon: Icon(Icons.dashboard), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Icons.school_outlined), selectedIcon: Icon(Icons.school), label: 'المسار'),
          NavigationDestination(icon: Icon(Icons.build_outlined), selectedIcon: Icon(Icons.build), label: 'الأدوات'),
          NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book), label: 'المصطلحات'),
        ],
      ),
    );
  }
  void openLesson(Lesson lesson) async {
    await Navigator.push(context, MaterialPageRoute(builder: (_) => LessonPage(lesson: lesson, initiallyDone: completed.contains(lesson.number))));
    if (mounted) setState(() => completed.add(lesson.number));
  }
}

class HomePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpen;
  const HomePage({super.key, required this.completed, required this.onOpen});
  @override
  Widget build(BuildContext context) {
    final progress = completed.length / lessons.length;
    return ListView(padding: const EdgeInsets.fromLTRB(18, 18, 18, 30), children: [
      Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), gradient: const LinearGradient(colors: [Color(0xFF252015), Color(0xFF11161B)], begin: Alignment.topRight, end: Alignment.bottomLeft), border: Border.all(color: Colors.amber.withOpacity(.2))), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [Container(width: 52, height: 52, decoration: BoxDecoration(color: Colors.amber.withOpacity(.12), shape: BoxShape.circle), child: const Icon(Icons.candlestick_chart, color: Colors.amber, size: 29)), const SizedBox(width: 12), const Expanded(child: Text('إحتراف التداول من الصفر الى الاحترف', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900))),]),
        const SizedBox(height: 12),
        const Text('مسار تعليمي منظم: الشموع ← الاتجاه ← النماذج ← المخاطر ← النفسية ← HTF/LTF.', style: TextStyle(color: Colors.white70, height: 1.5)),
        const SizedBox(height: 18),
        ClipRRect(borderRadius: BorderRadius.circular(8), child: LinearProgressIndicator(value: progress, minHeight: 8)),
        const SizedBox(height: 8), Text('${completed.length} من ${lessons.length} محاضرة مكتملة', style: const TextStyle(color: Colors.white54, fontSize: 12)),
      ]),
      const SizedBox(height: 16),
      Row(children: [Expanded(child: StatCard(value: '${lessons.length}', label: 'محاضرات', icon: Icons.school)), const SizedBox(width: 10), Expanded(child: StatCard(value: '${completed.length}', label: 'مكتمل', icon: Icons.check_circle)), const SizedBox(width: 10), Expanded(child: StatCard(value: '4', label: 'أدوات', icon: Icons.tune))]),
      const SizedBox(height: 22),
      const SectionTitle(title: 'ابدأ من هنا', icon: Icons.play_circle_outline),
      MiniLessonTile(lesson: lessons.first, done: completed.contains(1), onTap: () => onOpen(lessons.first)),
      const SizedBox(height: 18),
      const SectionTitle(title: 'المحاضرات التالية', icon: Icons.auto_awesome),
      ...lessons.skip(1).take(4).map((l) => MiniLessonTile(lesson: l, done: completed.contains(l.number), onTap: () => onOpen(l))),
    ]);
  }
}

class CoursePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpen;
  const CoursePage({super.key, required this.completed, required this.onOpen});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(18), children: [
    const Text('مسار الاحتراف', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
    const SizedBox(height: 5), const Text('لا تقفز للمراحل المتقدمة قبل فهم الأساسيات.', style: TextStyle(color: Colors.white60)),
    const SizedBox(height: 18),
    ...lessons.map((l) => CourseTile(lesson: l, done: completed.contains(l.number), onTap: () => onOpen(l))),
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
  int score = -1;
  bool showQuiz = false;
  @override
  Widget build(BuildContext context) {
    final l = widget.lesson;
    return Scaffold(appBar: AppBar(title: Text('المحاضرة ${l.number}')), body: ListView(padding: const EdgeInsets.fromLTRB(18, 8, 18, 35), children: [
      Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('المحاضرة ${l.number}', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)), const SizedBox(height: 6), Text(l.title, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900)), const SizedBox(height: 6), Text(l.subtitle, style: const TextStyle(color: Colors.white70, height: 1.4))])),
      const SizedBox(height: 12),
      SizedBox(height: 300, child: TradingVisual(type: l.visual)),
      const SizedBox(height: 20),
      const SectionTitle(title: 'الشرح الأساسي', icon: Icons.lightbulb_outline),
      ...l.points.asMap().entries.map((e) => PointCard(index: e.key + 1, text: e.value)),
      const SizedBox(height: 16),
      const SectionTitle(title: 'طريقة الدراسة', icon: Icons.route),
      Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: l.steps.asMap().entries.map((e) => StepRow(number: e.key + 1, text: e.value)).toList()))),
      const SizedBox(height: 16),
      FilledButton.icon(onPressed: () => setState(() => showQuiz = !showQuiz), icon: const Icon(Icons.quiz_outlined), label: Text(showQuiz ? 'إخفاء الاختبار' : 'اختبر فهمك')),
      if (showQuiz) ...[
        const SizedBox(height: 12),
        ...l.quiz.asMap().entries.map((entry) => QuizCard(question: entry.value, number: entry.key + 1, onAnswer: (ok) => setState(() => score = score < 0 ? (ok ? 1 : 0) : score + (ok ? 1 : 0)))),
        if (score >= 0) Padding(padding: const EdgeInsets.only(top: 12), child: Text('نتيجتك الحالية: $score / ${l.quiz.length}', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold))),
      ],
      const SizedBox(height: 18),
      const Card(child: Padding(padding: EdgeInsets.all(15), child: Text('تنبيه تعليمي: المحتوى يشرح المفاهيم الواردة في المنهج ولا يقدم توصية شراء أو بيع أو ضماناً للربح.', style: TextStyle(color: Colors.white60, height: 1.5)))),
    ]);
  }
}

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(18), children: [
    const Text('أدوات المتعلم', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
    const SizedBox(height: 6), const Text('أدوات تعليمية تساعدك على التدريب دون ادعاء نتائج مضمونة.', style: TextStyle(color: Colors.white60)),
    const SizedBox(height: 18),
    ToolTile(icon: Icons.calculate_outlined, title: 'حاسبة حجم الصفقة', subtitle: 'احسب الحد النظري للخسارة وحجم الوحدات من الرصيد والمخاطرة والوقف.', page: const RiskCalculatorPage()),
    ToolTile(icon: Icons.checklist_rtl, title: 'قائمة فحص الصفقة', subtitle: 'اتجاه، منطقة، تأكيد، وقف، مخاطرة، هدف وانضباط.', page: const ChecklistPage()),
    ToolTile(icon: Icons.candlestick_chart, title: 'مختبر الشموع والرسوم', subtitle: 'تعلم OHLC والاتجاهات والدعم والمقاومة والنماذج بصرياً.', page: const VisualLabPage()),
    ToolTile(icon: Icons.timeline, title: 'سير العمل', subtitle: 'HTF ثم المنطقة ثم LTF ثم التأكيد ثم خطة المخاطرة.', page: const WorkflowPage()),
  ]);
}

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('سير عمل تحليل الشارت')), body: ListView(padding: const EdgeInsets.all(18), children: const [
    SizedBox(height: 300, child: TradingVisual(type: VisualType.timeframes)),
    SizedBox(height: 18),
    Text('الترتيب التعليمي', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
    SizedBox(height: 10),
    Text('1) حدد الفريم والصورة العامة.\n2) حدد الاتجاه.\n3) حدد القمم والقيعان والمناطق.\n4) ابحث عن نموذج واضح إن وجد.\n5) انتظر الكسر/التأكيد المناسب.\n6) حدد نقطة الإبطال ووقف الخسارة.\n7) احسب المخاطرة وحجم الصفقة.\n8) سجل الصفقة وراجعها لاحقاً.', style: TextStyle(color: Colors.white70, height: 1.7)),
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
  double? money;
  double? units;
  void calculate() {
    final b = double.tryParse(balance.text.replaceAll(',', '.'));
    final r = double.tryParse(risk.text.replaceAll(',', '.'));
    final e = double.tryParse(entry.text.replaceAll(',', '.'));
    final s = double.tryParse(stop.text.replaceAll(',', '.'));
    if (b == null || r == null || e == null || s == null || b <= 0 || r <= 0 || e == s) return;
    final m = b * r / 100;
    setState(() { money = m; units = m / (e - s).abs(); });
  }
  @override
  Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('حاسبة حجم الصفقة')), body: ListView(padding: const EdgeInsets.all(18), children: [
    const Text('المعادلة التعليمية', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
    const SizedBox(height: 6), const Text('عدد الوحدات = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند الوقف.', style: TextStyle(color: Colors.white60, height: 1.5)),
    const SizedBox(height: 16),
    NumberField(controller: balance, label: 'الرصيد'), NumberField(controller: risk, label: 'المخاطرة %'), NumberField(controller: entry, label: 'سعر الدخول'), NumberField(controller: stop, label: 'سعر وقف الخسارة'),
    const SizedBox(height: 8), FilledButton.icon(onPressed: calculate, icon: const Icon(Icons.calculate), label: const Text('احسب')),
    if (money != null && units != null) Card(margin: const EdgeInsets.only(top: 16), child: Padding(padding: const EdgeInsets.all(18), child: Column(children: [ResultRow(label: 'الحد النظري للخسارة', value: money!.toStringAsFixed(2)), const Divider(), ResultRow(label: 'عدد الوحدات النظري', value: units!.toStringAsFixed(4))]))),
    const SizedBox(height: 12), const Text('هذه حاسبة تعليمية. قيمة pip/lot الفعلية تختلف حسب الأداة والمنصة والعقد.', style: TextStyle(color: Colors.white54)),
  ]);
}

class ChecklistPage extends StatefulWidget { const ChecklistPage({super.key}); @override State<ChecklistPage> createState() => _ChecklistPageState(); }
class _ChecklistPageState extends State<ChecklistPage> {
  final items = const ['هل الاتجاه واضح؟', 'هل حددت القمم والقيعان؟', 'هل المنطقة واضحة؟', 'هل يوجد تأكيد؟', 'هل وقف الخسارة منطقي؟', 'هل المخاطرة محددة؟', 'هل الهدف معروف؟', 'هل حالتك النفسية مناسبة؟'];
  late List<bool> values;
  @override void initState() { super.initState(); values = List<bool>.filled(items.length, false); }
  @override Widget build(BuildContext context) { final done = values.where((v) => v).length; return Scaffold(appBar: AppBar(title: const Text('قائمة فحص الصفقة')), body: ListView(padding: const EdgeInsets.all(18), children: [Text('$done / ${items.length} مكتملة', style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)), const SizedBox(height: 12), ...items.asMap().entries.map((e) => Card(child: CheckboxListTile(value: values[e.key], onChanged: (v) => setState(() => values[e.key] = v ?? false), title: Text(e.value), secondary: Icon(values[e.key] ? Icons.check_circle : Icons.radio_button_unchecked, color: values[e.key] ? Colors.greenAccent : Colors.white38)))), const SizedBox(height: 8), const Card(child: Padding(padding: EdgeInsets.all(15), child: Text('إذا لم تكن الشروط واضحة، فالانتظار أفضل من التخمين. هذه القائمة للتدريب وليست إشارة تداول.', style: TextStyle(color: Colors.white60, height: 1.5))))]); }
}

class GlossaryPage extends StatelessWidget {
  const GlossaryPage({super.key});
  static const items = <MapEntry<String, String>>[
    MapEntry('OHLC', 'Open / High / Low / Close: بيانات الشمعة الأساسية.'),
    MapEntry('HH + HL', 'Higher High + Higher Low: تسلسل الاتجاه الصاعد.'),
    MapEntry('LH + LL', 'Lower High + Lower Low: تسلسل الاتجاه الهابط.'),
    MapEntry('Support', 'منطقة تفاعل سعري حول قيعان متقاربة وفق المنهج.'),
    MapEntry('Resistance', 'منطقة تفاعل سعري حول قمم متقاربة وفق المنهج.'),
    MapEntry('Retest', 'عودة السعر لاختبار مستوى بعد كسره.'),
    MapEntry('Stop Loss', 'حد خسارة أو إبطال محدد مسبقاً وفق الخطة.'),
    MapEntry('Risk/Reward', 'مقارنة المخاطرة المحتملة بالهدف المحتمل في الخطة.'),
    MapEntry('Pip', 'وحدة شائعة لحركة السعر في الفوركس وتفاصيلها تختلف حسب الأداة.'),
    MapEntry('Lot', 'حجم عقد في الفوركس؛ قيمة الحركة تعتمد على الأداة والحجم.'),
    MapEntry('HTF', 'الفريم الأعلى لتحديد الصورة العامة والاتجاه والمنطقة.'),
    MapEntry('LTF', 'الفريم الأدنى للتأكيد واختيار الدخول في منهج المحاضرة.'),
    MapEntry('Fake Breakout', 'كسر يبدو حقيقياً ثم يعود السعر داخل المنطقة.'),
  ];
  @override Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(18), children: [const Text('قاموس التداول', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)), const SizedBox(height: 16), ...items.map((e) => Card(child: Padding(padding: const EdgeInsets.all(15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(e.key, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber)), const SizedBox(height: 5), Text(e.value, style: const TextStyle(color: Colors.white70, height: 1.45))]))))]);
}

class VisualLabPage extends StatelessWidget { const VisualLabPage({super.key}); @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('مختبر الرسوم')), body: ListView(padding: const EdgeInsets.all(16), children: [const SizedBox(height: 300, child: TradingVisual(type: VisualType.candle)), const SizedBox(height: 12), const SizedBox(height: 300, child: TradingVisual(type: VisualType.trend)), const SizedBox(height: 12), const SizedBox(height: 300, child: TradingVisual(type: VisualType.patterns))]); }

class TradingVisual extends StatelessWidget {
  final VisualType type;
  const TradingVisual({super.key, required this.type});
  @override Widget build(BuildContext context) => CustomPaint(painter: TradingPainter(type), child: const SizedBox.expand());
}

class TradingPainter extends CustomPainter {
  final VisualType type;
  TradingPainter(this.type);
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(20)), Paint()..color = const Color(0xFF0D1217));
    switch (type) {
      case VisualType.candle: drawCandle(canvas, size); break;
      case VisualType.roadmap: drawRoadmap(canvas, size); break;
      case VisualType.trend: drawTrend(canvas, size); break;
      case VisualType.levels: drawLevels(canvas, size); break;
      case VisualType.doublePattern: drawDouble(canvas, size); break;
      case VisualType.patterns: drawPatterns(canvas, size); break;
      case VisualType.triangles: drawTriangles(canvas, size); break;
      case VisualType.risk: drawRisk(canvas, size); break;
      case VisualType.psychology: drawPsychology(canvas, size); break;
      case VisualType.timeframes: drawTimeframes(canvas, size); break;
    }
  }
  void title(Canvas c, String t) { final p = TextPainter(text: TextSpan(text: t, style: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)), textDirection: TextDirection.rtl)..layout(); p.paint(c, const Offset(18, 14)); }
  void text(Canvas c, String t, Offset pos, {double size = 12, Color color = Colors.white70}) { final p = TextPainter(text: TextSpan(text: t, style: TextStyle(fontSize: size, color: color)), textDirection: TextDirection.rtl)..layout(); p.paint(c, pos); }
  void grid(Canvas c, Size s) { final p = Paint()..color = Colors.white.withOpacity(.06)..strokeWidth = 1; for (int i = 1; i < 6; i++) { final y = s.height * i / 6; c.drawLine(Offset(15, y), Offset(s.width - 15, y), p); } for (int i = 1; i < 8; i++) { final x = s.width * i / 8; c.drawLine(Offset(x, 15), Offset(x, s.height - 15), p); } }
  void path(Canvas c, List<Offset> pts, Color color, {double width = 4}) { final p = Paint()..color = color..strokeWidth = width..style = PaintingStyle.stroke..strokeCap = StrokeCap.round; final q = Path()..moveTo(pts.first.dx, pts.first.dy); for (final point in pts.skip(1)) { q.lineTo(point.dx, point.dy); } c.drawPath(q, p); }
  void drawCandle(Canvas c, Size s) { grid(c, s); title(c, 'الشمعة اليابانية — OHLC'); final x = s.width * .48; final high = s.height * .18; final low = s.height * .82; final open = s.height * .61; final close = s.height * .34; c.drawLine(Offset(x, high), Offset(x, low), Paint()..color = Colors.white70..strokeWidth = 3); c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(x - 25, close, x + 25, open), const Radius.circular(4)), Paint()..color = const Color(0xFF35D07F)); final labels = [('High', high), ('Low', low), ('Open', open), ('Close', close)]; for (final item in labels) { final right = item.$1 == 'High' || item.$1 == 'Low'; final start = Offset(x + (right ? 32 : -32), item.$2); final end = Offset(x + (right ? 90 : -92), item.$2); c.drawLine(start, end, Paint()..color = Colors.amber..strokeWidth = 2); text(c, item.$1, Offset(end.dx + (right ? 4 : -4), end.dy - 9), color: Colors.amber); } text(c, 'جسم الشمعة', Offset(x - 42, (open + close) / 2 - 8)); text(c, 'الظل العلوي', Offset(18, high - 2)); text(c, 'الظل السفلي', Offset(18, low - 14)); text(c, 'تعريف اللون يعتمد على Open وClose', Offset(18, s.height - 30), size: 12); }
  void drawRoadmap(Canvas c, Size s) { title(c, 'خريطة التعلم من الصفر'); final items = ['الشارت والشموع', 'الاتجاهات والدعم', 'النماذج السعرية', 'إدارة المخاطر', 'النفسية والانضباط', 'HTF + LTF']; for (int i = 0; i < items.length; i++) { final y = 48 + i * 37.0; c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(28, y, s.width - 56, 28), const Radius.circular(10)), Paint()..color = i < 3 ? Colors.amber.withOpacity(.16) : Colors.white.withOpacity(.07)); text(c, '${i + 1}  ${items[i]}', Offset(45, y + 7), color: i < 3 ? Colors.amber : Colors.white70); } }
  void drawTrend(Canvas c, Size s) { grid(c, s); title(c, 'الاتجاهات الثلاثة'); final up = [Offset(s.width*.10,s.height*.72), Offset(s.width*.25,s.height*.45), Offset(s.width*.39,s.height*.58), Offset(s.width*.55,s.height*.30), Offset(s.width*.69,s.height*.46), Offset(s.width*.87,s.height*.17)]; final down = [Offset(s.width*.10,s.height*.28), Offset(s.width*.25,s.height*.55), Offset(s.width*.39,s.height*.40), Offset(s.width*.55,s.height*.69), Offset(s.width*.69,s.height*.52), Offset(s.width*.87,s.height*.82)]; final side = [Offset(s.width*.10,s.height*.54), Offset(s.width*.25,s.height*.35), Offset(s.width*.39,s.height*.56), Offset(s.width*.54,s.height*.36), Offset(s.width*.69,s.height*.55), Offset(s.width*.88,s.height*.38)]; path(c, up, Colors.greenAccent); path(c, down, Colors.redAccent); path(c, side, Colors.amber); text(c, 'HH + HL', Offset(s.width*.12, s.height*.77), color: Colors.greenAccent); text(c, 'LH + LL', Offset(s.width*.70, s.height*.77), color: Colors.redAccent); text(c, 'عرضي', Offset(s.width*.44, s.height*.27), color: Colors.amber); }
  void drawLevels(Canvas c, Size s) { grid(c, s); title(c, 'الدعم والمقاومة وتبادل الأدوار'); final sup = s.height*.68; final res = s.height*.30; c.drawLine(Offset(18, sup), Offset(s.width-18, sup), Paint()..color = Colors.greenAccent..strokeWidth=2); c.drawLine(Offset(18, res), Offset(s.width-18, res), Paint()..color = Colors.redAccent..strokeWidth=2); path(c, [Offset(s.width*.1,s.height*.65),Offset(s.width*.25,s.height*.42),Offset(s.width*.39,s.height*.62),Offset(s.width*.53,s.height*.26),Offset(s.width*.67,s.height*.45),Offset(s.width*.81,s.height*.17),Offset(s.width*.92,s.height*.38)], Colors.amber); text(c, 'مقاومة', Offset(s.width*.72, res-22), color: Colors.redAccent); text(c, 'دعم', Offset(s.width*.78, sup+7), color: Colors.greenAccent); text(c, 'بعد الكسر قد يتغير الدور', Offset(s.width*.27, s.height*.82)); }
  void drawDouble(Canvas c, Size s) { grid(c, s); title(c, 'Double Top / Double Bottom'); path(c, [Offset(18,s.height*.72),Offset(s.width*.25,s.height*.30),Offset(s.width*.45,s.height*.58),Offset(s.width*.64,s.height*.30),Offset(s.width*.84,s.height*.62)], Colors.redAccent); path(c, [Offset(18,s.height*.27),Offset(s.width*.25,s.height*.66),Offset(s.width*.45,s.height*.40),Offset(s.width*.64,s.height*.67),Offset(s.width*.87,s.height*.42)], Colors.greenAccent); c.drawLine(Offset(s.width*.25,s.height*.58),Offset(s.width*.70,s.height*.58),Paint()..color=Colors.amber..strokeWidth=2); text(c, 'Double Top', Offset(s.width*.34, s.height*.72), color: Colors.redAccent); text(c, 'Double Bottom', Offset(s.width*.32, s.height*.84), color: Colors.greenAccent); }
  void drawPatterns(Canvas c, Size s) { grid(c,s); title(c,'Rectangle + Head & Shoulders'); c.drawRect(Rect.fromLTRB(20,s.height*.15,s.width*.42,s.height*.38),Paint()..color=Colors.amber.withOpacity(.10)..style=PaintingStyle.fill); c.drawRect(Rect.fromLTRB(20,s.height*.15,s.width*.42,s.height*.38),Paint()..color=Colors.amber..style=PaintingStyle.stroke..strokeWidth=2); path(c,[Offset(s.width*.52,s.height*.62),Offset(s.width*.62,s.height*.35),Offset(s.width*.69,s.height*.50),Offset(s.width*.78,s.height*.18),Offset(s.width*.87,s.height*.50),Offset(s.width*.95,s.height*.37)],Colors.redAccent, width:3); text(c,'Rectangle',Offset(s.width*.16,s.height*.24),color:Colors.amber); text(c,'H & S',Offset(s.width*.76,s.height*.66),color:Colors.redAccent); }
  void drawTriangles(Canvas c, Size s) { grid(c,s); title(c,'Ascending / Descending / Symmetrical'); path(c,[Offset(20,s.height*.72),Offset(s.width*.35,s.height*.72),Offset(s.width*.88,s.height*.28)],Colors.greenAccent,width:3); path(c,[Offset(s.width*.12,s.height*.28),Offset(s.width*.88,s.height*.72)],Colors.redAccent,width:3); path(c,[Offset(s.width*.12,s.height*.30),Offset(s.width*.50,s.height*.78),Offset(s.width*.88,s.height*.30)],Colors.amber,width:3); text(c,'Ascending',Offset(s.width*.16,s.height*.80),color:Colors.greenAccent); text(c,'Descending',Offset(s.width*.56,s.height*.18),color:Colors.redAccent); text(c,'Symmetrical',Offset(s.width*.40,s.height*.86),color:Colors.amber); }
  void drawRisk(Canvas c, Size s) { title(c,'إدارة المخاطر — الخطر قبل الحجم'); final y=s.height*.55; c.drawLine(Offset(35,y),Offset(s.width-35,y),Paint()..color=Colors.white24..strokeWidth=2); c.drawLine(Offset(s.width*.25,y-60),Offset(s.width*.25,y+25),Paint()..color=Colors.redAccent..strokeWidth=5); c.drawLine(Offset(s.width*.70,y-90),Offset(s.width*.70,y+25),Paint()..color=Colors.greenAccent..strokeWidth=5); text(c,'وقف',Offset(s.width*.22,y-82),color:Colors.redAccent); text(c,'دخول',Offset(s.width*.20,y+35)); text(c,'هدف',Offset(s.width*.66,y-112),color:Colors.greenAccent); text(c,'حدد أقصى خسارة أولاً ثم احسب الحجم',Offset(s.width*.18,s.height*.78),color:Colors.amber); }
  void drawPsychology(Canvas c, Size s) { grid(c,s); title(c,'الطمع • الخوف • الانتقام'); path(c,[Offset(s.width*.08,s.height*.67),Offset(s.width*.27,s.height*.36),Offset(s.width*.45,s.height*.56),Offset(s.width*.63,s.height*.22),Offset(s.width*.79,s.height*.65),Offset(s.width*.92,s.height*.42)],Colors.amber); text(c,'خوف',Offset(s.width*.20,s.height*.40),color:Colors.white70); text(c,'طمع',Offset(s.width*.54,s.height*.15),color:Colors.amber); text(c,'انتقام',Offset(s.width*.70,s.height*.68),color:Colors.redAccent); text(c,'خطة + سجل + توقف عند فقدان الانضباط',Offset(s.width*.20,s.height*.83),color:Colors.greenAccent); }
  void drawTimeframes(Canvas c, Size s) { title(c,'HTF → Zone → LTF → Confirmation'); final labels=['HTF: الصورة والاتجاه','Zone: المنطقة المهمة','LTF: التأكيد','Plan: الوقف والمخاطرة والهدف']; for (int i=0;i<labels.length;i++){ final y=45+i*48.0; c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(28,y,s.width-56,32),const Radius.circular(10)),Paint()..color=i==1?Colors.amber.withOpacity(.16):Colors.white.withOpacity(.07)); text(c,labels[i],Offset(45,y+8),color:i==1?Colors.amber:Colors.white70); if(i<3)c.drawLine(Offset(s.width*.5,y+32),Offset(s.width*.5,y+46),Paint()..color=Colors.white30..strokeWidth=2); } }
  @override bool shouldRepaint(covariant TradingPainter oldDelegate) => oldDelegate.type != type;
}

class QuizCard extends StatefulWidget { final QuizQuestion question; final int number; final ValueChanged<bool> onAnswer; const QuizCard({super.key,required this.question,required this.number,required this.onAnswer}); @override State<QuizCard> createState()=>_QuizCardState(); }
class _QuizCardState extends State<QuizCard> { int? selected; @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:Padding(padding:const EdgeInsets.all(15),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('${widget.number}. ${widget.question.question}',style:const TextStyle(fontWeight:FontWeight.bold,fontSize:16)),const SizedBox(height:8),...widget.question.answers.asMap().entries.map((e){final isSelected=selected==e.key;final correct=e.key==widget.question.correct;return Padding(padding:const EdgeInsets.only(bottom:6),child:OutlinedButton(onPressed:selected==null?(){setState(()=>selected=e.key);widget.onAnswer(correct);}:null,style:OutlinedButton.styleFrom(side:BorderSide(color:isSelected?(correct?Colors.greenAccent:Colors.redAccent):Colors.white12),alignment:Alignment.centerRight,padding:const EdgeInsets.symmetric(horizontal:14,vertical:12)),child:Text(e.value,style:TextStyle(color:selected!=null&&correct?Colors.greenAccent:Colors.white70))));})]))); }

class ToolTile extends StatelessWidget { final IconData icon; final String title; final String subtitle; final Widget page; const ToolTile({super.key,required this.icon,required this.title,required this.subtitle,required this.page}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:ListTile(contentPadding:const EdgeInsets.all(14),leading:CircleAvatar(backgroundColor:Colors.amber.withOpacity(.12),child:Icon(icon,color:Colors.amber)),title:Text(title,style:const TextStyle(fontWeight:FontWeight.bold)),subtitle:Padding(padding:const EdgeInsets.only(top:5),child:Text(subtitle,style:const TextStyle(color:Colors.white54,height:1.4))),trailing:const Icon(Icons.chevron_left),onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>page)))); }
class StatCard extends StatelessWidget { final String value; final String label; final IconData icon; const StatCard({super.key,required this.value,required this.label,required this.icon}); @override Widget build(BuildContext context)=>Card(child:Padding(padding:const EdgeInsets.all(12),child:Column(children:[Icon(icon,color:Colors.amber),const SizedBox(height:5),Text(value,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold)),Text(label,style:const TextStyle(color:Colors.white54,fontSize:11))]))); }
class MiniLessonTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const MiniLessonTile({super.key,required this.lesson,required this.done,required this.onTap}); @override Widget build(BuildContext context)=>Card(child:ListTile(onTap:onTap,leading:CircleAvatar(backgroundColor:done?Colors.green.withOpacity(.15):Colors.amber.withOpacity(.10),child:Icon(done?Icons.check:Icons.play_arrow,color:done?Colors.greenAccent:Colors.amber)),title:Text('${lesson.number}. ${lesson.title}',style:const TextStyle(fontWeight:FontWeight.bold)),subtitle:Text(lesson.subtitle,maxLines:1,overflow:TextOverflow.ellipsis,style:const TextStyle(color:Colors.white54)),trailing:const Icon(Icons.chevron_left))); }
class CourseTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const CourseTile({super.key,required this.lesson,required this.done,required this.onTap}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:10),child:InkWell(onTap:onTap,borderRadius:BorderRadius.circular(20),child:Padding(padding:const EdgeInsets.all(15),child:Row(children:[Container(width:46,height:46,decoration:BoxDecoration(color:done?Colors.green.withOpacity(.12):Colors.amber.withOpacity(.10),borderRadius:BorderRadius.circular(14)),child:Center(child:Text('${lesson.number}',style:TextStyle(color:done?Colors.greenAccent:Colors.amber,fontWeight:FontWeight.bold)))),const SizedBox(width:12),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(lesson.title,style:const TextStyle(fontWeight:FontWeight.bold,fontSize:16)),const SizedBox(height:4),Text(lesson.subtitle,style:const TextStyle(color:Colors.white54,fontSize:12))])),Icon(done?Icons.check_circle:Icons.arrow_back_ios_new,size:18,color:done?Colors.greenAccent:Colors.white38)])))); }
class SectionTitle extends StatelessWidget { final String title; final IconData icon; const SectionTitle({super.key,required this.title,required this.icon}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.only(bottom:10),child:Row(children:[Icon(icon,color:Colors.amber,size:20),const SizedBox(width:8),Text(title,style:const TextStyle(fontSize:19,fontWeight:FontWeight.bold))])); }
class PointCard extends StatelessWidget { final int index; final String text; const PointCard({super.key,required this.index,required this.text}); @override Widget build(BuildContext context)=>Card(margin:const EdgeInsets.only(bottom:8),child:Padding(padding:const EdgeInsets.all(15),child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[Container(width:28,height:28,decoration:BoxDecoration(color:Colors.amber.withOpacity(.10),shape:BoxShape.circle),child:Center(child:Text('$index',style:const TextStyle(color:Colors.amber,fontWeight:FontWeight.bold)))),const SizedBox(width:11),Expanded(child:Text(text,style:const TextStyle(color:Colors.white70,height:1.55)))]))); }
class StepRow extends StatelessWidget { final int number; final String text; const StepRow({super.key,required this.number,required this.text}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.symmetric(vertical:7),child:Row(children:[Container(width:30,height:30,decoration:BoxDecoration(color:Colors.white.withOpacity(.06),borderRadius:BorderRadius.circular(9)),child:Center(child:Text('$number',style:const TextStyle(color:Colors.amber,fontWeight:FontWeight.bold)))),const SizedBox(width:10),Expanded(child:Text(text,style:const TextStyle(color:Colors.white70)))])); }
class NumberField extends StatelessWidget { final TextEditingController controller; final String label; const NumberField({super.key,required this.controller,required this.label}); @override Widget build(BuildContext context)=>Padding(padding:const EdgeInsets.only(bottom:10),child:TextField(controller:controller,keyboardType:const TextInputType.numberWithOptions(decimal:true),decoration:InputDecoration(labelText:label,border:OutlineInputBorder(borderRadius:BorderRadius.circular(14))))); }
class ResultRow extends StatelessWidget { final String label; final String value; const ResultRow({super.key,required this.label,required this.value}); @override Widget build(BuildContext context)=>Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text(label,style:const TextStyle(color:Colors.white60)),Text(value,style:const TextStyle(fontWeight:FontWeight.bold,color:Colors.amber))]); }
