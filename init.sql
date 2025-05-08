-- init.sql
-- This script sets up the 'quotes' table and inserts sample data into the 'quotes' database

CREATE TABLE quotes (
    id SERIAL PRIMARY KEY,
    author TEXT NOT NULL,
    quote TEXT NOT NULL
);

INSERT INTO quotes (author, quote) VALUES
('Spock', 'Live long and prosper.'),
('Yoda', 'Do or do not. There is no try.'),
('The Doctor', 'We’re all stories in the end. Just make it a good one, eh?'),
('Jean-Luc Picard', 'Things are only impossible until they’re not.'),
('Optimus Prime', 'Freedom is the right of all sentient beings.'),
('G’Kar', 'The universe is run by the complex interweaving of three elements: energy, matter, and enlightened self-interest.'),
('HAL 9000', 'I’m sorry, Dave. I’m afraid I can’t do that.'),
('The Terminator', 'I’ll be back.'),
('Rick Deckard', 'It’s too bad she won’t live! But then again, who does?'),
('Korben Dallas', 'Anybody else want to negotiate?'),
('Neo', 'I know kung fu.'),
('Morpheus', 'What if I told you everything you knew was a lie?'),
('Major Motoko Kusanagi', 'The net is vast and infinite.'),
('Bishop', 'I may be synthetic, but I’m not stupid.'),
('Q', 'If you can’t take a little bloody nose, maybe you ought to go back home and crawl under your bed.'),
('Dr. Emmett Brown', 'Roads? Where we’re going, we don’t need roads.'),
('Sarah Connor', 'There’s no fate but what we make for ourselves.'),
('Leia Organa', 'Help me, Obi-Wan Kenobi. You’re my only hope.'),
('Ripley', 'Get away from her, you b****!'),
('Gaius Baltar', 'I am not the one you should be looking at with suspicion.');
