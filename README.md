# 🚀 Apache Rewrite Test

This project provides a simple setup to test Apache rewrite rules using Docker.

## 🛠️ Setup & Run

To build and run the container, execute:

```bash
./docker-rebuild-run.sh
```
This script will:
- Build the Docker container
- Start an Apache server with support for .htaccess rewrite rules

 ## 🔍 Testing Rewrite Rules
To test your rewrite rules, use curl:
```bash
curl -IL http://localhost:8080/your-path-here
```
This will return the HTTP response headers, allowing you to check if the redirect is working as expected.

## 📄 Adding Rewrite Rules
- The Apache rewrite rules must be added in:
html/.htaccess
- Please follow the examples provided in html/.htaccess when creating new rules.

## 📢 Notes
- Ensure that .htaccess syntax is correct before restarting the container.
- Use docker logs <container_id> for debugging if Apache rules are not behaving as expected.

Happy rewriting! 🚀
