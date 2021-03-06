<h1 align="center">
  <br>
  <a href="https://vantage6.ai"><img src="https://github.com/IKNL/guidelines/blob/master/resources/logos/vantage6.png?raw=true" alt="vantage6" width="350"></a>
</h1>

<h3 align=center> A privacy preserving federated learning solution</h3>
<h3 align="center">
<!--
[![PyPI version](https://badge.fury.io/py/vantage6.svg)](https://badge.fury.io/py/vantage6)
[![Build Status](https://travis-ci.org/IKNL/vantage6.svg?branch=master)](https://travis-ci.org/IKNL/vantage6)
[![Coverage Status](https://coveralls.io/repos/github/IKNL/vantage6/badge.svg?branch=master)](https://coveralls.io/github/IKNL/vantage6?branch=master)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/6ea309088ccd48febd41bd1176a9db55)](https://www.codacy.com/gh/IKNL/vantage6?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=IKNL/vantage6&amp;utm_campaign=Badge_Grade)
-->

[![DOI](https://zenodo.org/badge/120275991.svg)](https://zenodo.org/badge/latestdoi/120275991)

</h3>

<p align="center">
  <a href="#pray-motivation">Motivation</a> •
  <a href="#books-documentation">Documentation</a> •
  <a href="#cd-installation">Installation</a> •
  <a href="#hatching_chick-how-to-use">How To Use</a> •
  <a href="#gift_heart-contributing">Contributing</a> •
  <a href="#black_nib-references">References</a>
</p>

-----------------------------------------------------------------------------------------------------
This repository is part of **vantage6**, our **priVAcy preserviNg federaTed leArninG infrastructurE for Secure Insight eXchange**. Other repositories include:

* [vantage6](https://github.com/iknl/vantage6)
* [vantage6-common](https://github.com/iknl/vantage6-common)
* [vantage6-server](https://github.com/iknl/vantage6-server)
* [vantage6-node](https://github.com/iknl/vantage6-node)
* [vantage6-client](https://github.com/iknl/vantage6-client)
* [vantage6-UI](https://github.com/IKNL/Vantage6-UI)
* [vantage6-master](https://github.com/iknl/vantage6-master)

## Forward & Reverse Proxy
This repository contains the recipe for building the (reverse & forward) proxy container.

The forward proxy allows algorithm containers to reach (whitelisted) sources (e.g. a database) from the internet. The reverse proxy allows peer-to-peer communication between two algorithm containers residing in different data-stations. This only works when both data-stations are attached to the same OpenVPN network.

```
docker run -v forward.conf:/etx/nginx/sites-enabled/forward.conf -v reverse.conf:/etc/nginx/sites-enabled/reverse.conf
```

## :black_nib: References
If you are using **vantage6**, please cite this repository as well as the accompanying paper as follows:

> - Frank Martin, Melle Sieswerda, Hasan Alradhi, et al. vantage6. Available at
https://doi.org/10.5281/zenodo.3686944. Accessed on [MONTH, 20XX].
> - Arturo Moncada-Torres, Frank Martin, Melle Sieswerda, Johan van Soest, Gijs Gelijnse. VANTAGE6: an open source priVAcy preserviNg
federaTed leArninG infrastructurE for Secure Insight eXchange. AMIA Annual Symposium Proceedings, 2020, p. 870-877. [[BibTeX](https://arturomoncadatorres.com/bibtex/moncada-torres2020vantage6.txt), [PDF](https://vantage6.ai/vantage6/)]

-----------------------------------------------------------------------------------------------------
<p align="center">
  <a>vantage6</a> •
  <a href="https://github.com/IKNL/vantage6-common">Common</a> •
  <a href="https://github.com/IKNL/vantage6-server">Server</a> •
  <a href="https://github.com/IKNL/vantage6-node">Node</a> •
  <a href="https://github.com/IKNL/vantage6-client">Client</a> •
  <a href="https://github.com/IKNL/Vantage6-UI">UI</a> •
  <a href="https://github.com/IKNL/vantage6-master">Master</a>
</p>