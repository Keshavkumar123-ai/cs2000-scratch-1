#level intermediate

def tshirt_cost(message : str) -> float:
    """calculates the cost of the tshirt"""
    return len(message) * 0.1
def test_tshirt_cost() -> None:
    assert tshirt_cost("hi") == 0.2
    assert tshirt_cost("hello") == 0.5
    
def greet(name: str) -> str:
    """adds Hello with the name"""
    return "Hello, " + name + "!"

def test_greet() -> None:
    assert greet("Alice") == "Hello, Alice!"
    