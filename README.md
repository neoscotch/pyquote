# PyQuote

simple python/flask app for printing random quotes to a webpage. Used to test containerization in OpenShift

## Requirements

- Podman
- Python 3 (for building the image)
- Internet access to pull base images (or pre-pulled images offline)

## File Structure
```
pyquote/
├── app.py              # Flask app logic
├── Dockerfile          # Image build instructions
├── requirements.txt    # Python dependencies
├── podman-compose.yml  # Defines pod with app and DB containers
├── init.sql            # SQL init script for DB setup and sci-fi quote seeding
```

## How to Run
1. **Build the Flask app container**
   ```bash
   podman build -t pyquote .
   ```

2. **Start the pod with app and database**
   ```bash
   podman play kube podman-compose.yml
   ```

3. **Visit the app**
   Open your browser to [http://localhost:5000](http://localhost:5000) to see a random quote.

## Database Setup
The PostgreSQL container will automatically initialize the database using `init.sql`.
To enable this, mount the script into the container with:
```bash
podman run -d \
  --name quotes-db \
  -e POSTGRES_USER=quoteuser \
  -e POSTGRES_PASSWORD=quotepass \
  -e POSTGRES_DB=quotes \
  -v ./init.sql:/docker-entrypoint-initdb.d/init.sql:ro \
  postgres
```

This will automatically:
- Create the `quotes` table
- Insert 20 famous sci-fi quotes

You can then start the Flask app container and retrieve quotes from the database.
