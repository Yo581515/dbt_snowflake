# ❄️ dbt + Snowflake (Dockerized)

A lightweight Dockerized setup for running a `dbt` project with a Snowflake backend — no local dbt installation needed.

---

## 🔧 Requirements

- [Docker](https://www.docker.com/) with `docker compose`
- A valid Snowflake account


---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/Yo581515/dbt_snowflake.git
cd dbt_snowflake
```

### 2. Configure Environment Variables

Create a `.env` file in the root directory with the following:

```env
SNOWFLAKE_ACCOUNT=your_account_identifier
DBT_PROFILES_DIR=/app
DAGSTER_DBT_PARSE_PROJECT_ON_LOAD=1
```

---

## 🧪 Load Sample Data into Snowflake

Before running dbt models, populate your Snowflake database with sample data:

### Steps

To load sample data into your Snowflake database, follow the instructions in the course resources:

[📄 Course Resources – Load Sample Data](https://github.com/Yo581515/dbt_snowflake/blob/main/_course_resources/course-resources.md)

---

## 🐳 Run the Project with Docker

### Option 1: Use the helper script

> ✅ Make sure Docker Desktop is **installed** and **running** before starting.

```bash
./build_run_docker_compose.sh
```

### Option 2: Run manually

```bash
docker compose up --build
```

---

## ✅ Available Services

- **dbt-test**: Runs `dbt deps`, `dbt debug`, and `dbt test`
- **docs-serve**: Generates and serves dbt docs at [http://localhost:8888](http://localhost:8888)
- **dbt-dagster**: Runs Dagster UI at [http://localhost:3333](http://localhost:3333)

---

<!-- ## 📁 Project Structure

```
.
├── dbtlearn/                  # dbt project directory
├── dbt_dagster_project/       # Dagster project
├── docker-compose.yml
├── .env                       # Environment variables
├── Dockerfile-sf_1_9_0        # Dockerfile for dbt v1.9.0
├── Dockerfile-sf_1_7_1        # Dockerfile for Dagster
└── build_run_docker_compose.sh
```

---

## 🔐 profiles.yml Configuration

The container expects the `profiles.yml` file at `/app/profiles.yml`. Here's the included configuration:

```yaml
dbtlearn:
  outputs:
    dev:
      type: snowflake
      account: "{{ env_var('SNOWFLAKE_ACCOUNT') }}"
      user: dbt
      password: dbtPassword123
      role: transform
      database: AIRBNB
      warehouse: COMPUTE_WH
      schema: dev
      threads: 1
  target: dev
```

> ✅ This file is already baked into the image. No changes needed unless customizing.

--- -->
<!-- Greetings to the MOST COMPLETE, CONTINUOUSLY UPDATED independent dbt™ (Data Build Tool) software course in the world - as of 2025! This course is both the TOP RATED and the BESTSELLER dbt course on Udemy! 

Course website: https://www.udemy.com/course/complete-dbt-data-build-tool-bootcamp-zero-to-hero-learn-dbt/?referralCode=659B6722C93EF4096D11

The structure of the course is designed to have a top-down approach. It starts with the theory - all you need to know is to put dbt (Data Build Tool) in context and to have an understanding of how it fits into the modern data stack. We start with the big picture, then we go deeper and deeper. Once you learned about the pieces, we are going to shift to the technicalities - a practical section -, which will focus on putting together the dbt “puzzle”. The practical section will cover each and every single dbt feature present today through the construction of a complete, real-world project; Airbnb. This presents an opportunity for us to show you which features should be used at what stage in a given project, and you will see how dbt is used in the industry.

**THEORETICAL SECTION:**

Among several other topics, the theoretical section puts special emphasis on transferring knowledge in the following areas;

 * Data-Maturity Model
 * Well-functioning Data Architectures
 * Data Warehouses, Data Lakes, and Data Lakehouses
 * ETL and ELT procedures and Data Transformations
 * Fundamentals of dbt (Data Build Tool)
 * Analytics Engineering
 * Normalization
 * Slowly Changing Dimensions
 * CTEs

Once we understood the theoretical layer and how dbt fits into the picture, we are going to start building out a dbt project from scratch, just how you would do this in the real world.

**PRACTICAL SECTION:**

The practical section will go through a real-world Airbnb project where you will master the ins and outs of dbt! We put special focus on getting everyone up and ready before the technical deep dive, hence we will start off by setting up our Development Environment:

 * MAC Development Environment Setup
 * WINDOWS Development Environment Setup
 * IDE dbt Extension Installation
 * Creation and Activation of Virtual Environments
 * Setting up Snowflake
 
Once we are ready - among several other technical topics, the following features will be covered;

 * dbt Models
 * dbt Materializations
 * dbt Tests
 * dbt Documentation
 * dbt Sources, Seeds, Snapshots
 * dbt Hooks and Operations
 * Jinja and Macros
 * Analyses, Exposures 
 * dbt Seeds
 * Data Visualization (Preset)

Once the theory and the practical stages are finished, we are going to dive into the best practices and more advanced topics. The course is continuously updated, whenever dbt publishes an update we adjust the course accordingly, so you always be up to date!

**Who is this course for?**

 * Data Engineers
 * Data Analysts
 * Data Scientists
 * BI Developers
 * BI Analyst

... and anyone who interacts with data lake/data warehouse/data lakehouse or uses SQL!

**Course Level Explained (Zero > Hero)**

The course doesn't have any expectations about your abilities and starts education from zero. Every exercise is an unavoidable step in your studies. In the same way, don't start an exercise of a superior level without having completed the preceding ones: you will be in difficulty if you do so. Practice is the only way to learn and it cannot be taken lightly. We are going to be next to you along the journey and you have our absolute support!

When the Airbnb project is presented to you, you have to do it in its entirety, without omitting any guidelines and by understanding the objective. A project "almost completely" done is often a project "totally incomplete" for us. Give special attention to detail. Your only reliable source of information regarding the instructions is the pedagogical team, don't trust the "I've heard".

By the time you complete the course, you will be equipped with both a very solid theoretical understanding and practical expertise with dbt. All the fundamentals, dbt features, best practices, advanced techniques and more will be covered in our course, which will make you become a master in dbt. Are you ready? ;)

**How to get help?**

We just published our initial round of Discussions on Udemy which is the easiest and most efficient way for you to post questions, receive answers, and peruse questions from other students. If you have questions or feedback, please reach out to us!

That about wraps it up for us for now!

Once again, thank you for being a part of this course. 

We can't wait to get started with you soon!

All the best,
Zoltan C. Toth -->
