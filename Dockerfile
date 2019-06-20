FROM node

RUN yarn global add @vue/cli
RUN yarn global add @storybook/cli
RUN yarn global add majestic

# link vue app to root for easier binding
RUN ln -s /home/node/vue /vue

# convenience scripts
RUN mkdir /docker
COPY docker/vue-create.sh /docker

# default settings for new Vue projects
COPY docker/home_node_dot-vuerc.json /home/node/.vuerc

USER node

# default settings for new Vue projects
COPY docker/home_node_dot-vuerc.json /home/node/.vuerc

# default folder for vue app
RUN mkdir /home/node/vue
WORKDIR /vue

# vue
EXPOSE 8080

# majestic
EXPOSE 4000

# storybook
EXPOSE 6006
