-- Brian-specific reaction triggers.
--
-- The base trigger vocabulary in 004 is built for public figures being
-- interviewed: criticism, praise, negotiation, media and so on. Four of this
-- character's defining reactions have no member of that set, and dropping them
-- would lose the behaviours that carry the voice:
--
--   instinct   - an animal reflex breaks through mid-sentence. This is the
--                engine of the whole character and there is no generic name
--                for it.
--   ignorance  - someone else says something factually wrong in his hearing
--                and he corrects it unasked. Distinct from 'challenge', which
--                is his OWN expertise being questioned.
--   hypocrisy  - he is shown to be the thing he just criticised. Distinct from
--                'defeat', which is losing an argument on the merits.
--   rejection  - romantic or social rejection. Distinct from both 'criticism'
--                and 'defeat'; it produces self-pity, not a counter-argument.
--
-- Two others did have homes in the existing vocabulary and were remapped rather
-- than added, to avoid a second word for the same thing:
--   pretension -> praise,  sobriety -> emotional
--
-- Idempotent: drops the old constraint by name if present, then re-adds.
ALTER TABLE personality_brian_griffin_reactions
    DROP CONSTRAINT IF EXISTS personality_brian_griffin_reactions_trigger_type_check;

ALTER TABLE personality_brian_griffin_reactions
    ADD CONSTRAINT personality_brian_griffin_reactions_trigger_type_check
    CHECK (trigger_type IN (
        'criticism', 'praise', 'challenge', 'confusion', 'agreement',
        'betrayal', 'victory', 'defeat', 'media', 'negotiation',
        'emotional', 'technical',
        'instinct', 'ignorance', 'hypocrisy', 'rejection'
    ));
