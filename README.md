# homebrew-tap

Personal Homebrew tap for casks and formulae not available in homebrew-core.

## Install the tap

```bash
brew tap soulhakr/tap
```

---

## Casks

### pi

[Pi](https://pi.dev) — minimal terminal coding agent harness by Mario Zechner (earendil-works). Supports 30+ AI providers via API key or OAuth subscription. Extensible via TypeScript extensions, skills, and prompt templates.

```bash
brew install --cask soulhakr/tap/pi
```

### purr

[Purr](https://github.com/iamarunbrahma/purr) — hold a key, speak, and your words appear in any text field. macOS dictation utility.

```bash
brew install --cask soulhakr/tap/purr
```

---

## Formulae

### phi

[Phi](https://singularitycoding.github.io/phi/) — an inspectable Agent Harness built from scratch in Python (SingularityCoding). Implements a full agent loop with explicit control over tools, context, sessions, and safety boundaries. Requires Python 3.12 and uv.

```bash
brew install soulhakr/tap/phi
```

### foks-tts

[FOKS TTS](https://github.com/soulhakr/foks-tts) — a macOS menu bar app that reads a window, a dragged area, the whole screen or selected text aloud in a natural offline voice (Kokoro-82M on MLX), highlighting each word as it is spoken. Requires Apple silicon and macOS 14+. It builds from source (needs the Command Line Tools) and downloads about 800 MB (Python packages with pinned hashes, plus the model, checked against a SHA-256).

```bash
brew install soulhakr/tap/foks-tts
foks-tts-setup        # copies FOKS TTS.app into ~/Applications and registers the Services entry
```

---

## Auto-update workflows

All packages are kept current by GitHub Actions workflows that run daily at 06:00 UTC:

| Workflow | Watches | Updates |
|---|---|---|
| `update-pi.yml` | `earendil-works/pi` GitHub releases | `Casks/pi.rb` version + arch SHA256s |
| `update-phi.yml` | `SingularityCoding/phi` `pyproject.toml` version on `main` | `Formula/phi.rb` commit SHA + version |
| `update-foks-tts.yml` | `soulhakr/foks-tts` GitHub releases | `Formula/foks-tts.rb` version + SHA256 of the release tarball |
| `update-purr.yml` | `iamarunbrahma/purr` GitHub releases | `Casks/purr.rb` version + SHA256 |

Workflows can also be triggered manually from the [Actions tab](https://github.com/soulhakr/homebrew-tap/actions).

---

## Not in this tap

The following tools are installed from this tap's `brew tap soulhakr/tap` but live in homebrew-core or homebrew-cask — no custom recipe needed:

- **hermes-agent** → `brew install hermes-agent` (homebrew-core)
- **t3-code** → `brew install --cask t3-code` (homebrew-cask)
