# ifsul-ads

Academic portfolio and code archive for the **Analysis and Systems Development** program at **IFSul - Campus Santana do Livramento**.

This repository organizes programming exercises, practical exams, course projects, and study material developed throughout the program. It is structured by semester and subject so the evolution from programming fundamentals to web, mobile, backend, databases, distributed systems, and software design can be followed over time.

## Repository Goals

- Keep academic code organized in a single versioned workspace.
- Preserve exercises, assessments, and course projects by semester.
- Document practical experience with different languages, frameworks, and architectural styles.
- Track the progression from introductory programming to full-stack, mobile, and backend projects.

## Repository Structure

```text
ifsul-ads/
├── primeiros-jogos/            # Early Java games and programming practice
├── semestre-1/                 # Programming logic
├── semestre-2/                 # Programming I and operating systems
├── semestre-3/                 # Data structures, OOP, and systems analysis
├── semestre-4/                 # Mobile I and distributed systems
└── semestre-5/                 # Mobile II and Web II
```

## Main Areas Covered

| Area | Examples in this repository |
| --- | --- |
| Programming fundamentals | Logic exercises, Java console applications, introductory games |
| Object-oriented programming | Inheritance, interfaces, encapsulation, exception handling, special classes |
| Data structures | Arrays, abstract data types, queues, stacks, list comparison, service simulations |
| Operating systems | Thread-based car races, semaphore usage, process scheduling algorithms |
| Desktop applications | Java Swing interfaces, CRUD-style academic projects, MySQL integration |
| Backend development | Node.js/Express API and Spring Boot REST API with JPA and H2 |
| Mobile development | Flutter apps, forms, API consumption, accessibility, geolocation, maps, sensors |
| Web development | PHP/MySQL CRUD system, Docker Compose, relational database modeling |

## Highlighted Projects

### Java Games and Foundations

Early programming projects live in [`primeiros-jogos`](primeiros-jogos/), including snake, tic-tac-toe, password games, obstacle avoidance, and console-based exercises. These projects represent the first practical steps with Java, Swing, basic game loops, state management, and simple persistence.

### Programming I Final Project

[`semestre-2/programacao-1/projeto-final`](semestre-2/programacao-1/projeto-final/) contains a Java desktop asset management system with CRUD screens and MySQL connectivity. It is one of the first larger projects in the repository and shows the transition from isolated exercises to a complete application.

### Operating Systems Exercises

[`semestre-2/sistemas-operacionais`](semestre-2/sistemas-operacionais/) includes thread-based simulations, semaphore usage, and CPU scheduling algorithms such as Shortest Job First and Round Robin.

### Data Structures and OOP Practice

[`semestre-3/estrutura-de-dados`](semestre-3/estrutura-de-dados/) and [`semestre-3/poo`](semestre-3/poo/) contain Java exercises focused on arrays, abstract data types, collections, queues, stacks, inheritance, interfaces, getters/setters, and exception handling.

### Backend and Distributed Systems

[`semestre-3/analise-de-sistemas/nodejs-calculadora-atraso`](semestre-3/analise-de-sistemas/nodejs-calculadora-atraso/) is a Node.js/Express project, while [`semestre-4/sistemas-distribuidos/events-on-map`](semestre-4/sistemas-distribuidos/events-on-map/) is a Spring Boot application using JPA, H2, Docker, and a small frontend for event management.

### Flutter Mobile Projects

Mobile coursework is grouped under [`semestre-4/mobile-I`](semestre-4/mobile-I/) and [`semestre-5/mobile-II`](semestre-5/mobile-II/). The projects cover Flutter fundamentals, forms, API consumption, accessibility, MVVM organization, permissions, geolocation, OpenStreetMap integration, OSRM routing, and hardware sensors.

### Web II Project

[`semestre-5/web-II/ProgramacionWeb2_proyecto`](semestre-5/web-II/ProgramacionWeb2_proyecto/) contains **Aura Rank**, a PHP/MySQL CRUD system with Docker Compose, PDO, relational database modeling, filtering, score history, categories, and achievements.

## Technologies

The repository includes work with:

- **Languages:** Java, Dart, JavaScript, PHP, SQL, HTML, CSS
- **Mobile:** Flutter, Android/iOS/web/desktop Flutter targets
- **Backend:** Node.js, Express, Spring Boot, JPA
- **Databases:** MySQL, H2
- **Frontend:** HTML, CSS, JavaScript, Flutter UI
- **Infrastructure:** Docker, Docker Compose, Maven, Gradle
- **Concepts:** OOP, data structures, concurrency, semaphores, REST APIs, CRUD, MVVM, accessibility, geolocation, sensors, relational modeling

## How to Use This Repository

This is a multi-project academic repository. There is no single root-level build command. Each project should be opened and executed from its own directory.

General workflow:

```bash
git clone https://github.com/marcosschlick/ifsul-ads.git
cd ifsul-ads
```

Then navigate to the desired project folder and follow its local README or project-specific setup. For example:

- Flutter projects usually require `flutter pub get` and `flutter run`.
- Node.js projects usually require `npm install` and a script such as `npm run dev`.
- Spring Boot projects can be run with Maven or through the included Dockerfile when available.
- PHP/MySQL projects may require Docker Compose or a local PHP/MySQL environment.
- Java exercises can usually be compiled and run from the folder that contains the main class.

## Naming and Organization

- The repository is organized chronologically by semester.
- Subject and project names are kept close to the course context.
- Some directories keep Portuguese subject names because they match the academic curriculum.
- Imported or generated framework files are preserved when they are part of the original coursework submission.

## Status

This repository is continuously updated as new academic work is produced, reviewed, renamed, or reorganized.

## License

This repository is available under the [MIT License](LICENSE). The code may be used for educational purposes as long as the original license and attribution are preserved.
