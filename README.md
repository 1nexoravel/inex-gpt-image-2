# Inex's GPT Image 2 Prompts — Cinematic Anime & Beyond

> 🎨 A curated collection of high-detail prompts for **GPT Image 2** — OpenAI's next-gen image model with pixel-perfect text rendering, cross-image consistency, and commercial-grade illustration quality. Focused on cinematic anime aesthetics, character-reference workflows, and atmospheric storytelling.

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 📑 Table of Contents

- [About GPT Image 2](#-about-gpt-image-2)
- [How to Use](#-how-to-use)
- [Categories](#-categories)
  - [🎭 Commercial Illustration](#-commercial-illustration)
    - [🚗 Anime Cars](#-anime-cars)
  - [🖼️ Portraits](#️-portraits)
  - [🔤 Text Rendering](#-text-rendering)
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
- **Cross-image consistency** — maintains characters, styles, and elements across generations from reference images
- **Commercial quality** — illustrations ready for professional use

This collection focuses on prompts that exploit these strengths, with detailed explanations of *why* each one works.

## 📖 How to Use

1. Browse the categories below
2. Click **"Full prompt"** to expand and copy the text
3. Replace placeholder variables in `{CURLY_BRACES}` with your chosen values
4. For prompts that reference an attached image, upload your character/style reference alongside the prompt
5. Paste into GPT Image 2 (via ChatGPT, API, or Sora)

---

## 📚 Categories

### 🎭 Commercial Illustration

#### 🚗 Anime Cars

A series exploring cinematic anime illustrations of characters inside premium sports cars, using character-reference attachments and explicit identity-preservation language.

---

##### Anime Girl Driving a Supercar at Night

<img src="./assets/images/illustrations/cars/car002.webp" width="600" alt="Anime girl driving a supercar through a neon cyberpunk city at night, cinematic Makoto Shinkai style">

**Category:** Commercial Illustration → Anime Cars · **Tags:** `anime` `cinematic` `cyberpunk` `night` `character-reference` `makoto-shinkai`

<details>
<summary>📋 Full prompt (click to copy)</summary>

```
CAR={McLaren P1 / Nissan GT-R R35 / Lamborghini Revuelto / Porsche 911 GT3 RS / etc}

Create a cinematic anime-style night illustration using the attached girl as the sole and explicit character reference. Fully preserve her recognizable identity, facial structure, eye shape, hairstyle, hair accessories, color palette, outfit silhouette, proportions, and soft expressive atmosphere exactly as shown in the reference image. Do not replace the character, alter her identity, obscure the face, or stylize away recognizability.

The girl is driving a {CAR} through a futuristic neon-lit city at night from an immersive interior cockpit perspective. The scene should feel atmospheric, dreamy, and slightly melancholic, with glowing city lights reflecting across the windshield, dashboard, windows, and her face. Emphasize motion blur, cinematic lighting, soft bloom, volumetric fog, reflections, chromatic aberration, and painterly brushstroke textures similar to high-end anime key visuals.

Camera angle from inside the car cabin, slightly wide-angle, showing both the character and the luxurious sports car interior. The dashboard and steering wheel should feel realistic and premium, illuminated by cool blue and white LEDs. Outside the windows: a dense cyberpunk-inspired skyline with elevated highways, speeding cars, rain-soaked streets, neon signs, and distant skyscrapers.

The character should have a relaxed but confident expression while driving, casually glancing toward the viewer. Her pose should feel natural and candid. Keep the overall composition balanced between the character, cockpit details, and the glowing urban scenery outside.

Art style: semi-realistic anime illustration, painterly rendering, highly atmospheric, cinematic composition, soft lighting gradients, deep blue night tones, detailed reflections, emotional ambience, modern anime movie aesthetic, Makoto Shinkai-inspired lighting, premium digital painting quality.

Ultra detailed, masterpiece, best quality, dynamic lighting, expressive eyes, depth of field, film grain, realistic reflections, immersive perspective, high detail environment, elegant color harmony, dramatic night atmosphere.
```

</details>

**📎 Requires:** An attached reference image of the character to preserve.

**💡 Why it works:** The prompt opens with an aggressive identity-lock paragraph — explicitly listing *what* must be preserved (facial structure, eye shape, hairstyle, accessories, palette, silhouette, proportions) and *what must not happen* (no replacement, no obscuring, no stylizing away). GPT Image 2 responds very well to negative-space framing like "Do not replace the character." The `{CAR}` placeholder gives you a single swappable variable while everything else stays consistent across renders. The Makoto Shinkai anchor locks in the lighting language; cyberpunk + neon + rain stack mutually reinforcing atmospheric cues.

**🔧 Variations:** swap `{CAR}` for any well-known model (the more iconic, the better the cockpit accuracy); change `night` → `golden hour` and `cyberpunk skyline` → `Tokyo Shibuya crossing` for a brighter take; replace `Makoto Shinkai` with `Mamoru Hosoda` for a warmer, less neon-saturated palette.

---

##### Anime Girls in a Convertible at Sunset

<img src="./assets/images/illustrations/cars/car001.webp" width="600" alt="One or two anime girls in a luxury convertible cruising a coastal highway at sunset, cinematic semi-realistic anime style">

**Category:** Commercial Illustration → Anime Cars · **Tags:** `anime` `cinematic` `summer` `convertible` `coastal` `style-reference` `makoto-shinkai`

<details>
<summary>📋 Full prompt (click to copy)</summary>

```
CAR={Any luxury convertible supercar / exotic sports car with a premium modern interior}
CHARACTERS={1 or 2}

Create a cinematic semi-realistic anime-style illustration inspired by the attached anime girl. Maintain a similar fashion aesthetic, hairstyle theme, color palette, accessories, and overall visual vibe while adapting the character into an original stylized anime illustration. Keep the design cohesive and visually consistent without directly replicating the exact identity or features from the reference.

Character placement rule:
- If CHARACTERS=1: only a single anime girl is present, sitting exclusively in the driver seat of the convertible.
- If CHARACTERS=2: use two anime girls with very similar styling, fashion aesthetic, and visual theme, with one driving and the other sitting in the passenger seat. Both should feel like alternate versions of the same original-inspired design with slight natural pose and expression variation.

Scene: a luxurious high-end convertible supercar with the roof down, cruising through a glowing coastal city highway during sunset or blue hour. The atmosphere should feel stylish, youthful, energetic, and cinematic.

The girl(s) wear elegant fashionable bikinis inspired by the original aesthetic, featuring premium summer fashion styling, soft fabric details, subtle shine, tasteful accessories, and coordinated colors. Hair ribbons, accessories, and visual motifs should remain stylistically consistent with the inspiration while still feeling original.

Camera angle from slightly above and inside the convertible cockpit, capturing the character(s), premium interior, and immersive open-air feeling of the car. The composition should emphasize the luxurious sports car cabin, glossy surfaces, metallic reflections, dashboard details, center console, ambient lighting, and realistic material rendering.

Pose and expression:
- Driver version: relaxed, confident, casually focused on the road.
- Passenger version (only if CHARACTERS=2): looking toward the viewer with a soft playful expression.

Environment details: ocean-side roads, distant skyline, palm trees, warm sunset light blending with cool evening shadows, motion blur from passing lights, soft wind moving hair and ribbons, glowing reflections on the car body, atmospheric depth, subtle lens flare, dreamy ambience.

Art style: semi-realistic anime illustration, highly polished painterly rendering, cinematic composition, premium anime key visual quality, soft bloom lighting, expressive eyes, detailed skin shading, elegant highlights, modern anime movie aesthetic, Makoto Shinkai-inspired lighting, vibrant but balanced colors.

Ultra detailed, masterpiece, best quality, convertible sports car interior, open roof, luxury atmosphere, immersive perspective, dynamic lighting, realistic reflections, summer mood, glossy paint, high-detail environment, anime cinematic illustration.
```

</details>

**📎 Requires:** An attached reference image used as **style inspiration only** (not identity-locked).

**💡 Why it works:** This is the inverse approach to the night-driving prompt — instead of identity-locking the reference, it explicitly says "*inspired by*… without directly replicating the exact identity." That gives the model permission to create original characters that share the *aesthetic* (palette, fashion, ribbons, hair theme) without copying the face. The `CHARACTERS={1 or 2}` conditional with explicit per-case rules is the key trick: GPT Image 2 follows branching logic well when each branch lists its own positioning, pose, and expression. Pairing identical-styled characters reads naturally as "alternate versions of the same design," which is a much cleaner mental model for the renderer than "two random girls."

**🔧 Variations:** swap sunset for `night blue hour` with neon coastal signage for a darker take; change `bikinis` to `coordinated summer dresses` for a softer, less swimwear-focused composition; replace `coastal highway` with `mountain pass at sunset` for dramatic elevation and curves.

---

### 🖼️ Portraits

> *Add your contributions here — see [CONTRIBUTING.md](CONTRIBUTING.md)*

---

### 🔤 Text Rendering

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

- **Use `{CURLY_BRACES}` for swappable variables** — define them at the top of the prompt so the rest stays reusable
- **Identity-lock with explicit lists** — when preserving a reference character, enumerate *exactly* what must be preserved (face, eyes, hair, accessories, palette, silhouette) and *what must not happen* (no replacement, no obscuring)
- **Use negative-space framing** — "Do not replace the character" works surprisingly well alongside positive descriptions
- **Distinguish identity-lock vs. style-inspiration** — "preserve her identity exactly" produces a different result from "inspired by the aesthetic without replicating the identity"; pick one and be explicit
- **Branch with conditional rules** — `If X=1: ...` / `If X=2: ...` blocks let one prompt produce variant outputs
- **Anchor style with named directors/designers** — `Makoto Shinkai`, `Saul Bass`, `Wes Anderson` lock palette and composition more efficiently than adjectives
- **Stack atmospheric cues** — cinematic lighting + bloom + volumetric fog + reflections reinforce each other rather than fight
- **End with quality keywords** — `masterpiece, best quality, ultra detailed, depth of field` at the tail nudges the renderer toward its best output
- **Short uppercase text works best** — words of 4–8 letters have the highest text-rendering accuracy
- **Specify text position explicitly** — `"on the chest"`, `"as a banner above"`, `"in the lower-right corner"`

## 🤝 Contributing

Contributions are very welcome! Read [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide.

Quick version:

1. Fork the repo
2. Add your image to `assets/images/<category>/`
3. Add an entry to `README.md` using the [standard template](CONTRIBUTING.md#prompt-template)
4. Open a PR

## 📄 License

Licensed under [CC BY 4.0](LICENSE) — use it, remix it, share it; just give credit.