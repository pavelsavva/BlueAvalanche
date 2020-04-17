Group Project - README Template
===

# Blue Avalanche [Social Media Management System]

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
> Social media is not just an activity; it is an investment of valuable time and resources. - Sean Gardner (@2morrowknight)

In 2020, social media presence is crucial for virtually any successful business. From developing brand awareness to generating new leads - thoughtful social media strategies and their successful execution can do it all and so much more. 

But what are the steps one should take to develop a trusted, well-rounded brand across all social media platforms? Of course, original, engaging content, that invokes the right emotions in customers is the number one thing that everyone should aim for. However, is there more to it? 

>  Consistent brands are worth 20% more than those with inconsistencies in their messaging.  - Forbes.com, “Why Content Consistency Is Key To Your Marketing Strategy”

Did you know that different social media have different peak times? For example, you should post on Instagram between 8-9 AM, Twitter is between 12-3 PM, and LinkedIn is 5-6 PM.  Posting consistently, around the same time every day (or every other day) seems to be the key to developing a loyal following base. While, unfortunately, we don’t have an app that would automatically generate unique and engaging content for you (and if we did, how unique would that content be?), we have something to take care of that consistency part. We understand that you’re busy. Running any kind of business is complicated. We know that you have myriad things to take care of and constantly worrying when your next post will be is not your first priority. It shouldn’t be - let Blue Avalanche take care of it for you.

**You make a post once - and we take care of the rest for you. We publish it across all your social media - LinkedIn, Instagram, Facebook, and Twitter - at the best time of the day. We also remind you to post every day, we keep track of your posts, analyze them, and show how consistent your posting has been.**

Create once - influence everyone. Blue Avalanche - we got you covered.

### App Evaluation
- **Category:** Social Media Marketing
- **Mobile:** The application will be developed for iOS mobile devices (due to the scope of this course), however, the next logical development iteration would be to cover Android devices. We will try to keep the API endpoints flexible and platform-independent enough to allow for future extension towards web-browsers too.
- **Story:** A user gets notifications every day to create a message (text, picture, video, or combination of the three) in the application that the application will post across all connected social media at appropriate times.
- **Market:** The application primarily aims at small business owners (real estate agents, personal trainers, photographers, etc.) who are looking to develop or maintain social media brand. However, any individual interested in developing and maintaining a consistent social media presence can benefit from this application. 
- **Habit:** The application helps the user develop a habit of posting on social media. It also provides analytics and statistics or users posting habits. 
- **Scope:** First, the user connects all their social media accounts (Facebook, Twitter, LinkedIn, and Instagram). Then, the application notifies the user every day to make new posts. After the post for a specific day is made, the application will automatically post it at the appropriate times across the user’s social media accounts. By doing this the application achieves three objectives - it helps a user develop a habit of posting on social media consistently, saves users time by automatically posting their message across all the social media, and provides analytics of users posting habits to facilitate to provide data for the development of future goals.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User sees app icon in home screen and styled launch screen.
* User can sign up to create a new account.
* User can login into the main app.
* User can connect their social media accounts. 
* User can compose a post across all of the social media (Twitter, Instagram, LinkedIn, and Facebook).
* User stays logged in across restarts.
* User can logout the main app.
* User can disconnect their social media accounts.
* User can rely on the application automatically posting their message across all the connected social media. 

**Optional Nice-to-have Stories**

* User can view the app on various device size and orientations.
* User can run the app on a real device.
* User can schedule new posts and view old posts via calendar.

### 2. Screen Archetypes

* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to be properly matched with another person. 
* Social Media Connection Screen
   * Opens upon sign up and stays open till the user connects at least one social media account.
* New Post Screen
    * Allows the user to create a new post and previews how the post will look across different social media. 
* Analytics Screen 
   * Allows the user to see the history of their posts and the average time between posts.
* Settings Screen
   * Lets the user delete the account, clear the analytics, or access the Social Media Connection Screen.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* New Post Screen
* Analytics Screen
* Settings Screen

Optional:
* Calendar

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available.
* User Logged-in, but has not connected any social media accounts -> Forced Social Media Connection Screen.
* Profile -> Social Media Connection Screen.
* User creates and saves new post at New Post Screen -> Analytics Screen 

## Wireframes
![](https://i.imgur.com/zSY0yRq.png)

![](https://i.imgur.com/pxNwcrJ.png)


### [BONUS] Interactive Prototype
![](https://i.imgur.com/r2jeZAF.gif)
