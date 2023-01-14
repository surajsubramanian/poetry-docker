from fastapi import APIRouter, HTTPException
from shapes.main import area
import os

router = APIRouter()

@router.get("/area")
async def fnarea(n: int):
    try:
        print(os.getcwd())
        x = area(n) * n
        # x = n * n
        return str(x)
    except Exception as e:
        raise HTTPException(
            500,
            detail=f"Impossible to retrieve the instance information due to {str(e)}",
        )
