# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create!(title: 'Docker for Rails Developers',
  description:
    %{<p>
      <em>Build, Ship, and Run Your Applications Everywhere</em>
      Docker does for DevOps what Rails did for web development—it gives you 
      a new set of superpowers. Gone are “works on my machine” woes and lengthy 
      setup tasks, replaced instead by a simple, consistent, Docker-based 
      development environment that will have your team up and running in seconds. 
      Gain hands-on, real-world experience with a tool that’s rapidly becoming 
      fundamental to software development. Go from zero all the way to production 
      as Docker transforms the massive leap of deploying your app in the cloud 
      into a baby step.
      </p>},
  image_url: 'ridocker.jpg',
	price: 38.00)
	
Product.create!(title: 'Build Chatbot Interactions',
  description:
    %{<p>
      <em>Responsive, Intuitive Interfaces with Ruby</em>
      The next step in the evolution of user interfaces is here. 
      Chatbots let your users interact with your service in their
      own natural language. Use free and open source tools along 
      with Ruby to build creative, useful, and unexpected interactions 
      for users. Take advantage of the Lita framework’s step-by-step 
      implementation strategy to simplify bot development and testing.
      From novices to experts, chatbots are an area in which everyone 
      can participate. Exercise your creativity by creating chatbot 
      skills for communicating, information, and fun.
      </p>},
  image_url: 'dpchat.jpg',
	price: 20.00)

Product.create!(title: 'Programming Crystal',
  description:
    %{<p>
      <em>Create High-Performance, Safe, Concurrent Apps</em>
      Crystal is for Ruby programmers who want more performance or for 
      developers who enjoy working in a high-level scripting environment. Crystal 
      combines native execution speed and concurrency with Ruby-like syntax, so 
      you will feel right at home. This book, the first available on Crystal, 
      shows you how to write applications that have the beauty and elegance of a 
      modern language, combined with the power of types and modern concurrency 
      tooling. Now you can write beautiful code that runs faster, scales better, 
      and is a breeze to deploy.
      </p>},
  image_url: 'crystal.jpg',
  price: 40.00)

Product.create!(title: 'Kotlin and Android Development featuring Jetpack',
  description:
    %{<p>
      Start building native Android apps the modern way in Kotlin with Jetpack’s expansive set of tools, libraries, and best practices. Learn how to create efficient, resilient views with Fragments and share data between the views with ViewModels. Use Room to persist valuable data quickly, and avoid NullPointerExceptions and Java’s verbose expressions with Kotlin. You can even handle asynchronous web service calls elegantly with Kotlin coroutines. Achieve all of this and much more while building two full-featured apps, following detailed, step-by-step instructions.
      </p>},
  image_url: 'mfjetpack.jpg',
  price: 25.00)

Product.create!(title: 'Learn to Program, Third Edition',
  description:
    %{<p>
      It’s easier to learn how to program a computer than it has ever been before. Now everyone can learn to write programs for themselves—no previous experience is necessary. Chris Pine takes a thorough, but lighthearted approach that teaches you the fundamentals of computer programming, with a minimum of fuss or bother. Whether you are interested in a new hobby or a new career, this book is your doorway into the world of programming.
      </p>},
  image_url: 'ltp3.jpg',
  price: 20.00)

Product.create!(title: 'Hands-on Rust',
  description:
    %{<p>
      Rust is an exciting new programming language combining the power of C with memory safety, fearless concurrency, and productivity boosters—and what better way to learn than by making games. Each chapter in this book presents hands-on, practical projects ranging from “Hello, World” to building a full dungeon crawler game. With this book, you’ll learn game development skills applicable to other engines, including Unity and Unreal.
      </p>},
  image_url: 'hwrust.jpg',
  price: 25.00)

Product.create!(title: 'Build Talking Apps for Alexa',
  description:
    %{<p>
      Voice recognition is here at last. Alexa and other voice assistants have now become widespread and mainstream. Is your app ready for voice interaction? Learn how to develop your own voice applications for Amazon Alexa. Start with techniques for building conversational user interfaces and dialog management. Integrate with existing applications and visual interfaces to complement voice-first applications. The future of human-computer interaction is voice, and we’ll help you get ready for it.
      </p>},
  image_url: 'cwalexa.jpg',
  price: 23.00)

Product.create!(title: 'Modern Front-End Development for Rails',
  description:
    %{<p>
      Improve the user experience for your Rails app with rich, engaging client-side interactions. Learn to use the Rails 6 tools and simplify the complex JavaScript ecosystem. It’s easier than ever to build user interactions with Webpacker gem, TypeScript, and Stimulus. You can add great front-end flair without much extra complication. Add React to build an even more extensive set of client-side features. Structure your code for different levels of client-side needs with these powerful options. Add to your toolkit today!
      </p>},
  image_url: 'nrclient.jpg',
  price: 22.00)

Product.create!(title: 'Powerful Command-Line Applications in Go',
  description:
    %{<p>
      Write your own fast, reliable, and cross-platform command-line tools with the Go programming language. Go might be the fastest—and perhaps the most fun—way to automate tasks, analyze data, parse logs, talk to network services, or address other systems requirements. Create all kinds of command-line tools that work with files, connect to services, and manage external processes, all while using tests and benchmarks to ensure your programs are fast and correct.
      </p>},
  image_url: 'rggo.jpg',
  price: 24.00)

Product.create!(title: 'Modern CSS with Tailwind',
  description:
    %{<p>
      Tailwind CSS is an exciting new CSS framework that allows you to design your site by composing simple utility classes to create complex effects. With Tailwind, you can style your text, move your items on the page, design complex page layouts, and adapt your design for devices from a phone to a wide-screen monitor. With this book, you’ll learn how to use the Tailwind for its flexibility and its consistency, from the smallest detail of your typography to the entire design of your site.
      </p>},
  image_url: 'tailwind.jpg',
  price: 18.00)

Product.create!(title: 'Apple Game Frameworks and Technologies',
  description:
    %{<p>
      Design and develop sophisticated 2D games that are as much fun to make as they are to play. From particle effects and pathfinding to social integration and monetization, this complete tour of Apple’s powerful suite of game technologies covers it all. Familiar with Swift but new to game development? No problem. Start with the basics and then layer in the complexity as you work your way through three exciting—and fully playable—games. In the end, you’ll know everything you need to go off and create your own video game masterpiece for any Apple platform.
      </p>},
  image_url: 'tcswift.jpg',
  price: 26.00)

Product.create!(title: 'Essential 555 IC',
  description:
    %{<p>
      Learn how to create functional gadgets using simple but clever circuits based on the venerable “555.” These projects will give you hands-on experience with useful, basic circuits that will aid you across other projects. These inspiring designs might even lead you to develop the next big thing. The 555 Timer Oscillator Integrated Circuit chip is one of the most popular chips in the world. Through clever projects, you will gain permanent knowledge of how to use the 555 timer will carry with you for life.
      </p>},
  image_url: 'catimers.jpg',
  price: 11.00)
