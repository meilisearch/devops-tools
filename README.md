<p align="center">
  <img src="https://github.com/meilisearch/integration-guides/blob/main/assets/logos/logo.svg" alt="DevOps Tools" width="200" height="200" />
</p>

<h1 align="center">DevOps Tools(Poc)</h1>

<h4 align="center">
  <a href="https://github.com/meilisearch/MeiliSearch">MeiliSearch</a> |
  <a href="https://docs.meilisearch.com">Documentation</a> |
  <a href="https://slack.meilisearch.com">Slack</a> |
  <a href="https://roadmap.meilisearch.com/tabs/1-under-consideration">Roadmap</a> |
  <a href="https://www.meilisearch.com">Website</a> |
  <a href="https://docs.meilisearch.com/faq">FAQ</a>
</h4>

<p align="center">
  <a href="https://github.com/meilisearch/cloud-scripts/blob/main/LICENSE"><img src="https://img.shields.io/badge/license-MIT-informational" alt="License"></a>
</p>

<p align="center">☁ MeiliSearch DevOps Tools for the Cloud ☁</p>

**DevOps Tools(Poc)** is a set of tools and scripts for creating MeiliSearch images for multiple platforms made with [Packer](https://www.packer.io/).

**MeiliSearch** is an open-source search engine. [Discover what MeiliSearch is!](https://github.com/meilisearch/MeiliSearch)

## Table of Contents <!-- omit in toc -->

- [🎁 Content of this repository](#-content-of-this-repository)
- [📖 Documentation](#-documentation)
- [🔧 Prerequisites](#-prerequisites)
- [🔑 Set your credentials](#-set-your-credentials)
- [🚀 Getting Started](#-getting-started)

## 🎁 Content of this repository

:warning: This repository is a PoC.

This repository contains templates configurations to build Meilisearch's images for Aws and Digital Ocean.

This Packer build configurations are used primarily by the MeiliSearch team, aiming to provide our users simple ways to deploy and configure MeiliSearch in the cloud. As our heart resides in the open-source community, we maintain several of these tools as open-source repositories.

## ☁ Providers available

| Cloud Provider |
|----------|
| DigitalOcean |
| AWS |

## 📖 Documentation

See our [Documentation](https://docs.meilisearch.com/learn/tutorials/getting_started.html) or our [API References](https://docs.meilisearch.com/reference/api/).

## 🔧 Prerequisites

You need the following to run the template:
1. The [Packer CLI 1.7+](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli?in=packer/aws-get-started) installed locally
2. Obtain a [DigitalOcean API Token](https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token/) and your Aws credentials

## 🔑 Set your credentials

- Digital Ocean
```bash
export DIGITALOCEAN_API_TOKEN="XxXxxxxXXxxXXxxXXxxxXXXxXxXxXX"
```
- Aws
``` bash
export AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=YOUR_SECRET_KEY
```

## 🚀 Getting Started

### Initialize your Packer configuration
Download and install packer plugins

``` bash
packer init .
```

### Build the images

``` bash
packer build packer-meilisearch.pkr.hcl
```

### Build an image just for one provider

``` bash
packer build -only 'amazon-ebs.*' .
```

``` bash
packer build -only 'digitalocean.*' .
```
