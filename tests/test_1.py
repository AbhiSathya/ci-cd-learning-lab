from app.main import add

def test_add():
    assert add(2,4) == 6
    assert add(-1,1) == 0