import 'package:flutter/material.dart';
import 'package:flutter_news_app/Model/News.dart';

void main() => runApp(ShowNewsList());

class ShowNewsList extends StatelessWidget {
  News getNews() {
    var currNews = new News(
        "'Broke up with sleep': Cory Booker exposed as addicted to coffee jokes");
    currNews.date = "2019-03-19T04:04:50Z";
    currNews.Section = "2019-03-19T04:04:50Z";
    currNews.body =
        "The US Democratic presidential hopeful Cory Booker has been exposed on Twitter for making the same joke – about loving coffee so much he is “dating it” – almost every year for the past 10 years. The New Jersey senator has tweeted slight variations on the same phrase – that he has “broken up with” sleep and is now “dating coffee” – 14 times over the past decade. The serial joke repeating was exposed in a thread from user @bananafitz. In the tweets, Booker variously describes coffee as his “hot friend” and a “hot, tall, delicious one”, and jokes that sleep is “serving him divorce papers” due to his love affair with coffee. In May 2009, Booker tweeted: “‘Sleep’ and I broke up a few nights ago. I’m dating ‘Coffee’ now. She’s Hot!” In May 2010, almost a year to the day, he tweeted: “‘Sleep” and I broke up again tonight. I’m finding comfort with my new special friend ‘coffee’ - she is hot.” Booker continued the tweets throughout his time as mayor of Newark and after his election as a senator for New Jersey. All up, he made the same joke 14 times in 10 years. One tweet from 2009 appeared to be a song called The Sleep Lost Coffee Blues. “4am sleep went away/ Been shacking up with coffee all day/ Black, brown, all different hues/ Slurping my song: ‘The Sleep Lost Coffee Blues,’” Booker tweeted. Another 2009 tweet, arguably a different joke, reversed the premise of the other tweets, casting coffee and sleep as two lovers ignoring Booker. Also in 2009, Booker introduced a third component, saying he was “splitting myself between ‘Coffee’ and ‘M. Dew’ today … no time for ‘sleep’. Booker, 49, is New Jersey’s first black senator, and is running on policies around criminal justice reform – including the decriminalisation of marijuana – and the Green New Deal, which is also popular with other Democratic contenders. Fluent in Spanish, he has been long considered one of the party’s rising stars. He announced he would be seeking the Democratic nomination in February this year.";
    currNews.imageURL =
        "https://media.guim.co.uk/31483abb463cb472d2a216ba83777e9dc50e0f48/0_88_3500_2101/500.jpg";
    return currNews;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                backgroundColor: Colors.white,
                elevation: 8.0,
                centerTitle: true,
                title: SizedBox(height: 5.0, child:
                Text(
                  "News",
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                ),
                leading: SizedBox(height: 20.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              ),
            ),
            body: Card()));
  }
}
