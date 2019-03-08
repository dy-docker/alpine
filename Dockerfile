#create a mini image from alpine
FROM alpine:3.6
RUN apk update  
RUN apk add iputils 
RUN apk add tzdata 
RUN apk add --no-cache vim 
RUN cp /usr/share/zoneinfo/Asia/Shanghai   /etc/localtime 
RUN echo "Asia/Shanghai" > /etc/timezone
RUN apk del tzdata 
RUN mv /usr/bin/vi /usr/bin/vi.bak  
RUN mv /usr/bin/vim /usr/bin/vi 
RUN rm -rf /var/cache/apk/*
