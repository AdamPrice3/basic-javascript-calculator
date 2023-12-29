FROM gitpod/workspace-full:latest

# Install dependencies
RUN sudo apt-get update && \
    sudo apt-get install -y libgtk-3-0 libnss3 libasound2 libxss1 libxtst6 libgbm1

# Install Node.js
RUN bash -lc "nvm install --lts"

# Set up the user
USER gitpod

# Install Electron globally
RUN npm install -g electron