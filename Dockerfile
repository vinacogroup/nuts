FROM mhart/alpine-node:12

# Switch to /app
WORKDIR /app
# Install deps
COPY package.json ./
RUN npm install --production
# Copy source
COPY . ./

# Ports
ENV PORT 80
# Set trust proxy to trust first proxy
ENV TRUST_PROXY true

EXPOSE 80

ENTRYPOINT ["npm", "start"]
