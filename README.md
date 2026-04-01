# ci

This project is a demonstration of a CI/CD pipeline using GitHub Actions.

## Project Structure
- `app.py`: Simple application logic.
- `test_app.py`: Unit tests for the application.
- `.github/workflows/python-ci.yml`: GitHub Actions configuration.

## How to run locally
1. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
2. Run tests:
   ```bash
   pytest
   ```

## Docker
Build the image:
```bash
docker build -t ci-app .
```
Run the container:
```bash
docker run ci-app
```

## Jenkins
This repository includes a `Jenkinsfile` for CI/CD automation. To use it:
1.  Connect your Jenkins instance to this repository.
2.  The pipeline will automatically run tests and build a Docker image.
