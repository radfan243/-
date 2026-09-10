import 'package:flutter/material.dart';

void main() => runApp(const TradingMasteryApp());

class TradingMasteryApp extends StatelessWidget {
  const TradingMasteryApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'إحتراف التداول من الصفر الى الاحترف',
    theme: ThemeData(useMaterial3: true, brightness: Brightness.dark, fontFamily: 'Arial'),
    home: const HomePage(),
  );
}

class Lesson { final String title, summary; final List<String> points; const Lesson(this.title,this.summary,this.points); }

const lessons = [
  Lesson('المحاضرة 1 — أساسيات الرسم البياني','مدخل إلى التحليل الفني والشموع والقمم والقيعان والاتجاهات.',[
    'التحليل الفني يقرأ حركة السعر السابقة لمحاولة فهم الحركة القادمة.',
    'الشمعة تتكون من الافتتاح والإغلاق وأعلى سعر وأدنى سعر (OHLC).',
    'الترند الصاعد يتكون من قمم أعلى وقيعان أعلى، والهابط من قمم أدنى وقيعان أدنى.',
    'الاتجاه العرضي لا يحقق تسلسلاً واضحاً صاعداً أو هابطاً.',
    'لا توجد استراتيجية تضمن النجاح دائماً؛ الهدف التعلم وتقليل الخسائر غير الضرورية.',
  ]),
  Lesson('المحاضرة 2 — خريطة الطريق','بناء أساس منظم قبل الانتقال للاستراتيجيات المتقدمة.',[
    'التداول يشمل أسواقاً متعددة مثل الفوركس والأسهم والعملات الرقمية والسلع.',
    'المحاضر يشرح البدء بالمدرسة الكلاسيكية قبل المدارس المتقدمة.',
    'إدارة رأس المال والمخاطر والنفسية واختيار الوسيط مراحل أساسية لاحقة.',
    'المحاضر يحذر من منصات الخيارات الثنائية ويصفها بأنها ليست التداول الحقيقي الذي يدرسه.',
    'TradingView هو الأداة التي طلب المحاضر البدء بها لقراءة الرسوم والأسعار.',
    'لا تتعجل اختيار وسيط أو إيداع أموال قبل بناء الأساس المطلوب.',
  ]),
  Lesson('المحاضرة 3 — الاتجاهات والدعم والمقاومة','تحديد اتجاه الرسم ثم ربطه بمناطق الدعم والمقاومة.',[
    'قبل تحليل أي رسم اسأل: هل الاتجاه صاعد أم هابط أم عرضي؟',
    'في الاتجاه الصاعد نبحث عن قمم وقيعان أعلى؛ وفي الهابط قمم وقيعان أدنى.',
    'القمّة المكسورة للأعلى تصبح منطقة يمكن مراقبتها بعد عودة السعر إليها، وفق شرح المحاضر.',
    'القاع المكسور للأسفل يمكن مراقبته عند إعادة اختبار السعر له في الاتجاه الهابط.',
    'الدعم: منطقة يظهر فيها قاعان أو أكثر عند مستوى متقارب وفق تعريف المحاضرة.',
    'المقاومة: منطقة تظهر فيها قمتان أو أكثر عند مستوى متقارب.',
    'تبادل الأدوار: الدعم المكسور قد يتحول إلى مقاومة، والمقاومة المكسورة قد تتحول إلى دعم.',
    'قاعدة المحاضرة المبدئية: في الاتجاه الصاعد نراقب الدعم، وفي الهابط نراقب المقاومة. ليست توصية مالية.',
    'إذا كان الرسم غير واضح أو عرضياً، المحاضر يفضل عدم التداول حتى يظهر اتجاه أوضح.',
    'الشراء والبيع هنا للتعليم فقط؛ لا توجد نقطة دخول مضمونة أو نسبة نجاح مضمونة.',
  ]),
  Lesson('المحاضرة 4 — النماذج الانعكاسية وإدارة الصفقة','مراجعة الاتجاهات والدعم والمقاومة ثم مقدمة للنماذج الفنية، خاصة Double Bottom وDouble Top، مع أساسيات الصفقة والمخاطرة.',[
    'المحاضر يؤكد أن فهم الاتجاهات والدعم والمقاومة يأتي قبل الانتقال إلى النماذج الفنية.',
    'التطبيق يبدأ بتحديد الاتجاه: صاعد، هابط أو عرضي. وإذا كان الرسم غير واضح يمكن عدم الدخول وفق منهج المحاضر.',
    'في الاتجاه الصاعد: كسر المقاومة ثم إعادة اختبارها قد يجعل المنطقة دعماً، وفي الاتجاه الهابط: كسر الدعم ثم إعادة اختباره قد يجعل المنطقة مقاومة. هذا يسمى تبادل الأدوار.',
    'النماذج الفنية تتكون من حركة البيع والشراء وتساعد على توقع حركة سعرية محتملة، وليست ضماناً للنتيجة.',
    'المحاضر يشرح أن المتداول الشاطر يتقبل احتمال خطأ التحليل ولا يفترض أن أي قراءة للسوق صحيحة بنسبة 100%.',
    'قبل أي صفقة تحتاج إلى تحديد نقطة الدخول، والهدف (Take Profit)، ووقف الخسارة (Stop Loss).',
    'حجم الصفقة (Lot Size) يحدد كمية التداول، وزيادته تزيد قيمة الربح أو الخسارة المحتملة.',
    'المحاضر يربط حجم المخاطرة بنسبة من إجمالي الرصيد، ويذكر أمثلة مثل 1% أو 2% لكل صفقة ضمن شرحه لإدارة المخاطر.',
    'Double Bottom: نموذج انعكاسي شرحه المحاضر بعد اتجاه هابط، ويتكون من قاعين متقاربين تقريباً وبينهما قمة.',
    'في Double Bottom، كسر القمة الفاصلة بين القاعين هو إشارة الدخول التي شرحها المحاضر للشراء، مع التأكيد أنها ليست ضماناً.',
    'الهدف النظري الذي عرضه المحاضر للنموذج يقاس بالمسافة بين القاع والقمة، لكنه قال إنه لا يريد الاعتماد على هذا الهدف في هذه المرحلة.',
    'فشل Double Bottom وفق الشرح يكون بكسر القاع الثاني للنموذج؛ عندها يفقد السيناريو الذي تم الدخول عليه أساسه.',
    'Double Top: نموذج انعكاسي بعد اتجاه صاعد، ويتكون من قمتين متقاربتين تقريباً وبينهما قاع.',
    'في Double Top، كسر القاع الفاصل بين القمتين هو إشارة البيع التي شرحها المحاضر، مع التأكيد أنها ليست ضماناً.',
    'فشل Double Top وفق الشرح يكون بكسر القمة الثانية للنموذج؛ عندها يعتبر سيناريو البيع غير صالح وفق هذا النموذج.',
    'النماذج قد تظهر على فريمات وأصول مختلفة، لكن المحاضر يشدد على اختيار النماذج الواضحة وعدم إجبار الرسم على شكل غير واضح.',
    'المحاضرة تشير إلى نماذج أخرى مثل Triple Bottom وTriple Top وRectangle، لكنها لا تقدم درساً كاملاً لكل نموذج هنا.',
    'المحاضر يوضح أن النماذج الانعكاسية تساعد على تأكيد ما تم تعلمه عن الاتجاهات والدعم والمقاومة، وليست بديلاً عنها.',
    'لا تحاول الدخول في كل حركة؛ المتداول قد ينتظر ساعات دون صفقة إذا لم يجد شروطه، وعدم الدخول قرار ممكن.',
    'التطبيق العملي على الرسوم والتدريب المتكرر يساعدان على رؤية القمم والقيعان والنماذج بوضوح أكبر مع الوقت.',
    'تنبيه المصدر: الأرقام المذكورة للمخاطرة والأهداف هنا من شرح المحاضر وليست قاعدة شخصية أو توصية مالية للمستخدم.',
  ]),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => Directionality(textDirection: TextDirection.rtl, child: Scaffold(
    backgroundColor: const Color(0xFF070A12),
    appBar: AppBar(title: const Text('إحتراف التداول من الصفر الى الاحترف', style: TextStyle(fontWeight: FontWeight.bold)), backgroundColor: Colors.transparent),
    body: ListView(padding: const EdgeInsets.all(18), children: [
      Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(gradient: const LinearGradient(colors:[Color(0xFF17233D),Color(0xFF0B101D)]), borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.white12)), child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children:[Text('مسارك إلى فهم التداول',style:TextStyle(fontSize:24,fontWeight:FontWeight.bold)),SizedBox(height:8),Text('تعلّم خطوة بخطوة من المصادر الأصلية، بدون اختصار يضيّع الأساسيات.')])) ,
      const SizedBox(height:20),
      ...List.generate(lessons.length,(i)=>Card(color:const Color(0xFF101522), margin:const EdgeInsets.only(bottom:12), child:ListTile(contentPadding:const EdgeInsets.all(14), leading:CircleAvatar(child:Text('${i+1}')), title:Text(lessons[i].title,style:const TextStyle(fontWeight:FontWeight.bold)), subtitle:Padding(padding:const EdgeInsets.only(top:6),child:Text(lessons[i].summary)), trailing:const Icon(Icons.chevron_left), onTap:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>LessonPage(lesson:lessons[i],index:i))))),
      const SizedBox(height:8), const Text('تنبيه تعليمي: المحتوى للتعلم وليس نصيحة مالية أو ضماناً للربح.', textAlign:TextAlign.center, style:TextStyle(color:Colors.white54)),
    ]),
  ));
}

class LessonPage extends StatelessWidget { final Lesson lesson; final int index; const LessonPage({super.key,required this.lesson,required this.index});
 @override Widget build(BuildContext context)=>Directionality(textDirection:TextDirection.rtl,child:Scaffold(appBar:AppBar(title:Text('المحاضرة ${index+1}')),body:ListView(padding:const EdgeInsets.all(18),children:[Text(lesson.title,style:const TextStyle(fontSize:25,fontWeight:FontWeight.bold)),const SizedBox(height:10),Text(lesson.summary,style:const TextStyle(color:Colors.white70,fontSize:16)),const SizedBox(height:20),...List.generate(lesson.points.length,(i)=>Container(margin:const EdgeInsets.only(bottom:10),padding:const EdgeInsets.all(16),decoration:BoxDecoration(color:const Color(0xFF111827),borderRadius:BorderRadius.circular(16)),child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[CircleAvatar(radius:12,child:Text('${i+1}',style:const TextStyle(fontSize:11))),const SizedBox(width:10),Expanded(child:Text(lesson.points[i],style:const TextStyle(fontSize:16,height:1.5))) ]))),const SizedBox(height:15),Container(padding:const EdgeInsets.all(16),decoration:BoxDecoration(borderRadius:BorderRadius.circular(16),border:Border.all(color:Colors.white12)),child:const Text('اختبر نفسك: هل تستطيع تحديد الاتجاه أولاً، ثم معرفة هل السعر قريب من دعم أو مقاومة؟',style:TextStyle(fontWeight:FontWeight.bold))) ]))); }
