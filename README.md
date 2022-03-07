<!-- ⚠️ This README has been generated from the file(s) "./.modules/docs/blueprint-readme-ci-slim.md" ⚠️--><div align="center">
  <center>
    <a href="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint">
      <img width="140" height="140" alt="Ansible Lint logo" src="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/raw/master/logo.png" />
    </a>
  </center>
</div>
<div align="center">
  <center><h1>Ansible Lint - Code Climate Engine</h1></center>
  <center><h4 style="color: #18c3d1;">A <a href="https://megabyte.space">Megabyte Labs</a> Dockerfile project for CodeClimate engines / Latest build includes Ansible Lint v5.0.12</h4></center>
</div>
<!--
<div align="center">
  <h4 align="center">
    <a href="https://megabyte.space" title="Megabyte Labs homepage" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/home-solid.svg" />
    </a>
    <a href="https://hub.docker.com/u/megabytelabs" title="Megabyte Labs profile on DockerHub" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/dockerhub-profile-solid.svg" />
    </a>
    <a href="https://hub.docker.com/r/megabytelabs/ansible-lint" title="DockerHub page for this project" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/dockerhub-image-solid.svg" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/blob/master/CONTRIBUTING.md" title="Learn about contributing" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/contributing-solid.svg" />
    </a>
    <a href="https://www.patreon.com/ProfessorManhattan" title="Support us on Patreon" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/support-solid.svg" />
    </a>
    <a href="https://app.slack.com/client/T01ABCG4NK1/C01NN74H0LW/details/" title="Slack chat room" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/chat-solid.svg" />
    </a>
    <a href="https://github.com/ProfessorManhattan/docker-ansible-lint" title="GitHub mirror" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/github-solid.svg" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint" title="GitLab repository" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/gitlab-solid.svg" />
    </a>
  </h4>
  <p align="center">
    <a href="https://hub.docker.com/repository/docker/megabytelabs/ansible-lint" target="_blank">
      <img alt="Version" src="https://img.shields.io/docker/v/megabytelabs/ansible-lint?logo=docker&logoColor=white&sort=date&style=flat" />
    </a>
    <a href="https://hub.docker.com/repository/docker/megabytelabs/ansible-lint" target="_blank">
      <img alt="DockerHub image size: Ansible Lint" src="https://img.shields.io/docker/image-size/megabytelabs/ansible-lint?logo=docker&sort=date&logoColor=white&style=flat">
    </a>
    <a href="https://hub.docker.com/repository/docker/megabytelabs/ansible-lint" target="_blank">
      <img alt="DockerHub pulls: Ansible Lint" src="https://img.shields.io/docker/pulls/megabytelabs/ansible-lint?logo=docker&logoColor=white&style=flat" />
    </a>
    <a href="https://hub.docker.com/repository/docker/megabytelabs/ansible-lint" target="_blank">
      <img alt="DockerHub stars: Ansible Lint" src="https://img.shields.io/docker/stars/megabytelabs/ansible-lint?logo=docker&logoColor=white&style=flat" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/commits/master" target="_blank">
      <img alt="GitLab pipeline status" src="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/badges/master/pipeline.svg?style=flat" />
    </a>
    <a href="https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/raw/master/LICENSE" target="_blank">
      <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg?style=flat" />
    </a>
    <a href="profile.opencollective" title="Support us on Open Collective" target="_blank">
      <img alt="Open Collective sponsors" src="https://img.shields.io/opencollective/sponsors/megabytelabs?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAAElBMVEUAAACvzfmFsft4pfD////w+P9tuc5RAAAABHRSTlMAFBERkdVu1AAAAFxJREFUKM9jgAAXIGBAABYXMHBA4yNEXGBAAU2BMz4FIIYTNhtFgRjZPkagFAuyAhGgHAuKAlQBCBtZB4gzQALoDsN0Oobn0L2PEUCoQYgZyOjRQFiJA67IRrEbAJImNwFBySjCAAAAAElFTkSuQmCC&label=Open%20Collective%20sponsors&logo=opencollective&style=flat" />
    </a>
    <a href="https://github.com/ProfessorManhattan" title="Support us on GitHub" target="_blank">
      <img alt="GitHub sponsors" src="https://img.shields.io/github/sponsors/ProfessorManhattan?label=GitHub%20sponsors&logo=github&style=flat" />
    </a>
    <a href="https://github.com/ProfessorManhattan" target="_blank">
      <img alt="GitHub: ProfessorManhattan" src="https://img.shields.io/github/followers/ProfessorManhattan?style=social" target="_blank" />
    </a>
    <a href="https://twitter.com/MegabyteLabs" target="_blank">
      <img alt="Twitter: MegabyteLabs" src="https://img.shields.io/twitter/url/https/twitter.com/MegabyteLabs.svg?style=social&label=Follow%20%40MegabyteLabs" />
    </a>
  </p>
</div>
-->
<!-- </br><h3 align="center">**Node.js files/configurations that support the creation of Dockerfiles**</h3></br>-->

<!--TERMINALIZER![terminalizer_title](https://gitlab.com/megabyte-labs/ansible-roles/role_name/-/raw/master/.demo.gif)TERMINALIZER-->

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#table-of-contents)

## ➤ Table of Contents

- [➤ Overview](#-overview)
- [➤ Requirements](#-requirements)
  - [Optional Requirements](#optional-requirements)
- [➤ Example Usage](#-example-usage)
  - [Building the Docker Container](#building-the-docker-container)
  - [Building a Slim Container](#building-a-slim-container)
  - [Test](#test)
- [➤ Contributing](#-contributing)
- [➤ License](#-license)

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#overview)

## ➤ Overview

Code climate engine for Ansible Lint

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#requirements)

## ➤ Requirements

- **[Docker](https://gitlab.com/megabyte-labs/ansible-roles/docker)**
- [CodeClimate CLI](https://github.com/codeclimate/codeclimate)

### Optional Requirements

- [DockerSlim](https://gitlab.com/megabyte-labs/ansible-roles/dockerslim) - Used for generating compact, secure images
- [Google's Container structure test](https://github.com/GoogleContainerTools/container-structure-test) - For testing the Docker images




[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#example-usage)


## ➤ Example Usage

The Code Climate engine built using this repository can be used for analysis using code climate cli. 

```shell
codeclimate analyze
```

This allows you to run code climate analysis from the root of  your project directory. Ensure `.codeclimate.yml` file is present on the root of your project directory. A sample configuration of this file  is present in this repository.Once the analysis is complete it will display the results in code climate format.

If you have created the docker image locally and wish to test it you can do so using below command

```shell
codeclimate analyze --dev
```
In order to run slim docker image of this engine , please pull the latest slim docker image locally ( or create one ) and retag it to latest before running the same.



### Building the Docker Container

Run the below make command from the root of this repository to create a local fat docker image
```shell
make image
```

### Building a Slim Container

Run the below make command from the root of this repository to create a local slim docker image
```shell
make slim
```


### Test

Run the below command from the root of this repository to test the images created by this repository.
```shell
make test
```


## ➤ Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/issues). If you would like to contribute, please take a look at the [contributing guide](https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/blob/master/CONTRIBUTING.md).

<details>
<summary>Sponsorship</summary>
<br/>
<blockquote>
<br/>
I create open source projects out of love. Although I have a job, shelter, and as much fast food as I can handle, it would still be pretty cool to be appreciated by the community for something I have spent a lot of time and money on. Please consider sponsoring me! Who knows? Maybe I will be able to quit my job and publish open source full time.
<br/><br/>Sincerely,<br/><br/>

**_Brian Zalewski_**<br/><br/>

</blockquote>

<a href="https://www.patreon.com/ProfessorManhattan">
  <img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
</a>

</details>

[![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/aqua.png)](#license)

## ➤ License

Copyright © 2021 [Megabyte LLC](https://megabyte.space). This project is [MIT](https://gitlab.com/megabyte-labs/dockerfile/ci-pipeline/ansible-lint/-/raw/master/LICENSE) licensed.
