# Dockerfile

# 1. base-image 선택
FROM node:alpine

# 2. 필요 작업 실행
RUN cd /usr && mkdir app
WORKDIR '/usr/app'
# package.json을 먼저 COPY하고 npm install 함으로써 소스 코드 변경시 불필요하게 npm install 안하도록 설정
COPY package*.json ./
RUN npm install
# 소스코드 COPY
COPY ./ ./

# 3. 실행 커맨드 입력
CMD ["npm", "run", "start"]
