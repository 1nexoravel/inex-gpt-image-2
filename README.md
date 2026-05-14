# Inex's GPT Image 2 Prompts

> 🎨 A curated collection of prompts for **GPT Image 2** — OpenAI's next-gen image model with pixel-perfect text rendering, cross-image consistency, and commercial-grade illustration quality.

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 📑 Table of Contents

- [About GPT Image 2](#-about-gpt-image-2)
- [How to Use](#-how-to-use)
- [Categories](#-categories)
  - [🖼️ Portraits](#️-portraits)
  - [🔤 Text Rendering](#-text-rendering)
  - [🎭 Commercial Illustration](#-commercial-illustration)
  - [📦 Product & Mockups](#-product--mockups)
  - [🏷️ Logos & Branding](#️-logos--branding)
  - [🌆 Scenes & Environments](#-scenes--environments)
- [General Prompting Tips](#-general-prompting-tips)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🚀 About GPT Image 2

GPT Image 2 stands out in three areas where previous models struggled:

- **Pixel-perfect text** — renders full words without character errors
- **Cross-image consistency** — maintains characters, styles, and elements across generations
- **Commercial quality** — illustrations ready for professional use

This collection focuses on prompts that exploit these strengths, with detailed explanations of *why* each one works.

## 📖 How to Use

1. Browse the categories below
2. Click "Full prompt" to expand and copy the text
3. Paste into GPT Image 2 (via ChatGPT, API, or Sora)
4. Tweak the suggested variables to adapt to your case

---

## 📚 Categories

### 🖼️ Portraits

#### Cyberpunk Neon Portrait

<img src="./assets/images/portraits/cyberpunk-neon-001.webp" width="600" alt="Cyberpunk portrait with neon text">

**Category:** Portrait · **Tags:** `cyberpunk` `neon` `typography`

<details>
<summary>📋 Full prompt (click to copy)</summary>

```
Close-up portrait of a young woman with neon pink hair, cyberpunk aesthetic,
holographic text "FUTURE" displayed across her cheek in glowing magenta,
soft rim lighting, shallow depth of field, photorealistic, 8k detail
```

</details>

**💡 Why it works:** GPT Image 2 nails the word "FUTURE" because it's short, uppercase, and has an explicit position ("across her cheek"). Without these three anchors, text rendering accuracy drops significantly.

**🔧 Variations:** swap `"FUTURE"` for any 4–8 letter word, or `magenta` for `cyan`/`gold`/`emerald`.

---

#### Studio Portrait with Brand Tagline

<img src="./assets/images/portraits/studio-tagline-001.webp" width="600" alt="Studio portrait with embedded brand text">

**Category:** Portrait · **Tags:** `studio` `branding` `editorial`

<details>
<summary>📋 Full prompt (click to copy)</summary>

```
Editorial studio portrait of a man in his 30s wearing a charcoal turtleneck,
clean white seamless background, soft beauty-dish lighting from upper-left,
the words "BUILT TO LAST" rendered as crisp embossed type in the lower-right corner,
medium-format film aesthetic, subtle grain
```

</details>

**💡 Why it works:** "Crisp embossed type" plus a specific corner location ("lower-right") gives the model a strong spatial anchor. Editorial/film references stabilize the lighting and color palette.

**🔧 Variations:** change the tagline (keep it ≤ 4 words), or swap `embossed` for `engraved`/`printed`/`stenciled`.

---

### 🔤 Text Rendering

#### Vintage Poster Typography

<img src="./assets/images/text-rendering/vintage-poster-001.webp" width="600" alt="Vintage poster with stylized typography">

**Category:** Text Rendering · **Tags:** `poster` `vintage` `typography`

<details>
<summary>📋 Full prompt (click to copy)</summary>

```
1960s travel poster in the style of Saul Bass, bold flat shapes,
limited palette of mustard yellow, deep teal, and cream,
large headline reading "ESCAPE TO MARS" in condensed sans-serif,
subline "DEPARTURES DAILY" below in smaller weight,
silkscreen texture, slight registration offset
```

</details>

**💡 Why it works:** Naming a specific designer (Saul Bass) locks in style, palette, and composition. Two text lines with explicit hierarchy (headline + subline) prevent the model from merging them.

**🔧 Variations:** change destinations (`MARS` → `JUPITER`, `MOON`); swap the designer reference for `Milton Glaser` or `Paul Rand` for different aesthetics.

---

### 🎭 Commercial Illustration

> *Add your contributions here — see [CONTRIBUTING.md](CONTRIBUTING.md)*

---

### 📦 Product & Mockups

> *Add your contributions here — see [CONTRIBUTING.md](CONTRIBUTING.md)*

---

### 🏷️ Logos & Branding

> *Add your contributions here — see [CONTRIBUTING.md](CONTRIBUTING.md)*

---

### 🌆 Scenes & Environments

> *Add your contributions here — see [CONTRIBUTING.md](CONTRIBUTING.md)*

---

## 💡 General Prompting Tips

These patterns repeat across the prompts in this collection:

- **Short uppercase text works best** — words of 4–8 letters have a much higher accuracy rate
- **Specify text position explicitly** — `"on the chest"`, `"as a banner above"`, `"in the lower-right corner"`
- **Anchor style with named references** — `"Studio Ghibli"`, `"Saul Bass poster"`, `"Wes Anderson palette"`
- **Limit the palette** — listing 2–4 specific colors gives more consistent output than `"colorful"`
- **Describe lighting concretely** — `"soft rim lighting from upper-left"` beats `"nice lighting"`
- **Use rendering descriptors** — `"embossed"`, `"engraved"`, `"silkscreen texture"` produce sharper type
- **Hierarchy for multi-line text** — explicitly mark `headline` vs `subline` to prevent merging
- **Photorealistic vs illustrated** — pick one path early and stick to it; mixing confuses the model

## 🤝 Contributing

Contributions are very welcome! Read [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide.

Quick version:

1. Fork the repo
2. Add your image to `assets/images/<category>/`
3. Add an entry to `README.md` using the [standard template](CONTRIBUTING.md#prompt-template)
4. Open a PR

## 📄 License

Licensed under [CC BY 4.0](LICENSE) — use it, remix it, share it; just give credit.
