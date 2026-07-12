# Prompt Log (AI Collaboration Log)

**Course:** CPSC 4150 – Mobile Application Development  
**Project:** Flash Dash  
**Tool Used:** ChatGPT

---

## Entry 1 — Choosing the Game (July 12, 2026, tool: ChatGPT)

**Context:** I had to choose one game from the list that was given for the project. I wanted something that I could finish on time and still make look polished.

**Prompt Excerpt:** I need to choose one game from the assignment. Which one do you think would be the best option for me?

**AI Summary:** The AI compared the different games and recommended Flash Dash because it was one of the simpler games to build but still covered all of the requirements.

**Human Evaluation:** I thought Flash Dash was the best choice because it wasn't too complicated and it still had enough features like scoring, swiping, and statistics.

**Final Decision:** I decided to make Flash Dash instead of one of the other games.

**Testing Verification:** I compared the game to the assignment description before I started coding.

**Commit:** Initialize Flash Dash project

---

## Entry 2 — Setting Up the Project (July 12, 2026, tool: ChatGPT)

**Context:** Before I started coding the game I wanted to organize my project so everything wasn't inside one file.

**Prompt Excerpt:** Can you help me organize my Flutter project into different folders before I start building the game?

**AI Summary:** The AI suggested creating folders for my screens, data, and services.

**Human Evaluation:** I liked the idea but I thought some of the folders weren't really needed since this wasn't a huge project. I kept the important ones and left the rest out.

**Final Decision:** I separated the project into screens, data, and services to make everything easier to find.

**Testing Verification:** I created the folders and made sure the project still ran before adding any code.

**Commit:** Create project structure

---

## Entry 3 — Adding the Dolch Word Lists (July 12, 2026, tool: ChatGPT)

**Context:** I needed all of the Dolch sight words inside the application because the game was going to choose random words depending on the level that the player selected.

**Prompt Excerpt:** Can you give me the complete Dolch sight word lists in Dart so I can put them into my project?

**AI Summary:** The AI generated all five Dolch word lists and put them into a Dart map.

**Human Evaluation:** I thought this was the easiest way to do it because the words never change. I just had to make sure the names matched the ones I was using on the home screen.

**Final Decision:** I stored all of the words in one Dart file using a map with each reading level.

**Testing Verification:** I started a game using each reading level and made sure the correct words were being displayed.

**Commit:** Add Dolch word data

---

## Entry 4 — Building the Flash Dash Game (July 12, 2026, tool: ChatGPT)

**Context:** After I had the home screen finished I needed to actually build the game. I wanted the game to randomly choose words, let the player answer them, and keep showing words that they missed until they got them right.

**Prompt Excerpt:** Can you help me build the Flash Dash game? I need it to randomly choose words and recycle the missed words until they are all completed.

**AI Summary:** The AI helped me build the main game loop by shuffling the words, choosing ten random words, and moving missed words to the end of the list.

**Human Evaluation:** I thought the overall idea was good but I changed some of the code while I was testing it because I wanted to make sure the words were showing in the correct order and weren't getting skipped.

**Final Decision:** I decided to use ten random words each game and move missed words to the end of the list until they were answered correctly.

**Testing Verification:** I played several games and purposely marked words as "Practice Again" to make sure they came back later in the round.

**Commit:** Implement Flash Dash gameplay

---

## Entry 5 — Fixing the Build Error (July 12, 2026, tool: ChatGPT)

**Context:** While I was adding more features I started getting an error that said my State class was missing the build method even though it was already there.

**Prompt Excerpt:** Flutter says my State class is missing the build method but I can clearly see the build method in my file. Can you help me figure out what is wrong?

**AI Summary:** The AI looked through my file and found that I had an extra closing brace and some duplicated code that was causing Dart to read the class incorrectly.

**Human Evaluation:** I thought that made sense because the error message wasn't really telling me what the actual problem was. Instead of rewriting everything I only removed the extra code that was causing the issue.

**Final Decision:** I fixed the extra braces and duplicate code and kept the rest of my game exactly the same.

**Testing Verification:** I reran the application and made sure the project compiled correctly and that the game still worked after the fix.

**Commit:** Fix Flash Dash state errors

---

## Entry 6 — Adding Swipe Controls (July 12, 2026, tool: ChatGPT)

**Context:** The assignment description said that players should swipe right for "I Know It" and swipe left for "Practice Again." My game only had buttons at this point.

**Prompt Excerpt:** Can you help me add swipe controls to my flashcards while still keeping the buttons?

**AI Summary:** The AI suggested using a Dismissible widget so the player could swipe the flashcards left and right.

**Human Evaluation:** I thought this was a good idea because it matched the assignment, but I also wanted to leave the buttons there because they make the game easier to use.

**Final Decision:** I added both swipe gestures and buttons so players can use whichever method they prefer.

**Testing Verification:** I tested both swipe directions along with both buttons and made sure they all did the correct action.

**Commit:** Add swipe controls

---

## Entry 7 — Saving Scores and Creating the Statistics Screen (July 12, 2026, tool: ChatGPT)

**Context:** Once the game was working I wanted to save the player's scores so they wouldn't disappear every time the app closed. I also needed a statistics page that showed previous scores.

**Prompt Excerpt:** Can you help me save the player's scores locally and create a statistics page that displays them?

**AI Summary:** The AI suggested using SharedPreferences to save the scores locally and then loading them on a separate statistics screen.

**Human Evaluation:** I thought this was the best option because the project only needed to store a small amount of information and there was no reason to use a database. I did change part of the code so the score would only be saved once instead of every time the screen refreshed.

**Final Decision:** I used SharedPreferences to save each completed game and display the games played, best score, average score, and total points.

**Testing Verification:** I played several games, checked that the statistics updated correctly, then closed and reopened the app to make sure the scores were still there.

**Commit:** Add persistent statistics

---

## Entry 8 — Adding the Timer and Results Screen (July 12, 2026, tool: ChatGPT)

**Context:** The Flash Dash description said it was a timed game, so I wanted to add a timer and show how long each game took after the player finished.

**Prompt Excerpt:** Can you help me add a timer to the game and display it on the results screen?

**AI Summary:** The AI suggested using a Timer that starts when the game begins and stops when the player finishes. It also showed me how to pass the time to the results screen.

**Human Evaluation:** At first I thought about using a countdown timer, but I decided that an elapsed timer made more sense because the assignment never said the player should lose when time runs out.

**Final Decision:** I added an elapsed timer that starts at the beginning of the game and displays the final time on the results screen.

**Testing Verification:** I started a game, watched the timer count up, finished the game, and verified that the same time appeared on the results screen.

**Commit:** Add game timer

---

## Entry 9 — Final Polish and Testing (July 12, 2026, tool: ChatGPT)

**Context:** After all of the required features were finished I wanted to improve the overall look of the application and make sure everything was working before submitting it.

**Prompt Excerpt:** Can you help me improve the appearance of the home screen, results screen, statistics page, and README before I submit the project?

**AI Summary:** The AI suggested improving the layout by adding larger buttons, icons, better spacing, rounded cards, and screenshots for the README.

**Human Evaluation:** I liked most of the suggestions because they made the application look more complete without changing how the game worked. I decided not to add any extra features because I wanted to focus on making sure everything already built worked correctly.

**Final Decision:** I polished the interface, finished the README, added screenshots, and completed final testing instead of adding more features.

**Testing Verification:** I tested the application from start to finish by selecting different levels, completing games, checking the results screen, verifying the statistics page, and making sure the README screenshots displayed correctly on GitHub.

**Commit:** Finalize Flash Dash project