# 🧍 Character Gallery — Base References

This folder contains the **base reference images** used as identity anchors across the prompts in [the main README](../../../README.md). Each prompt that says *"Use the attached reference character..."* expects one of these (or similar) images as the input.

Files are organized by character and style variation. All images are `.webp` (max 1024px, optimized via `scripts/optimize.bat`).

---

## Manuka

The main reference character — used as default identity anchor in most prompts.

<table>
<tr>
<td align="center" width="33%">
<img src="./manuka001.webp" width="220" alt="Manuka 001"><br>
<sub><i>manuka001.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./manuka002.webp" width="220" alt="Manuka 002"><br>
<sub><i>manuka002.webp</i></sub>
</td>
<td align="center" width="33%">
</td>
</tr>
</table>

---

## Manuka Gothic

Gothic outfit/style variation of Manuka — used as identity reference for darker, aristocratic, and gothic-themed prompts.

<table>
<tr>
<td align="center" width="33%">
<img src="./manukagothic001.webp" width="220" alt="Manuka Gothic 001"><br>
<sub><i>manukagothic001.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./manukagothic002.webp" width="220" alt="Manuka Gothic 002"><br>
<sub><i>manukagothic002.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./manukagothic003.webp" width="220" alt="Manuka Gothic 003"><br>
<sub><i>manukagothic003.webp</i></sub>
</td>
</tr>
<tr>
<td align="center" width="33%">
<img src="./manukagothic004.webp" width="220" alt="Manuka Gothic 004"><br>
<sub><i>manukagothic004.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./manukagothic005.webp" width="220" alt="Manuka Gothic 005"><br>
<sub><i>manukagothic005.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./manukagothic006.webp" width="220" alt="Manuka Gothic 006"><br>
<sub><i>manukagothic006.webp</i></sub>
</td>
</tr>
</table>

---

## Manuka Vamp Gothic

Vampire gothic variant — for horror-aesthetic, gothic-cyber, and dark-fashion prompts.

<table>
<tr>
<td align="center" width="33%">
<img src="./manukavampgothic001.webp" width="220" alt="Manuka Vamp Gothic 001"><br>
<sub><i>manukavampgothic001.webp</i></sub>
</td>
<td align="center" width="33%">
</td>
<td align="center" width="33%">
</td>
</tr>
</table>

---

## Neco

Secondary reference character — alternative identity anchor.

<table>
<tr>
<td align="center" width="33%">
<img src="./neco01.webp" width="220" alt="Neco 01"><br>
<sub><i>neco01.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./neco02.webp" width="220" alt="Neco 02"><br>
<sub><i>neco02.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./neco03.webp" width="220" alt="Neco 03"><br>
<sub><i>neco03.webp</i></sub>
</td>
</tr>
<tr>
<td align="center" width="33%">
<img src="./neco04.webp" width="220" alt="Neco 04"><br>
<sub><i>neco04.webp</i></sub>
</td>
<td align="center" width="33%">
<img src="./neco05.webp" width="220" alt="Neco 05"><br>
<sub><i>neco05.webp</i></sub>
</td>
<td align="center" width="33%">
</td>
</tr>
</table>

---

## How These Images Are Used

These base references are passed to GPT Image 2 alongside the prompts in the main README. The prompt typically locks identity through:

- **Face** — facial structure, eye shape and color, expression
- **Hair** — color, length, hairstyle, accessories
- **Animal traits** — ears, tail, species-specific features
- **Outfit** — when the prompt preserves the original outfit rather than redesigning it
- **Proportions** — body type, height, silhouette

For most prompts, **Manuka** (or one of its style variations) is the default. Use **Neco** when you want a different character identity while keeping the same scene/style logic.

When in doubt about which base to use, the main README's prompt descriptions usually hint at the expected reference (e.g. prompts mentioning *"pink twintails / gothic maid"* are designed for **Manuka Gothic** or **Manuka Vamp Gothic**; prompts mentioning *"red eyes / crimson hair"* point to **Neco**).

---

[← Back to main README](../../../README.md)
