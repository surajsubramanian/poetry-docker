```
> docker-compose up --build
 => ERROR [6/7] RUN poetry install --no-interaction --no-cache --no-root --without git                                                                                                                                    2.5s
------
 > [6/7] RUN poetry install --no-interaction --no-cache --no-root --without git:
#0 2.352
#0 2.352 Directory ../../shapes does not exist
------
failed to solve: executor failed running [/bin/sh -c poetry install --no-interaction --no-cache --no-root --without git]: exit code: 1
```
