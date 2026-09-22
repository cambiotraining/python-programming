def check_threshold(category, current_total, thresholds):
    """Handles the conditional logic for budget warnings."""
    limit = thresholds.get(category, 0)
    if current_total > limit:
        print(f"Warning: You have exceeded the {category} threshold!")
        print(f"Total spent in {category}: {current_total}")
    else:
        remaining = limit - current_total
        print(f"Added to {category}.")
        print(f"Total spent in {category}: {current_total}")
        print(f"Amount left for {category}: {remaining}\n")