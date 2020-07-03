# Factcheck Lab Public Website

This repository contains the ghost installation and the theme for Factcheck
Lab public website at www.factchecklab.org.

The project website is generated by ghost handlebar theme, with content from
a ghost CMS in the same node process.

If you want to build your own ghost website, please go to
[Ghost.org](https://ghost.org/) for information.

## Developing

The theme template is written in [ghost
handlebars](https://ghost.org/docs/api/v3/handlebars-themes/). The CSS and
JavaScript assets are built by gulp. The theme directory is located under 
[ghost/themes/casper-maat].

To run the public website locally, it is recommended that you run the ghost
installation using Docker Compose. The compose file takes care of running the
ghost installation as well as building assets for you.

To run ghost using Docker Compose,

```
$ docker-compose up
```

Then access the website at http://localhost:2368

When running the ghost installation for the first time, it will ask you to
create an account. This account can be anything and this will not affect the
deployed version of the website. If you have access to our public website,
you can use the export feature in Ghost
Admin and import data to your local installation.

**Important**: After you have modified the theme files, you need to restart ghost because
the ghost installation cached the theme when generating pages. Also note that
asset files may not be re-generated automatically upon modification if you are
running Docker for Mac.

## Contributing

We welcome contributions to our projects! You can ask questions or file a bug
report by creating an issue on GitLab. To contribute, fork this repository on
GitLab and create a merge request.

## Getting Help

If you have questions, file an issue in our repository on GitLab, you can
also contact us at tech@factchecklab.org.

## Copyright & License

Copyright (c) 2020 tech@factchecklab.

The theme is modified from Ghost Casper theme, which has a MIT License.