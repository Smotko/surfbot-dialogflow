FROM node:6.11.5
# Firebase functions use 6.11.5 (https://goo.gl/WfhhN4)

WORKDIR /usr/src/app

RUN npm install ava firebase-tools -g

# We need to install dependencies in the firebase/functions directory
# as they get deployed along with our function
COPY firebase/functions/package.json firebase/functions/package.json
RUN cd firebase/functions && npm install

COPY firebase firebase

CMD cd firebase && \
    firebase deploy --only functions --token $FIREBASE_TOKEN --project $FIREBASE_PROJECT
