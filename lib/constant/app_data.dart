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
  static const logoImage = 'assets/images/profile.jpg';

  static const List<String> shortIntro = [
    'Senior Flutter Developer with 7+ years building production iOS and Android apps — including 4+ years specializing in cross-platform Flutter development.',
    'I\'ve led end-to-end mobile architecture for real-time, security-sensitive apps — from clean architecture design to CI/CD pipelines that catch bugs before users ever see them.',
    'I care about the details most developers skip: error handling that never crashes silently, verification flows that are actually secure, and code that holds up at scale — not just in the demo.',
    'Currently open to senior Flutter roles, remote or hybrid. Take a look at what I\'ve built below, or jump straight to Get In Touch — I\'d love to talk.',
  ];

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

  static const String intro =
      "I'm a Flutter developer with 7+ years in software development, including 4+ years specializing in cross-platform mobile apps. I started as an Android developer in 2018, building native apps during a 6-month internship before discovering Flutter in 2020. After a year-long internship building a production shopping app, I transitioned to freelance and contract work — building apps for clients and companies across e-commerce, delivery, and fintech use cases. Along the way I picked up backend fundamentals (Spring Boot, REST APIs, SQL) to better understand the full system my apps connect to — but Flutter and mobile architecture remain where I focus and specialize. I'm currently building production apps with Clean Architecture, Riverpod/BLoC state management, and CI/CD pipelines, with a particular focus on secure, real-time mobile experiences.";

  static const List<String> aboutSkillsList = [
    'Flutter & Dart',
    'Clean Architecture',
    'Riverpod / BLoC',
    'Firebase',
    'REST API Integration',
    'CI/CD (GitHub Actions)',
    'Git & Version Control',
    'Android (Native/Java)',
    'Spring Boot (REST APIs)',
    'SQL / PostgreSQL',
    'HTML / CSS / JavaScript',
    'Problem Solving & DSA',
  ];

  static List<FeaturedSkillModel> featuredSkills = [
    FeaturedSkillModel(name: 'Flutter / Mobile Development', percent: 95),
    FeaturedSkillModel(
        name: 'Clean Architecture & State Management', percent: 90),
    FeaturedSkillModel(
        name: 'API Integration & Backend Fundamentals', percent: 75),
  ];

  static List<ProjectModel> projectsList = [
    ProjectModel(
      id: '0',
      type: ['Application'],
      title: 'HutDrop',
      appstoreLink: 'https://apps.apple.com/us/app/hutdrop-store/id6762197903',
      playstoreLink:
          'https://play.google.com/store/apps/details?id=com.greylynx.hutdropForRiders',
      description:
          'A Nigerian delivery platform with merchant and rider-facing apps. Supports the full real-time order lifecycle — notification, confirmation, preparation, pickup, and delivery — with live GPS tracking visible to merchants and customers simultaneously.',
      tools: [
        'Flutter',
        'Firebase',
        'Google Maps SDK',
        'FCM',
        'GitHub Actions'
      ],
      role:
          'Co-founded HutDrop and led end-to-end development of the rider and the merchant app, from architecture through App Store and Play Store deployment.',
      challenge:
          'Built an event-driven real-time order system, engineered OTP-based secure pickup verification, and set up a CI/CD pipeline with automated tests so every release ships with confidence.',
    ),
    ProjectModel(
      id: '1',
      type: ['Application'],
      title: 'Behaviour Buddy',
      playstoreLink:
          'https://play.google.com/store/apps/details?id=com.exodussolutions.behaviorbuddy',
      appstoreLink:
          'https://apps.apple.com/us/app/behaviour-buddy/id6499356065',
      description:
          'A child-focused behavior and rewards app with separate user and admin interfaces, designed around onboarding, missions, and reward flows for young users.',
      tools: ['Flutter', 'BLoC/Provider'],
      role:
          'Led UI/UX design and development, working with cross-functional stakeholders to deliver pixel-perfect, responsive interfaces. Mentored junior contributors on Flutter architecture and state management.',
      challenge:
          'Applied child-friendly design principles — color theory, typography, simplified navigation — to make complex flows usable for young children.',
    ),
    ProjectModel(
      id: '2',
      type: ['Application'],
      playstoreLink:
          'https://play.google.com/store/apps/details?id=com.app.syticks&pli=1',
      title: 'Syticks',
      appstoreLink:
          'https://apps.apple.com/ng/app/syticks-for-businesses/id1663739558',
      description:
          'A multi-category ticketing platform supporting events, cinema, and bus ticketing, with an in-app wallet for secure payments and a location-aware event discovery feature.',
      tools: ['Flutter', 'REST API', 'In-app Wallet'],
      role:
          'Engineered the RESTful network layer and built the secure-by-design payment architecture within a 4-person Agile team.',
      challenge:
          'Shipped with 0 post-release crashes across 104 installs at first deployment, including a 0% crash rate across all payment flows.',
    ),
    ProjectModel(
      id: '3',
      type: ['Application'],
      title: 'Corps Rapport Exchange',
      appstoreLink:
          'https://apps.apple.com/ng/app/corps-rapport-exchange/id6446414458',
      playstoreLink:
          'https://play.google.com/store/apps/details?id=com.magma.corpsrapport',
      description:
          'A networking app built for an organization, allowing users to exchange contact information instantly via NFC and barcode scanning — functioning as a digital business card.',
      tools: ['Flutter', 'Firebase', 'NFC'],
      role:
          'Built the app independently for the client, integrating Firebase services and native NFC functionality.',
      challenge:
          'Implemented NFC hardware integration beyond standard Flutter plugins, and built a custom iOS home screen widget displaying a generated barcode for quick access.',
    ),
    ProjectModel(
      id: '4',
      type: ['Application'],
      title: 'The Adventures of Muna',
      playstoreLink:
          'https://play.google.com/store/apps/details?id=com.safetychic.aom',
      appstoreLink:
          'https://apps.apple.com/ng/app/the-adventures-of-muna/id1633517832',
      description:
          'A child safety education game teaching safety topics through interactive storytelling, gamified quizzes, and progress tracking — published on both the App Store and Play Store.',
      tools: ['Flutter', 'Firebase Realtime Database'],
      role:
          'Designed and implemented the full app UI from scratch, including gamified quiz modules and performance tracking.',
      challenge:
          'Built an engaging, memorable safety-education experience for children using audiovisual storytelling and African representation.',
    ),
  ];

  static const List<ExperienceModel> experienceList = [
    ExperienceModel(
      title: 'HutDrop',
      position: 'Co-Founder & Senior Flutter Developer',
      timePeriod: 'JUN 2025 - PRESENT',
      description: [
        'Co-founded a Nigerian delivery platform and led end-to-end Flutter development of two cross-platform apps — merchant and rider — from architecture through App Store and Play Store deployment.',
        'Designed and implemented the full real-time order lifecycle — notification, confirmation, preparation, pickup, and delivery — using asynchronous event-driven architecture.',
        'Configured a GitHub Actions CI/CD pipeline for automated build, test, and deployment to both app stores.',
        'Engineered OTP authentication and a secure pickup verification system, applying secure development lifecycle (SDL) principles to protect order handoff.',
        'Integrated Google Maps SDK for live rider tracking, visible in real time to both merchant and customer.',
        'Implemented FCM push notifications across foreground, background, and terminated app states.',
      ],
      tools: [
        'Flutter',
        'Firebase',
        'Google Maps SDK',
        'FCM',
        'GitHub Actions',
        'OTP Auth'
      ],
    ),
    ExperienceModel(
      title: 'Behaviour Buddy',
      position: 'Senior Flutter Developer',
      timePeriod: 'MAY 2024 - JUN 2025',
      description: [
        'Led UI/UX design and development for user and admin interfaces, collaborating with cross-functional stakeholders to deliver pixel-perfect, responsive Flutter UIs for iOS and Android.',
        'Provided technical guidance to junior contributors on Flutter architecture patterns and state management.',
        'Applied child-friendly design principles — color theory, typography, simplified navigation — across onboarding, missions, and rewards flows.',
      ],
      tools: ['Flutter', 'BLoC', 'Provider'],
    ),
    ExperienceModel(
      title: 'Syticks',
      position: 'Senior Flutter Developer',
      timePeriod: 'APR 2023 - PRESENT',
      description: [
        'Engineered the RESTful network layer for a multi-category ticketing platform, achieving 0 post-release crashes across 104 installs at first deployment.',
        'Implemented secure-by-design payment architecture with an in-app wallet, maintaining a 0% crash rate across all payment flows.',
        'Delivered a location-aware event discovery feature and organiser management interface, validated with zero defects on release.',
        'Architected a scalable, data-driven app supporting multiple event categories, including cinema and bus ticketing.',
      ],
      tools: ['Flutter', 'REST API', 'In-app Wallet'],
    ),
    ExperienceModel(
      title: 'Corps Rapport Exchange',
      position: 'Flutter Developer',
      timePeriod: 'FEB 2023 - MAY 2024',
      description: [
        'Integrated Firebase services (Firestore, Auth, Analytics) and implemented NFC technology for secure, seamless peer-to-peer information exchange.',
        'Configured deep linking and barcode scanning, and developed a custom iOS home screen widget displaying a generated barcode for quick access.',
      ],
      tools: ['Flutter', 'Firebase', 'NFC', 'Deep Linking'],
    ),
    ExperienceModel(
      title: 'The Adventures of Muna',
      position: 'Flutter Developer',
      timePeriod: 'APR 2022 - JUL 2022',
      description: [
        'Designed and implemented the full educational app UI from scratch, with Firebase Realtime Database, gamified quiz modules, and performance tracking.',
      ],
      tools: ['Flutter', 'Firebase Realtime Database'],
    ),
    ExperienceModel(
      title: 'Customized Native School',
      position: 'Flutter Developer',
      timePeriod: 'AUG 2020 - DEC 2021',
      description: [
        'Built an admin panel in Flutter integrating Firebase (Firestore, Storage, Auth) for real-time clothing catalog management, including image uploads and input validation.',
      ],
      tools: ['Flutter', 'Firebase'],
    ),
    ExperienceModel(
      title: 'Integrated Development Konsult',
      position: 'Android Developer Intern',
      timePeriod: 'AUG 2018 - JAN 2019',
      description: [
        'Enhanced UI elements and built responsive XML layouts for native Android applications.',
        'Participated in structured code reviews, applying team standards to maintain code quality.',
      ],
      tools: ['Android Studio', 'Java'],
    ),
  ];
  static const String email = 'obihenry578@gmail.com';
  static const String location =
      'Government house street, Anambra State, Nigeria';

  static const String call = '+2348130698353';
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
  static const String whatsappLink = 'https://wa.me/8130698353';
  static const String instagramLink =
      'https://instagram.com/obi_henry_?igshid=MzNlNGNkZWQ4Mg==';
}
