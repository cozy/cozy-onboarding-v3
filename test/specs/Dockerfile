FROM cozy/cozy-app-dev:latest
CMD couchdb 1>/dev/null & \
  MailHog 2>/dev/null 1>/dev/null & \
  echo "0.0.0.0 cozy.local app.cozy.local" >> /etc/hosts && \
  /usr/bin/cozy-app-dev.sh \
   -d /data/cozy-app \
   -f /data/cozy-storage & \
  sleep 10 && \
  yes | cozy-stack instances destroy "cozy.local:8080" && \
  cozy-stack instances add --dev "cozy.local:8080" && \
  cat
