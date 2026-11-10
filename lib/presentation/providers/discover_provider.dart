import 'package:flutter/material.dart';
import 'package:tikitoki/domain/entities/video_post.dart';
import 'package:tikitoki/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepository videoRepository;

  bool initialLoading=true;
  List<VideoPost> videos =[];

  DiscoverProvider({
    required this.videoRepository});

  Future<void> loadNextPage() async{

    //sawait Future.delayed(const Duration(seconds: 2));

    //final List<VideoPost> newVideos = videoPosts.map(
      //(video)=> LocalVideoModel.fromJson(video).toVideoPostEnntity()
      //).toList(); 

    final newVideos = await videoRepository.getTrendingVideosByPage(1);  

    videos.addAll(newVideos);
    initialLoading = false;  
    notifyListeners();
  }

}