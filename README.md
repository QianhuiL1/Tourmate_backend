# Tourmate — Data-Driven Tourism Service System (Back-end)

## Introduction
Tourmate is a comprehensive travel service platform powered by big data analytics to enhance travel experience. The system integrates sophisticated features for tourist attraction recommendations, personalized travel planning, and community interaction, all facilitated by an advanced microservice architecture.

## Features

### User Authentication
- **Login:** Users can log in by providing their username, password, and a captcha.
- **Registration:** New users can register by filling out a form with their details, which is then verified for successful account creation.

### Home Page
- **Attraction Search:** Users can search for attractions using keywords or filters.
- **Hotspot Recommendations:** Automatically curated seasonal popular attractions with details like reviews, images, and nearby dining options.

### Data Dashboard
- **Heatmaps:** Visual representation of popular tourist regions.
- **Top Attractions:** Rankings based on visitor data.
- **Keyword Clouds:** Displays current popular search terms.
- **News Feed:** Latest travel news fetched in real-time.
- **Tourist Statistics:** Displays tourist numbers for various regions.

### Personalized Travel Planning
- **Information Collection:** Users input their travel preferences and budgets.
- **Plan Generation:** Custom travel plans are generated using algorithms based on user input.
- **Plan Modification and Storage:** Users can modify and save these plans for future reference.

### Community Interaction
- **Posts:** Users can share experiences, ask questions, and interact through posts.
- **Likes and Comments:** Users can engage with community content through likes and comments.

### Personal Dashboard
- **Travel and Attraction Bookmarking:** Users can manage their saved travel plans and favorite attractions.
- **Profile Management:** Users can update their personal information.

## System Architecture

### Microservices - Ruoyi Framework
- **Service Discovery:** Utilizes Eureka for automatic service registration and discovery.
- **Configuration Management:** Centralized configuration using Nacos.
- **Load Balancing:** Load distribution with Ribbon or Nginx.
- **Resilience:** Fault tolerance with Hystrix, including circuit breaker patterns.
- **API Gateway:** Route management and security with Zuul or Gateway.
- **Monitoring:** Service health and performance monitoring with Zipkin, SkyWalking, or Prometheus.

### [Frontend Architecture]( https://github.com/QianhuiL1/Tourmate_frontend.git)
- **Vue.js Integration:** Frontend development with integration of AMap API, Element UI, and Echarts for a responsive user interface.

### [Backend Design]( https://github.com/QianhuiL1/Tourmate_backend.git)
- **Framework:** SSM (Spring MVC, Spring, MyBatis)
- **Layers:** Separation into controller, service, and DAO layers for efficient management and operation.

## Algorithm Design

### Attraction Recommendation Algorithm

#### Model Structure
The Attraction Recommendation Algorithm utilizes a deep learning framework based on PaddlePaddle. It processes multiple features of users and attractions to compute similarity scores that influence recommendations:
- **Feature Vector Transformation:** Converts various features of users and attractions into feature vectors.
- **Feature Extraction:** Uses fully connected or convolutional layers to extract deeper features from these vectors.
- **Vector Integration:** Combines feature vectors of users and attractions into a single vector to facilitate similarity calculations.
- **Similarity Calculation:** Computes the similarity between vectors and scales these values.
- **Loss Function:** Uses the mean squared difference between the similarity score and user preferences (based on browsing duration) to train the model. The model structure is shown as follows.
<img src="img/algorithm.png"/>

#### Process Flow
The recommendation process includes:
- **Feature Retrieval:** Retrieves stored feature vectors based on user IDs and attraction IDs.
- **Similarity Matrix Construction:** Calculates the similarity between user and attraction feature vectors to create a similarity matrix.
- **Sorting and Selection:** Sorts the similarities and selects the top entries to recommend.
- **Random Selection:** Incorporates random selection from the top results to enhance recommendation diversity.
- **Recommendation Display:** Shows recommendations on the homepage under "You Might Like".
<img src="img/flow.png"/>

### Custom Travel Plan Algorithm

#### Design
Designed to provide personalized travel plans based on user preferences and needs, this algorithm integrates recommendation models and path planning using ant colony optimization:
- **Preference Retrieval:** Gathers user preferences and saved features.
- **Attraction Suggestions:** Generates a list of attractions that might interest the user based on the recommendation model.
- **Nearby Attractions Search:** Searches for attractions close to the suggested ones.
- **Route Planning:** Utilizes ant colony algorithms for path planning.
- **Plan Generation:** Produces a customized travel plan.

#### Ant Colony Optimization Process
The path planning aspect of the algorithm involves:
- **Interest-Based List Generation:** Uses the recommendation algorithm to determine a list of potentially interesting attractions for the user.
- **Distance Calculation:** Converts geographical coordinates into distances.
- **Probability Computation:** Computes the probability of transitioning from one attraction to another.
- **Pheromone Update:** Updates the pheromone concentration along paths between attractions.
- **Optimal Path Derivation:** Breaks down the best paths into daily travel plans based on optimal visit times and attraction durations.

## Database Design
<img src="img/E-R.png"/>

The database features several interconnected entities that describe the platform’s functionality.

- **User**: This is a central entity that interacts with various aspects of the system. A user can have multiple browser histories, can post many times, and can save multiple attractions and plans. Each user can view numerous hot attractions and trips and send many comments.

- **BrowserHistory**: Captures the users' browsing sessions. A user can have many browser history records, which are not directly linked to any other entities except the User.

- **Attraction**: These are the points of interest that users can view. Each attraction can be included in many attraction collections, and it can connect to many plan collections, indicating that attractions are grouped and included in various travel plans.

- **AttrCollection**: This represents collections of attractions that a user can create and save. An attraction collection can include many different attractions.

- **PlanCollection**: Similar to AttrCollection, this entity represents the collections of plans. It suggests that a plan collection can involve multiple attractions and that users can view and save these collections.

- **HotTrip**: Represents highlighted or featured trips on the platform. Users can view multiple hot trips, indicating these are selected trips showcased to users for their quality or popularity.

- **HotAttraction**: These are the attractions that are currently trending or popular. Like HotTrip, they can be viewed by users and are likely featured prominently on the platform.

- **HotNews**: This entity represents news articles or updates that are of particular interest to the community. Each piece of hot news can be commented on by users, indicating an interactive aspect of the platform where news can be discussed.

- **Post**: Reflects the posts made by users on the platform. Each post can include multiple comments and likes, suggesting an interactive social feature where users can engage with content through comments and expressions of interest.

- **Comment**: Represents comments that users can send on posts or hot news, facilitating discussion and interaction on the platform.

- **Like**: This entity tracks likes on posts, which allows users to express their preferences and engagement with the content.

### Prerequisites
- Java 8+
- MySQL 5.7+