from fastapi import FastAPI
from starlette.responses import RedirectResponse
from shapes_service import router

app = FastAPI()

app.include_router(router.router)

@app.get("/", include_in_schema=False)
async def welcome():
    return RedirectResponse(url="/docs")
