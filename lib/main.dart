import 'package:flutter/material.dart';

void main() => runApp(const TradingMasteryApp());

class TradingMasteryApp extends StatelessWidget {
  const TradingMasteryApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'إحتراف التداول من الصفر الى الاحترف',
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          fontFamily: 'Arial',
          scaffoldBackgroundColor: const Color(0xFF090B0D),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber, brightness: Brightness.dark),
        ),
        home: const HomePage(),
      );
}

enum VisualType { candle, uptrend, downtrend, sideways, levels, doublePattern, rectangle, headShoulders, triangles, risk, psychology, timeframes }

class QuizQuestion {
  final String q;
  final List<String> a;
  final int correct;
  const QuizQuestion(this.q, this.a, this.correct);
}

class Lesson {
  final int number;
  final String title;
  final String summary;
  final VisualType visual;
  final List<String> points;
  final List<String> steps;
  final List<QuizQuestion> quiz;
  const Lesson(this.number, this.title, this.summary, this.visual, this.points, this.steps, this.quiz);
}

const lessons = <Lesson>[
  Lesson(1, 'أساسيات الرسم البياني', 'الشموع وOHLC والقمم والقيعان والاتجاهات الثلاثة.', VisualType.candle, [
    'التحليل الفني يقرأ حركة السعر السابقة لمحاولة فهم الحركة القادمة.',
    'الشمعة تتكون من الافتتاح والإغلاق وأعلى سعر وأدنى سعر (OHLC).',
    'الترند الصاعد يتكون من قمم أعلى وقيعان أعلى، والهابط من قمم أدنى وقيعان أدنى.',
    'الاتجاه العرضي لا يحقق تسلسلاً واضحاً صاعداً أو هابطاً.',
    'High وLow هما أقصى نقطتي حركة، بينما Open وClose يحددان جسم الشمعة.',
    'لا توجد استراتيجية تضمن النجاح دائماً؛ الهدف التعلم وتقليل الخسائر غير الضرورية.',
  ], ['افهم OHLC', 'تعلم جسم الشمعة والظلال', 'حدد القمم والقيعان', 'حدد الاتجاه'], [
    QuizQuestion('ما الذي يحدد جسم الشمعة؟', ['High وLow', 'Open وClose', 'الظلال'], 1),
    QuizQuestion('ما تسلسل الاتجاه الصاعد؟', ['HH + HL', 'LH + LL', 'قمم متساوية دائماً'], 0),
  ]),
  Lesson(2, 'خريطة الطريق والأسواق', 'منهج تدريجي قبل الاستراتيجيات المتقدمة والمال الحقيقي.', VisualType.timeframes, [
    'التداول يشمل الفوركس والأسهم والعملات الرقمية والسلع.',
    'المحاضر يشرح البدء بالمدرسة الكلاسيكية قبل المدارس المتقدمة.',
    'إدارة رأس المال والمخاطر والنفسية واختيار الوسيط مراحل أساسية لاحقة.',
    'المحاضر يحذر من منصات الخيارات الثنائية ضمن موقفه التعليمي منها.',
    'TradingView هو الأداة التي طلب المحاضر البدء بها لقراءة الرسوم والأسعار.',
    'لا تتعجل اختيار وسيط أو إيداع أموال قبل بناء الأساس المطلوب.',
  ], ['الرسم البياني', 'الاتجاه والدعم والمقاومة', 'النماذج', 'المخاطر', 'النفسية', 'الوسيط والأدوات'], [
    QuizQuestion('ما الأداة التي طُلب البدء بها لقراءة الشارت؟', ['TradingView', 'منصة عشوائية', 'خدمة إشارات'], 0),
    QuizQuestion('هل توجد مدرسة واحدة هي الأفضل للجميع؟', ['نعم', 'لا، توجد مدارس متعددة', 'فقط مدرسة واحدة رسمية'], 1),
  ]),
  Lesson(3, 'الاتجاهات والدعم والمقاومة', 'حدد الاتجاه أولاً ثم مناطق الدعم والمقاومة وتبادل الأدوار.', VisualType.levels, [
    'قبل تحليل أي رسم اسأل: هل الاتجاه صاعد أم هابط أم عرضي؟',
    'في الاتجاه الصاعد نبحث عن قمم وقيعان أعلى؛ وفي الهابط قمم وقيعان أدنى.',
    'الدعم منطقة يظهر فيها قاعان أو أكثر عند مستوى متقارب وفق تعريف المحاضرة.',
    'المقاومة منطقة تظهر فيها قمتان أو أكثر عند مستوى متقارب.',
    'الدعم المكسور قد يتحول إلى مقاومة، والمقاومة المكسورة قد تتحول إلى دعم.',
    'إذا كان الرسم غير واضح أو عرضياً، المحاضر يفضل عدم التداول حتى يظهر اتجاه أوضح.',
    'الشراء والبيع هنا للتعليم فقط؛ لا توجد نقطة دخول أو نسبة نجاح مضمونة.',
  ], ['السياق العام', 'HH/HL أو LH/LL', 'مناطق الدعم', 'مناطق المقاومة', 'راقب الكسر وإعادة الاختبار'], [
    QuizQuestion('ماذا قد تصبح المقاومة بعد كسرها صعوداً؟', ['دعماً', 'تختفي دائماً', 'قاعاً فورياً'], 0),
    QuizQuestion('ما الخيار عند رسم غير واضح؟', ['عدم التخمين', 'مضاعفة الحجم', 'اختيار اتجاه عشوائي'], 0),
  ]),
  Lesson(4, 'Double Top وDouble Bottom', 'نماذج ثنائية مرتبطة بالاتجاه السابق والمستوى الفاصل.', VisualType.doublePattern, [
    'Double Bottom نموذج انعكاسي بعد اتجاه هابط، وDouble Top بعد اتجاه صاعد وفق شرح المحاضر.',
    'لا يكفي تشابه الشكل؛ يجب النظر إلى الاتجاه السابق والسياق.',
    'كسر المستوى الفاصل في النموذج هو إشارة تعليمية وفق الشرح، وليس ضماناً.',
    'قبل الصفقة يجب معرفة الدخول والهدف ووقف الخسارة وحجم الصفقة.',
    'لا تحول المثال التعليمي إلى توصية شخصية.',
  ], ['حدد الاتجاه السابق', 'ابحث عن القمتين أو القاعين', 'حدد المستوى الفاصل', 'انتظر التأكيد', 'راجع المخاطرة'], [
    QuizQuestion('Double Top يرتبط في الشرح بأي سياق؟', ['بعد اتجاه صاعد', 'بعد اتجاه هابط فقط', 'دون سياق'], 0),
    QuizQuestion('هل النموذج يضمن نجاح الصفقة؟', ['نعم', 'لا', 'فقط في الذهب'], 1),
  ]),
  Lesson(5, 'Rectangle وTriple Top/Bottom والرأس والكتفين', 'النماذج الانعكاسية والاستمرارية وخط العنق.', VisualType.headShoulders, [
    'Rectangle يتكون من قمتين وقاعين عند مستويات متقاربة تقريباً ضمن سياق الاتجاه السابق.',
    'Triple Top انعكاسي هابط بثلاث قمم تقريباً، وTriple Bottom انعكاسي صاعد بثلاثة قيعان تقريباً.',
    'Head & Shoulders نموذج انعكاسي هابط، وInverse Head & Shoulders انعكاسي صاعد.',
    'في الرأس والكتفين يرتبط التفعيل بكسر خط العنق وفق شرح المحاضر.',
    'الأهداف ووقف الخسارة مرتبطة ببنية النموذج في شرح المحاضر ولا توجد نتيجة مضمونة.',
    'لا تجبر الرسم على نموذج غير واضح.',
  ], ['حدد السياق', 'حدد القمم والقيعان الرئيسية', 'ارسم خط العنق أو حدود النموذج', 'انتظر الكسر', 'راقب الفشل أو إعادة الاختبار'], [
    QuizQuestion('ما الدور التعليمي لخط العنق؟', ['مستوى بنيوي مهم', 'خط زخرفي', 'مؤشر حجم'], 0),
    QuizQuestion('Triple Bottom يوصف بأنه؟', ['انعكاسي صاعد', 'استمراري هابط', 'عرضي دائماً'], 0),
  ]),
  Lesson(6, 'المثلثات: الاستمرارية', 'Ascending وDescending Triangle داخل الاتجاه.', VisualType.triangles, [
    'Ascending Triangle بعد اتجاه صاعد: قمم متقاربة وقيعان صاعدة، والكسر العلوي هو التأكيد الذي شرحه المحاضر.',
    'Descending Triangle بعد اتجاه هابط: قيعان متقاربة وقمم هابطة، والكسر السفلي هو التأكيد الذي شرحه المحاضر.',
    'الهدف النظري في شرح المحاضر يقاس بارتفاع المثلث ويُسقط في اتجاه الكسر.',
    'يمكن أن يحدث Retest وتبادل للأدوار بعد الكسر.',
    'لا تفرض شكل المثلث على حركات صغيرة لا تطابق النموذج.',
  ], ['تأكد من الاتجاه', 'اربط النقاط الرئيسية', 'حدد الكسر', 'راقب Retest إن ظهر'], [
    QuizQuestion('Ascending Triangle الاستمراري يأتي بعد؟', ['اتجاه صاعد', 'اتجاه هابط فقط', 'عرضي فقط'], 0),
    QuizQuestion('هل Retest مضمون؟', ['نعم', 'لا، يمكن أن يحدث', 'مرتان دائماً'], 1),
  ]),
  Lesson(7, 'المثلثات الانعكاسية والمتماثل', 'السياق والكسر أهم من مجرد شكل المثلث.', VisualType.triangles, [
    'Ascending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه هابط وفق شرح المحاضر.',
    'Descending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه صاعد وفق شرح المحاضر.',
    'Symmetrical Triangle له ضلع علوي هابط وضلع سفلي صاعد، ويمكن تفسيره استمرارياً أو انعكاسياً حسب السياق والكسر.',
    'قبل التأكيد توجد منطقة لا ينبغي فيها التخمين؛ الانتظار قرار صحيح.',
    'كل صفقة قد تنتهي بربح أو خسارة، والهدف الأساسي هو تقليل الخسارة الكبيرة.',
    'التدريب التاريخي على TradingView يساعد على اختبار الفكرة بدلاً من افتراض نجاحها.',
  ], ['حدد السياق', 'عد النقاط الرئيسية', 'حدد منطقة التأكيد', 'سجل النتيجة تاريخياً'], [
    QuizQuestion('Symmetrical Triangle قد يكون؟', ['استمرارياً أو انعكاسياً حسب السياق', 'انعكاسياً فقط', 'استمرارياً فقط'], 0),
    QuizQuestion('قبل التأكيد؟', ['انتظر ولا تخمّن', 'ادخل عشوائياً', 'ضاعف اللوت'], 0),
  ]),
  Lesson(8, 'المراجعة الشاملة والتطبيق', 'حوّل الدروس إلى عملية قراءة منظمة للشارت.', VisualType.uptrend, [
    'ابدأ بتحديد الاتجاه، ثم القمم والقيعان، ثم الدعم والمقاومة، ثم ابحث عن نموذج واضح إن وجد.',
    'لا توجد قاعدة واحدة تعمل 100% على كل الأسواق أو كل الأوقات.',
    'النماذج تشمل Double Top/Bottom وTriple Top/Bottom وRectangle والرأس والكتفين والمثلثات.',
    'لا تعد كل حركة صغيرة نقطة رئيسية في النموذج؛ استخدم النقاط التي تطابق بنية النموذج.',
    'الكسر قد يفشل، وإعادة الاختبار وتبادل الأدوار مهمان في قراءة الرسم.',
    'إذا لم يكن الرسم واضحاً، عدم التداول خيار صحيح ضمن المنهج التعليمي.',
  ], ['Trend', 'Highs/Lows', 'Support/Resistance', 'Pattern', 'Break/Retest', 'مراجعة النتيجة'], [
    QuizQuestion('ما أول خطوة في القراءة؟', ['تحديد الاتجاه', 'حساب الربح', 'اختيار وسيط'], 0),
    QuizQuestion('هل كل حركة صغيرة نقطة رئيسية؟', ['نعم', 'لا', 'فقط في المثلث'], 1),
  ]),
  Lesson(9, 'إدارة المخاطر والبيب واللوت', 'احمِ رأس المال: الوقف والحجم والبيب واللوت ونسبة المخاطرة.', VisualType.risk, [
    'إدارة المخاطر هدفها حماية رأس المال وتقليل احتمال الخسارة الكبيرة.',
    'مثال المحاضر: رصيد 100000 ومخاطرة 2% تعني حد خسارة نظرياً قدره 2000 في الصفقة.',
    'عدد الوحدات أو الأسهم = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند وقف الخسارة.',
    'حدد التحليل ووقف الخسارة أولاً، ثم حدد المخاطرة، ثم احسب حجم الصفقة.',
    'البيب وحدة شائعة لوصف حركة السعر في الفوركس، وطريقة عرض النقاط/البيب تختلف حسب الأداة والوسيط.',
    'اللوت يعبّر عن حجم العقد، وزيادته تزيد قيمة الربح والخسارة لكل حركة سعرية.',
    'أمثلة البيب واللوت تعليمية وليست قيماً ثابتة لكل الأدوات.',
  ], ['حدد إبطال الفكرة', 'حدد الخسارة المقبولة', 'احسب حجم الصفقة', 'راجع R:R', 'لا تغير الخطة عاطفياً'], [
    QuizQuestion('ما الترتيب الصحيح؟', ['الحجم ثم الوقف', 'التحليل والوقف ثم المخاطرة ثم الحجم', 'الحجم فقط'], 1),
    QuizQuestion('1:2 في المصدر تعني؟', ['مثال مخاطرة/عائد', 'ضمان ربح', 'نسبة نجاح'], 0),
  ]),
  Lesson(10, 'أخطاء المتداولين والانضباط', 'الخطة، المخاطرة، الأخبار، سجل التداول والانضباط اليومي.', VisualType.psychology, [
    'من الأخطاء: البحث عن الثراء السريع، توقع الفوز دائماً، نسخ الإشارات، والتداول بلا خطة.',
    'المخاطرة في كل صفقة ينبغي أن تُبنى على نسبة أو مبلغ محدد، وليس على لوت ثابت.',
    'لا تزيل أو تحرك وقف الخسارة فقط لتجنب الاعتراف بالخسارة.',
    'الخطة تحدد الفريم، شروط الدخول، الدعم والمقاومة، الخروج، ومتى يُمنع التداول.',
    'لا تنتقل بين استراتيجيات كثيرة دون اختبارها تاريخياً أو على حساب تجريبي.',
    'الأخبار القوية قد تسبب حركة عنيفة؛ المحاضر يحذر المبتدئ منها دون استراتيجية مختبرة.',
    'سجل الأداة والسبب والوقف والهدف والنتيجة، وراجع الأخطاء المتكررة.',
    'لا تتداول وأنت متعب أو غاضب أو غير مركز أو عندما يكون الاتصال غير مستقر.',
  ], ['اكتب خطة', 'ثبت المخاطرة', 'اختبر', 'سجل', 'راجع أسبوعياً', 'صحح الخطأ المتكرر'], [
    QuizQuestion('بعد عدة خسائر قليلة، الأفضل؟', ['تضاعف اللوت', 'تراجع البيانات قبل الحكم', 'تغير كل النظام'], 1),
    QuizQuestion('متى يمنع التداول ضمن أمثلة المصدر؟', ['عند الغضب أو التعب', 'عند وجود خطة', 'عند تسجيل الصفقة'], 0),
  ]),
  Lesson(11, 'الخوف والطمع والانتقام والتطبيق', 'السيطرة على السلوك النفسي والتدريب التاريخي على الشارت.', VisualType.psychology, [
    'الطمع قد يظهر بإلغاء الهدف المخطط أو الإفراط في التداول بعد الربح.',
    'الخوف قد يمنع تنفيذ خطة مختبرة أو يؤدي إلى إغلاق الصفقة مبكراً.',
    'التداول الانتقامي يحدث عندما يزيد المتداول المخاطرة بعد الخسارة لاستعادتها سريعاً.',
    'لا تجعل صفقة واحدة تتحكم في مزاجك؛ اعتبرها جزءاً من سلسلة من الصفقات.',
    'الإغلاق الجزئي ونقل الوقف إلى نقطة التعادل وردا في المصدر كمثال تعليمي، وليس ضماناً.',
    'الكسر الكاذب ممكن؛ إغلاق الشمعة على نفس الفريم قد يكون تأكيداً تعليمياً لكنه ليس معصوماً.',
    'قارن تقدمك بنفسك، وكرر التدريب على الشارت بدلاً من مطاردة كل حركة.',
  ], ['خطط للخروج', 'لا تطارد الحركة', 'لا تنتقم بعد الخسارة', 'راجع سلوكك بعد الصفقة'], [
    QuizQuestion('ما مثال التداول الانتقامي؟', ['زيادة الحجم بعد الخسارة', 'تسجيل الصفقة', 'الانتظار'], 0),
    QuizQuestion('ما القاعدة النفسية الواضحة؟', ['كل حركة يجب تداولها', 'مش كل حركة في السوق لازم تركبها', 'لا توجد خسائر'], 1),
  ]),
  Lesson(12, 'الفريمات والترابط بين HTF وLTF', 'الفريم الأكبر يحدد الاتجاه والمنطقة، والأصغر يساعد في التأكيد.', VisualType.timeframes, [
    'كل شمعة تمثل حركة السعر خلال الفترة الزمنية المختارة: دقيقة أو ساعة أو يوم وغيرها.',
    'HTF وLTF مفهومان نسبيان؛ أمثلة المحاضر تشمل 1D→1H و4H→15m و1H→5m.',
    'ابدأ بالفريم الأكبر وحدد الاتجاه العام قبل النزول للفريم الأصغر.',
    'حدد منطقة مهمة على HTF ثم انتظر وصول السعر إليها قبل الانتقال إلى LTF.',
    'على LTF انتظر سلوكاً أو تأكيداً يتوافق مع فكرة HTF بدلاً من الدخول بمجرد لمس المنطقة.',
    'إذا كان HTF صاعداً وLTF ما زال هابطاً، فالمنهج يفضل الانتظار حتى يحدث توافق أو تأكيد.',
    'لا تحتاج إلى فتح عدد كبير من الفريمات؛ كثرتها قد تسبب التشوش.',
    'استخدام أكثر من فريم ليس إلزامياً لكل متداول إذا كانت طريقته واضحة على فريم واحد.',
    'Trailing Stop ورد كمثال تعليمي لتحريك الوقف مع تقدم الصفقة، وليس ضماناً للربح.',
  ], ['HTF: الاتجاه', 'HTF: المنطقة', 'انتظر وصول السعر', 'LTF: التأكيد', 'حدد الوقف', 'حدد الهدف وراقب'], [
    QuizQuestion('ما الفكرة الأساسية؟', ['HTF اتجاه ومكان، LTF تأكيد', 'LTF يلغي HTF', 'فتح كل الفريمات'], 0),
    QuizQuestion('هل لمس منطقة HTF وحده كافٍ في المثال؟', ['نعم', 'لا، انتظر تأكيد LTF', 'فقط في الذهب'], 1),
  ]),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tab = 0;
  final Set<int> completed = {};

  @override
  Widget build(BuildContext context) {
    final pages = [_home(), _allLessons(), _roadmap(), _about()];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(child: pages[tab]),
        bottomNavigationBar: NavigationBar(
          selectedIndex: tab,
          onDestinationSelected: (i) => setState(() => tab = i),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'الرئيسية'),
            NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book), label: 'الدروس'),
            NavigationDestination(icon: Icon(Icons.route_outlined), selectedIcon: Icon(Icons.route), label: 'المسار'),
            NavigationDestination(icon: Icon(Icons.info_outline), selectedIcon: Icon(Icons.info), label: 'المنهج'),
          ],
        ),
      ),
    );
  }

  Widget _home() {
    final p = completed.length / lessons.length;
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(child: Padding(padding: const EdgeInsets.fromLTRB(20, 18, 20, 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Container(width: 52, height: 52, decoration: BoxDecoration(color: Colors.amber.withOpacity(.12), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.amber.withOpacity(.22))), child: const Icon(Icons.candlestick_chart, color: Colors.amber, size: 30)),
          const SizedBox(width: 13),
          const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('إحتراف التداول', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)), Text('من الصفر الى الاحترف', style: TextStyle(color: Colors.white54))])),
        ]),
        const SizedBox(height: 20),
        Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(borderRadius: BorderRadius.circular(27), gradient: LinearGradient(colors: [Colors.amber.withOpacity(.18), const Color(0xFF13171A)]), border: Border.all(color: Colors.amber.withOpacity(.20))), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('ابنِ عين المتداول قبل أن تبني صفقة', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          const Text('من الشمعة إلى الاتجاه، ثم النماذج، المخاطر، النفسية والفريمات — خطوة بخطوة.', style: TextStyle(color: Colors.white70, height: 1.5)),
          const SizedBox(height: 17),
          Row(children: [Expanded(child: ClipRRect(borderRadius: BorderRadius.circular(8), child: LinearProgressIndicator(value: p, minHeight: 8))), const SizedBox(width: 12), Text('${completed.length}/${lessons.length}', style: const TextStyle(fontWeight: FontWeight.w800))]),
        ])),
        const SizedBox(height: 15),
        Row(children: [_stat('12', 'محاضرة', Icons.menu_book), const SizedBox(width: 9), _stat('OHLC', 'شموع', Icons.candlestick_chart), const SizedBox(width: 9), _stat('HTF/LTF', 'فريمات', Icons.timeline)]),
        const SizedBox(height: 22),
        const Text('المنهج بالترتيب', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900)),
        const SizedBox(height: 5),
      ]))),
      SliverList.builder(itemCount: lessons.length, itemBuilder: (_, i) => _lessonCard(lessons[i])),
      const SliverToBoxAdapter(child: SizedBox(height: 20)),
    ]);
  }

  Widget _stat(String big, String label, IconData icon) => Expanded(child: Container(padding: const EdgeInsets.symmetric(vertical: 13), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(17), border: Border.all(color: Colors.white10)), child: Column(children: [Icon(icon, color: Colors.amber, size: 20), const SizedBox(height: 5), Text(big, style: const TextStyle(fontWeight: FontWeight.w900)), Text(label, style: const TextStyle(color: Colors.white45, fontSize: 11))])));

  Widget _lessonCard(Lesson l) {
    final done = completed.contains(l.number);
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), child: InkWell(borderRadius: BorderRadius.circular(20), onTap: () => _open(l), child: Container(padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(20), border: Border.all(color: done ? Colors.amber.withOpacity(.30) : Colors.white10)), child: Row(children: [
      Container(width: 45, height: 45, alignment: Alignment.center, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber.withOpacity(.10)), child: Text('${l.number}', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.w900))),
      const SizedBox(width: 13),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('المحاضرة ${l.number} — ${l.title}', style: const TextStyle(fontWeight: FontWeight.w800)), const SizedBox(height: 4), Text(l.summary, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white54, fontSize: 12, height: 1.4))])),
      const SizedBox(width: 8),
      Icon(done ? Icons.check_circle : Icons.arrow_back_ios_new, size: 18, color: done ? Colors.amber : Colors.white30),
    ]))));
  }

  Widget _allLessons() => ListView(padding: const EdgeInsets.all(20), children: [const Text('كل المحاضرات', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900)), const SizedBox(height: 5), const Text('اتبع الترتيب؛ كل مرحلة تبني على التي قبلها.', style: TextStyle(color: Colors.white54)), const SizedBox(height: 15), ...lessons.map(_lessonCard)]);

  Widget _roadmap() => ListView(padding: const EdgeInsets.all(20), children: [
    const Text('المسار الحقيقي للتعلم', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900)),
    const SizedBox(height: 7),
    const Text('ترتيب عملي مستخلص من المحاضرات المتوفرة في المشروع، بدون اختراع دروس غير موجودة في المصادر.', style: TextStyle(color: Colors.white55, height: 1.5)),
    const SizedBox(height: 18),
    ...[
      ['01', 'الرسم والشموع', 'OHLC + القمم والقيعان'],
      ['02', 'الاتجاه', 'صاعد / هابط / عرضي'],
      ['03', 'المناطق', 'الدعم والمقاومة + تبادل الأدوار'],
      ['04', 'النماذج', 'Double / Triple / Rectangle / H&S / Triangles'],
      ['05', 'التطبيق', 'قراءة الشارت تاريخياً'],
      ['06', 'إدارة المخاطر', 'الوقف + الحجم + البيب + اللوت'],
      ['07', 'الانضباط', 'الخطة + السجل + منع التداول العاطفي'],
      ['08', 'الفريمات', 'HTF → Zone → LTF → Confirmation'],
    ].map((x) => Container(margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(18), border: Border.all(color: Colors.white10)), child: Row(children: [Text(x[0], style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.w900, fontSize: 18)), const SizedBox(width: 15), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(x[1], style: const TextStyle(fontWeight: FontWeight.w800)), Text(x[2], style: const TextStyle(color: Colors.white45, fontSize: 12))]))]))),
    const SizedBox(height: 7),
    _notice('المحاضرتان 13 و14 لهما مصادر في قائمة المشروع، لكن لا نضيف شرحاً تفصيلياً قبل توفر نصهما حتى لا ننسب للمصدر معلومات لم تُتحقق.'),
  ]);

  Widget _about() => ListView(padding: const EdgeInsets.all(20), children: [
    const Text('عن المنهج', style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900)),
    const SizedBox(height: 15),
    _notice('التطبيق تعليمي وليس خدمة توصيات شراء أو بيع. لا توجد نسبة نجاح مضمونة، والأمثلة الرقمية من الشرح أمثلة تعليمية وليست توصيات شخصية.'),
    const SizedBox(height: 12),
    _feature(Icons.candlestick_chart, 'رسومات داخلية', 'شموع، اتجاهات، مستويات، نماذج، مخاطر وفريمات مرسومة داخل التطبيق.'),
    _feature(Icons.quiz_outlined, 'اختبار بعد الدرس', 'أسئلة قصيرة للتأكد من فهم المفهوم قبل الانتقال.'),
    _feature(Icons.route, 'ترتيب تدريجي', 'لا نقفز إلى SMC أو مفاهيم متقدمة قبل الأساس الموجود في المنهج.'),
    _feature(Icons.history, 'تدريب تاريخي', 'المحاضرات تشجع على الرجوع بالشارت واختبار الفكرة بدلاً من افتراض نجاحها.'),
  ]);

  Widget _feature(IconData icon, String title, String text) => Container(margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(18)), child: Row(children: [Icon(icon, color: Colors.amber), const SizedBox(width: 14), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(fontWeight: FontWeight.w800)), const SizedBox(height: 4), Text(text, style: const TextStyle(color: Colors.white55, height: 1.4))]))]));

  Widget _notice(String text) => Container(padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: Colors.amber.withOpacity(.06), borderRadius: BorderRadius.circular(17), border: Border.all(color: Colors.amber.withOpacity(.18))), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [const Icon(Icons.info_outline, color: Colors.amber), const SizedBox(width: 11), Expanded(child: Text(text, style: const TextStyle(color: Colors.white65, height: 1.5)))]));

  void _open(Lesson l) async {
    final result = await Navigator.push<bool>(context, MaterialPageRoute(builder: (_) => LessonPage(lesson: l, doneInitially: completed.contains(l.number))));
    if (result == true) setState(() => completed.add(l.number));
  }
}

class LessonPage extends StatefulWidget {
  final Lesson lesson;
  final bool doneInitially;
  const LessonPage({super.key, required this.lesson, required this.doneInitially});
  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  bool done = false;
  @override
  void initState() { super.initState(); done = widget.doneInitially; }
  @override
  Widget build(BuildContext context) {
    final l = widget.lesson;
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(appBar: AppBar(title: Text('المحاضرة ${l.number}'), centerTitle: true), body: ListView(padding: const EdgeInsets.fromLTRB(18, 4, 18, 30), children: [
      Text(l.title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
      const SizedBox(height: 7),
      Text(l.summary, style: const TextStyle(color: Colors.white60, height: 1.5, fontSize: 15)),
      const SizedBox(height: 16),
      ChartCard(title: _visualTitle(l.visual), type: l.visual),
      const SizedBox(height: 18),
      const Text('شرح الدرس', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
      const SizedBox(height: 9),
      ...l.points.asMap().entries.map((e) => _point(e.key + 1, e.value)),
      const SizedBox(height: 12),
      const Text('طريقة التطبيق', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
      const SizedBox(height: 9),
      ...l.steps.asMap().entries.map((e) => _step(e.key + 1, e.value)),
      const SizedBox(height: 12),
      const Text('اختبر نفسك', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
      const SizedBox(height: 9),
      ...l.quiz.map((q) => QuizCard(q: q)),
      const SizedBox(height: 6),
      Container(padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: Colors.amber.withOpacity(.06), borderRadius: BorderRadius.circular(17), border: Border.all(color: Colors.amber.withOpacity(.16))), child: const Text('ملاحظة: الأمثلة التعليمية لا تعني ضمان النتيجة. إذا لم يذكر المصدر قاعدة أو رقماً، لا نضيفه على أنه من المصدر.', style: TextStyle(color: Colors.white60, height: 1.5))),
      const SizedBox(height: 16),
      FilledButton.icon(onPressed: () { setState(() => done = true); Navigator.pop(context, true); }, icon: Icon(done ? Icons.check_circle : Icons.done_all), label: Text(done ? 'المحاضرة مكتملة' : 'إنهاء المحاضرة')),
    ])));
  }

  String _visualTitle(VisualType t) {
    switch (t) {
      case VisualType.candle: return 'شمعة OHLC — Open / High / Low / Close';
      case VisualType.uptrend: return 'الاتجاه الصاعد — HH + HL';
      case VisualType.downtrend: return 'الاتجاه الهابط — LH + LL';
      case VisualType.sideways: return 'الاتجاه العرضي — نطاق';
      case VisualType.levels: return 'الدعم والمقاومة وتبادل الأدوار';
      case VisualType.doublePattern: return 'Double Top / Double Bottom';
      case VisualType.rectangle: return 'Rectangle';
      case VisualType.headShoulders: return 'Head & Shoulders / Inverse';
      case VisualType.triangles: return 'Ascending / Descending / Symmetrical';
      case VisualType.risk: return 'المخاطرة + الوقف + حجم الصفقة';
      case VisualType.psychology: return 'الخوف والطمع والانتقام';
      case VisualType.timeframes: return 'HTF → Zone → LTF → Confirmation';
    }
  }

  Widget _point(int n, String text) => Container(margin: const EdgeInsets.only(bottom: 9), padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(17), border: Border.all(color: Colors.white10)), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 29, height: 29, alignment: Alignment.center, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber.withOpacity(.10)), child: Text('$n', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.w900))), const SizedBox(width: 11), Expanded(child: Text(text, style: const TextStyle(color: Colors.white72, height: 1.5)))]));
  Widget _step(int n, String text) => Container(margin: const EdgeInsets.only(bottom: 7), padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14), decoration: BoxDecoration(color: const Color(0xFF0F1214), borderRadius: BorderRadius.circular(14)), child: Row(children: [Text('$n', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.w900)), const SizedBox(width: 12), Expanded(child: Text(text, style: const TextStyle(color: Colors.white65)))]));
}

class QuizCard extends StatefulWidget {
  final QuizQuestion q;
  const QuizCard({super.key, required this.q});
  @override
  State<QuizCard> createState() => _QuizCardState();
}
class _QuizCardState extends State<QuizCard> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    final q = widget.q;
    return Container(margin: const EdgeInsets.only(bottom: 11), padding: const EdgeInsets.all(15), decoration: BoxDecoration(color: const Color(0xFF131619), borderRadius: BorderRadius.circular(18), border: Border.all(color: Colors.white10)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(q.q, style: const TextStyle(fontWeight: FontWeight.w800)), const SizedBox(height: 9),
      ...q.a.asMap().entries.map((e) { final i=e.key; final chosen=selected==i; final right=selected!=null && i==q.correct; return Padding(padding: const EdgeInsets.only(bottom: 6), child: OutlinedButton(onPressed: selected==null ? () => setState(() => selected=i) : null, style: OutlinedButton.styleFrom(alignment: Alignment.centerRight, padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12), side: BorderSide(color: right ? Colors.amber : chosen ? Colors.white38 : Colors.white10)), child: Row(children: [Icon(right ? Icons.check_circle : chosen ? Icons.radio_button_checked : Icons.radio_button_unchecked, size: 18, color: right ? Colors.amber : Colors.white38), const SizedBox(width: 8), Expanded(child: Text(e.value))]))); }),
      if (selected!=null) Text(selected==q.correct ? 'إجابة صحيحة ✓' : 'الإجابة الصحيحة: ${q.a[q.correct]}', style: TextStyle(color: selected==q.correct ? Colors.amber : Colors.white55, fontWeight: FontWeight.w800)),
    ]));
  }
}

class ChartCard extends StatelessWidget {
  final String title;
  final VisualType type;
  const ChartCard({super.key, required this.title, required this.type});
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.fromLTRB(11, 11, 11, 13), decoration: BoxDecoration(color: const Color(0xFF0D1012), borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.amber.withOpacity(.18)), boxShadow: [BoxShadow(color: Colors.black.withOpacity(.30), blurRadius: 22, offset: const Offset(0, 8))]), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), child: Text(title, style: const TextStyle(fontWeight: FontWeight.w800, color: Colors.white90)),), const SizedBox(height: 6), SizedBox(height: 265, child: CustomPaint(painter: TradingPainter(type), child: const SizedBox.expand()))]));
}

class TradingPainter extends CustomPainter {
  final VisualType type;
  TradingPainter(this.type);
  final Color grid = const Color(0xFF24282C);
  final Color green = const Color(0xFF31D39A);
  final Color red = const Color(0xFFFF5D6C);
  final Color gold = const Color(0xFFFFC107);
  final Color blue = const Color(0xFF64B5F6);

  @override
  void paint(Canvas c, Size s) {
    c.drawRect(Offset.zero & s, Paint()..color=const Color(0xFF0A0D0F));
    final g=Paint()..color=grid..strokeWidth=1;
    for(double x=0;x<s.width;x+=40)c.drawLine(Offset(x,0),Offset(x,s.height),g);
    for(double y=0;y<s.height;y+=32)c.drawLine(Offset(0,y),Offset(s.width,y),g);
    switch(type){
      case VisualType.candle: _candle(c,s); break;
      case VisualType.uptrend: _trend(c,s,true); break;
      case VisualType.downtrend: _trend(c,s,false); break;
      case VisualType.sideways: _side(c,s); break;
      case VisualType.levels: _levels(c,s); break;
      case VisualType.doublePattern: _double(c,s); break;
      case VisualType.rectangle: _rect(c,s); break;
      case VisualType.headShoulders: _hs(c,s); break;
      case VisualType.triangles: _tri(c,s); break;
      case VisualType.risk: _risk(c,s); break;
      case VisualType.psychology: _psych(c,s); break;
      case VisualType.timeframes: _frames(c,s); break;
    }
  }

  void _candle(Canvas c,Size s){
    final xs=[s.width*.16,s.width*.32,s.width*.48,s.width*.64,s.width*.80];
    final vals=[[150,90,55,180],[120,160,75,190],[165,100,80,205],[125,80,45,175],[105,135,70,190]];
    for(int i=0;i<xs.length;i++){final v=vals[i];final col=v[0]>v[1]?red:green;final p=Paint()..color=col..strokeWidth=3;c.drawLine(Offset(xs[i],v[2]),Offset(xs[i],v[3]),p);final top=v[0]<v[1]?v[0]:v[1];final bot=v[0]>v[1]?v[0]:v[1];c.drawRRect(RRect.fromRectAndRadius(Rect.fromLTRB(xs[i]-13,top,xs[i]+13,bot),const Radius.circular(4)),Paint()..color=col);}
    _label(c,'HIGH',Offset(s.width*.73,18),gold);_label(c,'LOW',Offset(s.width*.73,s.height-30),gold);_label(c,'OPEN',Offset(8,120),blue);_label(c,'CLOSE',Offset(8,165),green);_label(c,'OHLC',Offset(s.width*.43,18),Colors.white70);
  }

  void _trend(Canvas c,Size s,bool rise){final p=rise?[Offset(25,210),Offset(95,155),Offset(155,180),Offset(225,105),Offset(290,135),Offset(375,55),Offset(440,82)]:[Offset(25,55),Offset(95,110),Offset(155,85),Offset(225,160),Offset(290,135),Offset(375,215),Offset(440,188)];_poly(c,p,rise?green:red,4);for(int i=0;i<p.length;i++)_dot(c,p[i],gold);_label(c,rise?'HH':'LH',Offset(p[1].dx-12,p[1].dy-27));_label(c,rise?'HL':'LL',Offset(p[2].dx-12,p[2].dy+8));_label(c,rise?'HH':'LH',Offset(p[3].dx-12,p[3].dy-27));_label(c,rise?'HL':'LL',Offset(p[4].dx-12,p[4].dy+8));_label(c,rise?'Higher Highs + Higher Lows':'Lower Highs + Lower Lows',Offset(18,235),Colors.white70);}

  void _side(Canvas c,Size s){final top=70.0,bottom=200.0;_line(c,Offset(15,top),Offset(s.width-15,top),red,2);_line(c,Offset(15,bottom),Offset(s.width-15,bottom),green,2);final p=[Offset(20,185),Offset(65,80),Offset(115,165),Offset(165,95),Offset(220,185),Offset(270,75),Offset(330,170),Offset(390,88),Offset(445,160)];_poly(c,p,Colors.white70,3);_label(c,'مقاومة',Offset(18,43),red);_label(c,'دعم',Offset(18,210),green);_label(c,'لا يوجد HH/HL أو LH/LL واضح',Offset(105,235),Colors.white70);}

  void _levels(Canvas c,Size s){final r=75.0,b=205.0;_line(c,Offset(15,r),Offset(s.width-15,r),red,3);_line(c,Offset(15,b),Offset(s.width-15,b),green,3);final p=[Offset(20,190),Offset(70,82),Offset(120,175),Offset(175,92),Offset(230,182),Offset(285,78),Offset(340,190),Offset(395,38),Offset(445,70)];_poly(c,p,Colors.white75,3);_label(c,'مقاومة',Offset(20,47),red);_label(c,'دعم',Offset(20,212),green);_label(c,'كسر المقاومة → دعم محتمل',Offset(240,42),gold);}

  void _double(Canvas c,Size s){final p=[Offset(20,195),Offset(90,70),Offset(160,185),Offset(230,68),Offset(310,190),Offset(390,155),Offset(445,115)];_poly(c,p,Colors.white80,3);_line(c,Offset(65,150),Offset(285,150),gold,2);_label(c,'Double Top',Offset(170,22),gold);_label(c,'المستوى الفاصل',Offset(145,157),gold);_label(c,'بعد اتجاه صاعد',Offset(25,225),Colors.white60);}

  void _rect(Canvas c,Size s){final r=Rect.fromLTRB(55,70,s.width-55,205);c.drawRect(r,Paint()..style=PaintingStyle.stroke..color=gold..strokeWidth=2);final p=[Offset(20,190),Offset(70,75),Offset(125,185),Offset(180,82),Offset(240,190),Offset(300,78),Offset(355,185),Offset(410,75),Offset(455,25)];_poly(c,p,green,3);_label(c,'Rectangle',Offset(170,128),gold);_label(c,'كسر/استمرار',Offset(350,20),green);}

  void _hs(Canvas c,Size s){final p=[Offset(18,190),Offset(78,125),Offset(132,190),Offset(215,58),Offset(292,190),Offset(350,125),Offset(440,190)];_poly(c,p,Colors.white80,4);_line(c,Offset(70,188),Offset(360,188),gold,2);_label(c,'الكتف',Offset(55,100));_label(c,'الرأس',Offset(198,32),gold);_label(c,'الكتف',Offset(330,100));_label(c,'خط العنق',Offset(165,196),gold);_label(c,'Inverse = الشكل المعكوس',Offset(135,225),blue);}

  void _tri(Canvas c,Size s){_line(c,Offset(30,70),Offset(430,205),red,3);_line(c,Offset(30,205),Offset(430,70),green,3);_label(c,'Symmetrical Triangle',Offset(150,20),gold);_line(c,Offset(430,70),Offset(470,42),green,4);_line(c,Offset(430,205),Offset(470,232),red,4);_label(c,'منطقة الضغط',Offset(180,128),Colors.white70);_label(c,'الكسر + التأكيد',Offset(315,232),gold);}

  void _risk(Canvas c,Size s){_line(c,Offset(25,205),Offset(450,205),Colors.white30,2);_line(c,Offset(75,95),Offset(75,205),red,5);_line(c,Offset(75,95),Offset(350,95),red,3);_line(c,Offset(75,150),Offset(320,150),gold,3);_label(c,'وقف / حد الخسارة',Offset(125,158),gold);_label(c,'المبلغ المسموح بخسارته',Offset(115,72),red);_label(c,'احسب الحجم بعد تحديد الوقف والمخاطرة',Offset(65,220),Colors.white70);}

  void _psych(Canvas c,Size s){final p=[Offset(20,190),Offset(80,135),Offset(135,165),Offset(205,60),Offset(270,105),Offset(335,42),Offset(445,95)];_poly(c,p,Colors.white80,4);_dot(c,p[2],red);_dot(c,p[3],gold);_dot(c,p[5],red);_label(c,'خوف',Offset(55,195),red);_label(c,'طمع',Offset(190,28),gold);_label(c,'انتقام = زيادة المخاطرة',Offset(275,185),red);_label(c,'خطة + سجل + انضباط',Offset(150,225),green);}

  void _frames(Canvas c,Size s){_box(c,Rect.fromLTWH(25,25,s.width-50,52),blue,'HTF — الاتجاه + المنطقة');_box(c,Rect.fromLTWH(65,100,s.width-130,52),gold,'انتظر وصول السعر للمنطقة');_box(c,Rect.fromLTWH(105,175,s.width-210,52),green,'LTF — تأكيد');_line(c,Offset(s.width/2,77),Offset(s.width/2,100),Colors.white60,2);_line(c,Offset(s.width/2,152),Offset(s.width/2,175),Colors.white60,2);_label(c,'1D → 1H    |    4H → 15m    |    1H → 5m',Offset(45,225),Colors.white70);}

  void _box(Canvas c,Rect r,Color col,String text){c.drawRRect(RRect.fromRectAndRadius(r,const Radius.circular(13)),Paint()..color=col.withOpacity(.10));c.drawRRect(RRect.fromRectAndRadius(r,const Radius.circular(13)),Paint()..style=PaintingStyle.stroke..color=col..strokeWidth=2);_label(c,text,Offset(r.left+12,r.top+18),col);}
  void _poly(Canvas c,List<Offset> p,Color col,double w){final path=Path()..moveTo(p.first.dx,p.first.dy);for(final x in p.skip(1))path.lineTo(x.dx,x.dy);c.drawPath(path,Paint()..style=PaintingStyle.stroke..color=col..strokeWidth=w..strokeCap=StrokeCap.round..strokeJoin=StrokeJoin.round);}
  void _line(Canvas c,Offset a,Offset b,Color col,double w){c.drawLine(a,b,Paint()..color=col..strokeWidth=w);}
  void _dot(Canvas c,Offset p,Color col){c.drawCircle(p,5,Paint()..color=col);}
  void _label(Canvas c,String text,Offset p,[Color col=Colors.white70]){final tp=TextPainter(text:TextSpan(text:text,style:TextStyle(color:col,fontSize:12,fontWeight:FontWeight.w800)),textDirection:TextDirection.rtl)..layout(maxWidth:260);tp.paint(c,p);}
  @override
  bool shouldRepaint(covariant TradingPainter oldDelegate) => oldDelegate.type != type;
}
