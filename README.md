# instar-personality-brian-griffin

A character-persona engine for [Project Instar](https://github.com/thegman54/project-instar)
that lets a bot talk in the voice of Brian Griffin — articulate pretension
collapsing into animal instinct, the unsolicited correction, credential anxiety,
performed principle.

> **Unofficial fan persona.** Brian Griffin is a fictional character created by Seth
> MacFarlane and owned by Twentieth Century Fox. This repository is an independent
> character study for a personal assistant persona. It is not affiliated with,
> authorised by, or endorsed by the rights holders, and it reproduces no script text
> beyond short, widely-quoted catchphrases.

## Architecture

This personality engine uses **20 trait categories** across **6 layers**, backed by **4 database tables** for different types of personality data:

### Layers

| Layer | Name | Categories | Purpose |
|-------|------|------------|---------|
| 1 | **Foundation** | identity, values, worldview | Core beliefs — always active |
| 2 | **Expression** | voice, lexicon, tone, emphasis, humor | Shapes every response |
| 3 | **Strategy** | rhetoric, social, narrative, authority, deflection, topics | How interactions are conducted |
| 4 | **Reactive** | reaction, situational, rhythm | Triggered by conversational context |
| 5 | **Reference** | signature, quote | Catchphrases and recurring lines |
| 6 | **Constraints** | boundary | Guardrails and limits |

### Data Stores

| Table | Purpose |
|-------|---------|
| `personality_brian_griffin_traits` | 20-category behavioral traits with examples and anti-examples |
| `personality_brian_griffin_quotes` | Catchphrases and recurring lines with source attribution |
| `personality_brian_griffin_lexicon` | Vocabulary fingerprint — words to favor, avoid, and use situationally |
| `personality_brian_griffin_reactions` | Trigger-to-response pattern mappings by context |

### Key Character Features

- **The register collapse** — one articulate sentence broken mid-clause by an instinct or an insecurity. The engine of the whole voice.
- **The Actually reflex** — unsolicited, accurate correction of the least important thing in the room
- **Credential anxiety** — Brown, the novel, the column, reached for the instant he is doubted
- **Escalation by articulating** — he gets more precise rather than louder, so the persona never uses CAPS
- **Sincerity only without an audience** — the condescension drops one-on-one, which is what keeps him likeable

### Character-specific reaction triggers

Migration `005` extends the base trigger vocabulary with four triggers this
character cannot be written without — `instinct`, `ignorance`, `hypocrisy`,
`rejection` — and documents why each one has no member of the generic set. The
admin panel's trigger dropdown is extended to match, so they are reachable from
the UI and not only from a YAML import.

## Installation

This is a skill package for Project Instar. Upload it via the Admin UI or place it in the skills directory.

```bash
# Clone
git clone https://github.com/thegman54/instar-personality-brian-griffin.git

# Import seed data via admin panel YAML import
# or load directly into the database
```

## Tools

| Tool | Purpose |
|------|---------|
| `personality_brian_griffin_read` | Load traits, quotes, lexicon, and reactions by category and situation |
| `personality_brian_griffin_list` | List available categories, counts, and data store stats |

## Seed Data

`data/brian_griffin_profile.yaml` contains a comprehensive starter profile.

## Contents

| Store | Entries |
|---|---|
| traits | 69 across 19 categories |
| quotes | 8 |
| lexicon | 16 |
| reactions | 10 |

The twentieth category, `quote`, holds no traits — that material lives in the
quotes store instead.

## Sourcing

Canonical biographical facts (the Brown semester, the novel, the martini, the
family) come from the character's encyclopaedia entry. Catchphrases are recorded
as **recurring catchphrases without invented episode citations** — where no
reliable source names an episode, none is claimed. Everything else is written as
a behavioural instruction rather than as a quotation.

## License

MIT

## Install

```bash
zip -r instar-personality-brian-griffin.zip . -x '.git/*'
# Upload via the Instar admin Skills page
```

Then set the profile's **Personality** field to `skill:personality_brian_griffin`.
