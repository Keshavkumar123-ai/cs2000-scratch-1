#level intermediate

def convert_to_usd(amount: float, currency: str) -> float:
    """converts an amount in EUR, CAD, or INR to US dollars"""
    if currency == "EUR":
        return amount * 1.15
    elif currency == "CAD":
        return amount * 0.70
    else:
        return amount * 0.01

assert convert_to_usd(10, "EUR") == 11.5
assert convert_to_usd(50, "CAD") == 35.0
assert convert_to_usd(1000, "INR") == 10.0
assert convert_to_usd(0, "EUR") == 0.0