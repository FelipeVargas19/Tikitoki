
import 'package:tikitoki/domain/datasources/video_post_datasources.dart';
import 'package:tikitoki/domain/entities/video_post.dart';
import 'package:tikitoki/domain/repositories/video_posts_repository.dart' show VideoPostRepository;


class VideoPostsRepositoryImpl implements VideoPostRepository{
  
  
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}