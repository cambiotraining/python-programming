def load_expenses(filename):
    """Uses try-except and a for loop to load data."""
    data = []
    try:
        with open(filename, "r") as file:
            for line in file:
                parts = line.strip().split(",")
                if len(parts) == 2:
                    data.append([parts[0].lower(), float(parts[1])])
    except FileNotFoundError:
        print("No existing records found. Starting fresh.")
    return data