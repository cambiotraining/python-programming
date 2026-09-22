import file_reader
import file_writer
import basics
import logic
import input_handler
import summary

# 1. Variable Assignments
FILE_NAME = "script_outputs/expenses.csv"
THRESHOLDS = {
    "food": 100.0,
    "transport": 50.0,
    "entertainment": 80.0,
    "other": 70.0
}

# 2. Function Calls
# Load data from the CSV (Uses Try/Except)
current_expenses = file_reader.load_expenses(FILE_NAME)

# Run the input loop (Uses While Loop)
input_handler.collect_expenses(
    THRESHOLDS, 
    current_expenses, 
    basics.get_category_total, 
    logic.check_threshold
)

# Display the final list (Uses For Loop)
summary.display_summary(current_expenses)

# Save data back to the file (Uses 'With' statement)
file_writer.save_expenses(FILE_NAME, current_expenses)