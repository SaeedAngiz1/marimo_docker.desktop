# Use Python 3.12 slim image as base (latest stable)
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Set environment variables for Python optimization
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PIP_DEFAULT_TIMEOUT=100 \
    PYTHONOPTIMIZE=1

# Install system dependencies in a single layer to reduce image size
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    git \
    ca-certificates \
    libgomp1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libgcc-s1 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Upgrade pip and install wheel for faster package installation
RUN pip install --upgrade pip setuptools wheel

# Install uv (modern Python package manager)
RUN pip install --no-cache-dir uv

# Install Marimo with recommended features
RUN pip install --no-cache-dir marimo[recommended]

# Install common ML/Data Science/AI dependencies
RUN pip install --no-cache-dir \
    # Core data science
    numpy \
    pandas \
    scipy \
    scikit-learn \
    # Machine Learning frameworks
    torch \
    torchvision \
    torchaudio \
    tensorflow \
    # Deep Learning utilities
    transformers \
    datasets \
    accelerate \
    # Plotting and visualization
    matplotlib \
    seaborn \
    plotly \
    bokeh \
    altair \
    # Data processing
    polars \
    pyarrow \
    openpyxl \
    xlsxwriter \
    # Jupyter compatibility (for importing notebooks)
    jupyter \
    ipython \
    # Streamlit (for compatibility)
    streamlit \
    # Web frameworks
    fastapi \
    uvicorn \
    # Database connectors
    sqlalchemy \
    pymongo \
    psycopg2-binary \
    # HTTP requests
    requests \
    httpx \
    # Utilities
    tqdm \
    python-dotenv \
    pyyaml \
    # Image processing
    pillow \
    opencv-python-headless \
    # Statistical analysis
    statsmodels \
    # Time series
    prophet \
    # Natural language processing
    nltk \
    spacy \
    # API clients
    openai \
    anthropic

# Create a non-root user for security (before copying files)
RUN useradd -m -u 1000 -s /bin/bash marimo && \
    mkdir -p /app && \
    chown -R marimo:marimo /app

# Copy project files (after user creation for better caching)
COPY --chown=marimo:marimo . /app

# Switch to non-root user
USER marimo

# Expose Marimo default port
EXPOSE 2718

# Health check with better error handling
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:2718/api/status || exit 1

# Default command: run Marimo editor with optimized settings
CMD ["marimo", "edit", "--host", "0.0.0.0", "--port", "2718"]

