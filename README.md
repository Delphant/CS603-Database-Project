# CS603-Database-Project
SHU CS603 Database Project- Anime List Database June 2022

## About
This project was created for CS603- Database Design, for the Sacred Heart University Graduate program in Computer Science & Information Technology 2022

## Project Part 1 - Normalization

### 1st Form Normalization
- First normal form is when all redundancy within the table is removed, and there is AT LEAST one Primary key.
- In the first normal form of my Anime List database, I threw all the relevant information that I would need into one table.

![image](https://github.com/Delphant/CS603-Database-Project/assets/69480306/8228972e-0e29-4fab-960f-4d45a403e08c)

### 2nd Form Normalization
- Second normal form is when the tables are in first normal form and ALL partial dependencies within tables are removed.
- In the second normal form of my Anime List database, I split the tables based on the removal of partial dependencies.
- From the first normal form, to create the second normal form, the tables were divided based on 1) the user and 2) the actual anime to remove partial dependencies that did not relate to each other.

![image](https://github.com/Delphant/CS603-Database-Project/assets/69480306/4d16a9a7-4fc2-40ee-ad59-d87962ef7dd6)

### 3rd Form Normalization
- Third normal form is when the tables are in first and second normal form and ALL transitive dependencies are removed.
- In my Anime List database, I transformed the tables into the third normal form by taking the second normal form.
  - I created the table User Info, which contains all information about the specific user and their anime of choice.
  - I then created the table User Anime, which then contains the information about what that user listed about that specific anime.
  - Furthermore, I created the table Anime, which is all the information relating to the anime itself.
  - From there on, I created the Studio Info table, which includes information about the studio for any anime, thus removing transitive dependencies.

![image](https://github.com/Delphant/CS603-Database-Project/assets/69480306/b94d6392-1fe4-46cd-9d73-d3caa124f4bc)

### Keys
- In the third normalization form, I used several types of keys to make my database relational.
  - In the User Info table, the UserID would be considered the primary key because only one user can have a single ID.
  - In the User Anime table, the UserID and Anime columns would be considered the composite keys since both are needed to create a fully unique entity. The UserID column from the User Info table would be the foreign key to the User Anime table.
  - For the Anime table, the Anime column is the primary key. From the User Anime table, the Anime column would also be the foreign key to the Anime table as well.
  - Finally, for the Studio Info table, the studio column is the primary key since there is only one studio with that exact name. From the Anime table, the Studio column is the foreign key for the Studio Info table.

## Project Part 2 - UML Diagrams

### Data Model

![image](https://github.com/Delphant/CS603-Database-Project/assets/69480306/e4c143ac-5267-4e93-97a7-1db288486815)

- For the first version of the data model, each table is connected in a linear array. Using cardinality, I was able to determine the relationships between each table. 
- Between user information and user anime, one user could have watched zero or many anime. While on the reverse, to be in the system, a user anime has been put in place by one or many users.
- Between user anime and anime information, per one specific anime input by the user, there can only be one entry in the anime information, thus 1-1. In reverse, an anime can be watched by one or many different users.
- Between anime information and studio information, one anime is made by only one studio, thus 1-1. On the contrary, a studio can produce one or many different anime.

### Data Diagram

![image](https://github.com/Delphant/CS603-Database-Project/assets/69480306/3f51e45a-df31-40f3-aa1f-ce59da4bc49b)

- For this data diagram, each table is connected in a linear array. The difference between this second version and the first is to include unique numeric IDs for the specific Anime and their Studio.
- This version also includes Key types, NULLs, and data types for each entity in the third normalization form.
- In user information, UserID is the primary key. In user anime, Anime and UserID are the primary keys, making them a composite key. In anime information, AnimeID is the primary key. Finally, in studio information, StudioID is the primary key.
