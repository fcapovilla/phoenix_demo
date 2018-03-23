FROM elixir:1.5

RUN apt-get update \
 && curl -sL https://deb.nodesource.com/setup_6.x | bash \
 && apt-get install -y apt-utils \
 && apt-get install -y nodejs \
 && apt-get install -y build-essential \
 && apt-get install -y inotify-tools

RUN groupadd dev && useradd -ms /usr/bin/zsh -g dev dev

USER dev
RUN mix local.hex --force \
 && mix archive.install --force  https://github.com/phoenixframework/archives/raw/master/phx_new-1.3.2.ez \
 && mix local.rebar --force

USER root
COPY . /app
RUN chown dev:dev /app -R

USER dev
RUN cd /app \
 && MIX_ENV=prod mix compile

EXPOSE 4000
WORKDIR /app

CMD ["mix", "phx.server"]
