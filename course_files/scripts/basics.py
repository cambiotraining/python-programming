def get_category_total(expenses, category):
    """Simple math logic to filter and sum expenses."""
    return sum(amount for cat, amount in expenses if cat == category)