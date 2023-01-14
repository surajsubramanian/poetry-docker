import uvicorn


uvicorn.run("shapes_service.app:app", host="0.0.0.0", port=8093, reload="true")
