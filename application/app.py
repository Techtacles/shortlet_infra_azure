from fastapi import FastAPI
import time
app = FastAPI()
current_time = time.strftime("%a, %d %b %Y %H:%M:%S")


@app.get("/")
async def get_time():
    return {"Time": f"{current_time}"} 
