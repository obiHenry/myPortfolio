import 'package:flutter/material.dart';
import 'package:henryportfolio/models/exprience_model.dart';

import '../models/project_model.dart';
import '../models/skill_model.dart';
import '../models/featured_skill_model.dart';

mixin SystemProperties {
  static const String fontName = 'Montserrat';
  static const String titleFont = 'Lato';
}

mixin PersonalDetails {
  static const logoImage = 'assets/images/business.png';

  static const List<String> shortIntro = [
    'A Full stack developer who specializes in building efficient cross platform flutter application.',
    'Also skilled in working effectively both as a team (under close scrutiny), and a "lone ranger" (with no one breathing under my neck)',
    'Because of my keen "attention-to-details" and "never-quit-mentality", I see every project to fruition.',
    'Finally I am always learning and striving to be better. If you think we are a fit, clcik on the "Get In Touch" button below let us chat.'
  ];

  static const String intro =
      "I started my career into software developement as android developer in 2018. I enrolled for an internship where I learnt about programming in general, learnt and built first android applications in native android, the internship lasted for 6 months. after that i continued building and exploring on my own, until Later in 2020 I heard about flutter which helps in building cross platform applications. After researching about flutter, I applied for an internship and got to learn and work for a full year, through which I was able to learn communication skills and code architectures and built a shopping clothing app together with my team for the comapny at the end of the internship. After that I worked as a freelancer for various persons and company until now, I gained experience of how to build applications in production level. I also learnt web basis like HTML, CSS and Javascript along the way. Presently I'm focusing on backend developement. I learnt how to create API using spring boot, And working ProjectModels on it. I'm currently learning SQL and postgreSQL.";

  static List<Skill> homeSkillList = <Skill>[
    Skill(
      title: 'App Developer',
      image: 'assets/images/android.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Web Developer',
      image: 'assets/images/web.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Backend\nDeveloper in progress',
      image: 'assets/images/backend.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Best\nPartner✌',
      image: 'assets/images/luffy.png',
      color: Colors.green,
    )
  ];

  static const List<String> aboutSkillsList = [
    'Flutter',
    'REST API with spring boot',
    'SQL/postgresql in Progress',
    'Android Developer',
    'Git',
    'Firebase',
    'Java',
    'OOPS',
    'Html',
    'Css',
    'Java script',
    'Problem Solving',
    'DSA'
  ];

  static List<FeaturedSkillModel> featuredSkills = [
    FeaturedSkillModel(name: 'Mobile Application Developement', percent: 95),
    FeaturedSkillModel(name: 'Backend Developer', percent: 65),
    FeaturedSkillModel(name: 'Web Developer', percent: 50),
  ];

  static List<ProjectModel> projectsList = [
    ProjectModel(
      id: '0',
      type: ['Application'],
      title: 'E Meet',
      githubLink: 'https://github.com/obiHenry/E_meet',
      description:
          'Created a social media app with android native where you can post, add friends, follow, unfollow, like, comment and chat with friends just like facebook.',
      tools: [
        'Java',
        'Firebase',
        'Android Native',
      ],
    ),
    ProjectModel(
        id: '1',
        type: ['Application'],
        title: 'Readers_pub_book',
        githubLink: 'https://github.com/obiHenry/Readers_pub_book',
        description:
            'A book  application similar to dreams built with android native  where users can come and read books available on the app, save to favourite and add to library has admin panel the owner adds these books her self',
        tools: [
          'Java',
          'Firebase',
          'Android Native',
        ]),
    ProjectModel(
        id: '2',
        type: ['Application'],
        title: 'Expense_planner',
        githubLink: 'https://github.com/obiHenry/Expense_planner',
        description:
            'Created a flutter app  for planning all expenses made in a week or month depends on how you want to calculate either weekly, monthly or yearly.',
        tools: ['Flutter']),
    ProjectModel(
        id: '3',
        type: ['Application'],
        title: 'Cloth Shopping App',
        websiteLink:
            'https://drive.google.com/file/d/11JAoRkg5avM5rI_BhOxncPE8ZqY2oZsb/view?usp=drivesdk',
        description:
            'Flutter Application used to buy customized cloths online, you can select design you want from the app and give your measurement on the app, then place an order, then the order will be taken and delivered to you within the time stated on the app',
        tools: [
          'Flutter',
          'Firebase',
        ]),
    ProjectModel(
        id: '4',
        type: ['Application'],
        title: 'My final project',
        websiteLink:
            'https://drive.google.com/file/d/1JQM-idm9O83mqKIIUm4U1cTPYsfDSZaJ/view?usp=drivesdk',
        description:
            'Created a simple application to record students id card to avoid loss and easy retrieval when needed.',
        tools: [
          'Flutter',
          'Node Js',
          'Mongo DB',
        ]),
    ProjectModel(
        id: '5',
        type: ['Application'],
        title: 'The adventures of Muna',
        playstoreLink:
            'https://play.google.com/store/apps/details?id=com.safetychic.aom',
        appstoreLink:
            'https://apps.apple.com/ng/app/the-adventures-of-muna/id1633517832',
        description:
            'The Adventures of Muna is a child safety education game designed to teach children different safety topics in a fun and memorable way. It leverages simple safety messaging, audiovisual features, problem-solving training, and an African representation to present complex safety knowledge in a way that children will learn and remember',
        tools: ['flutter', 'Firebase']),
    ProjectModel(
        id: '6',
        type: ['Application'],
        title: 'Social Exchange',
        appstoreLink:
            'https://apps.apple.com/ng/app/corps-rapport-exchange/id6446414458',
        playstoreLink:
            'https://play.google.com/store/apps/details?id=com.magma.corpsrapport',
        description:
            'I created this app for an organisation, It\'s a flutter application created for exchanging information using nfc and and barcode scanning, can be used to form business cards too.',
        tools: [
          'Flutter',
          'Firebase',
        ]),
    ProjectModel(
        id: '7',
        type: ['Website'],
        title: 'Syticks',
        appstoreLink:
            'https://apps.apple.com/ng/app/syticks-for-businesses/id1663739558',
        description:
            'Application which is used to create tickets for events and allows audience to buy ticket from the app, after events organisers can withdraw the funds they made.',
        tools: ['Flutter', 'Java', 'API']),
    ProjectModel(
        id: '8',
        type: ['Website'],
        title: 'springboot-webapp',
        githubLink: 'https://github.com/obiHenry/springboot-webapp',
        description: 'Created a spring boot web app for inventory.',
        tools: ['Java', 'Springboot']),
    ProjectModel(
        id: '9',
        type: ['Backend'],
        githubLink: 'https://github.com/obiHenry/api-configuration',
        description:
            'created API for social media app for user creation and posts',
        title: 'Social media API creation',
        tools: ['Java', 'Spring boot', 'h2-database']),
    ProjectModel(
        id: '10',
        type: ['Website'],
        title: 'Portfolio',
        githubLink: 'https://github.com/obiHenry/myPortfolio',
        description:
            'Created portfolio using flutter,Supports for mac os,windows,linux,web,ios,android',
        tools: [
          'Flutter',
        ])
  ];

  static const List<ExperienceModel> experienceList = [
    ExperienceModel(
        title: 'IDK',
        position: 'Internship',
        timePeriod: 'AUG 2018 - JAN 2019',
        description: [
          'Worked as an intern for mobile app developement and front end developer',
          'I conducted  trial runs of program to be sure they produced reauired ressult',
          'I learnt how to style texts and organise an xml file ',
          'Added Functionality to customize text styling dynamically'
        ],
        tools: [
          'Android studio',
          'Java',
          'MySQL',
        ]),
    ExperienceModel(
      tools: [
        'Firebase',
        'Flutter',
      ],
      timePeriod: 'AUG 2020 - MAR 2021',
      title: 'Customized Native',
      position: 'Internship',
      description: [
        'Managing a team of 4 as scrum master',
        'Built the the clothing admin section',
        'Handled the whole clude involved in the admin section',
        'Integrated Payment Gateway Integration (Flutterwave)',
        'Implemented Video Broadcasting feature,',
      ],
    ),
    ExperienceModel(
        title: 'Safety chick',
        position: 'Freelancer',
        timePeriod: 'APR 2022 - JUL 2022',
        description: [
          'Developed UI for safety chic app and developed mobile application',
          'Worked with a team member to Designed game ui section',
          'Designed College Application to create quiz for different batches',
          'worked with firebase to create user accounts'
        ],
        tools: [
          'Flutter',
          'Firebase',
          'Figma',
        ]),
    ExperienceModel(
        title: 'Syticks',
        position: 'Mobile App Developer',
        timePeriod: 'May 2022 - Till date',
        description: [
          'Worked collaboratively with designer and backend developer to bring mobile app to life',
          'Developed UI for application similar to doubtnut',
          'Created frontend section to request withdrawal after 24 hours ',
          'Added account submission page',
          'Designed UI for displaying past and present events.',
        ],
        tools: [
          'Flutter',
          'Figma',
          'API',
        ]),
    ExperienceModel(
      tools: ['Firebase', 'Flutter', 'NFC', 'Figma', 'Firebase dynamic link'],
      timePeriod: 'FEB 2023 - Till date',
      title: 'Corps Rapport',
      position: 'Mobile App Developer',
      description: [
        'Developed and designed the whole app',
        'Implemented NFC feature for scanning information stored on the card',
        'Integrated bar code scanning to get information',
        'Implemented deeplinking using firebase dynamic links',
        'implemented share function used to share user information and save the contacts '
      ],
    ),
  ];
  static const String email = 'obihenry578@gmail.com';
  static const String location =
      'Government house street, Anambra State, Nigeria';

  static const String call = '+2349056016875';
}

mixin EducationDetails {
  static const String primaryTimeline = '2005 - 2011';
  static const String secondaryTimeline = '2011 - 2017';
  static const String universityTimeline = '2017 - 2021';

  static const String primaryName = 'Devans Creative Primary School';
  static const String secondaryName = 'Devans Comprehensive Secondary School';
  static const String universityName = 'Nnamdi Azikiwe university';

  static const String primaryStream = 'First School Leeaving Cert (FSLC)';
  static const String secondaryStream = 'SSCE';
  static const String universityStream = 'Computer Science (BSC)';

  static const double primaryPercentage = 100;
  static const double secondaryPercentage = 100;

  static const double universityPercentage = 100;
}

mixin SocialLinks {
  static const String linkedinUrl =
      'https://www.linkedin.com/in/henry-obi-140b261b2';
  static const String twitterLink = 'https://twitter.com/thehenryobi';
  static const String githubLink = 'https://github.com/obihenry';
  static const String facebookLink =
      'https://www.facebook.com/obi.henry.796?mibextid=ZbWKwL';
  static const String whatsappLink = 'https://wa.me/9056016875';
  static const String instagramLink =
      'https://instagram.com/obi_henry_?igshid=MzNlNGNkZWQ4Mg==';
}
