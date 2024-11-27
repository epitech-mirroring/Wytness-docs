import 'package:mobile/model/apis.module.dart';

List<ApiModel> apis = [
  ApiModel(
    name: 'Apple Music',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Apple_Music_icon.svg/1200px-Apple_Music_icon.svg.png',
    description:
        'Apple Music is a music streaming service developed by Apple Inc. Users select music to stream to their device on-demand, or they can listen to existing playlists.',
    actions: [
      'Get user playlists',
      'Get user favorite songs',
      'Get user favorite albums',
      'Get user favorite artists',
    ],
  ),
  ApiModel(
    name: 'Open AI',
    imageUrl:
        'https://play-lh.googleusercontent.com/8XCwpfWc9YkehwhrhoID6PGhs5SaSJoocS0oTBA8EsGFGLrj32oIYu5UKsIO7wdU1PQZ',
    description: 'OpenAI is an artificial intelligence research laboratory.',
    actions: [
      'Generate text',
      'Generate image',
      'Generate code',
    ],
  ),
  ApiModel(
    name: 'Spotify',
    imageUrl:
        'https://play-lh.googleusercontent.com/Gk-KGYaWDqWnAY8UdsmJIqtai3lPBo0CGO20plP43B0VV7ifqr4APihwWVHcLhJCoyfE=w240-h480-rw',
    description:
        'Spotify is a digital music, podcast, and video streaming service that gives you access to millions of songs and other content from artists all over the world.',
    actions: [
      'Get user playlists',
      'Get user favorite songs',
      'Get user favorite albums',
      'Get user favorite artists',
    ],
  ),
  ApiModel(
    name: 'SMTP',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/fr/a/a7/Mail_%28Apple%29_logo.png',
    description:
        'Simple Mail Transfer Protocol is an Internet standard for email transmission.',
    actions: [
      'Send email',
      'Get email',
    ],
  ),
  ApiModel(
    name: 'Discord',
    imageUrl:
        'https://yt3.googleusercontent.com/Ws_BpAWD46mOjCW3XCnsZ0YmghW-6fhMf6d9pvCvb4g8JJftgvL54039U1mgh31OchR4ApMTezc=s900-c-k-c0x00ffffff-no-rj',
    description:
        'Discord is a proprietary freeware VoIP application and digital distribution platform designed for creating communities ranging from gamers to education and businesses.',
    actions: [
      'Get user servers',
      'Get user channels',
      'Get user messages',
    ],
  ),
  ApiModel(
    name: 'HomeAssistant',
    imageUrl:
        'https://yt3.googleusercontent.com/w0pMxvi-xTgbiaA-eS5uafZuUt8zVnPCGx0Bu9QPUn5qeFfrZN_K5Fs9kfQyy-c4CCC85fWb=s900-c-k-c0x00ffffff-no-rj',
    description:
        'Home Assistant is an open-source home automation platform running on Python 3.',
    actions: [
      'Get user devices',
      'Get user sensors',
      'Get user automations',
    ],
  ),
  ApiModel(
    name: 'Alexa',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/c/cc/Amazon_Alexa_App_Logo.png',
    description:
        'Alexa is a virtual assistant AI technology developed by Amazon.',
    actions: [
      'Get user devices',
      'Get user sensors',
      'Get user automations',
    ],
  ),
  ApiModel(
    name: 'Naolib',
    imageUrl:
        'https://entreprises.nantesmetropole.fr/wp-content/uploads/2023/08/23/naolib-logo-2-1600-1024x538-1.png',
    description: 'Naolib is a library for the Nantes area.',
    actions: [
      'When does the tram arrive?',
      'When does the bus arrive?',
      'When does the bus leave?',
    ],
  ),
  ApiModel(
    name: 'Weather Channel',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/The_Weather_Channel_logo_2005-present.svg/1200px-The_Weather_Channel_logo_2005-present.svg.png',
    description: 'The Weather Channel is an American pay television channel.',
    actions: [
      'Get weather',
      'Get temperature',
      'Get humidity',
    ],
  ),
  ApiModel(
    name: 'IZLY',
    imageUrl:
        'https://play-lh.googleusercontent.com/GptA8ngrMmbfDRg_OZvHCoMfLeRZffuzv1zu1yZg9BEeTXAihz2NZTJX368v7zH0ACM',
    description: 'IZLY is a French electronic payment system.',
    actions: [
      'Get user balance',
      'Get user transactions',
    ],
  ),
  ApiModel(
    name: 'Revolut',
    imageUrl:
        'https://play-lh.googleusercontent.com/9Agn2TZHIyOR4GGB4LcOU4VXwE2OcK47qwGY8XPZXz4u55ehNfpGuEBeNq_cbvH0z5A',
    description:
        'Revolut is a British financial technology company that offers banking services.',
    actions: [
      'Get user balance',
      'Get user transactions',
    ],
  ),
  ApiModel(
    name: 'GitHub',
    imageUrl: 'https://download.logo.wine/logo/GitHub/GitHub-Logo.wine.png',
    description:
        'GitHub is a provider of Internet hosting for software development and version control using Git.',
    actions: [
      'Get user repositories',
      'Get user commits',
      'Get user issues',
    ],
  ),
  ApiModel(
    name: 'Airtable',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQelaD7G6XIdlUTV3uvwT9hwmb1_ZFyhzqKjA&s',
    description:
        'Airtable is a cloud collaboration service headquartered in San Francisco.',
    actions: [
      'Get user tables',
      'Get user records',
    ],
  ),
  ApiModel(
    name: 'Shazam',
    imageUrl:
        'https://play-lh.googleusercontent.com/5lava_0Xhym4yLvQFQ3kaI3-4RnB8teXHmgr0Y61HMUJzoXEQQd3EXnVg4DtOT3Bezyp',
    description:
        'Shazam is a commercial mobile phone-based music identification service.',
    actions: [
      'Get user favorite songs',
      'Get user favorite artists',
    ],
  ),
  ApiModel(
    name: 'Notion',
    imageUrl:
        'https://cdn.jaimelesstartups.fr/wp-content/uploads/2022/02/illustration%20à%20propos%20de%20la%20startup%20Notion%20est%20disponible%20en%20Français.png',
    description:
        'Notion is an application that provides components such as databases, kanban boards, wikis, calendars, and reminders.',
    actions: [
      'Get user databases',
      'Get user boards',
      'Get user wikis',
      'Get user calendars',
      'Get user reminders',
    ],
  ),
  ApiModel(
    name: 'Slack',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Slack_icon_2019.svg/1024px-Slack_icon_2019.svg.png',
    description: 'Slack is a proprietary business communication platform.',
    actions: [
      'Get user channels',
      'Get user messages',
    ],
  ),
  ApiModel(
    name: 'Trello',
    imageUrl:
        'https://img.utdstc.com/icon/b34/f31/b34f31986c7b0aabeb11e54b2e6985c6958d4e0f64a01ab10eafc8ede2a517ff:200',
    description: 'Trello is a web-based list-making application.',
    actions: [
      'Get user boards',
      'Get user lists',
      'Get user cards',
    ],
  ),
  ApiModel(
    name: 'Google trad',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Google_Translate_logo.svg/1200px-Google_Translate_logo.svg.png',
    description:
        'Google Translate is a multilingual neural machine translation service.',
    actions: [
      'Translate text',
    ],
  ),
  ApiModel(
    name: 'Bluesky',
    imageUrl:
        'https://images.sftcdn.net/images/t_app-icon-m/p/f33c96fc-8d8b-42dc-91c3-feb5d7f1da14/2457837492/bluesky-social-logo',
    description: 'Bluesky is a decentralized social media protocol.',
    actions: [
      'Get user posts',
      'Get user followers',
      'Get user following',
    ],
  ),
];
