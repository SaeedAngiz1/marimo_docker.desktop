# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Marimo with recommended features
RUN pip install --upgrade pip && \
    pip install marimo[recommended]

# Copy project files
COPY . /app

# Expose Marimo default port
EXPOSE 2718

# Create a non-root user for security
RUN useradd -m -u 1000 marimo && \
    chown -R marimo:marimo /app

# Switch to non-root user
USER marimo

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:2718 || exit 1

# Default command: run Marimo editor
CMD ["marimo", "edit", "--host", "0.0.0.0", "--port", "2718"]

