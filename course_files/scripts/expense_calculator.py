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
    with open(filename, "r") as file:
        for line in file:
            parts = line.strip().split(",")
            if len(parts) == 2:
                category = parts[0].strip().lower()
                amount = float(parts[1])
                expenses.append([category, amount])
except FileNotFoundError:
    pass  # No existing file

# Function to calculate total spent per category
def total_spent(category):
    return sum(amount for cat, amount in expenses if cat == category)

# User input loop
print("Enter your expenses one at a time.")
print("Type 'done' as the category when you're finished.\n")

while True:
    category = input("Category (food, transport, entertainment, other): ").lower()
    if category == "done":
        break
    
    amount_str = input("Amount: ")
    
    # Validate input
    if category in thresholds and amount_str.replace('.', '', 1).isdigit():
        amount = float(amount_str)
        expenses.append([category, amount])
        
        # Calculate totals
        current_total = total_spent(category)
        remaining = thresholds[category] - current_total
        
        # Show threshold info
        if current_total > thresholds[category]:
            print(f"Warning: You have exceeded the {category} threshold!")
            print(f"Total spent in {category}: {current_total}")
        else:
            print(f"Added {amount} to {category}.")
            print(f"Total spent in {category}: {current_total}")
            print(f"Amount left for {category}: {remaining}\n")
    else:
        print("Invalid input. Try again.\n")

# Save all expenses to file
with open(filename, "w") as file:
    for e in expenses:
        file.write(f"{e[0]},{e[1]}\n")

print("All expenses saved successfully.")
