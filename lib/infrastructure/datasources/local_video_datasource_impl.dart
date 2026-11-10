
import 'package:tikitoki/domain/datasources/video_post_datasources.dart';
import 'package:tikitoki/domain/entities/video_post.dart';
import 'package:tikitoki/infrastructure/models/local_video_model.dart' show LocalVideoModel;
import 'package:tikitoki/shared/data/local_video_post.dart' show videoPosts;

class LocalVideoDatasource implements VideoPostDatasource{
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video)=> LocalVideoModel.fromJson(video).toVideoPostEnntity()
      ).toList(); 


      return newVideos;
  }


}