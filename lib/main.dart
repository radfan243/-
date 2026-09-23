import 'package:flutter/material.dart';

void main() => runApp(const TradingMasteryApp());

class TradingMasteryApp extends StatelessWidget {
  const TradingMasteryApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'إحتراف التداول من الصفر الى الاحتراف',
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

enum VisualType { candle, trend, levels, patterns, triangles, risk, psychology, timeframes }

class QuizQuestion {
  final String q;
  final List<String> answers;
  final int correct;
  const QuizQuestion(this.q, this.answers, this.correct);
}

class Lesson {
  final int number;
  final String title;
  final String subtitle;
  final VisualType visual;
  final List<String> points;
  final List<String> steps;
  final List<QuizQuestion> quiz;
  Color get accent => number.isEven ? Colors.greenAccent : Colors.cyanAccent;
  const Lesson(this.number, this.title, this.subtitle, this.visual, this.points, this.steps, this.quiz);
}

const lessons = <Lesson>[
  Lesson(1, 'أساسيات الرسم البياني', 'الشموع وOHLC والقمم والقيعان والاتجاهات', VisualType.candle,
    ['التحليل الفني يقرأ حركة السعر السابقة لمحاولة فهم الحركة القادمة.', 'الشمعة تتكون من Open وHigh وLow وClose (OHLC).', 'جسم الشمعة بين الافتتاح والإغلاق والظلال تصل إلى أعلى وأدنى سعر.', 'الصاعد HH + HL، والهابط LH + LL.', 'ليس كل ارتفاع أو انخفاض قمة أو قاعاً رئيسياً.', 'لا توجد استراتيجية تضمن النجاح دائماً.'],
    ['افهم OHLC', 'تعلم جسم الشمعة والظلال', 'حدد القمم والقيعان', 'حدد الاتجاه'],
    [QuizQuestion('ما الذي يحدد جسم الشمعة؟', ['High وLow', 'Open وClose', 'الحجم'], 1), QuizQuestion('ما تسلسل الاتجاه الصاعد؟', ['HH + HL', 'LH + LL', 'قمم متساوية'], 0)]),
  Lesson(2, 'خريطة الطريق والأسواق', 'من الأساسيات إلى التطبيق وإدارة المخاطر', VisualType.trend,
    ['التداول يشمل الفوركس والأسهم والعملات الرقمية والسلع.', 'المنهج يبدأ بالمدرسة الكلاسيكية قبل المدارس المتقدمة.', 'إدارة المخاطر والنفسية واختيار الوسيط مراحل أساسية.', 'TradingView أداة تعليمية للتدرب على الشارت.', 'لا تتعجل اختيار وسيط أو إيداع أموال.', 'تحذيرات المصدر من الخيارات الثنائية تعرض كموقف تعليمي للمحاضر.'],
    ['الشارت', 'الاتجاه والدعم والمقاومة', 'النماذج', 'المخاطر', 'النفسية'],
    [QuizQuestion('ما الأداة المستخدمة للتدرب على الشارت؟', ['TradingView', 'خدمة إشارات', 'أداة عشوائية'], 0), QuizQuestion('هل توجد مدرسة واحدة هي الأفضل للجميع؟', ['نعم', 'لا', 'دائماً المدرسة المتقدمة'], 1)]),
  Lesson(3, 'الاتجاهات والدعم والمقاومة', 'السياق أولاً ثم المناطق البنيوية', VisualType.levels,
    ['ابدأ بتحديد صاعد أو هابط أو عرضي.', 'الصاعد HH + HL والهابط LH + LL.', 'الدعم منطقة تفاعل سعري حول قيعان متقاربة وفق المنهج.', 'المقاومة منطقة تفاعل حول قمم متقاربة.', 'الدعم المكسور قد يصبح مقاومة والعكس صحيح.', 'عند عدم الوضوح فالانتظار أفضل من التخمين.'],
    ['حدد الاتجاه', 'حدد القمم والقيعان', 'ارسم الدعم', 'ارسم المقاومة', 'راقب الكسر وإعادة الاختبار'],
    [QuizQuestion('ماذا قد تصبح المقاومة بعد كسرها صعوداً؟', ['دعماً', 'قاعاً فورياً', 'تختفي دائماً'], 0), QuizQuestion('ماذا تفعل عند عدم الوضوح؟', ['تخمن', 'تنتظر', 'تضاعف المخاطرة'], 1)]),
  Lesson(4, 'Double Top وDouble Bottom', 'النماذج الثنائية وسياق الانعكاس', VisualType.patterns,
    ['Double Top نموذج انعكاسي بعد اتجاه صاعد وفق المصدر.', 'Double Bottom نموذج انعكاسي بعد اتجاه هابط وفق المصدر.', 'السياق والاتجاه السابق مهمان، وليس الشكل وحده.', 'المستوى الفاصل بين القمتين أو القاعين مهم.', 'الكسر إشارة تعليمية وليس ضماناً للنتيجة.'],
    ['حدد الاتجاه السابق', 'حدد القمتين أو القاعين', 'حدد المستوى الفاصل', 'انتظر التأكيد'],
    [QuizQuestion('Double Top يأتي عادة بعد؟', ['اتجاه صاعد', 'اتجاه هابط فقط', 'دون سياق'], 0), QuizQuestion('هل النموذج يضمن النجاح؟', ['نعم', 'لا', 'في الذهب فقط'], 1)]),
  Lesson(5, 'Rectangle وTriple Top/Bottom والرأس والكتفين', 'نماذج الاستمرارية والانعكاس وخط العنق', VisualType.patterns,
    ['Rectangle يتكون من قمم وقيعان متقاربة ضمن السياق السابق.', 'Triple Top انعكاسي هابط وTriple Bottom انعكاسي صاعد وفق المصدر.', 'Head & Shoulders انعكاسي هابط وInverse Head & Shoulders انعكاسي صاعد.', 'في الرأس والكتفين يرتبط التفعيل بكسر خط العنق.', 'الأهداف ووقف الخسارة مرتبطة ببنية النموذج وليست مضمونة.'],
    ['حدد السياق', 'حدد القمم والقيعان', 'ارسم النموذج أو خط العنق', 'انتظر الكسر'],
    [QuizQuestion('ما أهمية خط العنق؟', ['مستوى بنيوي', 'زخرفة', 'حجم'], 0), QuizQuestion('Triple Bottom يوصف بأنه؟', ['انعكاسي صاعد', 'استمراري هابط', 'عرضي دائماً'], 0)]),
  Lesson(6, 'المثلثات: الاستمرارية', 'Ascending وDescending Triangle', VisualType.triangles,
    ['Ascending Triangle الاستمراري يأتي بعد اتجاه صاعد: قمم متقاربة وقيعان صاعدة.', 'Descending Triangle الاستمراري يأتي بعد اتجاه هابط: قيعان متقاربة وقمم هابطة.', 'الهدف النظري في المصدر يقاس بارتفاع المثلث ويسقط باتجاه الكسر.', 'قد يحدث Retest وتبادل للأدوار.', 'لا تفرض المثلث على حركات صغيرة.'],
    ['تأكد من الاتجاه', 'اربط النقاط الرئيسية', 'حدد الكسر', 'راقب Retest'],
    [QuizQuestion('Ascending Triangle الاستمراري يأتي بعد؟', ['اتجاه صاعد', 'اتجاه هابط فقط', 'عرضي فقط'], 0), QuizQuestion('هل Retest مضمون؟', ['نعم', 'لا', 'مرتان دائماً'], 1)]),
  Lesson(7, 'المثلثات الانعكاسية والمتماثل', 'السياق والكسر أهم من الشكل وحده', VisualType.triangles,
    ['Ascending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه هابط وفق المصدر.', 'Descending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه صاعد وفق المصدر.', 'Symmetrical Triangle ضلع علوي هابط وضلع سفلي صاعد، وقد يكون استمرارياً أو انعكاسياً حسب السياق.', 'قبل التأكيد لا ينبغي التخمين.', 'النموذج يجب أن يكون موجوداً فعلاً على الرسم.'],
    ['حدد الاتجاه السابق', 'ارسم الضلعين', 'انتظر الكسر', 'قارن السياق'],
    [QuizQuestion('Symmetrical Triangle يمكن أن يكون؟', ['استمرارياً أو انعكاسياً', 'صاعداً دائماً', 'هابطاً دائماً'], 0), QuizQuestion('قبل التأكيد الأفضل؟', ['التخمين', 'الانتظار', 'زيادة المخاطرة'], 1)]),
  Lesson(8, 'المراجعة والتطبيق على الشارت', 'الاتجاه ثم المناطق ثم النموذج والتأكيد', VisualType.levels,
    ['راجع الاتجاه والقمم والقيعان والدعم والمقاومة والنماذج.', 'لا تطبق نموذجاً على شكل لا يطابق شروطه.', 'الكسر قد يفشل وإعادة الاختبار ممكنة.', 'استخدم الشارت التاريخي للتدريب والمراجعة.', 'الانتظار عندما لا تكون الشروط واضحة جزء من الانضباط.'],
    ['اختر أصل وفريم', 'ارجع تاريخياً', 'حدد الاتجاه', 'حدد المستويات', 'سجل النتيجة'],
    [QuizQuestion('ما أول خطوة في المراجعة؟', ['تحديد الاتجاه', 'اختيار حجم كبير', 'التخمين'], 0), QuizQuestion('هل كل كسر ينجح؟', ['نعم', 'لا', 'فقط الأسهم'], 1)]),
  Lesson(9, 'إدارة المخاطر والبيب واللوت', 'حماية رأس المال وحساب حجم الصفقة', VisualType.risk,
    ['إدارة المخاطر تهدف إلى حماية رأس المال وتقليل الخسائر الكبيرة.', 'المثال التعليمي في المصدر يستخدم 2% من رأس المال كحد خسارة نظري.', 'عدد الوحدات = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة.', 'البيب وحدة شائعة في الفوركس وتفاصيلها تختلف حسب الأداة.', 'اللوت يحدد حجم العقد وقيمة الحركة تعتمد على الأداة والحجم.', 'أمثلة الأرقام تعليمية وليست توصية شخصية.'],
    ['حدد وقف الخسارة', 'حدد أقصى خسارة', 'احسب الحجم', 'راجع الخطة'],
    [QuizQuestion('ما الهدف الأساسي من إدارة المخاطر؟', ['حماية رأس المال', 'ضمان الربح', 'مضاعفة الحجم'], 0), QuizQuestion('هل 2% قاعدة مضمونة للجميع؟', ['نعم', 'لا، مثال تعليمي من المصدر', 'فقط للذهب'], 1)]),
  Lesson(10, 'أخطاء التفكير والانضباط', 'التخطيط ووقف الخسارة وتجنب القفز بين الاستراتيجيات', VisualType.psychology,
    ['التوقعات السريعة للثراء قد تقود لمخاطر أكبر.', 'الخسائر جزء من التداول ولا ينبغي تبديل المنهج بعد خسارتين أو ثلاث فقط.', 'لا تقلد إشارات تدعي نجاحاً مضموناً؛ افهم سبب الدخول والخروج.', 'لا تزيل وقف الخسارة لتجنب الاعتراف بالخسارة.', 'استخدم خطة وسجل تداول وتجنب التداول عند التعب أو الغضب أو ضعف الاتصال.'],
    ['اكتب الخطة', 'حدد المخاطرة', 'سجل الصفقة', 'راجع الأخطاء'],
    [QuizQuestion('ماذا تفعل بعد خسائر قليلة؟', ['تبدل كل شيء فوراً', 'تراجع المنهج والبيانات', 'تضاعف اللوت'], 1), QuizQuestion('هل إزالة وقف الخسارة لتجنب الخسارة ممارسة سليمة؟', ['نعم', 'لا', 'دائماً'], 1)]),
  Lesson(11, 'الأخطاء النفسية والتطبيق العملي', 'الجشع والخوف والانتقام والتطبيق على الشارت', VisualType.psychology,
    ['الجشع قد يدفع لإلغاء الهدف أو الإفراط في التداول.', 'الخوف قد يؤدي إلى إغلاق الصفقة مبكراً أو عدم تنفيذ خطة واضحة.', 'التداول الانتقامي يعني زيادة المخاطرة بعد الخسارة لاستعادتها.', 'لا تجعل صفقة واحدة تتحكم في مزاجك؛ انظر إلى سلسلة الصفقات.', 'المصدر يؤكد أن كل حركة في السوق ليست مطالبة بأن تكون فرصة.'],
    ['اكتب خطة الخروج', 'حدد حد الخسارة اليومي كمثال تعليمي', 'لا تضاعف الحجم انتقاماً', 'راجع النتائج'],
    [QuizQuestion('ما التداول الانتقامي؟', ['زيادة المخاطرة لاستعادة خسارة', 'تسجيل الصفقة', 'تقليل المخاطرة'], 0), QuizQuestion('هل يجب اقتناص كل حركة؟', ['نعم', 'لا', 'فقط الذهب'], 1)]),
  Lesson(12, 'الفريمات والترابط بين الفريمات', 'HTF وLTF وتحديد الاتجاه والمنطقة والتأكيد', VisualType.timeframes,
    ['الفريم يحدد المدة التي تمثلها كل شمعة.', 'HTF للصورة العامة والاتجاه والمنطقة، وLTF للتأكيد واختيار الدخول في شرح المحاضرة.', 'أمثلة المصدر: 1D مع 1H، و4H مع 15m، و1H مع 5m.', 'لا تستخدم فريمات كثيرة إذا كانت ستسبب التشويش.', 'يمكن أن تكون حركة LTF عكس HTF مجرد تصحيح حتى ينكسر مستوى بنيوي مهم.', 'التحليل احتمالي وليس ضماناً، ووقف الخسارة هو حد للمخاطرة لا وعد بالنتيجة.'],
    ['افتح HTF', 'حدد الاتجاه والمنطقة', 'انتظر وصول السعر', 'انتقل إلى LTF', 'انتظر التأكيد', 'حدد الإبطال والمخاطرة'],
    [QuizQuestion('ماذا يحدد HTF في منهج المحاضرة؟', ['الصورة العامة والاتجاه والمنطقة', 'السعر المضمون', 'الربح'], 0), QuizQuestion('متى تنتقل إلى LTF؟', ['بعد وصول السعر للمنطقة', 'دائماً قبل HTF', 'عشوائياً'], 0)]),
  Lesson(13, 'الأعلام والرايات', 'Flag وPennant — نماذج الاستمرارية', VisualType.patterns,
    ['تأتي غالباً بعد حركة قوية ثم تصحيح أو تجميع قصير.', 'العلم يميل إلى قناة تصحيحية، والراية تضيق نحو نقطة.', 'السياق السابق أهم من شكل النموذج وحده.', 'الكسر والتأكيد لا يضمنان استمرار الحركة.'],
    ['حدد الحركة القوية', 'حدد منطقة التصحيح', 'انتظر الخروج', 'راجع إعادة الاختبار'],
    [QuizQuestion('ما الذي يسبق العلم غالباً؟', ['حركة قوية', 'سكون دائم', 'لا شيء'], 0), QuizQuestion('هل الكسر مضمون النجاح؟', ['نعم', 'لا', 'دائماً'], 1)]),
  Lesson(14, 'الأوتاد', 'Rising Wedge وFalling Wedge', VisualType.patterns,
    ['الوتد الصاعد يتضيق مع ميل للأعلى، والهابط يتضيق مع ميل للأسفل.', 'قد يعمل الوتد كاستمرار أو انعكاس بحسب السياق.', 'لا تعتمد على الاسم وحده؛ افحص البنية والاتجاه السابق.', 'انتظر الكسر والتأكيد قبل بناء السيناريو.'],
    ['ارسم الضلعين', 'راقب التضييق', 'حدد اتجاه الكسر', 'انتظر التأكيد'],
    [QuizQuestion('هل الوتد يعمل دائماً كانعكاس؟', ['نعم', 'لا', 'فقط على BTC'], 1), QuizQuestion('ما الأهم؟', ['السياق والبنية', 'الاسم فقط', 'لون الشمعة فقط'], 0)]),
  Lesson(15, 'نماذج الشموع', 'Pin Bar وEngulfing وDoji', VisualType.candle,
    ['Pin Bar قد يعكس رفضاً سعرياً، لكن المكان والسياق مهمان.', 'Engulfing يصف ابتلاع جسم الشمعة السابقة في الشكل الشائع.', 'Doji يعني تقارب الافتتاح والإغلاق ولا يعني شراء أو بيع وحده.', 'الشمعة عند منطقة مهمة تختلف عن شمعة في منتصف نطاق عشوائي.'],
    ['حدد المنطقة', 'اقرأ الشمعة', 'قارن بالسياق', 'انتظر التأكيد'],
    [QuizQuestion('هل Doji وحده إشارة دخول؟', ['نعم', 'لا', 'دائماً'], 1), QuizQuestion('ما الذي يقوي قراءة الشمعة؟', ['السياق والمنطقة', 'لون الشاشة', 'عدد الشموع فقط'], 0)]),
  Lesson(16, 'إدارة المخاطر والبيب واللوت', 'حماية رأس المال وحساب حجم الصفقة', VisualType.risk,
    ['إدارة المخاطر تهدف إلى منع خسارة كبيرة في صفقة واحدة.', 'المعادلة التعليمية: المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة = حجم نظري.', 'البيب واللوت مصطلحان شائعان في الفوركس وتختلف قيمتهما حسب الأداة والعقد.', 'وقف الخسارة حد للمخاطرة وليس ضماناً لسعر تنفيذ مثالي.'],
    ['حدد الإبطال', 'حدد مبلغ المخاطرة', 'احسب الحجم', 'راجع الخطة'],
    [QuizQuestion('ما هدف إدارة المخاطر؟', ['حماية رأس المال', 'ضمان الربح', 'مضاعفة الحجم'], 0), QuizQuestion('هل وقف الخسارة يضمن السعر؟', ['نعم', 'لا', 'دائماً'], 1)]),
  Lesson(17, 'الانضباط والنفسية', 'الخوف والجشع والتداول الانتقامي', VisualType.psychology,
    ['لا تجعل صفقة واحدة تحدد تقييمك للاستراتيجية.', 'التداول الانتقامي هو رفع المخاطرة لاستعادة خسارة سابقة.', 'تبديل المنهج بعد سلسلة قصيرة قد يمنع التقييم الهادئ.', 'سجل سبب الدخول والإبطال والنتيجة وراجع سلسلة الصفقات.'],
    ['اكتب سبب الدخول', 'حدد الإبطال', 'سجل النتيجة', 'راجع السلسلة'],
    [QuizQuestion('ما التداول الانتقامي؟', ['رفع المخاطرة بعد خسارة', 'تسجيل الصفقة', 'خفض المخاطرة'], 0), QuizQuestion('ماذا تفعل بعد سلسلة قصيرة؟', ['تراجع البيانات', 'تضاعف اللوت', 'تلغي الخطة'], 0)]),
  Lesson(18, 'الفريمات HTF / LTF', 'الصورة العامة ثم المنطقة ثم التأكيد', VisualType.timeframes,
    ['HTF يعطي الصورة العامة والاتجاه والمناطق الرئيسية.', 'LTF يستخدم للتأكيد واختيار نقطة أكثر دقة في الشرح التعليمي.', 'أمثلة: 4H مع 15m أو 1H مع 5m.', 'لا تكثر الفريمات إذا سببت تشويشاً أو تعارضاً غير مفهوم.'],
    ['ابدأ بـ HTF', 'حدد الاتجاه والمنطقة', 'انتظر وصول السعر', 'انتقل إلى LTF للتأكيد'],
    [QuizQuestion('ماذا يحدد HTF؟', ['الصورة العامة والمنطقة', 'الربح المضمون', 'سعر التنفيذ'], 0), QuizQuestion('متى تنتقل إلى LTF؟', ['بعد وصول السعر للمنطقة', 'قبل HTF دائماً', 'عشوائياً'], 0)]),
];

class MainShell extends StatefulWidget {
  const MainShell({super.key});
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int tab = 0;
  final Set<int> completed = <int>{};

  void openLesson(Lesson l) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => LessonPage(
          lesson: l,
          initiallyDone: completed.contains(l.number),
          onDone: () => setState(() => completed.add(l.number)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      HomePage(completed: completed, onOpen: openLesson),
      CoursePage(completed: completed, onOpen: openLesson),
      const ToolsPage(),
      const GlossaryPage(),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(child: pages[tab]),
        bottomNavigationBar: NavigationBar(
          selectedIndex: tab,
          onDestinationSelected: (v) => setState(() => tab = v),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'الرئيسية'),
            NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book), label: 'المحاضرات'),
            NavigationDestination(icon: Icon(Icons.tune_outlined), selectedIcon: Icon(Icons.tune), label: 'الأدوات'),
            NavigationDestination(icon: Icon(Icons.menu_book), label: 'قاموس'),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpen;
  const HomePage({super.key, required this.completed, required this.onOpen});
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    children.add(Container(padding: const EdgeInsets.all(22), decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), gradient: const LinearGradient(colors: [Color(0xFF252015), Color(0xFF11161B)]), border: Border.all(color: Colors.amber.withValues(alpha: .2))), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('إحتراف التداول من الصفر الى الاحترف', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)), const SizedBox(height: 8), const Text('منهج تعليمي منظم: الشموع ← الاتجاه ← النماذج ← المخاطر ← النفسية ← HTF/LTF.', style: TextStyle(color: Colors.white70, height: 1.5)), const SizedBox(height: 16), LinearProgressIndicator(value: completed.length / lessons.length, minHeight: 8), const SizedBox(height: 8), Text('${completed.length} من ${lessons.length} محاضرة مكتملة', style: const TextStyle(color: Colors.white54))])));
    children.add(const SizedBox(height: 18));
    children.add(const SectionTitle(title: 'ابدأ من هنا', icon: Icons.play_circle_outline));
    children.add(MiniLessonTile(lesson: lessons.first, done: completed.contains(1), onTap: () => onOpen(lessons.first)));
    children.add(const SizedBox(height: 18));
    children.add(const SectionTitle(title: 'المحاضرات التالية', icon: Icons.auto_awesome));
    for (final l in lessons.skip(1).take(4)) {
      children.add(MiniLessonTile(lesson: l, done: completed.contains(l.number), onTap: () => onOpen(l)));
    }
    return ListView(padding: const EdgeInsets.all(18), children: children);
  }
}

class CoursePage extends StatelessWidget {
  final Set<int> completed;
  final ValueChanged<Lesson> onOpen;
  const CoursePage({super.key, required this.completed, required this.onOpen});
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[const Text('مسار الاحتراف', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)), const SizedBox(height: 6), const Text('تدرج من الأساسيات إلى التطبيق بدون القفز فوق المراحل.', style: TextStyle(color: Colors.white60))];
    for (final l in lessons) children.add(CourseTile(lesson: l, done: completed.contains(l.number), onTap: () => onOpen(l)));
    return ListView(padding: const EdgeInsets.all(18), children: children);
  }
}

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  final bool initiallyDone;
  final VoidCallback onDone;
  const LessonPage({super.key, required this.lesson, required this.initiallyDone, required this.onDone});
  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int score = 0;
  int answered = 0;

  bool get isBearish => <int>{5, 7, 11, 14, 17}.contains(widget.lesson.number);
  bool get isBullish => <int>{6, 10, 13, 15}.contains(widget.lesson.number);

  @override
  Widget build(BuildContext context) {
    final l = widget.lesson;
    final directionColor = isBearish ? Colors.redAccent : (isBullish ? Colors.greenAccent : Colors.amber);
    final directionTitle = isBearish ? 'السيناريو الهابط' : (isBullish ? 'السيناريو الصاعد' : 'قراءة النموذج');
    return Scaffold(
      appBar: AppBar(title: Text('الدرس ${l.number}')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 34),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [l.accent.withValues(alpha: .24), const Color(0xFF08131F)]),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: l.accent.withValues(alpha: .65)),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                CircleAvatar(backgroundColor: l.accent.withValues(alpha: .18), child: Text('${l.number}', style: TextStyle(color: l.accent, fontWeight: FontWeight.w900))),
                const SizedBox(width: 10),
                Expanded(child: Text(l.title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900))),
              ]),
              const SizedBox(height: 6),
              Text(l.subtitle, style: const TextStyle(color: Colors.white70)),
              const SizedBox(height: 12),
              const Text('الفكرة الأساسية: لا تقرأ الكسر وحده؛ اقرأ الاتجاه + المنطقة + التأكيد.', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, height: 1.4)),
            ]),
          ),
          const SizedBox(height: 12),
          Container(
            height: 310,
            decoration: BoxDecoration(
              color: const Color(0xFF07111C),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: l.accent.withValues(alpha: .55)),
            ),
            child: Stack(children: [
              Positioned.fill(child: TradingVisual(type: l.visual)),
              Positioned(top: 12, right: 12, child: _ChartTag(text: 'الرسم البياني التوضيحي', color: l.accent)),
              Positioned(bottom: 12, left: 12, right: 12, child: _ChartCaption(text: 'اتبع البنية على الرسم ثم انتقل للنص')),
            ]),
          ),
          const SizedBox(height: 12),
          LayoutBuilder(builder: (context, box) {
            final cards = [
              _DirectionCard(
                title: directionTitle,
                color: directionColor,
                icon: isBearish ? Icons.south_east : (isBullish ? Icons.north_east : Icons.compare_arrows),
                lines: isBearish
                    ? const ['راقب كسر الدعم/البنية', 'انتظر التأكيد أو إعادة الاختبار', 'استمرار الهبوط ليس مضموناً']
                    : isBullish
                        ? const ['راقب كسر المقاومة/البنية', 'انتظر التأكيد أو إعادة الاختبار', 'استمرار الصعود ليس مضموناً']
                        : const ['حدد الاتجاه والسياق', 'حدد المنطقة المهمة', 'انتظر التأكيد قبل القرار'],
              ),
              _DirectionCard(
                title: 'قاعدة مهمة جداً',
                color: Colors.amber,
                icon: Icons.lightbulb,
                lines: const ['الشكل وحده لا يكفي', 'الكسر ليس ضماناً', 'إدارة المخاطر جزء من الخطة'],
              ),
            ];
            if (box.maxWidth > 650) {
              return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(child: cards[0]),
                const SizedBox(width: 10),
                Expanded(child: cards[1]),
              ]);
            }
            return Column(children: [cards[0], const SizedBox(height: 10), cards[1]]);
          }),
          const SizedBox(height: 14),
          const SectionTitle(title: 'ما الذي يحدث؟', icon: Icons.analytics_outlined),
          for (int i = 0; i < l.points.length; i++)
            PointCard(index: i + 1, text: l.points[i]),
          const SizedBox(height: 10),
          const SectionTitle(title: 'الخطوات على الشارت', icon: Icons.route),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(children: [
                for (int i = 0; i < l.steps.length; i++)
                  StepRow(number: i + 1, text: l.steps[i]),
              ]),
            ),
          ),
          const SizedBox(height: 12),
          Card(
            color: const Color(0xFF111C28),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16), side: const BorderSide(color: Colors.amber)),
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 9),
                Expanded(child: Text(
                  'تذكّر: ليس كل كسر يعني تحوّل الاتجاه. تأكد من السياق وإعادة الاختبار وسلوك السعر وإدارة المخاطر.',
                  style: TextStyle(color: Colors.white70, height: 1.5),
                )),
              ]),
            ),
          ),
          const SizedBox(height: 14),
          const SectionTitle(title: 'اختبر فهمك', icon: Icons.quiz_outlined),
          for (int i = 0; i < l.quiz.length; i++)
            QuizCard(
              question: l.quiz[i],
              number: i + 1,
              onAnswer: (ok) => setState(() { answered++; if (ok) score++; }),
            ),
          if (answered > 0)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('نتيجتك: $score / $answered', style: TextStyle(color: l.accent, fontWeight: FontWeight.w900)),
            ),
          const SizedBox(height: 14),
          FilledButton.icon(
            onPressed: () { widget.onDone(); Navigator.pop(context); },
            icon: const Icon(Icons.check_circle),
            label: const Text('تمت دراسة الدرس'),
          ),
          const SizedBox(height: 8),
          const Text(
            'محتوى تعليمي: الرسوم والنماذج تشرح طريقة القراءة ولا تقدم توصية شراء أو بيع ولا تضمن الربح.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white38, height: 1.45),
          ),
        ],
      ),
    );
  }
}

class _ChartTag extends StatelessWidget {
  final String text;
  final Color color;
  const _ChartTag({required this.text, required this.color});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
    decoration: BoxDecoration(
      color: const Color(0xDD091522),
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: color),
    ),
    child: Text(text, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
  );
}

class _ChartCaption extends StatelessWidget {
  final String text;
  const _ChartCaption({required this.text});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(9),
    decoration: BoxDecoration(color: const Color(0xDD07111C), borderRadius: BorderRadius.circular(12)),
    child: Text(text, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
  );
}

class _DirectionCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final List<String> lines;
  const _DirectionCard({required this.title, required this.color, required this.icon, required this.lines});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: color.withValues(alpha: .075),
      borderRadius: BorderRadius.circular(17),
      border: Border.all(color: color.withValues(alpha: .65), width: 1.4),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [Icon(icon, color: color), const SizedBox(width: 7), Expanded(child: Text(title, style: TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w900)))]),
      const SizedBox(height: 8),
      for (final line in lines)
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(Icons.check_circle, size: 17, color: color),
            const SizedBox(width: 6),
            Expanded(child: Text(line, style: const TextStyle(color: Colors.white70))),
          ]),
        ),
    ]),
  );
}

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});
  @override
  Widget build(BuildContext context) => ListView(padding: const EdgeInsets.all(18), children: [const Text('أدوات التعلم', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)), const SizedBox(height: 14), ToolTile(icon: Icons.calculate_outlined, title: 'حاسبة المخاطرة', subtitle: 'حساب تعليمي للمبلغ المعرض للخسارة وحجم الوحدة.', page: const RiskCalculatorPage()), ToolTile(icon: Icons.checklist_rtl, title: 'قائمة فحص الصفقة', subtitle: 'تأكد من الاتجاه والمستوى والتأكيد والمخاطرة.', page: const ChecklistPage()), ToolTile(icon: Icons.show_chart, title: 'مختبر الرسوم', subtitle: 'رسومات تعليمية للشموع والاتجاهات والنماذج.', page: const VisualLabPage()), ToolTile(icon: Icons.route, title: 'سير عمل HTF/LTF', subtitle: 'الاتجاه والمنطقة ثم الفريم الأدنى والتأكيد.', page: const WorkflowPage())]);
}

class RiskCalculatorPage extends StatefulWidget {
  const RiskCalculatorPage({super.key});
  @override
  State<RiskCalculatorPage> createState() => _RiskCalculatorPageState();
}

class _RiskCalculatorPageState extends State<RiskCalculatorPage> {
  final account = TextEditingController();
  final risk = TextEditingController(text: '2');
  final entry = TextEditingController();
  final stop = TextEditingController();

  @override
  void dispose() {
    account.dispose();
    risk.dispose();
    entry.dispose();
    stop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final a = double.tryParse(account.text);
    final r = double.tryParse(risk.text);
    final e = double.tryParse(entry.text);
    final s = double.tryParse(stop.text);
    final money = (a != null && r != null) ? a * r / 100 : null;
    final units = (money != null && e != null && s != null && e != s)
        ? money / (e - s).abs()
        : null;

    return Scaffold(
      appBar: AppBar(title: const Text('حاسبة المخاطرة')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text('حاسبة تعليمية', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          const Text('المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة = حجم نظري.', style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 16),
          InputBox(label: 'رأس المال', controller: account),
          InputBox(label: 'نسبة المخاطرة %', controller: risk),
          InputBox(label: 'سعر الدخول', controller: entry),
          InputBox(label: 'سعر وقف الخسارة', controller: stop),
          FilledButton(
            onPressed: () => setState(() {}),
            child: const Text('احسب'),
          ),
          if (money != null)
            Card(
              margin: const EdgeInsets.only(top: 16),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    ResultRow(label: 'الحد النظري للخسارة', value: money.toStringAsFixed(2)),
                    const Divider(),
                    ResultRow(label: 'عدد الوحدات النظري', value: units?.toStringAsFixed(4) ?? '—'),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 12),
          const Text('قيم pip/lot الفعلية تختلف حسب الأداة والمنصة والعقد.', style: TextStyle(color: Colors.white54)),
        ],
      ),
    );
  }
}

class ChecklistPage extends StatefulWidget {
  const ChecklistPage({super.key});
  @override
  State<ChecklistPage> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  final items = const [
    'هل الاتجاه واضح؟',
    'هل حددت القمم والقيعان؟',
    'هل المنطقة واضحة؟',
    'هل يوجد تأكيد؟',
    'هل وقف الخسارة منطقي؟',
    'هل المخاطرة محددة؟',
    'هل الهدف معروف؟',
    'هل حالتك النفسية مناسبة؟',
  ];
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = List<bool>.filled(items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final done = values.where((v) => v).length;
    return Scaffold(
      appBar: AppBar(title: const Text('قائمة فحص الصفقة')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text('$done / ${items.length} مكتملة', style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
          for (int i = 0; i < items.length; i++)
            Card(
              child: CheckboxListTile(
                value: values[i],
                onChanged: (v) => setState(() => values[i] = v ?? false),
                title: Text(items[i]),
                secondary: Icon(
                  values[i] ? Icons.check_circle : Icons.radio_button_unchecked,
                  color: values[i] ? Colors.greenAccent : Colors.white38,
                ),
              ),
            ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'إذا لم تكن الشروط واضحة، فالانتظار أفضل من التخمين. هذه القائمة للتدريب وليست إشارة تداول.',
                style: TextStyle(color: Colors.white60, height: 1.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GlossaryPage extends StatelessWidget {
  const GlossaryPage({super.key});
  static const items = <String, String>{
    'OHLC': 'Open / High / Low / Close: بيانات الشمعة الأساسية.',
    'HH + HL': 'Higher High + Higher Low: الاتجاه الصاعد.',
    'LH + LL': 'Lower High + Lower Low: الاتجاه الهابط.',
    'Support': 'منطقة تفاعل حول القيعان.',
    'Resistance': 'منطقة تفاعل حول القمم.',
    'Breakout': 'كسر مستوى أو منطقة.',
    'Retest': 'عودة السعر لاختبار المستوى بعد الكسر.',
    'Stop Loss': 'حد إبطال أو خسارة محدد مسبقاً.',
    'Pip': 'وحدة شائعة لحركة السعر في الفوركس.',
    'Lot': 'حجم عقد في الفوركس.',
    'HTF': 'الفريم الأعلى للصورة العامة.',
    'LTF': 'الفريم الأدنى للتأكيد.',
  };

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18),
      children: [
        const Text('قاموس التداول', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
        const SizedBox(height: 14),
        for (final e in items.entries)
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.key, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.amber)),
                  const SizedBox(height: 5),
                  Text(e.value, style: const TextStyle(color: Colors.white70, height: 1.45)),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class VisualLabPage extends StatelessWidget {
  const VisualLabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مختبر جميع النماذج')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 30),
        children: [
          const Text('جميع الرسوم التعليمية', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900)),
          const SizedBox(height: 5),
          const Text('كل نموذج مرتبط بالدرس الخاص به مع الرسم والنص المختصر.', style: TextStyle(color: Colors.white60)),
          const SizedBox(height: 14),
          for (final l in lessons)
            Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 15, child: Text('${l.number}')),
                        const SizedBox(width: 8),
                        Expanded(child: Text(l.title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(height: 245, child: TradingVisual(type: l.visual)),
                    const SizedBox(height: 7),
                    Text(l.subtitle, style: const TextStyle(color: Colors.white60)),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class WorkflowPage extends StatelessWidget {
  const WorkflowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('سير عمل تحليل الشارت')),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const SizedBox(height: 280, child: TradingVisual(type: VisualType.timeframes)),
          const SizedBox(height: 16),
          const Text('الترتيب التعليمي', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text(
            '1) حدد الفريم والصورة العامة.\n'
            '2) حدد الاتجاه الصاعد أو الهابط أو العرضي.\n'
            '3) حدد الدعم والمقاومة والمناطق المهمة.\n'
            '4) ابحث عن نموذج واضح إن وجد.\n'
            '5) انتظر الكسر والتأكيد أو إعادة الاختبار.\n'
            '6) حدد نقطة الإبطال ووقف الخسارة.\n'
            '7) احسب المخاطرة وحجم الصفقة.\n'
            '8) سجل الصفقة وراجعها قبل تكرار الخطة.',
            style: TextStyle(color: Colors.white70, height: 1.7),
          ),
        ],
      ),
    );
  }
}

class TradingVisual extends StatelessWidget { final VisualType type; const TradingVisual({super.key, required this.type}); @override Widget build(BuildContext context) => Card(child: CustomPaint(painter: TradingPainter(type), child: const SizedBox.expand())); }
class TradingPainter extends CustomPainter {
  final VisualType type;
  TradingPainter(this.type);

  void candles(Canvas c, Size s, {int count = 11, double slope = 0}) {
    final fill = Paint()..style = PaintingStyle.fill;
    final stroke = Paint()..strokeWidth = 2;
    for (int i = 0; i < count; i++) {
      final x = 30.0 + i * (s.width - 60) / (count - 1);
      final y = s.height * .55 - slope * i;
      final up = i.isEven;
      stroke.color = up ? Colors.greenAccent : Colors.redAccent;
      fill.color = stroke.color;
      c.drawLine(Offset(x, y - 32), Offset(x, y + 32), stroke);
      c.drawRect(Rect.fromCenter(center: Offset(x, y), width: 13, height: up ? 42 : 34), fill);
    }
  }

  void path(Canvas c, Paint p, List<Offset> points) {
    final q = Path()..moveTo(points.first.dx, points.first.dy);
    for (final point in points.skip(1)) {
      q.lineTo(point.dx, point.dy);
    }
    c.drawPath(q, p);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    canvas.drawRRect(
      RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(18)),
      Paint()..color = const Color(0xFF101820),
    );
    final grid = Paint()..color = Colors.white.withValues(alpha: .045)..strokeWidth = 1;
    for (int i = 1; i < 6; i++) {
      canvas.drawLine(Offset(0, h * i / 6), Offset(w, h * i / 6), grid);
    }
    for (int i = 1; i < 8; i++) {
      canvas.drawLine(Offset(w * i / 8, 0), Offset(w * i / 8, h), grid);
    }

    final p = Paint()..style = PaintingStyle.stroke..strokeWidth = 3..strokeCap = StrokeCap.round;

    if (type == VisualType.candle) {
      candles(canvas, size);
    } else if (type == VisualType.trend) {
      candles(canvas, size, slope: 2);
      p.color = Colors.greenAccent;
      path(canvas, p, [
        Offset(20, h * .82), Offset(w * .27, h * .62), Offset(w * .45, h * .69),
        Offset(w * .68, h * .38), Offset(w - 20, h * .18),
      ]);
    } else if (type == VisualType.levels) {
      candles(canvas, size);
      p.color = Colors.cyanAccent;
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(18, h * .27, w - 36, 28), const Radius.circular(8)), p);
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(18, h * .69, w - 36, 28), const Radius.circular(8)), p);
    } else if (type == VisualType.patterns) {
      p.color = Colors.redAccent;
      path(canvas, p, [
        Offset(20, h * .72), Offset(w * .22, h * .32), Offset(w * .40, h * .64),
        Offset(w * .57, h * .20), Offset(w * .75, h * .62), Offset(w - 20, h * .35),
      ]);
      p.color = Colors.amber;
      canvas.drawLine(Offset(w * .2, h * .54), Offset(w * .8, h * .54), p);
    } else if (type == VisualType.triangles) {
      p.color = Colors.amber;
      path(canvas, p, [Offset(25, h * .75), Offset(w * .5, h * .2), Offset(w - 25, h * .75)]);
      p.color = Colors.greenAccent;
      canvas.drawLine(Offset(w * .5, h * .2), Offset(w * .82, h * .55), p);
    } else if (type == VisualType.risk) {
      p.color = Colors.amber;
      canvas.drawLine(Offset(25, h * .70), Offset(w - 25, h * .70), p);
      p.color = Colors.redAccent;
      canvas.drawLine(Offset(w * .34, h * .70), Offset(w * .34, h * .35), p);
      p.color = Colors.greenAccent;
      canvas.drawLine(Offset(w * .34, h * .35), Offset(w * .75, h * .18), p);
    } else if (type == VisualType.psychology) {
      p.color = Colors.amber;
      path(canvas, p, [
        Offset(20, h * .65), Offset(w * .22, h * .18), Offset(w * .42, h * .73),
        Offset(w * .64, h * .35), Offset(w - 20, h * .57),
      ]);
    } else {
      p.color = Colors.blueAccent;
      canvas.drawLine(Offset(20, h * .68), Offset(w - 20, h * .68), p);
      p.color = Colors.amber;
      canvas.drawLine(Offset(20, h * .34), Offset(w - 20, h * .34), p);
      p.color = Colors.greenAccent;
      canvas.drawLine(Offset(w * .5, h * .34), Offset(w * .5, h * .68), p);
    }
  }

  @override
  bool shouldRepaint(covariant TradingPainter oldDelegate) => oldDelegate.type != type;
}

class SectionTitle extends StatelessWidget { final String title; final IconData icon; const SectionTitle({super.key, required this.title, required this.icon}); @override Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 10), child: Row(children: [Icon(icon, color: Colors.amber), const SizedBox(width: 8), Text(title, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold))])); }
class MiniLessonTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const MiniLessonTile({super.key, required this.lesson, required this.done, required this.onTap}); @override Widget build(BuildContext context) => Card(child: ListTile(onTap: onTap, leading: CircleAvatar(child: Text('${lesson.number}')), title: Text(lesson.title, style: const TextStyle(fontWeight: FontWeight.bold)), subtitle: Text(lesson.subtitle), trailing: Icon(done ? Icons.check_circle : Icons.arrow_back_ios_new, color: done ? Colors.greenAccent : Colors.white54, size: 19))); }
class CourseTile extends StatelessWidget { final Lesson lesson; final bool done; final VoidCallback onTap; const CourseTile({super.key, required this.lesson, required this.done, required this.onTap}); @override Widget build(BuildContext context) => Card(child: ListTile(onTap: onTap, leading: CircleAvatar(backgroundColor: done ? Colors.green.withValues(alpha: .2) : Colors.amber.withValues(alpha: .15), child: Text('${lesson.number}')), title: Text(lesson.title, style: const TextStyle(fontWeight: FontWeight.bold)), subtitle: Text(lesson.subtitle), trailing: Icon(done ? Icons.check_circle : Icons.chevron_left, color: done ? Colors.greenAccent : Colors.white54))); }
class PointCard extends StatelessWidget { final int index; final String text; const PointCard({super.key, required this.index, required this.text}); @override Widget build(BuildContext context) => Card(child: Padding(padding: const EdgeInsets.all(14), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CircleAvatar(radius: 13, child: Text('$index', style: const TextStyle(fontSize: 12))), const SizedBox(width: 10), Expanded(child: Text(text, style: const TextStyle(height: 1.5, color: Colors.white70)))]))); }
class StepRow extends StatelessWidget { final int number; final String text; const StepRow({super.key, required this.number, required this.text}); @override Widget build(BuildContext context) => ListTile(contentPadding: EdgeInsets.zero, leading: CircleAvatar(radius: 14, child: Text('$number')), title: Text(text)); }
class QuizCard extends StatefulWidget { final QuizQuestion question; final int number; final ValueChanged<bool> onAnswer; const QuizCard({super.key, required this.question, required this.number, required this.onAnswer}); @override State<QuizCard> createState() => _QuizCardState(); }
class _QuizCardState extends State<QuizCard> { int selected = -1; @override Widget build(BuildContext context) => Card(child: Padding(padding: const EdgeInsets.all(14), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('${widget.number}. ${widget.question.q}', style: const TextStyle(fontWeight: FontWeight.bold)), for (int i = 0; i < widget.question.answers.length; i++) RadioListTile<int>(contentPadding: EdgeInsets.zero, value: i, groupValue: selected, onChanged: (v) { if (v == null || selected != -1) return; setState(() => selected = v); widget.onAnswer(v == widget.question.correct); }, title: Text(widget.question.answers[i]))]))); }
class ToolTile extends StatelessWidget { final IconData icon; final String title; final String subtitle; final Widget page; const ToolTile({super.key, required this.icon, required this.title, required this.subtitle, required this.page}); @override Widget build(BuildContext context) => Card(child: ListTile(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)), leading: Icon(icon, color: Colors.amber), title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), subtitle: Text(subtitle), trailing: const Icon(Icons.chevron_left))); }
class InputBox extends StatelessWidget { final String label; final TextEditingController controller; const InputBox({super.key, required this.label, required this.controller}); @override Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 10), child: TextField(controller: controller, keyboardType: const TextInputType.numberWithOptions(decimal: true), decoration: InputDecoration(labelText: label, border: const OutlineInputBorder()))); }
class ResultRow extends StatelessWidget { final String label; final String value; const ResultRow({super.key, required this.label, required this.value}); @override Widget build(BuildContext context) => Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(label), Text(value, style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold))]); }
