Aerobase Documentation
======================

Open Source Identity and Access Management for modern Applications and Services.

For more information about Aerobase visit the [Aerobase homepage](http://aerobase.io) and [Aerobase blog](http://blog.aerobase.io).


Contributing to Aerobase Documentation
--------------------------------------

See our [Contributor's Guide](internal_resources/contributing.adoc). The directory also includes a set of templates and other resources to help you get started.

If you want to file a bug report or tell us about any other issue with this documentation, you are invited to please use our [issue tracker](https://issues.jboss.org/projects/KEYCLOAK/).


Building Aerobase Documentation
-------------------------------

Ensure that you have [Maven installed](https://maven.apache.org/).

First, clone the Aerobase Documentation repository:

    git clone https://github.com/aerobase/aerobase-documentation.git
    cd aerobase-documentation

If you are using Windows, you need to run the following command with administrator privilege because this project uses symbolic links:

    git clone -c core.symlinks=true https://github.com/aerobase/aerobase-documentation.git

To build Aerobase Documentation run:

    mvn clean install

Or to build a specific guide run:

    mvn clean install -f GUIDE_DIR

You can then view the documentation by opening GUIDE_DIR/target/generated-docs/index.html.


Building RH-SSO Documentation
-----------------------------

Aerobase is the basis of [Aerobase Cloud SSO/IAM](https://cloud.aerobase.io/portal). The same documentation sources are used, but they are built slightly differently.

To build the documentation for RH-SSO run:

    mvn clean install -Dproduct

Or to build a specific guide run:

    mvn clean install -Dproduct -f GUIDE_DIR

You can then view the documentation by opening GUIDE_DIR/target/generated-docs/master.html.

If you have ccutil installed you can build the guides with:

    ./build-product.sh

Or individual guides with:

    ./build-product.sh GUIDE_DIR

License
-------

* [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0)
