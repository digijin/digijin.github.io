FROM jekyll/jekyll
ENTRYPOINT sh -c 'jekyll serve -s /opt/app --watch'
WORKDIR /opt/app
EXPOSE 4000
