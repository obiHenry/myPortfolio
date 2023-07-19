import 'package:flutter/material.dart';
import 'package:henryportfolio/models/exprience_model.dart';

import '../models/project_model.dart';
import '../models/skill.dart';
import '../models/featured_skill_model.dart';

mixin SystemProperties {
  static const String fontName = 'Montserrat';
  static const String titleFont = 'Lato';
}

mixin PersonalDetails {
  static const logoImage = 'assets/images/business.png';

  static List<Skill> skillList = <Skill>[
    Skill(
      title: 'App Developer',
      image: 'assets/images/skill/android.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Web Developer',
      image: 'assets/images/skill/web.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Backend\nDeveloper in progress',
      image: 'assets/images/skill/backend.png',
      color: Colors.green,
    ),
    Skill(
      title: 'Best\nPartner✌',
      image: 'assets/images/skill/luffy.png',
      color: Colors.green,
    )
  ];
  // static const String whatsappLink = 'https://wa.me/7997217156';

  // static const String githubUserName = 'shashiben';
  // static const String githubDataUrl =
  //     'https://api.github.com/users/$githubUserName/repos';

  static List<ProjectModel> projectsList = [
    ProjectModel(
      id: '0',
      type: ['Website'],
      title: '',
      githubLink: 'https://github.com/shashiben/Hostel-Management',
      websiteLink: 'https://hostel-app-test.herokuapp.com/login',
      description:
          'Created a hostel management web app to track students where they are, and download data of attendance for each day',
      tools: ['Redux', 'Node Js', 'Express Js', 'Mongo DB', 'React Js'],
    ),
    ProjectModel(
        id: '1',
        type: ['Website'],
        title: 'E Commerce',
        githubLink: 'https://github.com/shashiben/MERN-ECommerce',
        websiteLink: 'https://nsd-solutions.herokuapp.com/',
        description:
            'An ECommerce application similar to amazon or flipkart where users can buy products,contains admin panel',
        tools: ['Redux', 'Node Js', 'Express Js', 'Mongo DB', 'React Js']),
    ProjectModel(
        id: '2',
        type: ['Application'],
        title: 'Flutter Custom Graph',
        githubLink: 'https://github.com/shashiben/flutter_custom_graph',
        description:
            'Created a flutter package for building customized and aesthetic graphs.Built with the help of custom graphs.',
        tools: ['Flutter']),
    ProjectModel(
        id: '3',
        type: ['Application'],
        title: 'Face Mask Detection',
        githubLink: 'https://github.com/shashiben/flutter-face-mask-detection',
        description:
            'Mobile Application to detect whether person wears a mask or not.Built with Flutter and tensorflow lite.',
        tools: ['Flutter', 'Tflite', 'CNN', 'Python']),
    ProjectModel(
        id: '4',
        type: ['Website'],
        title: 'FReMP Stack',
        githubLink: 'https://github.com/shashiben/FReMP-Stack',
        description:
            'Created a simple application to show how to perform crud operations using flask,react and mongo db and includes how to search by name.',
        tools: ['Flask', 'React', 'Mongo DB', 'Python']),
    // ProjectModel(
    //     id: '5',
    //     type: ['Opencv'],
    //     title: 'Motion Detection Using OpenCv',
    //     githubLink: 'https://github.com/shashiben/Motion-Detection-with-Opencv',
    //     description:
    //         'Detects motion of an object or a person and draws bounding box over it',
    //     tools: ['Python', 'OpenCv']),
    // ProjectModel(
    //     id: '6',
    //     type: ['Website', 'Application'],
    //     title: 'Alarm Managaer',
    //     githubLink: 'https://github.com/shashiben/Flutter-Alarm',
    //     description:
    //         'An application to schedule alarms on multiple devices supports for both android and ios,built using mongo db and flutter.',
    //     tools: ['Flutter', 'Mongo DB', 'Node Js', 'Express Js']),
    // ProjectModel(
    //     id: '7',
    //     type: ['Application', 'Website'],
    //     title: 'Cache With Hive',
    //     githubLink: 'https://github.com/shashiben/Flutter-anime',
    //     description:
    //         'Application which shows how to cache rest api data,so that user can view data even though he is offline.Presently supports for web, android and ios',
    //     tools: ['Flutter', 'Hive']),
    // ProjectModel(
    //     id: '8',
    //     type: ['Application'],
    //     title: 'College Fest App',
    //     playstoreLink:
    //         'https://play.google.com/store/apps/details?id=com.cse.cynosure',
    //     githubLink: 'https://github.com/shashiben/College-Fest-app',
    //     description:
    //         'Created an app for college fest where users can register for events and get live notifications regarding events and has payment gateway integration.',
    //     tools: ['Java', 'Firebase', 'Paytm']),
    // ProjectModel(
    //     id: '9',
    //     type: ['Website', 'Application'],
    //     websiteLink: 'https://shashiben.github.io',
    //     description:
    //         'Created portfolio using flutter,Supports for mac os,windows,linux,web,ios,android',
    //     githubLink: 'https://github.com/shashiben/portfolio',
    //     title: 'Portfolio',
    //     tools: ['Flutter']),
    // ProjectModel(
    //     id: '10',
    //     type: ['Backend'],
    //     title: 'Node Mailer',
    //     githubLink: 'https://github.com/shashiben/node-mailer',
    //     description:
    //         'Backend for sending mails.Used to add functionality of sending mail without opening any other applications',
    //     tools: ['Node JS', 'Email JS', 'Express JS'])
  ];
  static const List<String> skillsList = [
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
  ];

  static List<FeaturedSkillModel> featuredSkills = [
    FeaturedSkillModel(name: 'Mobile Application Developement', percent: 95),
    FeaturedSkillModel(name: 'Backend Developer', percent: 65),
    FeaturedSkillModel(name: 'Web Developer', percent: 50),
  ];

  static const List<ExperienceModel> experienceList = [
    ExperienceModel(
        title: 'TopRecur',
        position: 'Internship',
        timePeriod: 'Jan 2021 - Feb 2021',
        description: [
          'Worked as an intern for mobile app developement and front end developer',
          'Application is similar to Workflowy for note taking',
          'Added export service of all the data present in the parent node',
          'Added Functionality to customize text styling dynamically'
        ],
        tools: [
          'Flutter',
          'Html',
          'Css',
          'JS',
          'React',
          'Flask',
          'Celery',
          'Mongo DB'
        ]),
    ExperienceModel(
        title: 'ITI Hindupur',
        position: 'Freelancer',
        timePeriod: 'Dec 2020 - Jan 2021',
        description: [
          'Developed UI for ITI Hindupur and developed mobile application',
          'Designed Admin Panel to send notifications or add notes or create tests',
          'Designed College Application to create quiz for different batches',
          'Able to add or delete or update notes',
          'Added Contact Support using Freshchat',
          'Can check analysis of his previous test'
        ],
        tools: [
          'Flutter',
          'Firebase',
          'FreshChat',
          'Figma'
        ]),
    ExperienceModel(
        title: 'Tefso',
        position: 'Mobile App Developer',
        timePeriod: 'Aug 2020 - Sep 2021',
        description: [
          'Worked collaboratively with designer to bring mobile app to life',
          'Developed UI for application similar to doubtnut',
          'Created frontend application to check user profile and quiz',
          'Added voice support for adding questions',
          'Designed UI for asking doubts or to check others questions.',
        ],
        tools: [
          'Flutter',
          'Figma'
        ]),
    ExperienceModel(
      tools: ['Firebase', 'DialogFlow', 'Agora', 'GCP', 'Node js', 'Mongo'],
      timePeriod: 'May 2020 - July 2020',
      title: 'Naaniz',
      position: 'Developement Team Lead',
      description: [
        'Managing a team of 25 members, able to divide and assign works to them',
        'Designed DB Schema and made the UI of the app responsive',
        'Integrated Payment Gateway Integration (Razorpay)',
        'Implemented Video Broadcasting feature,Chat bot,Voice Search'
      ],
    ),
  ];
  // static const String email = 'kumarshashi5294@gmail.com';

  static const String shortIntro =
      'Full stack developer, and specialize in building efficient Flutter Applications that just work across all platforms and browsers. I care deeply about building interfaces that are usable and pleasant for the most number of people possible. Skilled with working as a team and incorporating input into ProjectModels. Strong eye for detail and tenacity to never quit on something until it is absolutely perfect. always learning and aspires to be better.';
  static const String intro =
      "I started my career into software developement as android developer in 2018. I enrolled for an internship where I learnt about programming in general, learnt and built first android applications in native android, the internship lasted for 6 months. after that i continued building and exploring on my own, until Later in 2020 I heard about flutter which helps in building cross platform applications. After researching about flutter, I applied for an internship and got to learn and work for a full year, through which I was able to learn communication skills and code architectures and built a shopping clothing app together with my team for the comapny at the end of the internship. After that I worked as a freelancer for various persons and company until now, I gained experience of how to build applications in production level. I also learnt web basis like HTML, CSS and Javascript along the way. Presently I'm focusing on backend developement. I learnt how to create API using spring boot, And working ProjectModels on it. I'm currently learning SQL and postgreSQL.";
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
