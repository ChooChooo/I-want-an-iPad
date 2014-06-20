# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tool_rubymine = Tool.create({name: "RubyMine", description: "A commercial IDE for Ruby and Ruby on Rails built on JetBrains' IntelliJ IDEA platform. RubyMine provides intelligent code completion for Ruby and Ruby on Rails code, on-the-fly code analysis and refactoring support for both plain Ruby projects and web applications built with Ruby on Rails."})
tool_php = Tool.create({name: 'PHP', description: 'PHP is a server-side scripting language designed for web development but also used as a general-purpose programming language. As of January 2013, PHP was installed on more than 240 million websites (39% of those sampled) and 2.1 million web servers.[4] Originally created by Rasmus Lerdorf in 1994,[5] the reference implementation of PHP is now produced by The PHP Group.[6] While PHP originally stood for Personal Home Page,[5] it now stands for PHP: Hypertext Preprocessor, a recursive backronym.'})
tool_ruby = Tool.create({name: 'Ruby', description: 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. According to its authors, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp.[10] It supports multiple programming paradigms, including functional, object-oriented, and imperative. It also has a dynamic type system and automatic memory management.'})
tool_python = Tool.create({name: 'Python', description: 'Python is a widely used general-purpose, high-level programming language.[17][18][19] Its design philosophy emphasizes code readability, and its syntax allows programmers to express concepts in fewer lines of code than would be possible in languages such as C.[20][21] The language provides constructs intended to enable clear programs on both a small and large scale.'})
tool_java = Tool.create({name: 'Java', description: 'Java is a computer programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA), meaning that code that runs on one platform does not need to be recompiled to run on another. Java applications are typically compiled to bytecode (class file) that can run on any Java virtual machine (JVM) regardless of computer architecture. Java is, as of 2014, one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers.'})
tool_rails = Tool.create({name: 'Ruby on Rails', description: 'Ruby on Rails, often simply referred to as Rails, is an open source web application framework which runs via the Ruby programming language. It is a full-stack framework: it allows creating pages and applications that gather information from the web server, talk to or query the database, and render templates out of the box. As a result, Rails features a routing system that is independent of the web server.'})
tool_jquery = Tool.create({name: 'jQuery', description: 'jQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML.[2] It was released in January 2006 at BarCamp NYC by John Resig. It is currently developed by a team of developers led by Dave Methvin. Used by over 80% of the 10,000 most visited websites,[3] jQuery is the most popular JavaScript library in use today.'})
tool_angularjs = Tool.create({name: 'AngularJS', description: 'AngularJS is an open-source web application framework, maintained by Google and community, that assists with creating single-page applications, one-page web applications that only require HTML, CSS, and JavaScript on the client side. Its goal is to augment web applications with model–view–controller (MVC) capability, in an effort to make both development and testing easier.'})
tool_aws = Tool.create({name: 'Amazon Web Services (AWS)', description: 'Amazon Web Services (abbreviated AWS) is a collection of remote computing services (also called web services) that together make up a cloud computing platform, offered over the Internet by Amazon.com. The most central and well-known of these services are Amazon EC2 and Amazon S3. The service is advertised as providing a large computing capacity (potentially many servers) much faster and cheaper than building a physical server farm.'})
tool_heroku = Tool.create({name: 'Heroku', description: "Heroku is a cloud platform as a service (PaaS) supporting several programming languages. Heroku was acquired by Salesforce.com in 2010.[1] Heroku, one of the first cloud platforms, has been in development since June 2007, when it supported only the Ruby programming language, but has since added support for Java, Node.js, Scala, Clojure, Python and PHP and (undocumented) Perl. The base operating system is Debian or, in the newest stack, the Debian-based Ubuntu."})
tool_linux = Tool.create({name: 'Linux', description: 'Linux is a Unix-like and mostly POSIX-compliant[10] computer operating system assembled under the model of free and open source software development and distribution. The defining component of Linux is the Linux kernel,[11] an operating system kernel first released on 5 October 1991 by Linus Torvalds.[12][13] The Free Software Foundation uses the name GNU/Linux, which has led to some controversy.'})
tool_sqlite = Tool.create({name: 'SQLite', description: 'SQLite is a relational database management system contained in a C programming library. In contrast to other database management systems, SQLite is not a separate process that is accessed from the client application, but an integral part of it.'})
tool_postgresql = Tool.create({name: 'PostgreSQL', description: 'PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance. As a database server, its primary function is to store data, securely and supporting best practices, and retrieve it later, as requested by other software applications, be it those on the same computer or those running on another computer across a network (including the Internet). It can handle workloads ranging from small single-machine applications to large Internet-facing applications with many concurrent users. Recent versions also provide replication of the database itself for security and scalability.'})
tool_mysql = Tool.create({name: 'MySQL', description: "MySQL is (as of March 2014) the world's second most widely used[9][10] open-source relational database management system (RDBMS).[11] It is named after co-founder Michael Widenius's daughter, My.[12] The SQL phrase stands for Structured Query Language."})
tool_mongodb = Tool.create({name: 'MongoDB', description: "MongoDB (from 'humongous') is a cross-platform document-oriented database. Classified as a NoSQL database, MongoDB eschews the traditional table-based relational database structure in favor of JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster. Released under a combination of the GNU Affero General Public License and the Apache License, MongoDB is free and open-source software."})
tool_chef = Tool.create({name: 'Chef', description: "Chef (software) is used to streamline the task of configuring & maintaining a company's servers, and can integrate with cloud-based platforms such as Rackspace and Amazon Elastic Compute Cloud to automatically provision and configure new machines."})
tool_photoshop = Tool.create({name: 'Photoshop', description: "Adobe Photoshop is a graphics editing program developed and published by Adobe Systems."})
tool_mingle = Tool.create({name: 'Mingle', description: "Mingle[15] is software to facilitate agile project management and collaboration. Released in May 2007, Mingle was the first commercial application to be created using JRuby.[16] Mingle was released as a SAAS offering in 2013. Twist[17] is software to facilitate test automation and functional testing with simple authoring. Snap CI[18] was released in Beta in 2013. Snap allows you to automate the build and deployment of your Rails application to Heroku."})

project_type_wiki = ProjectType.create({name: 'Wiki', description: 'A wiki (Listeni/ˈwɪki/ wik-ee) is a web application which allows people to add, modify, or delete content in collaboration with others. In a typical wiki, text is written using a simplified markup language or a rich-text editor.[1][2] While a wiki is a type of content management system, it differs from a blog or most other such systems in that the content is created without any defined owner or leader, and wikis have little implicit structure, allowing structure to emerge according to the needs of the users. (Source: wikipedia)' })
project_type_webapplication = ProjectType.create({name: 'Web Application', description: 'A web application or web app is any application software that runs in a web browser or is created in a browser-supported programming language (such as the combination of JavaScript, HTML and CSS) and relies on a common web browser to render the application. (Source: wikipedia)' })
project_type_socialbookmarking = ProjectType.create({name: 'Social Bookmarking Website', description: 'A social bookmarking service is a centralized online service which enables users to add, annotate, edit, and share bookmarks of web documents.[1] Many online bookmark management services have launched since 1996; Delicious, founded in 2003, popularized the terms "social bookmarking" and "tagging". Tagging is a significant feature of social bookmarking systems, enabling users to organize their bookmarks in flexible ways and develop shared vocabularies known as folksonomies. (Source: wikipedia)' })
project_type_packagemanager = ProjectType.create({name: 'Package Manager', description: 'Representational state transfer (REST) is a way to create, read, update or delete information on a server using simple HTTP calls. It is an alternative to more complex mechanisms like SOAP, CORBA and RPC. A REST call is simply an HTTP request to the server.' })
project_type_employmentwebsite = ProjectType.create({name: 'Employment Website', description: 'An employment website is a web site that deals specifically with employment or careers. Many employment websites are designed to allow employers to post job requirements for a position to be filled and are commonly known as job boards. Other employment sites offer employer reviews, career and job-search advice, and describe different job descriptions or employers. Through a job website a prospective employee can locate and fill out a job application or submit resumes over the Internet for the advertised position. (Source: wikipedia)' })
project_type_restapi = ProjectType.create({name: 'Rest API', description: 'Representational state transfer (REST) is a way to create, read, update or delete information on a server using simple HTTP calls. It is an alternative to more complex mechanisms like SOAP, CORBA and RPC. A REST call is simply an HTTP request to the server.' })


project_careerbox = Project.create({name: "CareerBox", description: "For anyone proud enough to share their tool selections for the projects they've built or for anyone looking to learn what tools to use to start a new project.", project_type: project_type_webapplication})
ProjectsTool.create({project: project_careerbox, tool: tool_linux})
ProjectsTool.create({project: project_careerbox, tool: tool_ruby, notes: "Everybody is doing it."})
ProjectsTool.create({project: project_careerbox, tool: tool_rails, notes: "More shiney objects than Sinatra."})
ProjectsTool.create({project: project_careerbox, tool: tool_rubymine, notes: "The right balance of command-line and point-and-click."})
ProjectsTool.create({project: project_careerbox, tool: tool_sqlite, notes: "Built-in to Rails, and makes development a snap."})
ProjectsTool.create({project: project_careerbox, tool: tool_jquery})
ProjectsTool.create({project: project_careerbox, tool: tool_heroku, notes: "Alex said it's good."})

project_careerbuildergems = Project.create({name: "CareerbuilderGems", description: "With the push to move to the cloud for CareerbuilderOne, shared resources have never been more vital. With such a large number of teams operating and developing in Ruby, having a way to keep Ruby code reusable throughout the organization is imperative. Using Amazon Web Services and Opscode Chef, we expand on what has been developed on the Consumer Development team to allow teams to publish and share their Ruby gems across the organization and enable other teams to make use of their technologies to continue innovating and building more robust solutions.", project_type: project_type_packagemanager})
ProjectsTool.create({project: project_careerbuildergems, tool: tool_chef})
ProjectsTool.create({project: project_careerbuildergems, tool: tool_ruby})
ProjectsTool.create({project: project_careerbuildergems, tool: tool_aws})

project_basecamp = Project.create({name: "BaseCamp", description: "Basecamp is 37signals' first product, a web-based project management tool launched in 2004.[8] The Ruby on Rails framework was extracted from the Basecamp project. Basecamp's primary features are to-do lists, milestone management, forum-like messaging, file sharing, and time tracking. An API exists for Basecamp, allowing interaction with other web and desktop applications; an example of this is the creation of desktop widgets.", project_type: project_type_webapplication})
ProjectsTool.create({project: project_basecamp, tool: tool_linux})
ProjectsTool.create({project: project_basecamp, tool: tool_ruby})
ProjectsTool.create({project: project_basecamp, tool: tool_rubymine})
ProjectsTool.create({project: project_basecamp, tool: tool_mysql})
ProjectsTool.create({project: project_basecamp, tool: tool_jquery})
ProjectsTool.create({project: project_basecamp, tool: tool_rails, notes: "Because MVC!"})

project_wikipedia = Project.create({name: "Wikipedia", description: "Wikipedia is a collaboratively edited, multilingual, free-access, free content Internet encyclopedia that is supported and hosted by the non-profit Wikimedia Foundation. Volunteers worldwide collaboratively write Wikipedia's 30 million articles in 287 languages, including over 4.5 million in the English Wikipedia. Anyone who can access the site can edit almost any of its articles, which on the Internet comprise[4] the largest and most popular general reference work.[5][6][7][8][9] In February 2014, The New York Times reported that Wikipedia is ranked fifth globally among all websites stating, With 18 billion page views and nearly 500 million unique visitors a month..., Wikipedia trails just Yahoo, Facebook, Microsoft and Google, the largest with 1.2 billion unique visitors.", project_type: project_type_wiki})
ProjectsTool.create({project: project_wikipedia, tool: tool_php})
ProjectsTool.create({project: project_wikipedia, tool: tool_linux})
ProjectsTool.create({project: project_wikipedia, tool: tool_mysql})

project_wiktionary = Project.create({name: "Wiktionary", description: "Wiktionary (a blend of the words wiki and dictionary) is a multilingual, web-based project to create a free content dictionary of all words in all languages. It is available in 158 languages and in Simple English. Like its sister project Wikipedia, Wiktionary is run by the Wikimedia Foundation, and is written collaboratively by volunteers, dubbed 'Wiktionarians'. Its wiki software, MediaWiki, allows almost anyone with access to the website to create and edit entries.", project_type: project_type_wiki})
ProjectsTool.create({project: project_wiktionary, tool: tool_php})
ProjectsTool.create({project: project_wiktionary, tool: tool_linux})
ProjectsTool.create({project: project_wiktionary, tool: tool_mysql})

project_reddit = Project.create({name: "Reddit", description: "Reddit is an entertainment, social networking service and news website where registered community members can submit content, such as text posts or direct links. Only registered users can then vote submissions 'up' or 'down' to organize the posts and determine their position on the site's pages. Content entries are organized by areas of interest called subreddits.", project_type: project_type_socialbookmarking})
ProjectsTool.create({project: project_reddit, tool: tool_python})
ProjectsTool.create({project: project_reddit, tool: tool_aws})
ProjectsTool.create({project: project_reddit, tool: tool_jquery})
ProjectsTool.create({project: project_reddit, tool: tool_postgresql})
