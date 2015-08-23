FROM sameersbn/ubuntu:14.04.20150120
MAINTAINER k.muramatsu625@gmail.com

Run		apt-get update -y \
	&&	apt-get -y install hyperestraier wv xlhtml ppthtml \
			supervisor logrotate cron
	&& update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX \
	&& rm -rf /var/lib/apt/lists/*

ADD assets/setup/ /app/setup/
RUN chmod 755 /app/setup/install
RUN /app/setup/install

ADD assets/config/ /app/setup/config/
ADD assets/init /app/init
RUN chmod 755 /app/init

VOLUME ["/home/hyperestraier"]

CMD ["/app/init"]
