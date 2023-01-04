import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downoads = '$baseurl/trending/all/day?api_key=$apiKey';

  static const search = '$baseurl/search/movie?api_key=$apiKey';

  static const hotandnewmovie ='$baseurl/discover/movie?api_key=$apiKey';
    static const hotandnewTv ='$baseurl/discover/tv?api_key=$apiKey';


  
}
