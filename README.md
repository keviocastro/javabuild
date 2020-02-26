### Multiple tools for building java projects in continuous integration

#### Example Gitalb with tag 11

```yaml
docker-build:
    image: keviocastro/docker-build:11
    services:
      - docker:ding
    script:
        - bumpversion --current-version minor pom.xml
        - mvn clean package
        - docker build -t mytag
        - docker push mytag
````

#### bumpversion

Version-bump your software with a single command!
See [bumpversion site](https://github.com/peritus/bumpversion)

```console
docker-build:
    image: keviocastro/docker-build:8
    script:
        - bumpversion --current-version minor pom.xml
docker run -v $(pwd):/app --rm keviocastro/javabuild bumpversion --current-version minor pom.xml
````

#### maven

Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
See [Maven site](https://maven.apache.org/)

```console
docker run -v $(pwd):/app --rm keviocastro/javabuild mvn clean package
````

#### docker

```console
docker run -v $(pwd):/app --rm docker build -t mytag && docker push -t mytag
````
