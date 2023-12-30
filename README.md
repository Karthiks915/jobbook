# job_booking

A new Flutter project Setup

Job booking application to test few things

1) Auto Route breadcrumb navigation which was not possible with go_router. Using observer pattern a breadcrumb navigation was achieved.
2) DDD architecture used for the project, however this project for this project we think ideally a vertical slice is what would be preferred given how different pages use domains from all over the place.
3) Dyanimc overlay tooltip widget, made this because most of the packages online are not upto date.
4) Picked Sembast for local database. We looked at many different databases, the most popular one was Hive but unfortunately this was not maintained, Isar was another, but this enforced a schema like SQL which we did not want because our models MUST be highly flexible. Also sembast works on every platform including web. In the future we might look into a combination of SQL and NoSQL, but for now Sembast was perfect.
5) CQRS pattern. While it's not the entire implementation and extremely simple, the read model and the write model are completely different which will be the case when the repository is abstracted away from the client to the server.
6) Picked Riverpod because it is more than just a state management system. It also helps with caching and dependency injection. This is also a good state management because it doesn't force a design pattern which state management solutions like BloC does.
7) Uses Dio for HTTP calls, Flutter Hooks which reduces the bioler plate that stateful widgets come with.
8) Using sealed classes which was introducted in Dart 3 to test out a more robust form of error handling and exhaustively check for every possibility. 
9) Uses clearbit API to get to get logos of companies. (Obviously will be abstracted away to the server) This is to show all the logos of the companies that are your clients for better user experience.

Problems-

1) The main goal of the application was to create a breadcrumb navigation implemented using Auto Route and the observer pattern for not just a single page, but many pages throughout the application. With Go Router we were not able to get the entire stack of pages from the application.

2) This application has multiple pages that uses different domains, having a domain strict achitecture for such a type of application does not fit, we don't want one domain to be dependant on the other or tightly couple the repositories. In an ideal world we should be able to contain the business logic and different domains in their respective domain folders, or a shared folder, however that not being possible given how complex the application is, sticking to a vertical slice architecture is better is what we have come to the conclusion.


What next-

1) Redo with vertical slice architecture.
2) Node backend. Of course we don't want any of the repositories on the client side, firebase and appwrite could be used for testing, but Node is preferred and recommended.

Technologies used-

1) Freezed for data models
2) DDD architecture
3) Flutter Hooks
4) Auto route
5) Riverpod 2.0
6) Sembast local database



Demo of the breadcrumb navigation

![Breadcrumb navigation](https://i.imgur.com/VCapZMR.gif)

Demo of the overlay tooltip

![Overlay Tooltip](https://i.imgur.com/EBdM7Vw.gif)

