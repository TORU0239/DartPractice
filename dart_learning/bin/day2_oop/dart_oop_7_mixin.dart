void main() {
  var post = Post();
  post.share('The first post.');

  var comment = Comment();
  comment.share('My first comment');

  var video = Video();
  video.share('Share the video');
}

abstract class Model {}

class User extends Model {}

mixin Shareable {
  share(String content) {
    print('Share the $content');
  }
}

class Post extends Model with Shareable {}

class Comment extends Model with Shareable {}

class Video with Shareable {}
