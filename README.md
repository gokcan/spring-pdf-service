## _Spring Secured_ PDF Creator [![Build Status](https://travis-ci.org/Skylifee7/Spring-Secured-PDF.svg?branch=master)](https://travis-ci.org/Skylifee7/Spring-Secured-PDF)
---
### Before Use

```
mysql.server start
```

#### Also change mysql user to = root , password to = 987654321 

(if you want to define your own mysql user credentials change the [application.properties](../master/src/main/resources/application.properties) file.

Do not use "user = __root__" on production stage!

---
### How to play with this project

#### Just execute it with maven

```
git clone https://github.com/Skylifee7/Spring-Secured-PDF.git
cd Spring-Secured-PDF
mvn spring-boot:run
```
---
### Endpoints

```
GET localhost:8080/ (Entry Point)
```
```
GET localhost:8080/register 
```
```
GET localhost:8080/login
```
```
GET localhost:8080/list-users
```

> "List Users in a table" and "Download PDF" features are not allowed to normal users. 
> On the other hand, freshly registered users have the __Admin__ role by default.

> However you can change this [logic](../master/src/main/java/com/gokcan/springboot/Controller/MainController.java#L53) and tailor it to your needs.

[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

