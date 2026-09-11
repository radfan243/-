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
          colorSchemeSeed: Colors.amber,
          scaffoldBackgroundColor: const Color(0xFF0F0D09),
        ),
        home: const HomePage(),
      );
}

enum VisualType {
  candle,
  uptrend,
  downtrend,
  sideways,
  levels,
  doublePattern,
  rectangle,
  headShoulders,
  triangles,
  risk,
  psychology,
  timeframes,
}

class Lesson {
  final String title;
  final String summary;
  final List<String> points;
  final VisualType visual;
  const Lesson(this.title, this.summary, this.points, this.visual);
}

const lessons = <Lesson>[
  Lesson('المحاضرة 1 — أساسيات الرسم البياني', 'مدخل إلى التحليل الفني والشموع والقمم والقيعان والاتجاهات.', [
    'التحليل الفني يقرأ حركة السعر السابقة لمحاولة فهم الحركة القادمة.',
    'الشمعة تتكون من الافتتاح والإغلاق وأعلى سعر وأدنى سعر (OHLC).',
    'الترند الصاعد يتكون من قمم أعلى وقيعان أعلى، والهابط من قمم أدنى وقيعان أدنى.',
    'الاتجاه العرضي لا يحقق تسلسلاً واضحاً صاعداً أو هابطاً.',
    'لا توجد استراتيجية تضمن النجاح دائماً؛ الهدف التعلم وتقليل الخسائر غير الضرورية.',
  ], VisualType.candle),
  Lesson('المحاضرة 2 — خريطة الطريق والأسواق', 'بناء أساس منظم قبل الانتقال للاستراتيجيات المتقدمة.', [
    'التداول يشمل أسواقاً متعددة مثل الفوركس والأسهم والعملات الرقمية والسلع.',
    'المحاضر يشرح البدء بالمدرسة الكلاسيكية قبل المدارس المتقدمة.',
    'إدارة رأس المال والمخاطر والنفسية واختيار الوسيط مراحل أساسية لاحقة.',
    'TradingView هو الأداة التي طلب المحاضر البدء بها لقراءة الرسوم والأسعار.',
    'لا تتعجل اختيار وسيط أو إيداع أموال قبل بناء الأساس المطلوب.',
  ], VisualType.uptrend),
  Lesson('المحاضرة 3 — الاتجاهات والدعم والمقاومة', 'تحديد اتجاه الرسم ثم ربطه بمناطق الدعم والمقاومة.', [
    'قبل تحليل أي رسم اسأل: هل الاتجاه صاعد أم هابط أم عرضي؟',
    'في الاتجاه الصاعد نبحث عن قمم وقيعان أعلى؛ وفي الهابط قمم وقيعان أدنى.',
    'الدعم منطقة يظهر فيها قاعان أو أكثر عند مستوى متقارب وفق تعريف المحاضرة.',
    'المقاومة منطقة تظهر فيها قمتان أو أكثر عند مستوى متقارب.',
    'الدعم المكسور قد يتحول إلى مقاومة، والمقاومة المكسورة قد تتحول إلى دعم.',
    'إذا كان الرسم غير واضح أو عرضياً، المحاضر يفضل عدم التداول حتى يظهر اتجاه أوضح.',
  ], VisualType.levels),
  Lesson('المحاضرة 4 — النماذج الانعكاسية', 'Double Bottom وDouble Top وأساسيات قراءة النموذج قبل الصفقة.', [
    'Double Bottom نموذج انعكاسي بعد اتجاه هابط، وDouble Top بعد اتجاه صاعد وفق شرح المحاضر.',
    'لا تسمِّ شكلاً عشوائياً نموذجاً؛ يجب أن يظهر في السياق المناسب.',
    'كسر المستوى الفاصل في النموذج هو إشارة تعليمية وفق الشرح، وليس ضماناً.',
    'قبل الصفقة يجب معرفة الدخول والهدف ووقف الخسارة وحجم الصفقة.',
    'الأرقام أو الأمثلة التعليمية ليست توصية شخصية.',
  ], VisualType.doublePattern),
  Lesson('المحاضرة 5 — المستطيل والرأس والكتفين', 'Rectangle وTriple Top وTriple Bottom وHead & Shoulders وInverse Head & Shoulders.', [
    'Rectangle يتكون من قمتين وقاعين عند مستويات متقاربة تقريباً ضمن سياق الاتجاه السابق.',
    'Triple Top نموذج انعكاسي هابط بثلاث قمم تقريباً، وTriple Bottom انعكاسي صاعد بثلاثة قيعان تقريباً.',
    'Head & Shoulders نموذج انعكاسي هابط، وInverse Head & Shoulders انعكاسي صاعد.',
    'في الرأس والكتفين يرتبط التفعيل بكسر خط العنق وفق شرح المحاضر.',
    'الأهداف ووقف الخسارة مرتبطة ببنية النموذج في شرح المحاضر ولا توجد نتيجة مضمونة.',
    'لا تجبر الرسم على نموذج غير واضح.',
  ], VisualType.headShoulders),
  Lesson('المحاضرة 6 — المثلثات: الحالة الاستمرارية', 'Ascending Triangle وDescending Triangle كحالات استمرارية ضمن الاتجاه.', [
    'Ascending Triangle بعد اتجاه صاعد: قمم متقاربة وقيعان صاعدة، والكسر العلوي هو التأكيد الذي شرحه المحاضر.',
    'Descending Triangle بعد اتجاه هابط: قيعان متقاربة وقمم هابطة، والكسر السفلي هو التأكيد الذي شرحه المحاضر.',
    'الهدف النظري في شرح المحاضر يقاس بارتفاع المثلث ويُسقط في اتجاه الكسر.',
    'يمكن أن يحدث Retest وتبادل للأدوار بعد الكسر.',
    'لا تفرض شكل المثلث على حركات صغيرة لا تطابق النموذج.',
  ], VisualType.triangles),
  Lesson('المحاضرة 7 — المثلثات الانعكاسية والمتماثل', 'حالات انعكاسية للمثلثات والمثلث المتماثل مع أهمية السياق والكسر.', [
    'Ascending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه هابط وفق شرح المحاضر.',
    'Descending Triangle يمكن أن يأتي انعكاسياً بعد اتجاه صاعد وفق شرح المحاضر.',
    'Symmetrical Triangle له ضلع علوي هابط وضلع سفلي صاعد، ويمكن تفسيره استمرارياً أو انعكاسياً حسب السياق والكسر.',
    'قبل التأكيد توجد منطقة لا ينبغي فيها التخمين؛ الانتظار قرار صحيح.',
    'التدريب التاريخي على TradingView يساعد على اختبار الفكرة بدلاً من افتراض نجاحها.',
  ], VisualType.triangles),
  Lesson('المحاضرة 8 — المراجعة الشاملة والتطبيق', 'ربط الاتجاهات والقمم والقيعان والدعم والمقاومة والنماذج في قراءة الشارت.', [
    'ابدأ بتحديد الاتجاه، ثم القمم والقيعان، ثم الدعم والمقاومة، ثم ابحث عن نموذج واضح إن وجد.',
    'لا توجد قاعدة واحدة تعمل 100% على كل الأسواق أو كل الأوقات.',
    'النماذج تشمل Double Top/Bottom وTriple Top/Bottom وRectangle والرأس والكتفين والمثلثات.',
    'لا تعد كل حركة صغيرة نقطة رئيسية في النموذج؛ استخدم النقاط التي تطابق بنية النموذج.',
    'الكسر قد يفشل، وإعادة الاختبار وتبادل الأدوار مهمان في قراءة الرسم.',
    'إذا لم يكن الرسم واضحاً، عدم التداول خيار صحيح ضمن المنهج التعليمي.',
  ], VisualType.rectangle),
  Lesson('المحاضرة 9 — إدارة المخاطر والبيب واللوت', 'تحديد الخسارة المقبولة وفهم البيب واللوت وربط حجم الصفقة بالرصيد ووقف الخسارة.', [
    'إدارة المخاطر هدفها حماية رأس المال وتقليل احتمال الخسارة الكبيرة.',
    'مثال المحاضر: رصيد 100000 ومخاطرة 2% تعني حد خسارة نظرياً قدره 2000 في الصفقة.',
    'عدد الوحدات أو الأسهم = المبلغ المسموح بخسارته ÷ الخسارة لكل وحدة عند وقف الخسارة.',
    'حدد التحليل ووقف الخسارة أولاً، ثم حدد المخاطرة، ثم احسب حجم الصفقة.',
    'البيب وحدة شائعة لوصف حركة السعر في الفوركس، وطريقة عرض النقاط/البيب تختلف حسب الأداة والوسيط.',
    'اللوت يعبّر عن حجم العقد، وزيادته تزيد قيمة الربح والخسارة لكل حركة سعرية.',
    'أمثلة المحاضر على البيب واللوت تعليمية وليست قيماً ثابتة لكل الأدوات.',
  ], VisualType.risk),
  Lesson('المحاضرة 10 — أخطاء المتداولين والانضباط', 'أخطاء التفكير وإدارة رأس المال والخطة والاستراتيجية والانضباط اليومي.', [
    'من الأخطاء: البحث عن الثراء السريع، توقع الفوز دائماً، نسخ الإشارات، والتداول بلا خطة.',
    'المخاطرة في كل صفقة ينبغي أن تُبنى على نسبة أو مبلغ محدد، وليس على لوت ثابت.',
    'لا تزيل أو تحرك وقف الخسارة فقط لتجنب الاعتراف بالخسارة.',
    'لا تنتقل بين استراتيجيات كثيرة دون اختبارها تاريخياً أو على حساب تجريبي.',
    'الأخبار القوية قد تسبب حركة عنيفة؛ المبتدئ يتجنبها ما لم تكن لديه طريقة مختبرة.',
    'سجل الصفقات وسبب الدخول والوقف والهدف وما حدث بعدها، وتجنب التداول عند التعب أو الغضب أو ضعف الاتصال.',
  ], VisualType.psychology),
  Lesson('المحاضرة 11 — الأخطاء النفسية والتطبيق العملي', 'الجشع والخوف والانتقام والتعلق بالصفقة مع تطبيقات تعليمية على الشارت.', [
    'الجشع قد يظهر بإلغاء الهدف بعد وصول السعر إليه أو الإفراط في التداول بعد سلسلة أرباح.',
    'الخوف قد يؤدي إلى إغلاق الصفقة مبكراً أو تفويت فرصة كانت مطابقة للنظام.',
    'التداول الانتقامي يعني زيادة المخاطرة بعد الخسارة بهدف استردادها عاطفياً.',
    'المحاضر يذكر حد خسارة يومي مكتوباً في الدفتر كمثال، وليس كقاعدة شخصية للمستخدم.',
    'الصفقة الواحدة ليست كل النتيجة؛ قارن تطورك بنفسك ودرّب عينك على الشارت باستمرار.',
    'الإغلاق الجزئي ونقل الوقف إلى نقطة التعادل وردا في أمثلة المحاضرة التوضيحية، وليسا ضماناً.',
  ], VisualType.risk),
  Lesson('المحاضرة 12 — الفريمات والترابط بين الفريمات', 'HTF وLTF وكيفية الانتقال من الاتجاه العام إلى منطقة الدخول والتأكيد.', [
    'كل شمعة تلخص حركة السعر خلال الفاصل الزمني المختار: دقيقة، 5 دقائق، ساعة، 4 ساعات، يوم وغيرها.',
    'HTF هو الفريم الأعلى وLTF هو الفريم الأقل؛ لا توجد حدود عالمية ثابتة لهما.',
    'أمثلة المحاضر: 1D مع 1H، أو 4H مع 15m، أو 1H مع 5m.',
    'ابدأ بـ HTF لتحديد الاتجاه والمنطقة، ثم انتقل إلى LTF بعد وصول السعر للمنطقة وانتظر التأكيد.',
    'الفكرة الأساسية: HTF يحدد الاتجاه والمكان، وLTF يساعد في اختيار الدخول والتأكيد.',
    'الوقف يجب أن يوازن بين نقطة إبطال الفكرة والمخاطرة المقبولة، ولا تشتري أو تبيع لمجرد وصول السعر للمنطقة.',
  ], VisualType.timeframes),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('إحتراف التداول من الصفر الى الاحترف', style: TextStyle(fontWeight: FontWeight.w800)),
            centerTitle: true,
          ),
          body: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 30),
            itemCount: lessons.length,
            itemBuilder: (context, i) => _LessonTile(lesson: lessons[i], index: i),
          ),
        ),
      );
}

class _LessonTile extends StatelessWidget {
  final Lesson lesson;
  final int index;
  const _LessonTile({required this.lesson, required this.index});

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.only(bottom: 12),
        elevation: 0,
        color: const Color(0xFF1A1711),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LessonPage(lesson: lesson, index: index))),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.amber.withOpacity(.12), borderRadius: BorderRadius.circular(15)),
                  child: Icon(Icons.auto_graph_rounded, color: Colors.amber.shade300),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(lesson.title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 6),
                      Text(lesson.summary, style: TextStyle(color: Colors.white.withOpacity(.68), height: 1.45)),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(Icons.chevron_left_rounded, color: Colors.amber),
              ],
            ),
          ),
        ),
      );
}

class LessonPage extends StatelessWidget {
  final Lesson lesson;
  final int index;
  const LessonPage({super.key, required this.lesson, required this.index});

  @override
  Widget build(BuildContext context) => Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(title: Text(lesson.title), centerTitle: true),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            children: [
              _VisualCard(type: lesson.visual, lessonNumber: index + 1),
              const SizedBox(height: 18),
              Text(lesson.summary, style: TextStyle(fontSize: 17, color: Colors.white.withOpacity(.82), height: 1.7)),
              const SizedBox(height: 14),
              ...lesson.points.asMap().entries.map((e) => _PointCard(number: e.key + 1, text: e.value)),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.amber.withOpacity(.07), borderRadius: BorderRadius.circular(18), border: Border.all(color: Colors.amber.withOpacity(.18))),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.school_rounded, color: Colors.amber),
                    SizedBox(width: 10),
                    Expanded(child: Text('تعليمي فقط: الرسومات والأمثلة تلخّص شرح المحاضرات. لا تمثل توصية شراء أو بيع ولا تضمن نتيجة.', style: TextStyle(height: 1.55))),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

class _PointCard extends StatelessWidget {
  final int number;
  final String text;
  const _PointCard({required this.number, required this.text});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: const Color(0xFF191610), borderRadius: BorderRadius.circular(18)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 30, height: 30, alignment: Alignment.center, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber.withOpacity(.12)), child: Text('$number', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold))),
            const SizedBox(width: 12),
            Expanded(child: Text(text, style: const TextStyle(fontSize: 15.5, height: 1.65))),
          ],
        ),
      );
}

class _VisualCard extends StatelessWidget {
  final VisualType type;
  final int lessonNumber;
  const _VisualCard({required this.type, required this.lessonNumber});

  String get title {
    switch (type) {
      case VisualType.candle: return 'رسم تعليمي — الشمعة و OHLC';
      case VisualType.uptrend: return 'رسم تعليمي — الاتجاه الصاعد HH + HL';
      case VisualType.downtrend: return 'رسم تعليمي — الاتجاه الهابط LH + LL';
      case VisualType.sideways: return 'رسم تعليمي — الاتجاه العرضي';
      case VisualType.levels: return 'رسم تعليمي — الدعم والمقاومة';
      case VisualType.doublePattern: return 'رسم تعليمي — Double Top / Bottom';
      case VisualType.rectangle: return 'رسم تعليمي — قراءة النموذج';
      case VisualType.headShoulders: return 'رسم تعليمي — Head & Shoulders';
      case VisualType.triangles: return 'رسم تعليمي — المثلثات';
      case VisualType.risk: return 'رسم تعليمي — المخاطرة ووقف الخسارة';
      case VisualType.psychology: return 'رسم تعليمي — الانضباط وإدارة القرار';
      case VisualType.timeframes: return 'رسم تعليمي — HTF → منطقة → LTF';
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(12, 14, 12, 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color(0xFF201B12), const Color(0xFF15120D)]),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Colors.amber.withOpacity(.18)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 5), child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
            const SizedBox(height: 8),
            SizedBox(height: 235, width: double.infinity, child: CustomPaint(painter: TradingPainter(type: type, lessonNumber: lessonNumber))),
          ],
        ),
      );
}

class TradingPainter extends CustomPainter {
  final VisualType type;
  final int lessonNumber;
  TradingPainter({required this.type, required this.lessonNumber});

  final Paint _line = Paint()..strokeWidth = 3..style = PaintingStyle.stroke..strokeCap = StrokeCap.round;
  final Paint _thin = Paint()..strokeWidth = 1.5..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final bg = Paint()..color = const Color(0xFF100E0A);
    canvas.drawRRect(RRect.fromRectAndRadius(Offset.zero & size, const Radius.circular(16)), bg);
    _grid(canvas, size);
    switch (type) {
      case VisualType.candle: _candles(canvas, size); break;
      case VisualType.uptrend: _trend(canvas, size, true); break;
      case VisualType.downtrend: _trend(canvas, size, false); break;
      case VisualType.sideways: _sideways(canvas, size); break;
      case VisualType.levels: _levels(canvas, size); break;
      case VisualType.doublePattern: _doublePattern(canvas, size); break;
      case VisualType.rectangle: _rectangle(canvas, size); break;
      case VisualType.headShoulders: _headShoulders(canvas, size); break;
      case VisualType.triangles: _triangles(canvas, size); break;
      case VisualType.risk: _risk(canvas, size); break;
      case VisualType.psychology: _psychology(canvas, size); break;
      case VisualType.timeframes: _timeframes(canvas, size); break;
    }
  }

  void _grid(Canvas c, Size s) {
    final p = Paint()..color = Colors.white.withOpacity(.055)..strokeWidth = 1;
    for (double y = 30; y < s.height; y += 40) c.drawLine(Offset(8, y), Offset(s.width - 8, y), p);
    for (double x = 20; x < s.width; x += 55) c.drawLine(Offset(x, 8), Offset(x, s.height - 8), p);
  }

  void _candles(Canvas c, Size s) {
    final xs = [45.0, 85, 125, 165, 205, 245, 285, 325];
    final data = [[170, 105, 185, 130], [145, 80, 160, 100], [125, 65, 145, 78], [110, 45, 125, 88], [105, 55, 135, 70], [90, 35, 110, 50], [78, 25, 95, 43], [65, 18, 82, 30]];
    final candleW = 18.0;
    final wick = Paint()..strokeWidth = 2;
    for (int i = 0; i < xs.length; i++) {
      final d = data[i];
      final open = d[0].toDouble(), high = d[1].toDouble(), low = d[2].toDouble(), close = d[3].toDouble();
      final up = close < open;
      final p = Paint()..color = up ? Colors.greenAccent : Colors.redAccent;
      wick.color = p.color;
      c.drawLine(Offset(xs[i], high), Offset(xs[i], low), wick);
      final top = up ? close : open;
      final bottom = up ? open : close;
      c.drawRect(Rect.fromLTRB(xs[i] - candleW / 2, top, xs[i] + candleW / 2, bottom), p);
    }
    _label(c, 'HIGH', Offset(305, 18), Colors.white70);
    _label(c, 'LOW', Offset(310, 205), Colors.white70);
    _label(c, 'OPEN', Offset(18, 150), Colors.amber);
    _label(c, 'CLOSE', Offset(18, 85), Colors.amber);
    _label(c, 'جسم الشمعة', Offset(120, 218), Colors.white70);
  }

  void _trend(Canvas c, Size s, bool up) {
    final pts = up
        ? [Offset(30, 190), Offset(85, 145), Offset(125, 170), Offset(180, 105), Offset(220, 135), Offset(275, 65), Offset(320, 95), Offset(365, 30)]
        : [Offset(30, 35), Offset(85, 85), Offset(125, 60), Offset(180, 130), Offset(220, 100), Offset(275, 175), Offset(320, 145), Offset(365, 205)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = up ? Colors.greenAccent : Colors.redAccent;
    c.drawPath(path, _line);
    final hi = up ? [pts[1], pts[3], pts[5], pts[7]] : [pts[0], pts[2], pts[4], pts[6]];
    final lo = up ? [pts[0], pts[2], pts[4], pts[6]] : [pts[1], pts[3], pts[5], pts[7]];
    for (int i = 0; i < hi.length; i++) {
      _dot(c, hi[i], up ? Colors.greenAccent : Colors.redAccent);
      _dot(c, lo[i], up ? Colors.greenAccent : Colors.redAccent);
      _label(c, up ? (i == 0 ? 'H' : 'HH') : (i == 0 ? 'H' : 'LH'), hi[i] + const Offset(0, -18), Colors.amber);
      _label(c, up ? (i == 0 ? 'L' : 'HL') : (i == 0 ? 'L' : 'LL'), lo[i] + const Offset(0, 18), Colors.amber);
    }
    _label(c, up ? 'اتجاه صاعد' : 'اتجاه هابط', Offset(18, up ? 15 : 15), up ? Colors.greenAccent : Colors.redAccent);
  }

  void _sideways(Canvas c, Size s) {
    final top = 65.0, bottom = 170.0;
    _line.color = Colors.amber;
    c.drawLine(Offset(18, top), Offset(s.width - 18, top), _line);
    c.drawLine(Offset(18, bottom), Offset(s.width - 18, bottom), _line);
    final pts = [Offset(20, 150), Offset(55, 75), Offset(90, 160), Offset(125, 70), Offset(165, 155), Offset(205, 68), Offset(245, 150), Offset(290, 72), Offset(340, 155), Offset(370, 75)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = Colors.white70;
    c.drawPath(path, _line);
    _label(c, 'مقاومة', Offset(22, 40), Colors.amber);
    _label(c, 'دعم', Offset(22, 177), Colors.amber);
    _label(c, 'لا يوجد تسلسل واضح', Offset(205, 215), Colors.white70);
  }

  void _levels(Canvas c, Size s) {
    final resistanceY = 60.0, supportY = 175.0;
    final p1 = Paint()..color = Colors.redAccent.withOpacity(.55)..strokeWidth = 2;
    final p2 = Paint()..color = Colors.greenAccent.withOpacity(.55)..strokeWidth = 2;
    c.drawLine(Offset(15, resistanceY), Offset(s.width - 15, resistanceY), p1);
    c.drawLine(Offset(15, supportY), Offset(s.width - 15, supportY), p2);
    final pts = [Offset(25, 150), Offset(70, 70), Offset(115, 160), Offset(165, 65), Offset(210, 145), Offset(255, 58), Offset(305, 155), Offset(355, 75)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = Colors.white70;
    c.drawPath(path, _line);
    _label(c, 'مقاومة', Offset(25, 30), Colors.redAccent);
    _label(c, 'دعم', Offset(25, 185), Colors.greenAccent);
    _label(c, 'كسر المقاومة → قد تصبح دعماً', Offset(150, 215), Colors.amber);
  }

  void _doublePattern(Canvas c, Size s) {
    final top = 55.0, base = 175.0;
    final pts = [Offset(25, 165), Offset(75, 70), Offset(125, 150), Offset(180, 68), Offset(235, 150), Offset(290, 105), Offset(350, 195)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = Colors.redAccent;
    c.drawPath(path, _line);
    final lvl = Paint()..color = Colors.amber..strokeWidth = 2;
    c.drawLine(Offset(55, top), Offset(200, top), lvl);
    c.drawLine(Offset(55, base - 25), Offset(245, base - 25), lvl);
    _label(c, 'Double Top', Offset(80, 25), Colors.amber);
    _label(c, 'كسر المستوى الفاصل', Offset(225, 178), Colors.redAccent);
  }

  void _rectangle(Canvas c, Size s) {
    final rect = Rect.fromLTRB(50, 55, 325, 170);
    final rp = Paint()..color = Colors.amber.withOpacity(.12)..style = PaintingStyle.fill;
    final bp = Paint()..color = Colors.amber..style = PaintingStyle.stroke..strokeWidth = 2;
    c.drawRect(rect, rp);
    c.drawRect(rect, bp);
    final pts = [Offset(30, 190), Offset(70, 70), Offset(120, 155), Offset(165, 65), Offset(215, 150), Offset(260, 68), Offset(315, 145), Offset(365, 35)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = Colors.greenAccent;
    c.drawPath(path, _line);
    _label(c, 'نطاق المستطيل', Offset(125, 105), Colors.white70);
    _label(c, 'سياق + كسر', Offset(275, 18), Colors.greenAccent);
  }

  void _headShoulders(Canvas c, Size s) {
    final pts = [Offset(25, 175), Offset(65, 105), Offset(105, 150), Offset(160, 45), Offset(215, 150), Offset(260, 95), Offset(300, 150), Offset(360, 195)];
    final path = Path()..moveTo(pts.first.dx, pts.first.dy);
    for (final p in pts.skip(1)) path.lineTo(p.dx, p.dy);
    _line.color = Colors.redAccent;
    c.drawPath(path, _line);
    final neck = Paint()..color = Colors.amber..strokeWidth = 2;
    c.drawLine(const Offset(72, 150), const Offset(300, 150), neck);
    _label(c, 'الكتف', Offset(45, 75), Colors.amber);
    _label(c, 'الرأس', Offset(143, 22), Colors.amber);
    _label(c, 'الكتف', Offset(245, 67), Colors.amber);
    _label(c, 'خط العنق', Offset(125, 158), Colors.white70);
  }

  void _triangles(Canvas c, Size s) {
    final top = Path()..moveTo(45, 60)..lineTo(325, 60);
    final bottom = Path()..moveTo(45, 190)..lineTo(325, 60);
    _line.color = Colors.amber;
    c.drawPath(top, _line);
    c.drawPath(bottom, _line);
    final inner = Path()..moveTo(55, 175)..lineTo(95, 75)..lineTo(135, 155)..lineTo(175, 92)..lineTo(215, 135)..lineTo(255, 108)..lineTo(325, 60);
    _line.color = Colors.greenAccent;
    c.drawPath(inner, _line);
    _label(c, 'قمم متقاربة', Offset(70, 25), Colors.amber);
    _label(c, 'قيعان صاعدة', Offset(185, 180), Colors.greenAccent);
    _label(c, 'نقطة الكسر/التأكيد', Offset(235, 75), Colors.white70);
  }

  void _risk(Canvas c, Size s) {
    final entryY = 110.0, stopY = 180.0, targetY = 45.0;
    final line = Paint()..strokeWidth = 3;
    line.color = Colors.white70;
    c.drawLine(Offset(45, entryY), Offset(335, entryY), line);
    line.color = Colors.redAccent;
    c.drawLine(Offset(45, stopY), Offset(335, stopY), line);
    line.color = Colors.greenAccent;
    c.drawLine(Offset(45, targetY), Offset(335, targetY), line);
    _label(c, 'الهدف', Offset(55, 22), Colors.greenAccent);
    _label(c, 'الدخول', Offset(55, 88), Colors.white70);
    _label(c, 'وقف الخسارة', Offset(55, 187), Colors.redAccent);
    _label(c, 'المخاطرة لكل صفقة ← ثم احسب الحجم', Offset(110, 215), Colors.amber);
  }

  void _psychology(Canvas c, Size s) {
    final boxes = [
      ['خطة', 20.0, Colors.amber],
      ['وقف', 120.0, Colors.redAccent],
      ['سجل', 220.0, Colors.greenAccent],
    ];
    for (final b in boxes) {
      final x = b[1] as double;
      final p = Paint()..color = (b[2] as Color).withOpacity(.12);
      final border = Paint()..color = b[2] as Color..style = PaintingStyle.stroke..strokeWidth = 2;
      final r = RRect.fromRectAndRadius(Rect.fromLTWH(x, 70, 80, 70), const Radius.circular(14));
      c.drawRRect(r, p);
      c.drawRRect(r, border);
      _label(c, b[0] as String, Offset(x + 17, 95), b[2] as Color);
    }
    _label(c, 'لا انتقام  •  لا طمع  •  لا تداول بلا خطة', Offset(40, 175), Colors.white70);
  }

  void _timeframes(Canvas c, Size s) {
    final htf = RRect.fromRectAndRadius(Rect.fromLTWH(20, 35, 150, 145), const Radius.circular(18));
    final ltf = RRect.fromRectAndRadius(Rect.fromLTWH(215, 70, 145, 110), const Radius.circular(18));
    final p1 = Paint()..color = Colors.amber.withOpacity(.12);
    final p2 = Paint()..color = Colors.greenAccent.withOpacity(.10);
    final b1 = Paint()..color = Colors.amber..style = PaintingStyle.stroke..strokeWidth = 2;
    final b2 = Paint()..color = Colors.greenAccent..style = PaintingStyle.stroke..strokeWidth = 2;
    c.drawRRect(htf, p1); c.drawRRect(htf, b1);
    c.drawRRect(ltf, p2); c.drawRRect(ltf, b2);
    _label(c, 'HTF', Offset(75, 52), Colors.amber);
    _label(c, 'الاتجاه + المنطقة', Offset(38, 105), Colors.white70);
    _label(c, 'LTF', Offset(265, 88), Colors.greenAccent);
    _label(c, 'تأكيد + دخول', Offset(238, 125), Colors.white70);
    final arrow = Paint()..color = Colors.white70..strokeWidth = 2.5;
    c.drawLine(const Offset(170, 105), const Offset(210, 105), arrow);
    c.drawLine(const Offset(198, 96), const Offset(210, 105), arrow);
    c.drawLine(const Offset(198, 114), const Offset(210, 105), arrow);
    _label(c, 'HTF يحدد الاتجاه والمكان ← LTF يساعد في التأكيد', Offset(28, 205), Colors.amber);
  }

  void _dot(Canvas c, Offset p, Color color) => c.drawCircle(p, 4.5, Paint()..color = color);

  void _label(Canvas c, String text, Offset pos, Color color) {
    final tp = TextPainter(text: TextSpan(text: text, style: TextStyle(color: color, fontSize: 12.5, fontWeight: FontWeight.w700)), textDirection: TextDirection.rtl)..layout(maxWidth: 190);
    tp.paint(c, pos);
  }

  @override
  bool shouldRepaint(covariant TradingPainter oldDelegate) => oldDelegate.type != type || oldDelegate.lessonNumber != lessonNumber;
}
