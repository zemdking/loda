FROM python:3.10

WORKDIR /code

# Set environment variables
ENV PASSWORD="anon@#@#"

# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Copy the current directory into the container
COPY . .

# Display the content of the directory
RUN ls -la

# Run code-server on 0.0.0.0:7860
CMD ["code-server", "--bind-addr", "0.0.0.0:7860"]
