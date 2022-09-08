FROM node
RUN mkdir app
WORKDIR /app
RUN ["npm", "rebuild", "esbuild"]
COPY . .
RUN npm install
EXPOSE 5173
CMD ["npm","run","dev","--","--host"]
