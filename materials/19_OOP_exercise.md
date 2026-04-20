---
title: Create your own Scripts
---

::: {.callout-tip}
#### Learning Objectives

- Use everything you have learn so far and apply it to creating your own OOP based Financial Planning helper

:::


<!--

from datetime import datetime
from collections import defaultdict
import csv


# ---------- Category ----------

class Category:
    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return f"Category({self.name})"

    def __eq__(self, other):
        return isinstance(other, Category) and self.name == other.name

    def __hash__(self):
        return hash(self.name)


# ---------- Transactions ----------

class Transaction:
    def __init__(self, amount, category=None, date=None, description=""):
        self.amount = amount
        self.category = category
        self.date = date or datetime.now()
        self.description = description

    def apply(self, account):
        raise NotImplementedError


class Income(Transaction):
    def apply(self, account):
        account._increase_balance(self.amount)


class Expense(Transaction):
    def apply(self, account):
        account._decrease_balance(self.amount)


class Transfer(Transaction):
    def __init__(self, amount, target_account, date=None, description=""):
        super().__init__(amount, category=None, date=date, description=description)
        self.target_account = target_account

    def apply(self, account):
        account._decrease_balance(self.amount)
        self.target_account._increase_balance(self.amount)


# ---------- Account ----------

class Account:
    def __init__(self, name):
        self.name = name
        self._balance = 0
        self.transactions = []

    @property
    def balance(self):
        return self._balance

    def _increase_balance(self, amount):
        self._balance += amount

    def _decrease_balance(self, amount):
        if amount > self._balance:
            raise ValueError("Insufficient funds")
        self._balance -= amount

    def add_transaction(self, transaction):
        transaction.apply(self)
        self.transactions.append(transaction)

    def monthly_summary(self, year, month):
        summary = defaultdict(float)
        for t in self.transactions:
            if t.date.year == year and t.date.month == month:
                key = t.category.name if t.category else "Transfer"
                summary[key] += t.amount
        return dict(summary)


# ---------- Budgetिंग ----------

class BudgetManager:
    def __init__(self):
        self.limits = {}  # Category -> limit

    def set_limit(self, category, limit):
        self.limits[category] = limit

    def check(self, account, year, month):
        spending = defaultdict(float)

        for t in account.transactions:
            if (
                isinstance(t, Expense)
                and t.date.year == year
                and t.date.month == month
            ):
                spending[t.category] += t.amount

        results = {}
        for category, limit in self.limits.items():
            spent = spending.get(category, 0)

            if spent > limit:
                results[category.name] = f"⚠️ {spent}/{limit} (OVER)"
            else:
                results[category.name] = f"{spent}/{limit} (OK)"

        return results


# ---------- CSV Persistence ----------

class CSVStorage:
    FILE_HEADER = [
        "type", "account", "target_account",
        "amount", "category", "date", "description"
    ]

    @staticmethod
    def save(filename, accounts):
        with open(filename, "w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=CSVStorage.FILE_HEADER)
            writer.writeheader()

            for account in accounts.values():
                for t in account.transactions:
                    writer.writerow({
                        "type": t.__class__.__name__,
                        "account": account.name,
                        "target_account": getattr(t, "target_account", None).name
                            if isinstance(t, Transfer) else "",
                        "amount": t.amount,
                        "category": t.category.name if t.category else "",
                        "date": t.date.isoformat(),
                        "description": t.description
                    })

    @staticmethod
    def load(filename):
        accounts = {}
        categories = {}

        def get_account(name):
            if name not in accounts:
                accounts[name] = Account(name)
            return accounts[name]

        def get_category(name):
            if not name:
                return None
            if name not in categories:
                categories[name] = Category(name)
            return categories[name]

        with open(filename, "r") as f:
            reader = csv.DictReader(f)

            for row in reader:
                acc = get_account(row["account"])
                category = get_category(row["category"])
                date = datetime.fromisoformat(row["date"])
                amount = float(row["amount"])
                desc = row["description"]

                t_type = row["type"]

                if t_type == "Income":
                    t = Income(amount, category, date, desc)
                elif t_type == "Expense":
                    t = Expense(amount, category, date, desc)
                elif t_type == "Transfer":
                    target = get_account(row["target_account"])
                    t = Transfer(amount, target, date, desc)
                else:
                    continue

                acc.add_transaction(t)

        return accounts


# ---------- Example Usage ----------

if __name__ == "__main__":
    # Categories
    food = Category("Food")
    rent = Category("Rent")
    salary = Category("Salary")

    # Accounts
    accounts = {
        "Main": Account("Main"),
        "Savings": Account("Savings")
    }

    main = accounts["Main"]
    savings = accounts["Savings"]

    # Transactions
    main.add_transaction(Income(3000, salary, description="Paycheck"))
    main.add_transaction(Expense(50, food, description="Groceries"))
    main.add_transaction(Expense(30, food, description="Takeout"))
    main.add_transaction(Expense(1000, rent, description="Rent"))
    main.add_transaction(Transfer(500, savings, description="Save money"))

    # Save to CSV
    CSVStorage.save("finance.csv", accounts)

    print("Saved to finance.csv")

    # Load from CSV
    loaded_accounts = CSVStorage.load("finance.csv")

    print("\nLoaded balances:")
    for name, acc in loaded_accounts.items():
        print(name, ":", acc.balance)

    # Budget check
    budget = BudgetManager()
    budget.set_limit(food, 70)
    budget.set_limit(rent, 1200)

    print("\nBudget check (Main):")
    report = budget.check(loaded_accounts["Main"], 2026, 4)
    for cat, status in report.items():
        print(cat, ":", status)
-->


::: {.callout-exercise}
#### OOP Financial Planner Exercise
{{< level 3 >}}

Use all you have learn't so far to create an Object Oriented programming style financial planning helper.
This could for example tranck transfers of different catagories into and out of your account(s). 
It might be able to return different standardised breakdowns of your finances.

What classes will you use?
where will you use inheritance/Composition?
How will you interact with the planner?
Work out a good extensible framework first before starting!

You can help eachother out and ask help from the instructors
:::








## Summary

Now you should already be able to use python to automate simple tasks that you need doing!
