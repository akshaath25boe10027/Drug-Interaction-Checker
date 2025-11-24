% --- Drug facts and contraindications ---
drug(paracetamol).
drug(aspirin).
drug(ibuprofen).
drug(amoxicillin).
drug(warfarin).
drug(atorvastatin).

% Contraindication facts: interaction(drug1, drug2)
% (If two drugs interact adversely, specify both orders for clarity)
interaction(aspirin, warfarin).
interaction(warfarin, aspirin).
interaction(ibuprofen, warfarin).
interaction(warfarin, ibuprofen).
interaction(aspirin, ibuprofen).
interaction(ibuprofen, aspirin).
interaction(atorvastatin, amoxicillin).
interaction(amoxicillin, atorvastatin).

% Rule to check for direct interaction
drug_interaction(DrugA, DrugB) :-
    interaction(DrugA, DrugB).

% Rule to check for safe co-administration
safe_to_administer(DrugA, DrugB) :-
    drug(DrugA),
    drug(DrugB),
    DrugA \= DrugB,
    \+ interaction(DrugA, DrugB),
    \+ interaction(DrugB, DrugA).

% --- Example Queries ---
% 1. Does aspirin interact with warfarin?
% ?- drug_interaction(aspirin, warfarin).

% 2. Is it safe to use paracetamol with ibuprofen?
% ?- safe_to_administer(paracetamol, ibuprofen).

% 3. List all drugs that interact with warfarin.
% ?- drug_interaction(Drug, warfarin).

% 4. List all drug pairs that are safe together.
% ?- safe_to_administer(DrugA, DrugB).
