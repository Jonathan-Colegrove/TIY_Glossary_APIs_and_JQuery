# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Term.create(name: "irb", definition: "IRB stands for 'interactive ruby and is a tool to interactively execute ruby expressions read from the standard input.", author: "Ruby-Doc", resource: "http://ruby-doc.org/stdlib-2.0.0/libdoc/irb/rdoc/IRB.html")

Term.create(name: "erb", definition: "An ERB object works by building a chunk of Ruby code that will output the completed template when run.", author: "Ruby-Doc", resource: "http://ruby-doc.org/stdlib-2.0.0/libdoc/erb/rdoc/ERB.html")

Term.create(name: "array", definition: "Arrays are ordered, integer-indexed collections of any object. Array indexing starts at 0, as in C or Java. A negative index is assumed to be relative to the end of the array---that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.", author: "Ruby-Doc", resource: "http://ruby-doc.org/core-2.3.1/Array.html")

Term.create(name: "hash", definition: "A Hash is a collection of key-value pairs. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.", author: "Ruby-Doc", resource: "http://ruby-doc.org/core-1.8.7/Hash.html")

Term.create(name: "API", definition: "Application program interface (API) is a set of routines, protocols, and tools for building software applications. An API specifies how software components should interact and APIs are used when programming graphical user interface (GUI) components", author: "Webopedia", resource: "http://www.webopedia.com/TERM/A/API.html")

Category.create(name: "Ruby", subject: "Back End Engineering")
Category.create(name: "ERB", subject: "Back End Engineering")
Category.create(name: "HAML", subject: "Back End Engineering")
Category.create(name: "Sinatra", subject: "Back End Engineering")
Category.create(name: "React", subject: "Front End Engineering")
Category.create(name: "npm", subject: "Front End Engineering")
Category.create(name: "JavaScript", subject: "Front End Engineering")
