# Use Ubuntu as base
FROM ubuntu:latest

# Install dependencies
RUN apt update && apt install -y curl && \
    curl -fsSL https://ollama.ai/install.sh | sh

# Expose the Ollama API port (default 11434)
EXPOSE 11434

# Start Ollama and pull the mistral model
CMD ollama serve & sleep 2 && ollama pull mistral && fg
