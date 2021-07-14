import 'package:leafi/classes/CommunityC.dart';

class CommunityListPage {


  List<CommunityC> communityList = [

    CommunityC(
        feedId: 1,
        type: 0,
        title: 'rohit.shetty12',
        description:
        'I have been facing a few possible symptoms of skin cancer. I have googled the possibilities but i can thought i did asked the community instead...',
        category: 'DIET',
        subcategory: 'Asked a question',
        time: '1 min',
        name: 'What Are The Sign And Symptoms Of Skin Cancer?',
        avatarImg: 'https://www.w3schools.com/w3images/avatar1.png',
        bannerImg: 'https://www.w3schools.com/w3images/avatar1.png',
        location: 'Peninsula park Andheri, Mumbai',
        likes: 24,
        comments: '24',
        members: '24'),

    CommunityC(
        feedId: 2,
        type: 0,
        title: 'rohit.shetty02',
        description:
        'My husband has his 3 days transpalnt assessment in Newcastle next month, strange mix of emotions. for those that have been thought this how long did it take following assessment was it intil you were t...',
        category: 'DIET',
        subcategory: 'Asked a question',
        time: '10 min',
        name: '',
        avatarImg: 'https://www.w3schools.com/w3images/avatar1.png',
        bannerImg: 'https://www.w3schools.com/w3images/avatar1.png',
        location: 'Peninsula park Andheri, Mumbai',
        likes: 23,
        comments: '2',
        members: '12'),

    CommunityC(
        feedId: 3,
        type: 0,
        title: 'username1275',
        description: '',
        category: 'DIET',
        subcategory: 'Asked a question',
        time: '10 min',
        name: 'Cancer Meet At Rajiv Gandhi National Park',
        avatarImg: 'https://www.w3schools.com/w3images/avatar1.png',
        bannerImg: 'https://www.w3schools.com/w3images/avatar1.png',
        location: 'Peninsula park Andheri, Mumbai',
        likes: 23,
        comments: '2',
        members: '12'),

    CommunityC(
        feedId: 4,
        type: 0,
        title: 'super987',
        description: '#itsokeyto #cancerserviver',
        category: 'LIFESTYLE',
        subcategory: 'Asked a question',
        time: '10 min',
        name: 'Something To Motivate You',
        avatarImg: 'https://www.w3schools.com/w3images/avatar4.png',
        bannerImg: 'https://www.w3schools.com/w3images/avatar4.png',
        location: 'Peninsula park Andheri, Mumbai',
        likes: 25,
        comments: '24',
        members: '18'),

    CommunityC(
        feedId: 5,
        type: 0,
        title: 'username1275',
        description: '#itsokeyto #cancerserviver',
        category: 'LIFESTYLE',
        subcategory: 'created a poll',
        time: '1 min',
        name: 'What is the best hospital in india for the cancer?',
        avatarImg: 'https://www.w3schools.com/w3images/avatar4.png',
        bannerImg: 'https://www.w3schools.com/w3images/avatar4.png',
        location: 'Peninsula park Andheri, Mumbai',
        likes: 25,
        comments: '24',
        members: '18'),
  ];


  // 2. Stream controller
  // final _feedListStreamController = StreamController<List<Feed>>();
  // final _feedLikeIncrementController = StreamController<Feed>();
  // final _feedLikeDecrementController = StreamController<Feed>();

  // 3. Stream Sink Getter
  // Stream<List<Feed>> get feedListStream => _feedListStreamController.stream;
  // StreamSink<List<Feed>> get feedListSink => _feedListStreamController.sink;

  // StreamSink<Feed> get feedLikeIncrement => _feedLikeIncrementController.sink;
  // StreamSink<Feed> get feedLikeDecrement => _feedLikeDecrementController.sink;

  // Constructor
  // FeedBloc()
  // {
  //   _feedListStreamController.add(feedList);
  //   _feedLikeIncrementController.stream.listen(_incrementLike);
  //   _feedLikeDecrementController.stream.listen(_decrementLike);
  // }

  // _incrementLike(Feed feed)
  // {
  //   int like = feed.likes;
  //   int incrementLike = like + 1;
  //   feedList[feed.feedId - 1].likes = like + incrementLike;
  //   feedListSink.add(feedList);
  // }

  // _decrementLike(Feed feed)
  // {
  //   int like = feed.likes;
  //   int decrementLike = like - 1;
  //   feedList[feed.feedId - 1].likes = like - decrementLike;
  //   feedListSink.add(feedList);
  // }

  // dispose()
  // {
  //   _feedLikeDecrementController.close();
  //   _feedLikeIncrementController.close();
  //   _feedListStreamController.close();
  // }
}