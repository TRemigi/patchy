# user_management_module

This project is a template for a feature module or an app architecture.

It's deliberately light on technology choices, like networking, code generation, etc. It does
include Redux, but that can be replaced with another state management library if so desired.

## Architectural Layout

The architecture is based off of Clean.

- main.dart: The is a simple configuration file for running the app. It's responsible for setting up
  different run scenarios of the app, e.g., tablet vs. phone.

- module.dart: This is a file for exporting other files so that they can be imported into other
  projects when this project is used as a module. Examples of this are interfaces for other modules
  to implement or classes for other's to extend. For instance, this feature module should define its
  own navigation routes. But the App Module will need access to the Feature Module navigation routes
  so that it can pull together the routing for all of the Feature Modules.

- view - This is the layer of the architecture that contains our views, view models, controllers,
  and presenters

* View - This is the code for rendering what's displayed to the user. For our Flutter application,
  this will be our widget tree. It has a reference to a Controller and a Presenter. It notifies the
  Controller when there is an action that needs to be taken, like clicking a button on the screen.
  The View also subscribes to ViewModel updates so that when the ViewModel is updated, it can
  re-render the screen. References only the Presenter, View Model, and Controller

* ViewModel - This is a data object that contains the data for display. The View is responsible for
  copying the data from the ViewModel into our Flutter widgets, or reading properties from the
  ViewModel used for selectively rendering parts of the widget tree. There is generally no code in
  the view model, it's just data. What goes into the ViewModel is any data that can change how the
  View is rendered. This includes text that can be translated, data that needs to be formatted, data
  that is computed, feature toggles, booleans for if data is loading, etc. I like to have a
  ViewModel paired with any widget with more than a trivial amount of data to be displayed. If you
  create a widget that only takes a few arguments for display, it's OK not to have a corresponding
  ViewModel, but more than that, it's preferable to have a view model.

* Presenter - The Presenter's job is to prepare the view model. The Presenter will subscribe to
  changes to the app state model, prepare the ViewModel for display, and then publish the new
  ViewModel to the stream. References Only the App State

* Controller - The Controller takes actions from the View and handles them. The Controller
  references UseCases. It will call into UseCases for executing business logic and getting results
  back and then updating the State Model. References the App State and the Use Cases

- use_case - Use Cases are the core of our architecture. Each use case encapsulate something that
  the app wants to do and the business rules around performing that task. When looking through the
  list of use cases for the app, you should be able to see that this is a financial services app (
  for example) by the naming of the use cases. It defines all the interfaces and data models for
  interacting with the Use Case and then it's the responsibility of other classes, lower in the
  architecture to adapt to those interfaces. For instance, if the use case needs data, it will
  define the interface and data model for the data that it needs. It's then the responsibility of a
  Service class to adapt to the interface and retrieve the data to satisfy the model. Because of
  this, Use Cases know nothing about networking technologies, databases, local storage, state
  management, display technologies (Flutter), etc. They should be nearly pure Dart and should not
  have import statements referencing these technology decisions.

- service - These are the adapters for doing what the Use Cases need performed. They'll do things
  like make network calls, database calls, local storage, etc.

## Libraries

The libraries used by the project should be decided by the team. However, I've included the
following libraries for getting started:

- built_value - This is used for generating value classes. It auto-generates factory methods,
  comparison operators, hashable methods, etc. for data classes.
  https://pub.dev/packages/built_value

- Get_It/injectable - These are used for dependency injection. We should avoid littering the project
  with GetIt references in the controllers and presenters. Use Injectable for annotating those
  classes and allow it to build the dependency graph. Then use GetIt in the navigation configuration
  to provide the Page classes.
  https://pub.dev/packages/get_it
  https://pub.dev/packages/injectable

## Future

In Clean, they also describe Entities. These are pure Dart classes of business logic that can be
shared by the Use Cases. I don't describe those in the above, but we can add them in the future when
they become useful.