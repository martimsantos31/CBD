// 1U. Fazer com que o utilizador martim_souto passe a ter DmTF como favorite_song
UPDATE users SET favorite_songs = favorite_songs + {'DmTF'} WHERE username = 'martim_souto';

// 2U. Fazer com que o utilizador beatriz_oliveira passe a seguir o utilizador joao_oliveira
UPDATE users SET following = following + {'joao_santos'} WHERE username = 'beatriz_oliveira';
UPDATE users SET followers = followers + {'beatriz_oliveira'} WHERE username = 'joao_santos';

// 3U. Fazer com que o utilizador pedro_ferreira passe a ter como favorito o artista Playboi Carti
UPDATE artists SET followers = followers + {'pedro_ferreira'} WHERE name = 'Playboi Carti';
UPDATE users SET favorite_artists = favorite_artists + {'Playboi Carti'} WHERE username = 'pedro_ferreira';

// 4U. Adicionar a música "Unwritten" ao campo recently_played do utilizador beatriz_oliveira
UPDATE users SET recently_played = recently_played + ['Unwritten'] WHERE username = 'beatriz_oliveira';

// 5U. Adicionar a conta de youtube do artista Travis Scott ao campo socials
UPDATE artists SET socials = socials + {'youtube': 'travisscott'} WHERE name = 'Travis Scott';

// 1D. Fazer com que o utilizador carolina_lima deixe de ter like em todas as músicas
DELETE favorite_songs FROM users WHERE username = 'carolina_lima';

// 2D. Apagar uma música de uma playlist
DELETE songs['90210'] FROM playlists WHERE id = 1;

// 3D. Apagar um utilizador
DELETE genres['Reggaeton'] FROM artists WHERE name = 'Bad Bunny';

// 4D. Fazer com que o utilizador lucas_montano deixe de ter like em todas as playlists
DELETE favorite_playlists FROM users WHERE username = 'lucas_montano';

// 5D. Apagar todos os recently_played do utilizador pedro_ferreira
DELETE recently_played FROM users WHERE username = 'pedro_ferreira';

