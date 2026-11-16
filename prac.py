#level intermediate

def convert_to_usd(money : float, curr : str) -> float:
    """converts the input value into dollars"""
    if curr == "EUD":
        return money * 1.15
    elif curr == "CAD":
        return money * 0.70
    else:
        return money * 0.01
    
assert(convert_to_usd(1, "EUD")) == 1.15
assert(convert_to_usd(1, "CAD")) == 0.70
assert(convert_to_usd(1, "INR")) == 0.01


