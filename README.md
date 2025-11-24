# Drug-Interaction-Checker 

## Overview

This project is an expert system written in Prolog that can check for drug interactions and recommend safe drug pairings. The knowledge base contains facts about drugs and their contraindications and provides rules to evaluate medication safety.

---

## Features

- Store drug names and contraindicated pairs
- Check if two drugs interact
- Find safe combinations for co-administration
- List all interactions for a given drug
- Explore all safe drug pairings in the database

---

## How to Use (with SWISH Prolog Online)

1. **Access SWISH Prolog**
   - Go to [https://swish.swi-prolog.org](https://swish.swi-prolog.org) in your browser.

2. **Add Your Code**
   - Copy all Prolog code from `drug_interaction_checker.pl` and paste into the SWISH code cell.
   - Alternatively, use SWISH’s folder icon to upload your `.pl` file.

3. **Run Your Queries**
   - Enter queries into the query box and click "Run!" to get results.

4. **Sample Queries You Can Use**
   
% 1. List all drugs in the database
QUERY:?-drug(Drug).

% 2. Does drug A interact with drug B?
 QUERY:?-drug_interaction(aspirin, warfarin).

% 3. Is it safe to administer drug A with drug B?
 QUERY:?-safe_to_administer(paracetamol, ibuprofen).

% 4. List all drugs that interact with a specific drug
 QUERY:?-drug_interaction(Drug, warfarin).

% 5. List all drugs that a specified drug interacts with
 QUERY:?-drug_interaction(aspirin, Drug).

% 6. Find all pairs of drugs that are safe to use together
 QUERY:?-safe_to_administer(DrugA, DrugB).

% 7. Check for interaction in either order
 QUERY:?-drug_interaction(warfarin, aspirin).
 QUERY:?-drug_interaction(aspirin, warfarin).

% 8. Show all drugs with any interaction
 QUERY:?-interaction(Drug1, Drug2).

% 9. Find all drugs NOT interacting with a specific drug
 QUERY:?-drug(DrugB), safe_to_administer(aspirin, DrugB).

% 10. Find all safe combinations for a specific drug
 QUERY:?-drug(DrugB), safe_to_administer(warfarin, DrugB).

% 11. List all pairs that interact
 QUERY:?-interaction(DrugA, DrugB).

---
 
5. **View Results**
- SWISH will display results for each query. Click "Next" for multiple answers.

---

## Author

Name: AKSHAATH
REG.NO. 25BOE10027
COURSE: FUNDAMENTAL'S IN AI AND ML

---




