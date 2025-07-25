import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/domain/entities/comic_entity.dart';
import 'package:marvel_app/app/features/domain/entities/item_entity.dart';
import 'package:marvel_app/app/features/domain/entities/thumbnail_entity.dart';
import 'package:marvel_app/app/features/domain/entities/urls_entity.dart';

final characterMock = CharacterEntity(
  id: 1011334,
  name: "3-D Man",
  description: "",
  modified: DateTime.parse("2014-04-29T14:18:17-0400"),
  thumbnail: ThumbnailEntity(
    path: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg",
    extension: "jpg",
  ),
  comics: ComicEntity(
    available: 12,
    collectionURI:
        "http://gateway.marvel.com/v1/public/characters/1011334/comics",
    items: [
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/21366",
        name: "Avengers: The Initiative (2007) #14",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/24571",
        name: "Avengers: The Initiative (2007) #14 (SPOTLIGHT VARIANT)",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/21546",
        name: "Avengers: The Initiative (2007) #15",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/21741",
        name: "Avengers: The Initiative (2007) #16",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/21975",
        name: "Avengers: The Initiative (2007) #17",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/22299",
        name: "Avengers: The Initiative (2007) #18",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/22300",
        name: "Avengers: The Initiative (2007) #18 (ZOMBIE VARIANT)",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/22506",
        name: "Avengers: The Initiative (2007) #19",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/8500",
        name: "Deadpool (1997) #44",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/10223",
        name: "Marvel Premiere (1972) #35",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/10224",
        name: "Marvel Premiere (1972) #36",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/comics/10225",
        name: "Marvel Premiere (1972) #37",
      ),
    ],
    returned: 20,
  ),
  series: ComicEntity(
    available: 3,
    collectionURI:
        "http://gateway.marvel.com/v1/public/characters/1011334/series",
    items: [
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/series/1945",
        name: "Avengers: The Initiative (2007 - 2010)",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/series/2005",
        name: "Deadpool (1997 - 2002)",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/series/2045",
        name: "Marvel Premiere (1972 - 1981)",
      ),
    ],
    returned: 3,
  ),
  stories: ComicEntity(
    available: 21,
    collectionURI:
        "http://gateway.marvel.com/v1/public/characters/1011334/stories",
    items: [
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19947",
        name: "Cover #19947",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19948",
        name: "The 3-D Man!",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19949",
        name: "Cover #19949",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19950",
        name: "The Devil's Music!",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19951",
        name: "Cover #19951",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/19952",
        name: "Code-Name:  The Cold Warrior!",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47184",
        name: "AVENGERS: THE INITIATIVE (2007) #14",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47185",
        name: "Avengers: The Initiative (2007) #14 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47498",
        name: "AVENGERS: THE INITIATIVE (2007) #15",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47499",
        name: "Avengers: The Initiative (2007) #15 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47792",
        name: "AVENGERS: THE INITIATIVE (2007) #16",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/47793",
        name: "Avengers: The Initiative (2007) #16 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/48361",
        name: "AVENGERS: THE INITIATIVE (2007) #17",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/48362",
        name: "Avengers: The Initiative (2007) #17 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/49103",
        name: "AVENGERS: THE INITIATIVE (2007) #18",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/49104",
        name: "Avengers: The Initiative (2007) #18 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/49106",
        name: "Avengers: The Initiative (2007) #18, Zombie Variant - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/49888",
        name: "AVENGERS: THE INITIATIVE (2007) #19",
        type: "cover",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/49889",
        name: "Avengers: The Initiative (2007) #19 - Int",
        type: "interiorStory",
      ),
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/stories/54371",
        name: "Avengers: The Initiative (2007) #14, Spotlight Variant - Int",
        type: "interiorStory",
      ),
    ],
    returned: 20,
  ),
  events: ComicEntity(
    available: 1,
    collectionURI:
        "http://gateway.marvel.com/v1/public/characters/1011334/events",
    items: [
      ItemEntity(
        resourceURI: "http://gateway.marvel.com/v1/public/events/269",
        name: "Secret Invasion",
      ),
    ],
    returned: 1,
  ),
  urls: [
    UrlEntity(
      type: "detail",
      url:
          "http://marvel.com/comics/characters/1011334/3-d_man?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469",
    ),
    UrlEntity(
      type: "wiki",
      url:
          "http://marvel.com/universe/3-D_Man_(Chandler)?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469",
    ),
    UrlEntity(
      type: "comiclink",
      url:
          "http://marvel.com/comics/characters/1011334/3-d_man?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469",
    ),
  ],
);

final characterMockJson = {
  "id": 1011334,
  "name": "3-D Man",
  "description": "",
  "thumbnail": {
    "path": "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg",
    "extension": "jpg"
  },
  "comics": {
    "available": 12,
    "collectionURI": "http://gateway.marvel.com/v1/public/characters/1011334/comics",
    "items": [
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/21366", "name": "Avengers: The Initiative (2007) #14"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/24571", "name": "Avengers: The Initiative (2007) #14 (SPOTLIGHT VARIANT)"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/21546", "name": "Avengers: The Initiative (2007) #15"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/21741", "name": "Avengers: The Initiative (2007) #16"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/21975", "name": "Avengers: The Initiative (2007) #17"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/22299", "name": "Avengers: The Initiative (2007) #18"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/22300", "name": "Avengers: The Initiative (2007) #18 (ZOMBIE VARIANT)"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/22506", "name": "Avengers: The Initiative (2007) #19"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/8500", "name": "Deadpool (1997) #44"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/10223", "name": "Marvel Premiere (1972) #35"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/10224", "name": "Marvel Premiere (1972) #36"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/comics/10225", "name": "Marvel Premiere (1972) #37"}
    ],
    "returned": 20
  },
  "series": {
    "available": 3,
    "collectionURI": "http://gateway.marvel.com/v1/public/characters/1011334/series",
    "items": [
      {"resourceURI": "http://gateway.marvel.com/v1/public/series/1945", "name": "Avengers: The Initiative (2007 - 2010)"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/series/2005", "name": "Deadpool (1997 - 2002)"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/series/2045", "name": "Marvel Premiere (1972 - 1981)"}
    ],
    "returned": 3
  },
  "stories": {
    "available": 21,
    "collectionURI": "http://gateway.marvel.com/v1/public/characters/1011334/stories",
    "items": [
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19947", "name": "Cover #19947", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19948", "name": "The 3-D Man!", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19949", "name": "Cover #19949", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19950", "name": "The Devil's Music!", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19951", "name": "Cover #19951", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/19952", "name": "Code-Name:  The Cold Warrior!", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47184", "name": "AVENGERS: THE INITIATIVE (2007) #14", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47185", "name": "Avengers: The Initiative (2007) #14 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47498", "name": "AVENGERS: THE INITIATIVE (2007) #15", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47499", "name": "Avengers: The Initiative (2007) #15 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47792", "name": "AVENGERS: THE INITIATIVE (2007) #16", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/47793", "name": "Avengers: The Initiative (2007) #16 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/48361", "name": "AVENGERS: THE INITIATIVE (2007) #17", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/48362", "name": "Avengers: The Initiative (2007) #17 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/49103", "name": "AVENGERS: THE INITIATIVE (2007) #18", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/49104", "name": "Avengers: The Initiative (2007) #18 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/49106", "name": "Avengers: The Initiative (2007) #18, Zombie Variant - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/49888", "name": "AVENGERS: THE INITIATIVE (2007) #19", "type": "cover"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/49889", "name": "Avengers: The Initiative (2007) #19 - Int", "type": "interiorStory"},
      {"resourceURI": "http://gateway.marvel.com/v1/public/stories/54371", "name": "Avengers: The Initiative (2007) #14, Spotlight Variant - Int", "type": "interiorStory"}
    ],
    "returned": 20
  },
  "events": {
    "available": 1,
    "collectionURI": "http://gateway.marvel.com/v1/public/characters/1011334/events",
    "items": [
      {"resourceURI": "http://gateway.marvel.com/v1/public/events/269", "name": "Secret Invasion"}
    ],
    "returned": 1
  },
  "urls": [
    {"type": "detail", "url": "http://marvel.com/comics/characters/1011334/3-d_man?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469"},
    {"type": "wiki", "url": "http://marvel.com/universe/3-D_Man_(Chandler)?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469"},
    {"type": "comiclink", "url": "http://marvel.com/comics/characters/1011334/3-d_man?utm_campaign=apiRef&utm_source=cc1952a474bd6ba08844d7255330d469"}
  ]
};
