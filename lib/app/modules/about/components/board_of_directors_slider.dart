
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mktbaz/app/modules/about/components/board_of_directors.dart';
import 'package:mktbaz/size_config.dart';

class Board_of_Directors_Slider extends StatefulWidget {
  const Board_of_Directors_Slider({Key? key}) : super(key: key);

  @override
  State<Board_of_Directors_Slider> createState() => _Board_of_Directors_SliderState();
}

class _Board_of_Directors_SliderState extends State<Board_of_Directors_Slider> {
  int activeIndex = 0;
  final List<Widget> list=[
    Board_of_Directors(
        name: "Cheah Kim Lean ",
        tag: "Co-Founder",
        description:'There is a quote from Albert Einstein that has always inspired me. "There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle". When I think back to my early research days, I realize life was a frenzy of activities, mostly unplanned but it was fun and happy even when I least expect them. As a researcher, I always thought events have a pattern and outcomes follow paths of predetermined action. But then life deals you surprises that are best appreciated if there were no moral expectations. I guess I prefer to live my life as though "everything is a miracle". Then every sunrise would be pure magic, family and good friends a great blessing and time always a treasure.\nI started my research career in marketing research in Malaysia, grew in awe of the power of consumer research in Singapore and tested the cultural boundaries of research in Hong Kong. "Tested" because I had to immerse myself in Cantonese not to survive the taxi drivers and the restaurant waiters but to embrace the rich culture of a dynamic Chinese market.\nThroughout the migration from country to country I have kept my major clients from food and beverage companies, financial institutions, telecommunications and others. This is in line with Acorns philosophy of partnering our clients and growing with them in excellence. My research approach is heuristic centering on brand assessment and reiteration to make client brands more relevant as markets evolve and consumer needs become more sophisticated.\nMy mission is developing the business across Asia. My passion is in training our young executives in the science and art of Marketing Research. My joy is in helping the charities in China for the medical rehabilitation of physically challenged orphans to give them a chance for adoption. In my work and personal life everything is a miracle. ',
        image: "assets/images/Cheah_Kim_Lean .jpg"),

    Board_of_Directors(
        name: "Kwan Chong Wah ",
        tag: "Co-Founder",
        description:"When I look back on my Marketing Research career, apart from having met very good mentors, clients and colleagues, one of the things that has enriched me as a researcher is the opportunity to live through an evolving consumer culture, not once, not twice, but three times. Having lived through the time of Singapore's development from early independence to the present global city, I had witnessed how consumption has evolved from being purely 'functional-driven' to one which is 'highly-consumerised'./nSince the late 80s, I had the good fortune of doing consumer research in China as it was evolving from a planned economy to a 'capitalist' society. I must have done hundreds of focus groups in as many as 15 cities in China. Once again, I was witnessing consumerism in transformation./nThis was followed by an almost deja-vu experience when doing research in Vietnam through the 80s, 90s to the present day. As in China, consumerism in Vietnam evolved in a condensed time frame.\nThe good that has come out of these experiences is the sharpening of what I would term, my predictive hind-sight. And I believe this comes from my having first lived through and then first-hand witnessing how some brands have thrived, how others revived, and how so many others had failed.\nI am so fortunate to have been a Market Researcher, at the right time, at the right place.",
        image: "assets/images/Kwan_Chong Wah.png"),

    Board_of_Directors(
        name: "DR. Rawewan Prakobpol\nPHD",
        tag: "Director",
        description:"Starting ACORN Thailand was never in my vision, but after 30 years running the company, I now realize it was not just the business opportunity but more an inevitable destiny.  I was a long-serving and well-established academic at Chulalongkorn University, when I met Kim Lean and Chong Wah. Our  strong  and aligned values & beliefs quickly turned into business partnership.\nSince day 1, I was hands on with all the research studies. I moderated focus groups, I met and assisted many clients, I gave presentations, that was the beginning of my new life.  This life chapter was  certainly out of my expectation, but yet ultimately fulfilling.  I believe my academic background  has also significantly contributed to my consultancy role and business success. /nAside from my love for arts and painting,  Market Research is definitely another passion that I hold strongly to myself.  Having been a part of many brands successes, I still believe Market Research in Thailand has a long way to go.   Like a good piece of Art, Market Research to me is all about authenticity, honesty, and integrity.",
        image: "assets/images/DR._Rawewan_Prakobpol,_PHD.png"),

    Board_of_Directors(
        name: "Martin_Lai",
        tag: "Group Director",
        description:"A talented statistician, a pioneer in research methodology and a passionate musician, Martin Lai was instrumental in developing Acorns proprietary research methodologies including Forward Positioning Research™, CLoSE™ and BEAM™, which have a proven track record over his 20+ years at Acorn. A meticulous and structured researcher, Martins professional discipline has extended to standardisation of processes and optimisation of analytical and operational systems within the Acorn Group.\nWhen he is through with his days work of process consulting, strategic positioning and service innovation, Martin unwinds at his home recording studio where he composes and arranges music and jams with friends. He also holds the record of producing a Christmas musical – an Acorn family crown jewel",
        image: "assets/images/Martin_Lai.png"),

    Board_of_Directors(
        name: "Lye Kah Hou",
        tag: "Group Director",
        description:"Completing his MBus with a thesis in consumer choice strategies, Kah Hou continues to explore the conscious use of strategy to achieve almost anything! A firm believer in strategic thinking, this doting father of two boys, is currently facing up to his daunting role, by studying and putting into practice early childhood development strategies. Many Acorn clients have benefited from Kah Hou's strategy discussions with their cross-functional teams.\nKah Hou has a knack of 'joining the dots' to form the big picture. A skilled moderator and keen listener, he can interact with all levels of consumers to draw out their latent motivations.\nMeanwhile, he continues to pursue his hobby of watching and discussing select films, which he sees as canvases for human expressions. His dream is to be a short film producer when he retires from his chosen profession of marketing research.",
        image: "assets/images/Lye_Kah_Hou.png"),

    Board_of_Directors(
        name: "Ng Mok Sun",
        tag: "Director",
        description:"A veteran in marketing research with 30+ years of improving processes in the field, managing logistics, servicing clients, Mok Sun  has always pushed honesty and integrity in the retrieval of research data. In the last 8-9 years he has co-managed the Malaysian office and brought the company to greater heights.\nMok Sun is a multi-lingual researcher conversant in Mandarin, English and Bahasa. He is able to manage research projects in Peninsular Malaysia, East Malaysia, Brunei with ease. His research experience also spans Cambodia and China.\nHe is an avid ‘foodie’. Nobody can match him in introducing the best ‘Chu Char’ or the best ‘Bak Kut Teh’. He certainly is sought after by clients for his experience, dependability and food recommendations.  ",
        image: "assets/images/Ng_Mok_Sun.png"),

    Board_of_Directors(
        name: "Lee Kok Woi",
        tag: "Director",
        description:"These nuances range from minute subtleties to being world's apart. The challenge is to surface such differences and similarities. In my journey (often contemplating while on long bike rides), I realised the essence is about understanding people. I do not see data but faces of real people and their stories behind it - their habits, preferences, motivations. Be it data analyst, data scientist, consumer analyst, consultant.... as a market researcher, our skill set is about focusing on the right information, presented in the right way, framed in the right context. It is by this principle that I was trained at Acorn, it is by this principle that I serve my clients.",
        image: "assets/images/Lye_Kah_Hou.png"),

    Board_of_Directors(
        name: "Sum Ooi Leng",
        tag: "Director",
        description:"Sum Ooi Leng (F.C.I.S.) is responsible for managing the operations and leading the strategic development of Acorn. Sum is a versatile researcher with more than 20 years experience in diverse consumer markets having worked in Acorn Thailand, Hong Kong and Malaysia. She was pivotal in building up our Malaysian operations prior to joining Singapore.\nShe is still a very hands on researcher and manages some of the key regional accounts. Her portfolio of clients cover Telecommunication, Financial, Food and Beverage, Luxury Consumer Goods, Structural Engineering and Design, T.C.M and Medical Aesthetics.\nSum sits on the committee that runs the Emerging Enterprise Award which recognises outstanding small and medium enterprises (SMEs) in Singapore by providing support for their growth and development. ",
        image: "assets/images/Sum_Ooi_Leng.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
         // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1,
                  endIndent: MediaQuery.of(context).size.width*0.5,
                  color: Colors.black,
                  height: 1,
                ),
                Text("We are Deep Generalists.",style: TextStyle(fontSize: getProportionateScreenWidth(20),fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 30,),
            Text(
              "Board of Directors",
              style: TextStyle(fontSize: getProportionateScreenWidth(18),color: Colors.black.withOpacity(0.6)),
            ),
            Container(
              height: getProportionateScreenHeight(1),
              width: getProportionateScreenWidth(120),
              color: Colors.red.withOpacity(0.7),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(items: list.map((e) => SingleChildScrollView(
              child: Container(
                  margin: EdgeInsets.all(8),
                  child: e,
                ),
            ),
            ).toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    height: 420,
                    autoPlayInterval: Duration(seconds: 10),
                    viewportFraction: 1
            ))
          ],
    );
  }
}