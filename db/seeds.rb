# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.delete_all
ProjectsTool.delete_all
ToolType.delete_all
User.delete_all
UsersProject.delete_all
Tool.delete_all
ProjectType.delete_all

ide = ToolType.create({name: 'Integrated Development Environment (IDE)', description: 'An integrated development environment (IDE) or interactive development environment is a software application that provides comprehensive facilities to computer programmers for software development. An IDE normally consists of a source code editor, build automation tools and a debugger.'})
scripting_language = ToolType.create({name: 'Scripting Language', description: 'A scripting language or script language is a programming language that supports scripts, programs written for a special run-time environment that can interpret (rather than compile) and automate the execution of tasks that could alternatively be executed one-by-one by a human operator.'})
programming_language = ToolType.create({name: 'Programming Language', description: 'A programming language is a formal constructed language designed to communicate instructions to a machine, particularly a computer. Programming languages can be used to create programs to control the behavior of a machine or to express algorithms.'})
mvc_framework = ToolType.create({name: 'Model View Controller (MVC) Framework', description: "todo: add a description"})
test_framework = ToolType.create({name: 'Test Framework', description: 'A framework for testing.'})
javascript_library = ToolType.create({name: 'JavaScript Library', description: "todo: add a description"})
paas_provider = ToolType.create({name: 'Platform as a Service (PaaS) Provider', description: 'Platform as a service (PaaS) is a category of cloud computing services that provides a computing platform and a solution stack as a service. Along with software as a service (SaaS) and infrastructure as a service (IaaS), it is a service model of cloud computing. In this model, the consumer creates an application or service using tools and/or libraries from the provider. The consumer also controls software deployment and configuration settings. The provider provides the networks, servers, storage, and other services that are required to host the consumer''s application.'})
operating_system = ToolType.create({name: 'Operating System (OS)', description: 'An operating system (OS) is software that manages computer hardware and software resources and provides common services for computer programs. The operating system is an essential component of the system software in a computer system. Application programs usually require an operating system to function.'})
relational_database = ToolType.create({name: 'Relational Database', description: "todo: add a description"})
document_no_sql_database = ToolType.create({name: 'Document (NoSQL) Database', description: "todo: add a description"})
configuration_manager = ToolType.create({name: 'Configuration Manager', description: "todo: add a description"})
image_editor = ToolType.create({name: 'Image and Photo Editor', description: "todo: add a description"})
project_management_app = ToolType.create({name: 'Project Management Application', description: "todo: add a description"})
code_analyzer = ToolType.create({name: 'Code Analyzer', description: 'Analyzes code'})
reverse_proxy = ToolType.create({name: 'Reverse Proxy', description: 'A type of proxy server that retrieves resources on behalf of a client from one or more servers. These resources are then returned to the client as though they originated from the server itself (or servers themselves).'})
orm = ToolType.create({name: 'Object Relational Mapper (ORM)', description: 'A programming technique for converting data between incompatible type systems in object-oriented programming languages. This creates, in effect, a "virtual object database" that can be used from within the programming language.'})
cache = ToolType.create({name: 'Cache', description: 'a component that transparently stores data so that future requests for that data can be served faster. The data that is stored within a cache might be values that have been computed earlier or duplicates of original values that are stored elsewhere. If requested data is contained in the cache (cache hit), this request can be served by simply reading the cache, which is comparatively faster. Otherwise (cache miss), the data has to be recomputed or fetched from its original storage location, which is comparatively slower. Hence, the greater the number of requests that can be served from the cache, the faster the overall system performance becomes.'})
encryption = ToolType.create({name: 'Encryption', description: 'The process of encoding messages or information in such a way that only authorized parties can read it. Encryption does not of itself prevent interception, but denies the message content to the interceptor..'})
cms = ToolType.create({name: 'Content Management System (CMS)', description: 'An application that allows publishing, editing and modifying content, organizing, deleting as well as maintenance from a central interface. Such systems of content management provide procedures to manage workflow in a collaborative environment.'})
documentation = ToolType.create({name: 'Documentation', description: 'A set of documents provided on paper, or online, or on digital or analog media, such as audio tape or CDs. Example are user guides, white papers, on-line help, quick-reference guides. It is becoming less common to see paper (hard-copy) documentation. Documentation is distributed via websites, software products, and other on-line applications.'})
parser = ToolType.create({name: 'Parser', description: 'A software component that takes input data (frequently text) and builds a data structure – often some kind of parse tree, abstract syntax tree or other hierarchical structure – giving a structural representation of the input, checking for correct syntax in the process.'})

puts "Created #{ToolType.count} tool types."

james = User.create({email: 'james.tharpe@careerbuilder.com', password: '11111111', username: 'James'})
jarvis = User.create({email: 'jarvis.hambrick@careerbuilder.com', password: '11111111', username: 'Jarvis' })
alex = User.create({email: 'alex.hristov@careerbuilder.com', password: '11111111', username: 'Alex'})
christina = User.create({email: 'christina.chatham@careerbuilder.com', password: '11111111', username: 'Christina'})
ben = User.create({email: 'ben.tidwell@careerbuilder.com', password: '11111111', username: 'Ben'})
jeff = User.create({email: 'jeff.yeary@careerbuilder.com', password: '11111111', username: 'Jeff'})
tyler = User.create({email: 'tyler.kling@careerbuilder.com', password: '11111111', username: 'Tyler'})
justin = User.create({email: 'justin.roberts@careerbuilder.com', password: '11111111', username: 'Justin'})
david = User.create({email: 'david.posey@careerbuilder.com', password: '11111111', username: 'David'})
corrine = User.create({email: 'corrine.olson@careerbuilder.com', password: '11111111', username: 'Corrine'})
andy = User.create({email: 'andy.mullen@careerbuilder.com', password: '11111111', username: 'Andy'})
jesse = User.create({email: 'jesse.retchko@careerbuilder.com', password: '11111111', username: 'Jesse'})

puts "Created #{User.count} users."

rubymine = Tool.create({name: 'RubyMine', description: "A commercial IDE for Ruby and Ruby on Rails built on JetBrains' IntelliJ IDEA platform. RubyMine provides intelligent code completion for Ruby and Ruby on Rails code, on-the-fly code analysis and refactoring support for both plain Ruby projects and web applications built with Ruby on Rails.", tool_type: ide})
php = Tool.create({name: 'PHP', description: 'PHP is a server-side scripting language designed for web development but also used as a general-purpose programming language. As of January 2013, PHP was installed on more than 240 million websites (39% of those sampled) and 2.1 million web servers.[4] Originally created by Rasmus Lerdorf in 1994,[5] the reference implementation of PHP is now produced by The PHP Group.[6] While PHP originally stood for Personal Home Page,[5] it now stands for PHP: Hypertext Preprocessor, a recursive backronym.', tool_type: scripting_language})
ruby = Tool.create({name: 'Ruby', description: 'Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. According to its authors, Ruby was influenced by Perl, Smalltalk, Eiffel, Ada, and Lisp.[10] It supports multiple programming paradigms, including functional, object-oriented, and imperative. It also has a dynamic type system and automatic memory management.', tool_type: scripting_language})
python = Tool.create({name: 'Python', description: 'Python is a widely used general-purpose, high-level programming language.[17][18][19] Its design philosophy emphasizes code readability, and its syntax allows programmers to express concepts in fewer lines of code than would be possible in languages such as C.[20][21] The language provides constructs intended to enable clear programs on both a small and large scale.', tool_type: scripting_language})
java = Tool.create({name: 'Java', description: 'Java is a computer programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible. It is intended to let application developers "write once, run anywhere" (WORA), meaning that code that runs on one platform does not need to be recompiled to run on another. Java applications are typically compiled to bytecode (class file) that can run on any Java virtual machine (JVM) regardless of computer architecture. Java is, as of 2014, one of the most popular programming languages in use, particularly for client-server web applications, with a reported 9 million developers.', tool_type: programming_language})
ruby_on_rails = Tool.create({name: 'Ruby on Rails', ugly_name: 'rails', description: 'Ruby on Rails, often simply referred to as Rails, is an open source web application framework which runs via the Ruby programming language. It is a full-stack framework: it allows creating pages and applications that gather information from the web server, talk to or query the database, and render templates out of the box. As a result, Rails features a routing system that is independent of the web server.', tool_type: mvc_framework})
cordova = Tool.create({name: 'Apache Cordova', description: 'Apache Cordova is a platform for building native mobile applications using HTML, CSS and JavaScript.', tool_type: mvc_framework})
ionic = Tool.create({name: 'Ionic', description: 'A framework built on Apache Cordova that includes UI widgets based on HTML, JavaScript, and CSS that look like native OSX and Android components.', tool_type: mvc_framework})
jquery = Tool.create({name: 'jQuery', ugly_name: 'jquery-rails', description: 'jQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML.[2] It was released in January 2006 at BarCamp NYC by John Resig. It is currently developed by a team of developers led by Dave Methvin. Used by over 80% of the 10,000 most visited websites,[3] jQuery is the most popular JavaScript library in use today.', tool_type: javascript_library})
coffee_script = Tool.create({name: 'CoffeeScript', ugly_name: 'coffee-rails', description: 'CoffeeScript is a little language that compiles into JavaScript. Underneath that awkward Java-esque patina, JavaScript has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.', tool_type: javascript_library})
angular_js = Tool.create({name: 'AngularJS', description: 'AngularJS is an open-source web application framework, maintained by Google and community, that assists with creating single-page applications, one-page web applications that only require HTML, CSS, and JavaScript on the client side.', tool_type: javascript_library})
uglifier = Tool.create({name: 'UglifyJS', ugly_name: 'uglifier', description: 'A JavaScript minifier.', tool_type: javascript_library})
amazon_web_services = Tool.create({name: 'Amazon Web Services (AWS)', description: 'Amazon Web Services (abbreviated AWS) is a collection of remote computing services (also called web services) that together make up a cloud computing platform, offered over the Internet by Amazon.com. The most central and well-known of these services are Amazon EC2 and Amazon S3. The service is advertised as providing a large computing capacity (potentially many servers) much faster and cheaper than building a physical server farm.', tool_type: paas_provider})
heroku = Tool.create({name: 'Heroku', description: 'Heroku is a cloud platform as a service (PaaS) supporting several programming languages. Heroku was acquired by Salesforce.com in 2010.[1] Heroku, one of the first cloud platforms, has been in development since June 2007, when it supported only the Ruby programming language, but has since added support for Java, Node.js, Scala, Clojure, Python and PHP and (undocumented) Perl. The base operating system is Debian or, in the newest stack, the Debian-based Ubuntu.', tool_type: paas_provider})
linux = Tool.create({name: 'Linux', description: 'Linux is a Unix-like and mostly POSIX-compliant[10] computer operating system assembled under the model of free and open source software development and distribution. The defining component of Linux is the Linux kernel,[11] an operating system kernel first released on 5 October 1991 by Linus Torvalds.[12][13] The Free Software Foundation uses the name GNU/Linux, which has led to some controversy.', tool_type: operating_system})
sqlite = Tool.create({name: 'SQLite', description: 'SQLite is a relational database management system contained in a C programming library. In contrast to other database management systems, SQLite is not a separate process that is accessed from the client application, but an integral part of it.', tool_type: relational_database})
postgresql = Tool.create({name: 'PostgreSQL', description: 'PostgreSQL, often simply "Postgres", is an object-relational database management system (ORDBMS) with an emphasis on extensibility and standards-compliance. As a database server, its primary function is to store data, securely and supporting best practices, and retrieve it later, as requested by other software applications, be it those on the same computer or those running on another computer across a network (including the Internet). It can handle workloads ranging from small single-machine applications to large Internet-facing applications with many concurrent users. Recent versions also provide replication of the database itself for security and scalability.', tool_type: relational_database, ugly_name: 'pg'})
mysql = Tool.create({name: 'MySQL', description: "MySQL is (as of March 2014) the world's second most widely used[9][10] open-source relational database management system (RDBMS).[11] It is named after co-founder Michael Widenius's daughter, My.[12] The SQL phrase stands for Structured Query Language.", tool_type: relational_database})
mongodb = Tool.create({name: 'MongoDB', description: "MongoDB (from 'humongous') is a cross-platform document-oriented database. Classified as a NoSQL database, MongoDB eschews the traditional table-based relational database structure in favor of JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster. Released under a combination of the GNU Affero General Public License and the Apache License, MongoDB is free and open-source software.", tool_type: document_no_sql_database})
firebase = Tool.create({name: 'Firebase', description: 'A multi-platform NoSQL database for storing and syncing data in real time.', tool_type: document_no_sql_database})
chef = Tool.create({name: 'Chef', ugly_name: 'chef', description: 'Chef is used to streamline the task of configuring & maintaining a company''s servers, and can integrate with cloud-based platforms such as Rackspace and Amazon Elastic Compute Cloud to automatically provision and configure new machines.', tool_type: configuration_manager})
rake = Tool.create({name: 'Rake', ugly_name: 'rake', description: 'Rake is a software task management tool. It allows you to specify tasks and describe dependencies as well as to group tasks in a namespace.', tool_type: configuration_manager})
emeril = Tool.create({name: 'Emeril', ugly_name: 'emeril', description: 'Emeril is a library that helps you release your Chef cookbooks from Rake, Thor, or a Ruby library. If rake release is all you are after, this should fit the bill.', tool_type: configuration_manager})
berkshelf = Tool.create({name: 'Berkshelf', ugly_name: 'berkshelf', description: 'Manage a Cookbook or an Application''s Cookbook dependencies.', tool_type: configuration_manager})
dotenv = Tool.create({name: 'Dotenv', ugly_name: 'dotenv', description: 'Shim to load environment variables from .env into ENV in development.', tool_type: configuration_manager})
photoshop = Tool.create({name: 'Photoshop', description: "Adobe Photoshop is a graphics editing program developed and published by Adobe Systems.", tool_type: image_editor})
mingle = Tool.create({name: 'Mingle', description: "Mingle[15] is software to facilitate agile project management and collaboration. Released in May 2007, Mingle was the first commercial application to be created using JRuby.[16] Mingle was released as a SAAS offering in 2013. Twist[17] is software to facilitate test automation and functional testing with simple authoring. Snap CI[18] was released in Beta in 2013. Snap allows you to automate the build and deployment of your Rails application to Heroku.", tool_type: project_management_app})
fxcop = Tool.create({name: 'FXCop', description: 'Analyzes .NET code for common anti-patterns.', tool_type: code_analyzer})
foodcritic = Tool.create({name: 'Foodcritic', ugly_name: 'foodcritic', description: 'A lint tool for your Opscode Chef cookbooks. Foodcritic make it easier to flag problems in your Chef cookbooks that will cause Chef to blow up when you attempt to converge. This is about faster feedback. If you automate checks for common problems you can save a lot of time.', tool_type: code_analyzer})
code_climate = Tool.create({name: 'Code Climate', description: 'Analyzes Ruby, JavaScript, and PHP code for common anti-patterns.', tool_type: code_analyzer})
coveralls = Tool.create({name: 'Coveralls', ugly_name: 'coveralls', description: 'Coveralls is a web service to help you track your code coverage over time, and ensure that all your new code is fully covered. The Coveralls service is language-agnostic and CI-agnostic, but we haven''t yet built easy solutions for all the possibilities as far as repo hosting. Creating an account is fast and easy.', tool_type: code_analyzer})
rubocop = Tool.create({name: 'RuboCop', ugly_name: 'rubocop', description: 'A Ruby static code analyzer, based on the community Ruby style guide.', tool_type: code_analyzer})
cloud_flair = Tool.create({name: 'Cloudflair', description: 'A content delivery network and distributed domain name server, sitting between the visitor and the CloudFlare user''s hosting provider, thus acting as a reverse proxy for websites.', tool_type: reverse_proxy})
rspec = Tool.create({name: 'RSpec', ugly_name:'rspec', description: 'RSpec is testing tool for the Ruby programming language. Born under the banner of Behaviour-Driven Development, it is designed to make Test-Driven Development a productive and enjoyable experience.', tool_type: test_framework})
chef_rspec = Tool.create({name: 'ChefSpec', ugly_name:'chefspec', description: 'ChefSpec is a unit testing framework for testing Chef cookbooks. ChefSpec makes it easy to write examples and get fast feedback on cookbook changes without the need for virtual machines or cloud servers.', tool_type: test_framework})
better_errors = Tool.create({name: 'Better Errors', ugly_name:'better_errors', description: 'Better error page for Rack apps.', tool_type: test_framework})
test_kitchen = Tool.create({name: 'Test Kitchen', ugly_name:'test-kitchen', description: 'Test Kitchen is an integration tool for developing and testing infrastructure code and software on isolated target platforms.', tool_type: test_framework})
kitchen_vagrant = Tool.create({name: 'Kitchen::Vagrant', ugly_name:'kitchen-vagrant', description: 'A Test Kitchen Driver for Vagrant. This driver works by generating a single Vagrantfile for each instance in a sandboxed directory. Since the Vagrantfile is written out on disk, Vagrant needs absolutely no knowledge of Test Kitchen. So no Vagrant plugins are required.', tool_type: test_framework})
sdoc = Tool.create({name: 'SDoc', ugly_name: 'sdoc', description: 'RDoc generator to build searchable HTML documentation for Ruby code.', tool_type: documentation})
awesome_print = Tool.create({name: 'Awesome Print', ugly_name: 'awesome_print', description: 'Pretty print your Ruby objects with style -- in full color and with proper indentation.', tool_type: documentation})
guard_spec = Tool.create({name: 'Guard Spec', ugly_name: 'guard-rspec', description: 'Automatically runs your RSpec tests.', tool_type: test_framework})
mocha = Tool.create({name: 'Mocha', ugly_name: 'mocha', description: 'Mocha is a feature-rich JavaScript test framework running on node.js and the browser, making asynchronous testing simple and fun. Mocha tests run serially, allowing for flexible and accurate reporting, while mapping uncaught exceptions to the correct test cases.', tool_type: test_framework})
minitest = Tool.create({name: 'Minitest', ugly_name: 'minitest', description: 'minitest provides a complete suite of testing facilities supporting TDD, BDD, mocking, and benchmarking. http://docs.seattlerb.org/minitest/.', tool_type: test_framework})
active_record = Tool.create({name: 'Active Record', ugly_name: 'activerecord', description: 'Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database. It is an implementation of the Active Record pattern which itself is a description of an Object Relational Mapping system.', tool_type: orm})
postgres_jruby_adapter = Tool.create({name: 'Postgres JRuby Adapter', ugly_name: 'activerecord-jdbcpostgresql-adapter', description: 'Postgres JDBC adapter for JRuby on Rails.', tool_type: orm})
entity_framework = Tool.create({name: 'Entity Framework (EF)', description: 'Entity Framework (EF) is an object-relational mapper that enables .NET developers to work with relational data using domain-specific objects. It eliminates the need for most of the data-access code that developers usually need to write.', tool_type: orm})
arel = Tool.create({name: 'Arel', ugly_name: 'arel', description: 'Arel is intended to be a framework framework; that is, you can build your own ORM with it, focusing on innovative object and collection modeling as opposed to database compatibility and query generation.', tool_type: orm})
rack_cache = Tool.create({name: 'Rack::Cache', ugly_name: 'rack-cache', description: 'Rack::Cache is suitable as a quick drop-in component to enable HTTP caching for Rack-based applications that produce freshness (Expires, Cache-Control) and/or validation (Last-Modified, ETag) information.', tool_type: cache})
turbolinks = Tool.create({name: 'Turbolinks', ugly_name: 'turbolinks', description: 'Turbolinks makes following links in your web application faster (use with Rails Asset Pipeline).', tool_type: cache})
bcrypt = Tool.create({name: 'Bcrypt', ugly_name: 'bcrypt', description: 'A Ruby binding for the OpenBSD bcrypt() password hashing algorithm, allowing you to easily store a secure hash of your users'' passwords.', tool_type: encryption})
comfy = Tool.create({name: 'Comfortable Mexican Sofa', ugly_name: 'comfortable-mexican-sofa', description: 'A powerful Rails 4 CMS Engine.', tool_type: cms})
pencil_blue = Tool.create({name: 'PencilBlue', description: 'Full stack online publishing and CMS for Node.js.', tool_type: cms})
cortex_tool = Tool.create({name: 'Cortex', ugly_name: 'cortex', description: 'A headless CMS.', tool_type: cms})
redcarpet = Tool.create({name: 'Redcarpet', ugly_name: 'redcarpet', description: 'Redcarpet is a Ruby library for Markdown processing that smells like butterflies and popcorn.', tool_type: parser})
kramdown = Tool.create({name: 'Kramdown', ugly_name: 'kramdown', description: 'A free MIT-licensed Ruby library for parsing and converting a superset of Markdown. It is completely written in Ruby, supports standard Markdown (with some minor modifications) and various extensions that have been made popular by the PHP Markdown Extra package and Maruku.', tool_type: parser})

puts "Created #{Tool.count} tools."

project_type_wiki = ProjectType.create({name: 'Wiki', description: 'A website anyone can edit.' })
project_type_webapplication = ProjectType.create({name: 'Web Application', description: 'A web application or web app is any application software that runs in a web browser or is created in a browser-supported programming language (such as the combination of JavaScript, HTML and CSS) and relies on a common web browser to render the application. (Source: wikipedia)' })
project_type_mobileapplication = ProjectType.create({name: 'Mobile Application', description: 'A mobile application or web app is any application software that runs on a mobile phone.' })
project_type_socialbookmarking = ProjectType.create({name: 'Social Bookmarking Website', description: 'A social bookmarking service is a centralized online service which enables users to add, annotate, edit, and share bookmarks of web documents.[1] Many online bookmark management services have launched since 1996; Delicious, founded in 2003, popularized the terms "social bookmarking" and "tagging". Tagging is a significant feature of social bookmarking systems, enabling users to organize their bookmarks in flexible ways and develop shared vocabularies known as folksonomies. (Source: wikipedia)' })
project_type_packagemanager = ProjectType.create({name: 'Package Manager', description: "A package management system, also called package manager, is a collection of software tools to automate the process of installing, upgrading, configuring, and removing software packages for a computer's operating system in a consistent manner. It typically maintains a database of software dependencies and version information to prevent software mismatches and missing prerequisites." })
project_type_employmentwebsite = ProjectType.create({name: 'Employment Website', description: 'An employment website is a web site that deals specifically with employment or careers. Many employment websites are designed to allow employers to post job requirements for a position to be filled and are commonly known as job boards. Other employment sites offer employer reviews, career and job-search advice, and describe different job descriptions or employers. Through a job website a prospective employee can locate and fill out a job application or submit resumes over the Internet for the advertised position. (Source: wikipedia)' })
project_type_restapi = ProjectType.create({name: 'Rest API', description: 'Representational state transfer (REST) is a way to create, read, update or delete information on a server using simple HTTP calls. It is an alternative to more complex mechanisms like SOAP, CORBA and RPC. A REST call is simply an HTTP request to the server.' })
project_type_scaling = ProjectType.create({name: 'Scaling', description: 'Get through growing pains and learn to scale!' })
project_type_googledocsaddon = ProjectType.create({name: 'Google Docs Add On', description: 'Extend the functionality of Google Docs. Google''s office productivity suite.' })
project_type_shoppingcart = ProjectType.create({name: 'Shopping Cart', description: 'Allow people to build a list of items they wish to purchase.' })

puts "Created #{ProjectType.count} project types."

project_resumerefinery = Project.create({name: 'Resume Refinery Google Docs Add On', description: 'This iteration of Resume Refinery is a Google Drive Add-On to assist job seekers in perfecting their resume. As they write/edit their resume in Google Drive, using Resume Refinery they can send their resume through CB''s various classification services to see how we classify their resume. We also show the top 5 job recommendations. This idea could be extended to a standalone web app so that it''s not tied to Google Drive.', project_type: project_type_googledocsaddon, owner:  'Chelsea.Youmans'})
# TODO: Add tools to project_resumerefinery

project_talentnetworkjobcart = Project.create({name: 'TalentNetwork Job Cart', description: 'Allows job seekers to track jobs they''re interested in applyng to, then apply in bulk upon "check out".', project_type: project_type_shoppingcart, owner: 'Anna.Steadham' })
# TODO: Add tools to project_talentnetworkjobcart

project_folio = Project.create({name: 'Folio', description: 'For SiteTech members that love to share with and learn from others. Build your portfolio to showcase your accomplishments, browse other''s projects to see how they were built. Find the tools and people you need to craft your next project!', project_type: project_type_webapplication, owner: 'James.Tharpe' })
UsersProject.create({project: project_folio, user: james})
UsersProject.create({project: project_folio, user: ben})
UsersProject.create({project: project_folio, user: alex})
UsersProject.create({project: project_folio, user: christina})
ProjectsTool.create({project: project_folio, tool: linux})
ProjectsTool.create({project: project_folio, tool: ruby, notes: "Everybody is doing it."})
ProjectsTool.create({project: project_folio, tool: ruby_on_rails, notes: "More shiney objects than Sinatra."})
ProjectsTool.create({project: project_folio, tool: rubymine, notes: "The right balance of command-line and point-and-click."})
ProjectsTool.create({project: project_folio, tool: sqlite, notes: "Built-in to Rails, and makes development a snap."})
ProjectsTool.create({project: project_folio, tool: jquery})
ProjectsTool.create({project: project_folio, tool: heroku, notes: 'Alex said it''s good.'})
ProjectsTool.create({project: project_folio, tool: coffee_script})
ProjectsTool.create({project: project_folio, tool: kramdown})

project_luceo = Project.create({name: 'Luceo', description: 'The most amazing applicant tracking system in the world.', project_type: project_type_webapplication, owner: 'Jesse' })
UsersProject.create({project: project_luceo, user: jesse})
ProjectsTool.create({project: project_luceo, tool: php})

project_tec = Project.create({name: 'Talent Engagement Cloud (TEC)', description: 'The horizontally scalable Career Site Platform for TalentNetwork.', project_type: project_type_webapplication, owner: 'James' })
UsersProject.create({project: project_tec, user: james})
UsersProject.create({project: project_tec, user: ben})
UsersProject.create({project: project_tec, user: corrine})
UsersProject.create({project: project_tec, user: andy})
UsersProject.create({project: project_tec, user: christina})
ProjectsTool.create({project: project_tec, tool: jquery})
ProjectsTool.create({project: project_tec, tool: angular_js})
ProjectsTool.create({project: project_tec, tool: comfy})
ProjectsTool.create({project: project_tec, tool: pencil_blue})
ProjectsTool.create({project: project_tec, tool: amazon_web_services})


project_cortex = Project.create({name: 'Cortex', description: 'A headless Content Management System for content distribution at CareerBuilder.', project_type: project_type_webapplication, owner: 'Alex' })
UsersProject.create({project: project_cortex, user: james})
UsersProject.create({project: project_cortex, user: ben})
ProjectsTool.create({project: project_cortex, tool: jquery})
ProjectsTool.create({project: project_cortex, tool: angular_js})

project_grrp = Project.create({name: 'Global Ruby on Rails Platform (GRRP)', description: 'Consumer''s super-platform for spinning up websites', project_type: project_type_webapplication, owner: 'Jeff' })
UsersProject.create({project: project_grrp, user: jeff})
UsersProject.create({project: project_grrp, user: tyler})
UsersProject.create({project: project_grrp, user: justin})
UsersProject.create({project: project_grrp, user: david})
ProjectsTool.create({project: project_grrp, tool: ruby})
ProjectsTool.create({project: project_grrp, tool: rubymine})
ProjectsTool.create({project: project_grrp, tool: ruby_on_rails})
ProjectsTool.create({project: project_grrp, tool: code_climate})
ProjectsTool.create({project: project_grrp, tool: amazon_web_services})
ProjectsTool.create({project: project_grrp, tool: cloud_flair})
ProjectsTool.create({project: project_grrp, tool: coffee_script})

project_mappingstability = Project.create({name: 'Mapping Stability 2014', description: 'Wade through a decade of technical debt to find and eliminate memory leaks, performance bottle necks, and other horrors.', project_type: project_type_scaling, owner: 'James.Tharpe' })
ProjectsTool.create({project: project_mappingstability, tool: fxcop})

project_careerbuildergems = Project.create({name: 'CareerBuilderGems', description: 'With the push to move to the cloud for CareerbuilderOne, shared resources have never been more vital. With such a large number of teams operating and developing in Ruby, having a way to keep Ruby code reusable throughout the organization is imperative. Using Amazon Web Services and Opscode Chef, we expand on what has been developed on the Consumer Development team to allow teams to publish and share their Ruby gems across the organization and enable other teams to make use of their technologies to continue innovating and building more robust solutions.', project_type: project_type_packagemanager, owner: 'James.Tharpe' })
ProjectsTool.create({project: project_careerbuildergems, tool: chef})
ProjectsTool.create({project: project_careerbuildergems, tool: ruby})
ProjectsTool.create({project: project_careerbuildergems, tool: amazon_web_services})

project_talentwallet = Project.create({name: 'Talent Wallet', description: 'A mobile app designed to capture resume data at career fairs.', project_type: project_type_mobileapplication, owner: 'James.Tharpe' })
ProjectsTool.create({project: project_talentwallet, tool: cordova})
ProjectsTool.create({project: project_talentwallet, tool: ionic})
ProjectsTool.create({project: project_talentwallet, tool: angular_js})
ProjectsTool.create({project: project_talentwallet, tool: firebase, notes: 'Test'})


puts "Created #{Project.count} projects."