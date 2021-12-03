FROM python:3.9.9-alpine
WORKDIR /nuitdelinfo_2021
COPY . .
RUN apk add --no-cache postgresql-libs && \
     apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
     pip install --no-cache-dir -r requirements.txt && \
     apk --purge del .build-deps
RUN cp /nuitdelinfo_2021/nuitdelinfo_2021/settings.py.exemple /nuitdelinfo_2021/nuitdelinfo_2021/settings.py
CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000"]
