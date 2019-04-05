## amplitude_downloader

This environment will download data from the Amplitude analytics service and import it into a PostgreSQL database.


### Example usage:

```bash
$ docker run -it --rm -e "DB_HOST=$YOUR_HOST" -e "DB_PASSWORD=$YOUR_PASSWORD" -e "DB_USER=$YOUR_DB_USER" -e "DB_DATABASE_NAME=$YOUR_DATABASE" -e "AMPLITUDE_USERNAME=$YOUR_AMP_USERNAME" -e "AMPLITUDE_PASSWORD=$YOUR_PASSWORD" -e "START_DATE="20190310T0" -e "END_DATE=20190315T0" sax1johno/amplitude_downloader
```
