import 'package:ishowrunes/portfolio/models/cta_model.dart';
import 'package:ishowrunes/portfolio/models/expertise_model.dart';
import 'package:ishowrunes/portfolio/models/how_work_model.dart';
import 'package:ishowrunes/portfolio/models/intro_model.dart';
import 'package:ishowrunes/portfolio/models/profile_model.dart';
import 'package:ishowrunes/portfolio/models/project_model.dart';
import 'package:ishowrunes/portfolio/models/skills_model.dart';

class RunesRepository {
  ProfileModel get profile {
    return const ProfileModel(
      name: 'Ishwor Shrestha',
      heroDescription: 'Senior Mobile Engineer building scalable, production-ready mobile systems.',
      github: 'https://github.com/ishowrunes',
      linkedin: 'https://www.linkedin.com/in/ishwor-shrestha/',
    );
  }

  IntroModel get intro {
    return const IntroModel(
      title: 'Mobile',
      subtitle: 'Engineer',
      intros: [
        'I’m Ishwor Shrestha, a Senior / Principal Mobile Engineer with over 10 years of experience building and leading mobile applications used at scale.',
        'I design, build, and evolve high-quality mobile systems — from early concepts to production and long-term growth. My focus is on creating reliable, maintainable, and well-structured applications that support real users and real business needs.',
        'Over the last decade, I’ve worked across startups and high-growth companies, contributing not just code but technical direction, architectural thinking, and team leadership. I’ve been closely involved in decisions around app structure, performance, release processes, and developer workflows — always with an eye on long-term maintainability.',
        'I value thoughtful engineering over shortcuts and believe great mobile apps come from strong fundamentals, practical trade-offs, and clear communication.',
      ],
    );
  }

  HowWorkModel get howWork {
    return const HowWorkModel(
      title: 'How I',
      subtitle: 'Work',
      contents: [
        'Clear communication and expectations',
        'Practical, maintainable solutions',
        'Strong focus on production readiness',
        'Respect for existing systems and teams',
        'Long-term thinking over quick wins',
      ],
    );
  }

  ExpertiseModel get expertise {
    return const ExpertiseModel(
      title: 'What I Can',
      subtitle: 'Help With',
      description: 'You can hire me for:',
      expertise: [
        MyExpertise(
          title: 'End-to-end mobile app development',
          description: 'Designing and building professional mobile applications ready for real users and real growth.',
        ),

        MyExpertise(
          title: 'Improving and evolving existing apps',
          description: 'Enhancing structure, performance, reliability, and developer experience as products mature.',
        ),

        MyExpertise(
          title: 'Scalability and long-term maintainability',
          description: 'Preparing mobile systems to support new features, larger teams, and increasing user demand.',
        ),
        MyExpertise(
          title: 'Platform migrations and modernization',
          description: 'Helping teams transition toward more efficient, unified, and future-proof mobile setups.',
        ),
        MyExpertise(
          title: 'Technical leadership and guidance',
          description: 'Architecture reviews, code reviews, best practices, and mentoring engineers.',
        ),
      ],
    );
  }

  SkillsModel get skills {
    return SkillsModel(
      title: 'My',
      subtitle: 'Skills',
      mySkills: const [
        MySkill(
          title: 'Mobile Engineering',
          skills: [
            'Cross-platform mobile app development',
            'Native mobile platform experience',
            'App architecture and modularization',
            'Performance optimization and debugging',
            'App Store and Play Store delivery',
          ],
        ),
        MySkill(
          title: 'Engineering Practices',
          skills: [
            'Clean architecture and layered designs',
            'Testing strategies and automation',
            'CI/CD pipeline',
            'Code reviews and engineering standard',
          ],
        ),
        MySkill(
          title: 'Systems and Tooling',
          skills: [
            'Go (working knowledge)',
            'Rust (systems and tooling)',
            'Internal tooling and code generation',
          ],
        ),
        MySkill(
          title: 'Leadership',
          skills: [
            'Technical decision-making',
            'Mentoring engineers',
            'Cross-team collaboration',
            'Long-term technical planning',
          ],
        ),
      ],
    );
  }

  CtaModel get ctaContent {
    return const CtaModel(
      title: 'Let\'s Work',
      subtitle: 'Together',
      contents: [
        CtaContentModel(
          title: 'Let’s Build Something Solid',
        ),
        CtaContentModel(
          title:
              'If you’re looking for someone who can build, evolve, or strengthen a mobile app with care and professionalism, I’d love to talk.',
        ),
        CtaContentModel(
          title: 'I’m open to:',
          contents: [
            'Project-based work',
            'Contract roles',
            'Full-time opportunities',
          ],
        ),
        CtaContentModel(
          title: 'Get in touch to discuss how I can help.',
        ),
      ],
    );
  }

  ProjectModel get projects {
    return const ProjectModel(
      title: 'My',
      subtitle: 'Projects',
      myProjects: [
        MyProject(
          id: 'uncle',
          name: 'NEPSE Uncle',
          asset: 'uncle.png',
          description:
              'NEPSE Uncle is your trusted companion for staying updated with the Nepal Stock Exchange (NEPSE). Whether you are a beginner or an experienced investor, the app helps you make informed decisions with real-time market data, daily updates, and simplified insights.',
          detail: '''
With NEPSE Uncle, you can:
• Track live NEPSE market data and indices
• Get the latest stock prices and company updates
• Stay informed with market news and announcements
• Explore historical trends and charts
• Access simplified tools to support your investment journey

Designed with simplicity and clarity, NEPSE Uncle ensures you never miss important movements in the Nepali stock market.''',
          contributions: [
            'Led development of the Flutter mobile application core, establishing the foundational project structure',
            'Defined the app architecture, including feature separation, state management approach, and data flow patterns',
            'Implemented core data models and API integration layers for NEPSE market data',
            'Built reusable UI components and base widgets used across market views and stock detail screens',
            'Designed state management and caching strategy to balance freshness of data with performance',
            'Developed key features including market overview, stock detail views, and watchlists',
            'Optimized rendering and scroll performance for data-heavy financial screens',
            'Worked closely with backend and product teams to align data contracts and feature behavior',
            'Iterated on architecture and features based on user feedback and evolving product scope',
          ],
          targets: [
            ProjectTargetModel(
              source: .playStore,
              url: 'https://play.google.com/store/apps/details?id=com.nepseuncle',
            ),
            ProjectTargetModel(
              source: .appStore,
              url: 'https://apps.apple.com/au/app/nepse-uncle/id6754209406',
            ),
          ],
        ),
        MyProject(
          id: 'khalti',
          name: 'Khalti',
          asset: 'khalti.png',
          description:
              'Khalti is Nepal’s most trusted digital wallet, now stronger and better through the merger of Khalti and IME Pay. This upgraded app combines IME’s trusted remittance legacy with Khalti’s digital innovation to offer a seamless and powerful experience.',
          detail: '''
More than just a payment app, Khalti stands for innovation, lifestyle, and reliability. It is designed to be inclusive, easy to use, and secure, helping you make everyday moments simpler and more meaningful.
          
Everything You Can Do
Top-Up & Recharge
Recharge NTC, Ncell and buy data packs
Buy recharge cards & Topup anywhere easily
          ''',
          contributions: [
            'Played a key role in defining and evolving the Flutter application architecture for a large-scale production app',
            'Worked extensively on core modules, including wallet flows, transaction handling, and shared infrastructure',
            'Contributed to the native-to-Flutter migration strategy, helping shape how features were modularized and migrated',
            'Designed and maintained common abstractions for API handling, error states, and feature-level state management',
            'Implemented and maintained core wallet experiences such as balance views, transaction history, and payment flows',
            'Integrated multiple financial service APIs, ensuring consistency and resilience across features',
            'Improved codebase scalability and maintainability through refactoring and architectural cleanup',
            'Mentored team members on Flutter architecture, best practices, and code organization',
            'Collaborated with backend, QA, and product teams to deliver stable, production-ready financial features',
          ],
          targets: [
            ProjectTargetModel(
              source: .playStore,
              url: 'https://play.google.com/store/apps/details?id=com.khalti',
            ),
            ProjectTargetModel(
              source: .appStore,
              url: 'https://apps.apple.com/au/app/khalti-digital-wallet-nepal/id1263400741',
            ),
          ],
        ),
        MyProject(
          id: 'sparrow',
          name: 'Bulk SMS Nepal',
          asset: 'sparrow.png',
          description:
              '‘Bulk SMS Nepal’ is a utility to send bulk SMS from Sparrow SMS – a leading bulk SMS service provider and VAS provider in Nepal. Sending mass SMS to individuals in small or large groups is now just a click away from your smartphones with ‘Bulk SMS Nepal’ app.',
          detail: '''
Sparrow SMS facilitates its customers for all kind of SMS services in Nepal with the latest technologies. The simple, intuitive and easy-to-use web platform for sending bulk SMS has already satisfied numerous customers and knowing the fact that most of the customers are smartphone users, Sparrow SMS came up with ‘Bulk SMS Nepal’ app where users do not require to leave their mobile platform just to send mass SMS.

With ‘Bulk SMS Nepal’ app, you can send messages to your customers residing anywhere in Nepal. The best part of the app is that it even works offline (over SMS) and thus wherever you are, if you need to send mass SMS to your customers, then you can simply do it with this app. Connecting with your customers via SMS marketing has never been that easier till this app was developed.''',
          contributions: [
            'Developed the Android application core, defining the initial app structure and architectural layout',
            'Designed the data flow and API integration layer for SMS dispatch and delivery reporting',
            'Implemented core messaging workflows, including message composition, recipient handling, and status tracking',
            'Built reusable components and utility layers shared across multiple screens',
            'Defined patterns for error handling, retries, and network resilience',
            'Optimized the app for performance and stability on low-end devices',
            'Worked closely with backend teams to align client-side behavior with SMS gateway constraints',
            'Ensured the app remained maintainable and extensible as features evolved',
          ],
        ),
        MyProject(
          id: 'easy',
          name: 'Easy Sim',
          asset: 'easy_sim.png',
          description:
              'A SIM card activation and dealer operations application built for telecom operators in Nepal. The platform was designed for SIM card, recharge card, mPoS, and online balance transfer dealers and points of sale (PoS), enabling them to digitally register customers, manage activation workflows, and track application status.',
          detail: '''
The application replaced manual, paper-based onboarding processes with a mobile-first system, improving operational efficiency, compliance tracking, and turnaround time for SIM activations across dealer networks.''',
          contributions: [
            'Built and maintained the Android application used by field dealers and PoS agents',
            'Implemented customer data entry flows and validation aligned with telecom compliance requirements',
            'Developed camera and image handling for document capture and uploads',
            'Designed offline-first workflows, including SMS-based submission in low-connectivity environments',
            'Integrated status updates and reporting views for activation requests',
            'Optimized the app for low-end devices and unstable network conditions',
            'Collaborated with backend and operations teams to align product behavior with telecom operational processes',
          ],
        ),
        MyProject(
          id: 'rupaiya',
          name: 'RuPaiya',
          asset: 'rupaiya.png',
          description:
              'A digital payment platform within Prabhu Technologies’ financial services ecosystem that enabled secure mobile transactions, wallet services, and payment gateway processing for users and merchant networks in Nepal, powered by the branded RuPaiya payment network. The platform integrated with cooperative networks, card networks, and financial partners to simplify everyday payments and digital transactions.',
          detail: '''
The application served as an early mobile payments solution, supporting peer-to-peer transfers, merchant payments, and wallet-based services in a rapidly evolving digital finance ecosystem.''',
          contributions: [
            'Developed the Android mobile application for the RuPaiya platform',
            'Implemented wallet and transaction flows, including balance views and payment interactions',
            'Integrated backend APIs for payment processing and transaction status',
            'Built secure user authentication and session handling mechanisms',
            'Worked closely with backend and financial teams to ensure transaction reliability and data integrity',
          ],
        ),
        MyProject(
          id: 'website',
          name: 'Client & Early Web Development Projects',
          asset: 'website.png',
          description:
              'A collection of early-career client websites developed for a range of organizations, including government agencies, focused on responsive design and content management.',
          detail: '''''',
          contributions: [
            'Built the core structure and layout systems for multiple client websites using PHP and Bootstrap',
            'Defined a reusable frontend structure to accelerate development across different client projects',
            'Designed and implemented a custom CMS architecture, enabling non-technical users to manage site content',
            'Worked on end-to-end delivery, from database schema design to frontend rendering',
            'Ensured responsive behavior and cross-browser compatibility',
            'Delivered projects for a wide range of clients, including government agencies, under tight timelines',
            'Gained early experience in owning the full technical stack for small to mid-sized web projects',
          ],
        ),
      ],
    );
  }
}
