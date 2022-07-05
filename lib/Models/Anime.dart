class Anime {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  bool? aPIDEPRECATION;
  String? aPIDEPRECATIONDATE;
  String? aPIDEPRECATIONINFO;
  List<Results>? results;
  int? lastPage;

  Anime(
      {this.requestHash,
        this.requestCached,
        this.requestCacheExpiry,
        this.aPIDEPRECATION,
        this.aPIDEPRECATIONDATE,
        this.aPIDEPRECATIONINFO,
        this.results,
        this.lastPage});

  Anime.fromJson(Map<String, dynamic> json) {
    requestHash = json['request_hash'];
    requestCached = json['request_cached'];
    requestCacheExpiry = json['request_cache_expiry'];
    aPIDEPRECATION = json['API_DEPRECATION'];
    aPIDEPRECATIONDATE = json['API_DEPRECATION_DATE'];
    aPIDEPRECATIONINFO = json['API_DEPRECATION_INFO'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    lastPage = json['last_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['request_hash'] = this.requestHash;
    data['request_cached'] = this.requestCached;
    data['request_cache_expiry'] = this.requestCacheExpiry;
    data['API_DEPRECATION'] = this.aPIDEPRECATION;
    data['API_DEPRECATION_DATE'] = this.aPIDEPRECATIONDATE;
    data['API_DEPRECATION_INFO'] = this.aPIDEPRECATIONINFO;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['last_page'] = this.lastPage;
    return data;
  }
}

class Results {
  int? malId;
  String? url;
  String? imageUrl;
  String? title;
  bool? airing;
  String? synopsis;
  String? type;
  int? episodes;
  num? score;
  String? startDate;
  String? endDate;
  int? members;
  String? rated;

  Results(
      {this.malId,
        this.url,
        this.imageUrl,
        this.title,
        this.airing,
        this.synopsis,
        this.type,
        this.episodes,
        this.score,
        this.startDate,
        this.endDate,
        this.members,
        this.rated});

  Results.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    imageUrl = json['image_url'];
    title = json['title'];
    airing = json['airing'];
    synopsis = json['synopsis'];
    type = json['type'];
    episodes = json['episodes'];
    score = json['score'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    members = json['members'];
    rated = json['rated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['url'] = this.url;
    data['image_url'] = this.imageUrl;
    data['title'] = this.title;
    data['airing'] = this.airing;
    data['synopsis'] = this.synopsis;
    data['type'] = this.type;
    data['episodes'] = this.episodes;
    data['score'] = this.score;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['members'] = this.members;
    data['rated'] = this.rated;
    return data;
  }
}
