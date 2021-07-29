#!/usr/bin/env bash

# Install packages
# apt-get install -y -q wget

# Download MeiliSearch
wget --directory-prefix=/usr/bin/ -O /usr/bin/meilisearch https://github.com/meilisearch/MeiliSearch/releases/download/$MEILISEARCH_VERSION/meilisearch-linux-amd64

# Change perimission for execution
chmod +x /usr/bin/meilisearch

# Launch MeiliSearch
systemctl enable meilisearch.service

touch $MEILISEARCH_ENV_PATH

echo "source $MEILISEARCH_ENV_PATH" >> /root/.bashrc
echo "source $MEILISEARCH_ENV_PATH" >> /etc/skel/.bashrc

echo "alias meilisearch-setup='sudo sh /var/opt/meilisearch/scripts/first-login/000-set-meili-env.sh'" > /etc/profile.d/00-aliases.sh
echo "meilisearch-setup" > /etc/profile.d/01-auto-run.sh
