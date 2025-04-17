import numpy as np
from fastapi import APIRouter

router = APIRouter()


@router.get('')
def hello_world() -> dict:
    return {'msg': 'Hello, World!'}

@router.get('/matrices')
def multiply_matrices():
    a = np.random.randint(0, 10, size=(10, 10)).tolist()
    b = np.random.randint(0, 10, size=(10, 10)).tolist()
    product = (np.matmul(a, b)).tolist()
    return {
        "matrix_a": a,
        "matrix_b": b,
        "product": product
    }
