FROM node:12.9-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
RUN npm install -g zmonvif-events
#CMD motion-onvif-events --motion-base-url $MOTION_BASE_URL --motion-camera-id $MOTION_CAMERA_ID --hostname $HOSTNAME --username $USERNAME --password $PASSWORD --port $PORT
CMD zmonvif-events -z $ZM_BASE_URL -i $ZM_MONITOR_ID -c $HOSTNAME -u $USERNAME -p $PASSWORD
