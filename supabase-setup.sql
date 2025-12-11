-- Opret 'cards' tabel til at gemme fordele
CREATE TABLE IF NOT EXISTS cards (
  id BIGSERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  points INTEGER NOT NULL,
  image TEXT NOT NULL,
  description TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indsæt placeholder data (kan erstattes med rigtige data senere)
INSERT INTO cards (title, points, image, description) VALUES
  ('Klip maleskjold', 100, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+1', 'Få et gratis klip hos maleskjold og giv dine møbler nyt liv.'),
  ('Klip maleskjold', 100, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+2', 'Få et gratis klip hos maleskjold og giv dine møbler nyt liv.'),
  ('Repair Cafe', 100, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+3', 'Besøg Repair Cafe og få hjælp til at reparere dine ting.'),
  ('Lej en cykel', 350, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+4', 'Lej en cykel i hele dagen og udforsk byen på to hjul.'),
  ('Sheltertur', 200, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+5', 'Book en guidet sheltertur og oplev naturen.'),
  ('Medlemskab Rodskov', 400, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+6', 'Få et års medlemskab til Rodskov og støt miljøet.'),
  ('1 måned med Mofibo', 150, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+7', 'Få adgang til tusindvis af lydbøger og e-bøger.'),
  ('Entre museum', 100, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+8', 'Gratis entre til udvalgte museer i København.'),
  ('Entre museum', 150, 'https://placehold.co/600x400/e8e8e8/666666?text=Billede+9', 'Gratis entre til udvalgte museer i København.');

-- Enable Row Level Security (RLS) for sikkerhed
ALTER TABLE cards ENABLE ROW LEVEL SECURITY;

-- Opret policy for at tillade offentlig læsning
CREATE POLICY "Enable read access for all users" ON cards
  FOR SELECT
  USING (true);
