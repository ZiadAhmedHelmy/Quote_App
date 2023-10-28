class QuoteModel {
  String? qotdDate;
  Quote? quote;

  QuoteModel({this.qotdDate, this.quote});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    qotdDate = json['qotd_date'];
    quote = json['quote'] != null ? Quote.fromJson(json['quote']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['qotd_date'] = this.qotdDate;
    if (this.quote != null) {
      data['quote'] = this.quote!.toJson();
    }
    return data;
  }
}

class Quote {
  int? id;
  num? favoritesCount;
  bool? dialogue;
  bool? favorite;
  List<String>? tags;
  String? url;
  num? upvotesCount;
  num? downvotesCount;
  String? author;
  String? authorPermalink;
  String? body;

  Quote(
      {this.id,
        this.favoritesCount,
        this.dialogue,
        this.favorite,
        this.tags,
        this.url,
        this.upvotesCount,
        this.downvotesCount,
        this.author,
        this.authorPermalink,
        this.body});

  Quote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    favoritesCount = json['favorites_count'];
    dialogue = json['dialogue'];
    favorite = json['favorite'];
    tags = json['tags'].cast<String>();
    url = json['url'];
    upvotesCount = json['upvotes_count'];
    downvotesCount = json['downvotes_count'];
    author = json['author'];
    authorPermalink = json['author_permalink'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['favorites_count'] = this.favoritesCount;
    data['dialogue'] = this.dialogue;
    data['favorite'] = this.favorite;
    data['tags'] = this.tags;
    data['url'] = this.url;
    data['upvotes_count'] = this.upvotesCount;
    data['downvotes_count'] = this.downvotesCount;
    data['author'] = this.author;
    data['author_permalink'] = this.authorPermalink;
    data['body'] = this.body;
    return data;
  }
}