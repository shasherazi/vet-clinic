This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

After you're finished please remove all the comments and instructions!
-->

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Usage](#usage)
  - [Schema diagram](#diagram)
- [👥 Authors](#authors)
- [Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Vet Clinic Database <a name="about-project"></a>

**Vet clinic database** is a database for a veterinary clinic. It stores information about animals that visit the clinic. It is a project for the [Microverse](https://www.microverse.org/) curriculum.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **It stores the names of all animals that visit the clinic.**
- **It stores the date of birth of each animal.**
- **It stores the weight of each animal.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- [PostgreSQL](https://www.postgresql.org/)

### Setup

Clone this repository to your desired folder:

```sh
  git clone git@github.com:shasherazi/vet-clinic.git
  cd vet-clinic
```

### Usage

To run the project, execute the following command:

Example command:

```sh
  createdb vet_clinic
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Schema Diagram -->

## Schema Diagram <a name="diagram"></a>

![image](https://user-images.githubusercontent.com/63230301/229833219-a3162115-280c-4e84-a822-5e9e8d4e2ece.png)

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **shasherazi**

- GitHub: [@shasherazi](https://github.com/shasherazi)
- Twitter: [@shasherazi](https://twitter.com/shasherazi)
- LinkedIn: [shasherazi](https://linkedin.com/in/shasherazi)

👤 **Aubin Simpeze**

- GitHub: [@aubinleyoung](https://github.com/aubinleyoung)
- Twitter: [@aubin_simpeze](https://twitter.com/aubin_simpeze)
- LinkedIn: [aubin-simpeze](https://linkedin.com/in/aubin_simpeze)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## Future Features <a name="future-features"></a>

- Add more tables to store more information about animals and their owners.
- Add more queries to retrieve information from the database.
- Add more constraints to the database.

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give it a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
