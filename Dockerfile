
FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app

RUN git clone --depth 1 --branch hk_wzmlx https://gitlab.com/mysterysd.sd/WZML-X /usr/src/app/repo && \
    rm -rf /usr/src/app/repo/.git


RUN pip3 install aiohttp \
                   aiofiles \
                   aioshutil \
                   anytree==2.8.0 \
                   apscheduler \
                   aria2p \
                   asyncio \
                   beautifulsoup4 \
                   cinemagoer \
                   cloudscraper \
                   cryptography \
                   dnspython \
                   feedparser \
                   flask \
                   gevent \
                   google-api-python-client \
                   google-auth-httplib2 \
                   google-auth-oauthlib \
                   gunicorn \
                   git+https://github.com/zevtyardt/lk21.git \
                   httpx \
                   langcodes[data] \
                   lxml \
                   motor \
                   mutagen \
                   markdown \
                   natsort \
                   pillow \
                   psutil \
                   pybase64 \
                   pycountry \
                   pymongo \
                   pyrogram \
                   python-dotenv \
                   python-magic \
                   qbittorrent-api \
                   requests \
                   speedtest-cli \
                   telegraph \
                   tenacity \
                   tgcrypto \
                   uvloop \
                   xattr \
                   yt-dlp

COPY . .

CMD ["bash", "start.sh"]
