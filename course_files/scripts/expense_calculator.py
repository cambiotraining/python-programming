# Simple Expense Calculator using only core Python


# Set spending thresholds per category
thresholds = {
    "food": 100.0,
    "transport": 50.0,
    "entertainment": 80.0,
    "other": 70.0
}


# Load existing expenses from file (if any)
filename = "expenses.csv"
expenses = []


try:
    file = open(filename, "r")
    for line in file:
        parts = line.strip().split(",")
        if len(parts) == 2:
            category = parts[0].strip().lower()
            amount = float(parts[1])
            expenses.append([category, amount])
    file.close()
except FileNotFoundError:
    pass  # No existing file


# User input loop
print("Enter your expenses one at a time.")
print("Type 'done' as the category when you're finished.\n")
while True:
    category = input("Category (food, transport, entertainment, other): ").lower()
    if category == "done":
        break
    amount_str = input("Amount: ")
    
    if category in thresholds and amount_str.replace('.', '', 1).isdigit():
        amount = float(amount_str)
        expenses.append([category, amount])
    else:
        print("Invalid input. Try again.")


# Save to file
file = open(filename, "w")
for e in expenses:
    file.write(f"{e[0]},{e[1]}\n")
file.close()

