# 🐳 Docker Setup for Marimo

This guide explains how to run Marimo using Docker and Docker Compose.

## 📋 Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- Docker Compose (included with Docker Desktop)

## 🚀 Quick Start

### Option 1: Using Docker Compose (Recommended)

1. **Build and start the container:**
   ```bash
   docker-compose up --build
   ```

2. **Access Marimo:**
   - Open your browser and go to: `http://localhost:2718`
   - The Marimo editor will be available

3. **Stop the container:**
   ```bash
   docker-compose down
   ```

### Option 2: Using Docker directly

1. **Build the image:**
   ```bash
   docker build -t marimo-guide .
   ```

2. **Run the container:**
   ```bash
   docker run -d \
     --name marimo-editor \
     -p 2718:2718 \
     -v $(pwd)/notebooks:/app/notebooks \
     marimo-guide
   ```

3. **Access Marimo:**
   - Open your browser and go to: `http://localhost:2718`

4. **Stop the container:**
   ```bash
   docker stop marimo-editor
   docker rm marimo-editor
   ```

## 📁 Directory Structure

The Docker setup expects the following structure:

```
Marimo/
├── notebooks/          # Your Marimo notebooks (created automatically)
├── data/              # Optional: datasets and data files
├── docs/              # Documentation
└── docker-compose.yml
```

## 🔧 Docker Compose Services

### Main Service: `marimo`

The main Marimo editor service:
- **Port**: 2718 (mapped to host)
- **Volumes**:
  - `./notebooks` → `/app/notebooks` (notebook storage)
  - `./docs` → `/app/docs` (documentation)
  - `./data` → `/app/data` (read-only data files)

### Optional Service: `marimo-app`

Run notebooks as apps (only starts with profile):
```bash
docker-compose --profile app up marimo-app
```

## 📝 Common Commands

### Start Services

```bash
# Start in foreground (see logs)
docker-compose up

# Start in background
docker-compose up -d

# Start with app runner
docker-compose --profile app up -d
```

### Stop Services

```bash
# Stop services
docker-compose down

# Stop and remove volumes
docker-compose down -v
```

### View Logs

```bash
# View logs
docker-compose logs -f

# View logs for specific service
docker-compose logs -f marimo
```

### Rebuild

```bash
# Rebuild after changes
docker-compose up --build

# Rebuild without cache
docker-compose build --no-cache
```

### Execute Commands in Container

```bash
# Open shell in container
docker-compose exec marimo bash

# Run Marimo command
docker-compose exec marimo marimo --help
```

## 🎯 Use Cases

### 1. Development Environment

Run Marimo in a consistent environment:

```bash
docker-compose up
```

### 2. Running Specific Notebooks

```bash
# Run a specific notebook as an app
docker-compose exec marimo marimo run notebooks/my_notebook.py
```

### 3. Creating New Notebooks

1. Start the container
2. Access the editor at `http://localhost:2718`
3. Create new notebooks - they'll be saved in `./notebooks/`

### 4. Sharing Notebooks

Notebooks in `./notebooks/` are persisted and can be:
- Version controlled with Git
- Shared with team members
- Backed up easily

## 🔒 Security

The Dockerfile includes:
- Non-root user execution
- Minimal base image (Python slim)
- Health checks
- Read-only data mounts where appropriate

## 🛠️ Customization

### Change Port

Edit `docker-compose.yml`:

```yaml
ports:
  - "8080:2718"  # Change 8080 to your preferred port
```

### Add Environment Variables

Edit `docker-compose.yml`:

```yaml
environment:
  - MARIMO_HOST=0.0.0.0
  - MARIMO_PORT=2718
  - YOUR_VAR=value
```

### Install Additional Packages

Edit `Dockerfile`:

```dockerfile
RUN pip install marimo[recommended] \
    pandas \
    numpy \
    matplotlib
```

### Mount Additional Directories

Edit `docker-compose.yml`:

```yaml
volumes:
  - ./notebooks:/app/notebooks
  - ./custom:/app/custom
```

## 🐛 Troubleshooting

### Password/Key Required

**If Docker Desktop asks for a password:**
- This is your **Windows user account password** (the one you use to log into Windows)
- Docker needs admin privileges to run
- Enter your Windows login password
- See [AUTHENTICATION_GUIDE.md](AUTHENTICATION_GUIDE.md) for more details

**If Marimo asks for API keys:**
- This is **optional** - only needed for AI features
- You can use Marimo without any API keys
- See [AUTHENTICATION_GUIDE.md](AUTHENTICATION_GUIDE.md) for how to get API keys

### Port Already in Use

If port 2718 is already in use:

```bash
# Change port in docker-compose.yml
ports:
  - "3000:2718"  # Use port 3000 instead
```

### Permission Issues

If you encounter permission issues:

```bash
# On Linux/Mac: Fix ownership
sudo chown -R $USER:$USER notebooks/

# On Windows: Usually not needed, but check folder permissions
```

### Container Won't Start

Check logs:

```bash
docker-compose logs marimo
```

### Docker Desktop Not Running

Make sure Docker Desktop is:
- Installed and running
- Shows "Docker Desktop is running" in system tray
- If not, start it from Start Menu

### Rebuild from Scratch

```bash
docker-compose down -v
docker-compose build --no-cache
docker-compose up
```

## 📦 Image Details

- **Base Image**: `python:3.11-slim`
- **Marimo Version**: Latest (from PyPI)
- **Port**: 2718 (default Marimo port)
- **User**: Non-root (marimo user, UID 1000)
- **Working Directory**: `/app`

## 🔗 Related Files

- `Dockerfile` - Container definition
- `docker-compose.yml` - Service orchestration
- `.dockerignore` - Files excluded from build

## 💡 Tips

1. **Persistent Storage**: Notebooks in `./notebooks/` persist between container restarts
2. **Data Files**: Place datasets in `./data/` for read-only access
3. **Development**: Use volumes for live editing
4. **Production**: Consider multi-stage builds for smaller images
5. **Networking**: Services can communicate via `marimo-network`

## 🚀 Next Steps

1. Start the container: `docker-compose up`
2. Access Marimo: `http://localhost:2718`
3. Create your first notebook
4. Explore the comprehensive guide in `docs/`

---

**Happy coding with Marimo! 🍃**

