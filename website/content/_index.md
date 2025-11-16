---
title: "Home"
---

# Granti<span>OS</span>

**Grant's Personal Bootc Images**

GrantiOS offers desktop and server variants based on Fedora Atomic.

## Quick Start

<div class="quick-links">
  <a href="#install">Install</a>
  <a href="#rebase">Rebase</a>
  <a href="#readme">Readme</a>
  <a href="#faq">FAQs</a>
  <a href="#gallery">Gallery</a>
</div>

## Install

We plan to have a dedicated ISO image at some point, but for now GrantiOS is based on the Fedora Atomic KDE image.

<div class="download-section">
  <a href="https://www.fedoraproject.org/atomic-desktops/kinoite/" target="_blank" class="download-btn">Learn About</a>
  <a href="https://download.fedoraproject.org/pub/fedora/linux/releases/43/Kinoite/x86_64/iso/Fedora-Kinoite-ostree-x86_64-43-1.6.iso" class="download-btn primary">Download <span class="atomic-icon">⚛</span></a>
</div>

## Rebase

To rebase to GrantiOS, choose the variant for your use case:

**Desktop (Via KDE):**
<div class="command-banner-wrapper" aria-hidden="false">
  <div class="command-banner-box" role="status" aria-label="desktop installation command">
    <code>sudo bootc switch ghcr.io/grantsform/grantios-desktop</code>
  </div>
</div>

**Server (Headless):**
<div class="command-banner-wrapper" aria-hidden="false">
  <div class="command-banner-box" role="status" aria-label="server installation command">
    <code>sudo bootc switch ghcr.io/grantsform/grantios-server</code>
  </div>
</div>

Then reboot to stage the changes.

## Readme

<details class="centered-summary">

<summary>⏺⏺⏺</summary>

## Overview

Built on top of the amazing work from the [Ublue](https://universal-blue.org/) and [Bazzite](https://bazzite.gg/) communities, GrantiOS provides stable, atomic experiences with carefully selected customizations across two specialized variants.

> **Note:** These are personal images. While you're welcome to try them, they're not officially supported for third-party use.

<div class="section-divider"></div>

## About GrantiOS

GrantiOS is [Grant](https://github.com/grantsform)'s personal Bootc images with desktop and server variants.

## Origins

This project started as a way to create a personalized Linux experience based on the excellent work of the Fedora Atomic ecosystem. It's heavily inspired by and built upon:

- **[Fedora Atomic](https://fedoraproject.org/atomic-desktops/)** - The base immutable desktop platform
- **[Ublue](https://universal-blue.org/)** - Universal Blue's custom images and tooling
- **[Bazzite](https://bazzite.gg/)** - Gaming-focused Fedora Atomic images

## Intentions
This is a stop-gap, personal solution that I'm hoping I can learn enough from to get a good understanding of the bootc ecosystem to reasonably start working on / maintaining [GateLinux](https://github.com/gatelinux) and my Spatial-Computing Distro built around Godot, [UF-OS](https://github.com/uf-os). 

## Philosophy

...

</details>


## FAQs {#faq}

Below are some commonly asked questions about GrantiOS. Click a question to expand the answer.

<div class="faq-list">

<details class="faq-item">
<summary><span class="faq-label faq-label--q">Q:</span> What platforms is GrantiOS intended for?</summary>

<p><span class="faq-label faq-label--a">A:</span><span class="faq-answer-text">GrantiOS is developed primarily as a desktop-focused Bootc image and tested on x86_64 systems using Fedora Atomic-derived tooling. It may work on other platforms with adjustments, but expect platform-specific issues.</span></p>
</details>

<details class="faq-item">
<summary><span class="faq-label faq-label--q">Q:</span> Can I build or modify the image locally?</summary>

<p><span class="faq-label faq-label--a">A:</span><span class="faq-answer-text">Yes — the repo contains build helpers and configurations. See the `build_files/` directory for scripts and `skeleton/` for files intended to be copied into the image. Use a VM or isolated environment when testing builds.</span></p>
</details>

<details class="faq-item">
<summary><span class="faq-label faq-label--q">Q:</span> Where should I report bugs or feature requests?</summary>

<p><span class="faq-label faq-label--a">A:</span><span class="faq-answer-text">Please open an issue on the repository and include as much detail as possible (OS, steps to reproduce, logs). Pull requests are welcome for fixes or documentation improvements.</span></p>
</details>

</div>

</br>
</br>

*For the latest updates, follow [@grantsform](https://github.com/grantsform) on GitHub.*